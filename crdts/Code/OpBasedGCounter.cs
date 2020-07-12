using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CRDTs
{
    public class OpBasedGCounter
    {
        int index;
        int value =0;
        List<Guid> alreadySeen = new List<Guid>();

        public OpBasedGCounter(int index)
        {
            this.index = index;
        }

        public int Query()
        {
            return value;
        }

        public Message Increment()
        {
            Message m = Prepare();
            Effect(m);
            return m;
        }

        public Message Prepare()
        {
            Action<OpBasedGCounter> A = (opBasedGCounter) => opBasedGCounter.value = (opBasedGCounter.value + 1);
            return new Message(Guid.NewGuid(), A);
        }

        public void Effect(Message m)
        {
            // to make sure We do not process already seen message We need to keep track of message already seen.
            if (alreadySeen.Contains(m.OperationId))
            {
                return;
            }

            m.A(this);

            alreadySeen.Add(m.OperationId);
        }
    }

    public class Message
    {
        public Guid OperationId;

        public Action<OpBasedGCounter> A;

        public Message(Guid operationId, Action<OpBasedGCounter> a) =>
             (OperationId, A) = (operationId, a);
    }

}
