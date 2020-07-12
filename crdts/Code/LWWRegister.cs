using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CRDTs
{
    class LWWRegister
    {
        private int index;

        public DateTime TimeStamp { get; set; }
        public int Value { get; set; }


        public LWWRegister(int index)
        {
            this.index = index;
        }

        /// <summary>
        /// Query method
        /// </summary>
        public int Query()
        {
            return this.Value;
        }

        /// <summary>
        /// Update method
        /// </summary>
        public void SetValue(int value)
        {
            this.TimeStamp = DateTime.Now;
            this.Value = value;
        }

        /// <summary>
        /// Merge method
        /// </summary>
        public void Merge(LWWRegister lWWRegister)
        {
            if (lWWRegister.TimeStamp > this.TimeStamp)
            {
                this.Value = lWWRegister.Value;
            }
        }

    }
}
