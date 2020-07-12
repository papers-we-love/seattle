using System;
using Microsoft.VisualStudio.TestTools.UnitTesting;

namespace CRDTs
{
    [TestClass]
    public class Tests
    {

        [TestMethod]
        public void OpBasedGCounterTest()
        {
            OpBasedGCounter replica1 = new OpBasedGCounter(1);
            OpBasedGCounter replica2 = new OpBasedGCounter(2);

            Message m = replica1.Increment();
            replica2.Increment();

            Assert.AreEqual(1, replica2.Query());
            replica2.Effect(m);
            replica2.Effect(m);
            Assert.AreEqual(2, replica2.Query());
        }


        [TestMethod]
        public void GCounterTest()
        {
            GCounter replica1 = new GCounter(1);
            GCounter replica2 = new GCounter(2);

            replica1.Increment();
            replica2.Increment();
            replica2.Increment();

            replica1.Merge(replica2);
            replica1.Merge(replica2);

            Assert.AreEqual(3, replica1.Query());
        }

        [TestMethod]
        public void PNCounterTest()
        {
            PNCounter replica1 = new PNCounter(1);
            PNCounter replica2 = new PNCounter(2);

            replica1.Increment();
            replica2.Decrement();
            replica2.Decrement();

            replica1.Merge(replica2);

            Assert.AreEqual(-1, replica1.Query());
        }

        [TestMethod]
        public void LWWRegisterTest()
        {
            LWWRegister replica1 = new LWWRegister(1);
            LWWRegister replica2 = new LWWRegister(2);

            replica1.SetValue(5);
            System.Threading.Thread.Sleep(1);
            replica2.SetValue(6);

            replica1.Merge(replica2);

            Assert.AreEqual(6, replica1.Query());
        }

        [TestMethod]
        public void GSetTest()
        {
            GSet replica1 = new GSet(1);
            GSet replica2 = new GSet(2);

            replica1.AddItem(5);
            replica2.AddItem(6);

            replica1.Merge(replica2);
            Assert.AreEqual(true, replica1.Query(6));
            Assert.AreEqual(false, replica1.Query(7));
        }


        [TestMethod]
        public void OpBasedORSetTest()
        {
            OpBasedORSet replica1 = new OpBasedORSet(1);
            OpBasedORSet replica2 = new OpBasedORSet(2);

            var message1 = replica1.Add(1);
            var message2 = replica1.Add(2);

            replica2.EffectAdd(message1);
            replica2.EffectAdd(message2);

            Assert.AreEqual(2, replica2.Query().Count);

            var message3 = replica2.Add(3);
            var message4 = replica1.Add(3);
            var message5 = replica1.Remove(3);

            replica1.EffectAdd(message3);
            replica2.EffectAdd(message4);
            replica2.EffectRemove(message5);

            Assert.AreEqual(replica2.Query().Contains(3), true);
        }
    }
}
