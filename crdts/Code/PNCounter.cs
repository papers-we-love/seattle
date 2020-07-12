using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CRDTs
{
    public class PNCounter
    {
        private int index;
        public int[] PState = new int[10];
        public int[] NState = new int[10];


        public PNCounter(int index)
        {
            this.index = index;
        }

        /// <summary>
        /// Query method
        /// </summary>
        public int Query()
        {
            int sum = 0;
            for (int i = 0; i < 10; i++)
            {
                sum += PState[i];
            }

            for (int i = 0; i < 10; i++)
            {
                sum -= NState[i];
            }

            return sum;
        }

        /// <summary>
        /// Update method
        /// </summary>
        public void Increment()
        {
            PState[this.index]++;
        }

        /// <summary>
        /// Update method
        /// </summary>
        public void Decrement()
        {
            NState[this.index]++;
        }

        /// <summary>
        /// Merge method
        /// </summary>
        public void Merge(PNCounter pNCounter)
        {
            for (int i = 0; i < 10; i++)
            {
                this.PState[i] = Math.Max(this.PState[i], pNCounter.PState[i]);
                this.NState[i] = Math.Max(this.NState[i], pNCounter.NState[i]);
            }
        }
    }
}
