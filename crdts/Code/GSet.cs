using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CRDTs
{
    class GSet
    {
        int index;
        public HashSet<int> hs = new HashSet<int>();
        public GSet(int index)
        {
            this.index = index;
        }

        public bool Query(int a)
        {
            return hs.Contains(a);
        }

        public void AddItem(int a)
        {
            hs.Add(a);
        }

        public void Merge(GSet g)
        {
            hs.UnionWith(g.hs);
        }
    }
}
