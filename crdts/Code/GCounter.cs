using Microsoft.VisualStudio.TestTools.UnitTesting;
using System;

namespace CRDTs
{
    class GCounter 
    {
        private int index;
        public int[] State = new int[10];


        public GCounter(int index)
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
                sum += State[i];
            }

            return sum;
        }

        /// <summary>
        /// Update method
        /// </summary>
        public void Increment()
        {
            State[this.index]++;
        }

        /// <summary>
        /// Merge method
        /// </summary>
        public void Merge(GCounter gCounter2)
        {
            for (int i = 0; i < 10; i++)
            {
                this.State[i] = Math.Max(this.State[i], gCounter2.State[i]);
            }
        }
    }
}
