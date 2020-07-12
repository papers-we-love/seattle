using System;
using System.Collections.Generic;
using System.Linq;

namespace CRDTs
{
    public class OpBasedORSet
    {
        int index;

        HashSet<Element> allElements = new HashSet<Element>();

        public OpBasedORSet(int index)
        {
            this.index = index;
        }

        public HashSet<int> Query()
        {
            HashSet<int> uniqueElements = new HashSet<int>();
            foreach (var element in allElements)
            {
                uniqueElements.Add(element.A);
            }
            return uniqueElements;
        }

        public ORAddSetMessage Add(int a)
        {
            ORAddSetMessage oRAddSetMessage =  PrepareAdd(a);
            EffectAdd(oRAddSetMessage);
            return oRAddSetMessage;
        }

        public void EffectAdd(ORAddSetMessage m)
        {
            allElements.Add(new Element(m.A, m.ElementGuid));
        }

        public ORRemoveSetMessage Remove(int a)
        {
            ORRemoveSetMessage oRAddSetMessage = PrepareRemove(a);
            EffectRemove(oRAddSetMessage);
            return oRAddSetMessage;
        }

        public void EffectRemove(ORRemoveSetMessage oRAddSetMessage)
        {
            allElements.RemoveWhere(x => oRAddSetMessage.Elements.Contains(x));
        }

        private ORRemoveSetMessage PrepareRemove(int a)
        {
            return new ORRemoveSetMessage(allElements.Where(x => x.A == a).ToList());
        }

        private ORAddSetMessage PrepareAdd(int a)
        {
            Guid g = new Guid();
            return new ORAddSetMessage(a,g);
        }
    }

    public class Element
    {
        public int A { get; }

        public Guid ElementGuid { get; }
        public Element(int a, Guid elementGuid) => (A, ElementGuid) = (a, elementGuid);
    }

    public class ORAddSetMessage
    {
        public int A { get; }

        public Guid ElementGuid { get; }

        public ORAddSetMessage(int a, Guid elementGuid) => (A, ElementGuid) = (a, elementGuid);
    }

    public class ORRemoveSetMessage
    {
        public List<Element> Elements { get; }

        public ORRemoveSetMessage(List<Element> elements) => (Elements) = (elements);
    }

}
