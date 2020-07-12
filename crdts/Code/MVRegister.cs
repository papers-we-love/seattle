using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CRDTs
{
    class MVRegister
    {
        int index;

        int curValue = -1;

        List<int> causalHistory;


        public MVRegister(int index)
        {
            this.index = index;
        }

        public void Upate(int value)
        {
            causalHistory.Add(curValue);
            this.curValue = value;
        }


    }
}
