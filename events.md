# PWL Seattle

## [2014-09-23 Inaugural meetup](https://www.meetup.com/Papers-We-Love-Seattle/events/202966912/)
The idea is to bridge the gap between theory and practice and the first step
is to disseminate the knowledge and we have and explore new horizons.

_For the first meetup we will be discussing Paxos - The part time parliament
by Leslie Lamport. This is one of the most widely known papers in the
distributed systems community but also known to be notoriously complicated and
rarely well understood. We shall endeavour to change that!_

_**Reading list for Paxos:**_

• _**[The Part-Time Parliament]**([<http://research.microsoft.com/en-
us/um/people/lamport/pubs/lamport-paxos.pdf>](http://research.microsoft.com
/en-us/um/people/lamport/pubs/lamport-paxos.pdf)) _

• _**[Paxos Made simple]**([<https://github.com/papers-we-love/papers-we-
love/blob/master/distributed_systems/paxos-made-
simple.pdf>](https://github.com/papers-we-love/papers-we-
love/blob/master/distributed_systems/paxos-made-simple.pdf))_

• _**[Paxos Made moderately complex]**([<https://github.com/papers-we-love
/papers-we-love/blob/master/distributed_systems/paxos-made-moderately-
complex.pdf>](https://github.com/papers-we-love/papers-we-
love/blob/master/distributed_systems/paxos-made-moderately-complex.pdf))_

• _**[Paxos on
Wikipedia]**([<http://en.wikipedia.org/wiki/Paxos_(computer_science>)](http://en.wikipedia.org/wiki/Paxos_\(computer_science\)))_

_I will present a presentation on the topic followed by informal discussions.
I hope everyone can join!_

[](http://www.meetup.com/Papers-We-Love-Seattle/polls/1145352/)

## [2014-10-23 PWL#2: RRB-Trees: Efficient Immutable Vectors](https://www.meetup.com/Papers-We-Love-Seattle/events/209319592/)
**Abstract**

Immutable vectors are a convenient data structure for functional programming
and part of the standard library of modern languages like Clojure and Scala.
The common implementation is based on wide trees with a fixed number of
children per node, which allows fast indexed lookup and update operations. In
this paper, the authors extend the vector data type with a new underlying data
structure, Relaxed Radix Balanced Trees (RRB-Trees), and show how this
structure allows immutable vector concatenation, insert-at and splits in
O(logN) time while maintaining the index, update and iteration speeds of the
original vector data structure.

  
Chris Bilson will be presenting this paper followed by a Q&amp;A; session.

Link: RRB-Trees: Efficient Immutable Vectors

## [2015-01-15 PWL#3: LSM Trees, BTrees and Cache oblivious B-Trees](https://www.meetup.com/Papers-We-Love-Seattle/events/215859342/)
After a long reign as the dominant on-disk data structure for databases and
filesystems, B-trees are slowly being replaced by write-optimized data
structures, to handle ever-growing volumes of data. Some write optimization
techniques, like LSM-trees, give up some of the query performance of B-trees
in order to achieve this.

This time I will cover B-Trees, LSM Trees and Fractal Trees papers and provide
some real world use cases (and data) along with the a discussion on the
respective papers.

## [2015-02-10 PWL#4: Bigtable: A Distributed Storage System for Structured Data](https://www.meetup.com/Papers-We-Love-Seattle/events/219963131/)
****

**Abstract**

Bigtable is a distributed storage system for managing structured data that is
designed to scale to a very large size: petabytes of data across thousands of
commodity servers. Many projects at Google store data in Bigtable, including
web indexing, Google Earth, and Google Finance. These applications place very
different demands on Bigtable, both in terms of data size (from URLs to web
pages to satellite imagery) and latency requirements (from backend bulk
processing to real-time data serving). Despite these varied demands, Bigtable
has successfully provided a flexible, high-performance solution for all of
these Google products. In this paper we describe the simple data model
provided by Bigtable, which gives clients dynamic control over data layout and
format, and we describe the design and implementation of Bigtable.

Arunabha Ghosh, director of Engineering at Moz, will be presenting this paper.
Before Moz, Arunabha spend around 7 years at Google working on large scale
distributed systems. I hope to see all of you for an insightful discussion.

Reading list:

[Bigtable: A Distributed Storage System for Structured
Data](http://static.googleusercontent.com/media/research.google.com/en/us/archive
/bigtable-osdi06.pdf)

## [2015-03-10 PWL#5: Dynamo: Amazon’s Highly Available Key-value Store](https://www.meetup.com/Papers-We-Love-Seattle/events/220567705/)
_We will be covering the paper that launched many other NoSQL databases over
the years. Apache Cassandra, Voldemort, Riak to name a few._

**ABSTRACT **Reliability at massive scale is one of the biggest challenges we face at Amazon.com, one of the largest e-commerce operations in the world; even the slightest outage has significant financial consequences and impacts customer trust. The Amazon.com platform, which provides services for many web sites worldwide, is implemented on top of an infrastructure of tens of thousands of servers and network components located in many datacenters around the world. At this scale, small and large components fail continuously and the way persistent state is managed in the face of these failures drives the reliability and scalability of the software systems. This paper presents the design and implementation of Dynamo, a highly available key-value storage system that some of Amazon’s core services use to provide an “always-on” experience. To achieve this level of availability, Dynamo sacrifices consistency under certain failure scenarios. It makes extensive use of object versioning and application-assisted conflict resolution in a manner that provides a novel interface for developers to use.  

  
**  
**

**[<http://www.cs.ucsb.edu/~agrawal/fall2009/dynamo.pdf>](http://www.cs.ucsb.edu/~agrawal/fall2009/dynamo.pdf)  
**

**  
**

**NOTE: We are still looking for a venue for this event. If you can accommodate the group on tuesday please let me know. Thanks!**

## [2015-04-16 PWL#6: Brandon Bloom on Programming with Algebraic Effects and Handlers](https://www.meetup.com/Papers-We-Love-Seattle/events/221174354/)
we're excited to have [Brandon Bloom](https://twitter.com/BrandonBloom)
presenting the paper [Programming with Algebraic Effects and
Handlers](https://github.com/papers-we-love/papers-we-love/blob/master/plt
/programming-with-algebraic-effects-and-handlers.pdf?raw=true) by Andrej Bauer
and Matija Pretnar.

**Intro**

Some great papers embody insights, others package up those insights into
digestible bites. "Programing with Algebraic Effects and Handlers" is the
later sort of great paper. After two decades of fundamental research in to the
nature of computation, a lot of mysterious ideas in computer science such as
continuations and exception handling finally made sense to a number of
mathematically inclined geniuses. Bauer and Pretnar's Eff programming language
cuts right through the heart of the theory in a way that makes sense to
anybody who has ever written a functional program. This paper uses the Eff
language to explore a number of simple computational effects that were
traditionally viewed as quite varied and complex.

**Brandon's Bio**

Brandon Bloom walks a fine line between laser focused pragmatism and broad
academic interests. Most recently in his varied career, Brandon worked on
Code.org's Hour Of Code campaign. In the past, he's founded and sold a
startup, as well as worked on Microsoft Xbox and Google Translate. Now, he's
indulging his inner scientist and exploring technology for his next venture.
Find him on the web at
<[<http://www.brandonbloom.name/>](http://www.brandonbloom.name/)>.

## [2015-05-14 PWL#7: The LCA Problem Revisited](https://www.meetup.com/Papers-We-Love-Seattle/events/222065399/)
_This time Ankur Chauhan will present the paper: **The LCA Problem Revisited**
_by Michael A. Bender and Martin Farach-Colton. The lowest common ancestor
problem was first stated in 1973 and it took 11 years before an optimal
solution was discovered, and another 16 before an understandable and
implementable solution with the same bounds was presented. This deceptively
simple problem comes together in the end and uses techniques that are powerful
in plenty of other places.

  
Link to the paper: [<http://www.ics.uci.edu/~eppstein/261/BenFar-
LCA-00.pdf>](http://www.ics.uci.edu/~eppstein/261/BenFar-LCA-00.pdf)

## [2015-06-11 PWL#8: Chain Replication for Supporting High Throughput and Availability](https://www.meetup.com/Papers-We-Love-Seattle/events/222902098/)
David Murray will present chain replication: a high-throughput alternative to
quorum-based replication protocols like PAXOS and RAFT.

_**Abstract**_

Chain replication is a new approach to coordinating clusters of fail-stop
storage servers. The approach is intended for supporting large-scale storage
services that exhibit high throughput and availability without sacrificing
strong consistency guarantees. Besides outlining the chain replication
protocols themselves, simulation experiments explore the performance
characteristics of a prototype implementation. Throughput, availability, and
several objectplacement strategies (including schemes based on distributed
hash table routing) are discussed.

  
Link to the paper: <http://www.cs.cornell.edu/home/rvr/papers/osdi04.pdf>

## [2015-07-09 PWL#9: Dedalus: Datalog in Time and Space](https://www.meetup.com/Papers-We-Love-Seattle/events/223224228/)
Derek Elkins will present on "Dedalus: Datalog in Time and Space" touching
also on some follow-on work.

**Abstract. **

Recent research has explored using Datalog-based languages to express a
distributed system as a set of logical invariants. Two properties of
distributed systems proved difficult to model in Datalog. First, the state of
any such system evolves with its execution. Second, deductions in these
systems may be arbitrarily delayed, dropped, or reordered by the unreliable
network links they must traverse. Previous efforts addressed the former by
extending Datalog to include updates, key constraints, persistence and events,
and the latter by assuming ordered and reliable delivery while ignoring delay.
These details have a semantics outside Datalog, which increases the complexity
of the language and its interpretation, and forces programmers to think
operationally. We argue that the missing component from these previous
languages is a notion of time.

In this paper we present Dedalus, a foundation language for programming and
reasoning about distributed systems. Dedalus reduces to a subset of Datalog
with negation, aggregate functions, successor and choice, and adds an explicit
notion of logical time to the language. We show that Dedalus provides a
declarative foundation for the two signature features of distributed systems:
mutable state, and asynchronous processing and communication. Given these two
features, we address two important properties of programs in a domain-specific
manner: a notion of safety appropriate to non-terminating computations, and
stratified monotonic reasoning with negation over time. We also provide
conservative syntactic checks for our temporal notions of safety and
stratification. Our experience implementing full-featured systems in variants
of Datalog suggests that Dedalus is well-suited to the specification of rich
distributed services and protocols, and provides both cleaner semantics and
richer tests of correctness.

Tech Report version:
[<http://www.eecs.berkeley.edu/Pubs/TechRpts/2009/EECS-2009-173.html>](http://www.eecs.berkeley.edu/Pubs/TechRpts/2009/EECS-2009-173.html)  
Published version:
[<http://db.cs.berkeley.edu/papers/datalog2011-dedalus.pdf>](http://db.cs.berkeley.edu/papers/datalog2011-dedalus.pdf)

Earlier work:

Overlog -
[<http://db.cs.berkeley.edu/netdb-09/>](http://db.cs.berkeley.edu/netdb-09/)

Related work:  
Bloom - [<http://www.bloom-lang.net/>](http://www.bloom-lang.net/)

The CALM and CRON Conjectures (which have since been proven): [<http://www
.bloom-lang.net/calm/>](http://www.bloom-lang.net/calm/) (I recommend the
keynote talk and paper, "The Declarative Imperative" which introduced the CALM
and CRON conjectures.)

## [2015-08-13 Mesos - A Platform for Fine-Grained Resource Sharing in the Data Center](https://www.meetup.com/Papers-We-Love-Seattle/events/224064458/)
**Abstract**

We present Mesos, a platform for sharing commodity clusters between multiple
diverse cluster computing frameworks, such as Hadoop and MPI. Sharing improves
cluster utilization and avoids per-framework data replication. Mesos shares
resources in a fine-grained manner, allowing frameworks to achieve data
locality by taking turns reading data stored on each machine. To support the
sophisticated schedulers of today's frameworks, Mesos introduces a distributed
two-level scheduling mechanism called resource offers. Mesos decides how many
resources to offer each framework, while frameworks decide which resources to
accept and which computations to run on them. Our results show that Mesos can
achieve near-optimal data locality when sharing the cluster among diverse
frameworks, can scale to 50,000 (emulated) nodes, and is resilient to
failures.

**  
**

**Presenter:**

Ankur Chauhan

**Links:**

[<https://www.cs.berkeley.edu/~alig/papers/mesos.pdf>](https://www.cs.berkeley.edu/~alig/papers/mesos.pdf)

  
[<http://mesos.apache.org>](http://mesos.apache.org)

  
[List of Mesos Frameworks](http://mesos.apache.org/documentation/latest/mesos-
frameworks/)

## [2015-09-10 PWL#11 Ideal Hash Trees](https://www.meetup.com/Papers-We-Love-Seattle/events/224687764/)
David Murray will present [Ideal Hash
Trees](http://lampwww.epfl.ch/papers/idealhashtrees.pdf):

"Hash Trees with nearly ideal characteristics are described. These Hash Trees
require no initial root hash table yet are faster and use significantly less
space than chained or double hash trees. Insert, search and delete times are
small and constant, independent of key set size, operations are O(1). Small
worst-case times for insert, search and removal operations can be guaranteed
and misses cost less than successful searches. Array Mapped Tries(AMT), first
described in Fast and Space Efficient Trie Searches, Bagwell [2000], form the
underlying data structure. The concept is then applied to external disk or
distributed storage to obtain an algorithm that achieves single access
searches, close to single access inserts and greater than 80 percent disk
block load factors. Comparisons are made with Linear Hashing, Litwin, Neimat,
and Schneider [1993] and B-Trees, R.Bayer and E.M.McCreight [1972]. In
addition two further applications of AMTs are briefly described, namely,
Class/Selector dispatch tables and IP Routing tables. Each of the algorithms
has a performance and space usage that is comparable to contemporary
implementations but simpler. "

## [2015-10-08 PWL#12 Predicting Voice Elicited Emotions](https://www.meetup.com/Papers-We-Love-Seattle/events/225127189/)
<https://goo.gl/uJ4Mvk>

This time **Jose Contreras** will be presenting a KDD paper on "**Predicting
Voice Elicited Emotions**".

**Abstract: **

We present the research, and product development and deployment, of Voice
Analyzer™ by Jobaline Inc. This is a patent pending technology that analyzes
voice data and predicts human emotions elicited by the paralinguistic elements
of a voice.

Human voice characteristics, such as tone, complement the verbal
communication. In several contexts of communication, “how” things are said is
just as important as “what” is being said. This paper provides an overview of
our deployed system, the raw data, the data processing steps, and the
prediction algorithms we experimented with. A case study is included where,
given a voice clip, our model predicts the degree in which a listener will
find the voice “engaging”. Our prediction results were verified through
independent market research with 75% in agreement on how an average listener
would feel. One application of Jobaline Voice Analyzer technology is for
assisting companies to hire workers in the service industry where customers’
emotional response to workers’ voice may affect the service outcome. Jobaline
Voice Analyzer is deployed in production as a product offer to our clients to
help them identify workers who will better engage with their customers. We
will also share some discoveries and lessons learned.

Link to the paper:

[<https://goo.gl/uJ4Mvk>](https://goo.gl/uJ4Mvk)

## [2015-11-12 PWL #13: Survivable Key Compromise in Software Update Systems](https://www.meetup.com/Papers-We-Love-Seattle/events/225811209/)
Ryan Cox will cover "Survivable Key Compromise in Software Update Systems".
What happens when your signing keys are compromised or checked into GitHub?
He will demo Notary, Docker's implementation of TheUpdateFramework; described
in the paper. TUF is a system that grew out of Tor and is capable of surviving
key compromises as well as several other issues in current update managers.

Paper:
[<https://isis.poly.edu/~jcappos/papers/samuel_tuf_ccs_2010.pdf>](https://isis.poly.edu/~jcappos/papers/samuel_tuf_ccs_2010.pdf)

Samuel, Justin, et al. "Survivable key compromise in software update systems."
Proceedings of the 17th ACM conference on Computer and communications
security. ACM, 2010.

## [2015-12-10 PWL #14: A Critique of the CAP Theorem](https://www.meetup.com/Papers-We-Love-Seattle/events/226493450/)
Trevor Lalish-Menagh will present "A Critique of the CAP Theorem." Abstract:

The CAP Theorem is a frequently cited impossibility result in distributed
systems, especially among NoSQL distributed databases. In this paper we survey
some of the confusion about the meaning of CAP, including inconsistencies and
ambiguities in its definitions, and we highlight some problems in its
formalization. CAP is often interpreted as proof that eventually consistent
databases have better availability properties than strongly consistent
databases; although there is some truth in this, we show that more careful
reasoning is required. These problems cast doubt on the utility of CAP as a
tool for reasoning about trade-offs in practical systems. As alternative to
CAP, we propose a "delay-sensitivity" framework, which analyzes the
sensitivity of operation latency to network delay, and which may help
practitioners reason about the trade-offs between consistency guarantees and
tolerance of network faults.

<http://arxiv.org/abs/1509.05393>

## [2016-01-14 PWL #15: The Dataflow Model and Millwheel: Fault tolerant stream processing](https://www.meetup.com/Papers-We-Love-Seattle/events/226850256/)
Ankur Chauhan will present the latest research on stream processing systems
that was recently presented at VLDB 2015 by the team at Google. The paper is
titled: "**The Dataflow Model: A Practical Approach to Balancing Correctness,
Latency, and Cost in Massive-Scale, Unbounded, Out-of-Order Data
Processing**". This presents the state of the art in stream processing systems
at scale and are also the technologies that lie at the heart of [Google Cloud
Dataflow](https://cloud.google.com/dataflow/what-is-google-cloud-dataflow).

**Abstract:**

Unbounded, unordered, global-scale datasets are increasingly common in day-to-
day business (e.g. Web logs, mobile usage statistics, and sensor networks). At
the same time, consumers of these datasets have evolved sophisticated
requirements, such as event-time ordering and windowing by features of the
data themselves, in addition to an insatiable hunger for faster answers.
Meanwhile, practicality dictates that one can never fully optimize along all
dimensions of correctness, latency, and cost for these types of input. As a
result, data processing practitioners are left with the quandary of how to
reconcile the tensions between these seemingly competing propositions, often
resulting in disparate implementations and systems. We propose that a
fundamental shift of approach is necessary to deal with these evolved
requirements in modern data processing. We as a field must stop trying to
groom unbounded datasets into finite pools of information that eventually
become complete, and instead live and breathe under the assumption that we
will never know if or when we have seen all of our data, only that new data
will arrive, old data may be retracted, and the only way to make this problem
tractable is via principled abstractions that allow the practitioner the
choice of appropriate tradeoffs along the axes of interest: correctness,
latency, and cost. In this paper, we present one such approach, the Dataflow
Model, along with a detailed examination of the semantics it enables, an
overview of the core principles that guided its design, and a validation of
the model itself via the real-world experiences that led to its development.

  
**Papers:**

* [The Dataflow Model: A Practical Approach to Balancing Correctness, Latency, and Cost in Massive-Scale, Unbounded, Out-of-Order Data Processing](http://www.vldb.org/pvldb/vol8/p1792-Akidau.pdf)

* [MillWheel: Fault-Tolerant Stream Processing at Internet Scale](http://static.googleusercontent.com/media/research.google.com/en/us/pubs/archive/41378.pdf)

## [2016-01-27 PWL #15.5: Scalable Atomic Visibility with RAMP Transactions](https://www.meetup.com/Papers-We-Love-Seattle/events/227565360/)
_[Hi fellow paper lovers! We're starting to build up a decent backlog of
topics, I've heard from a couple interested people who have trouble making the
usual Thursday timeslot, so I figured it might be fun to try a second event in
January on a different night of the week to spread the love around. For the
moment I'm only committing to one, but if it's a hit maybe we'll turn it into
a regular thing. Let me know your feelings on the subject, if you have them!]_

Denis Rystsov will present "Scalable Atomic Visibility with RAMP Transactions"
by Peter Bailis, Alan Fekete, Ali Ghodsi, Joseph M. Hellerstein and Ion
Stoica.

It's a fresh paper of last year (2014) where authors propose a new isolation
model — Read Atomic (RA) isolation — that helps to achieve incredible
scalability in multi-partition distributed databases.

Read Atomic isolation is similar to Read Committed isolation, and provides
atomic visibility: either all or none of each transaction’s updates are
observed by other transactions. Bailis and friends describe algorithms for
Read Atomic MultiPartition (RAMP) transactions that enforce atomic visibility
while offering excellent scalability, guaranteed commit despite partial
failures (via synchronization independence), and minimized communication
between servers (via partition independence).

We'll discuss RAMP transactions, its limitations and the way to handle the
lost update problem.

[<http://www.bailis.org/papers/ramp-
sigmod2014.pdf>](http://www.bailis.org/papers/ramp-sigmod2014.pdf)

Thanks to the lovely folks at Thomas Street
([<http://thomasstreet.com>](http://thomasstreet.com)) for hosting this one!

## [2016-02-11 PWL #16: Chord](https://www.meetup.com/Papers-We-Love-Seattle/events/227211670/)
Tristan Penman will present Chord: A Scalable Peer-to-peer Lookup Service for
Internet Applications.

"A fundamental problem that confronts peer-to-peer applications is to
efficiently locate the node that stores a particular data item. This paper
presents Chord, a distributed lookup protocol that addresses this problem.
Chord provides support for just one operation: given a key, it maps the key
onto a node. Data location can be easily implemented on top of Chord by
associating a key with each data item, and storing the key/data item pair at
the node to which the key maps. Chord adapts efficiently as nodes join and
leave the system, and can answer queries even if the system is continuously
changing. Results from theoretical analysis, simulations, and ex- periments
show that Chord is scalable, with communication cost and the state maintained
by each node scaling logarithmically with the number of Chord nodes."

[<https://pdos.csail.mit.edu/papers/chord:sigcomm01/chord_sigcomm.pdf>](https://pdos.csail.mit.edu/papers/chord:sigcomm01/chord_sigcomm.pdf)

## [2016-03-10 PWL #17: Fuzzing: The State of the Art](https://www.meetup.com/Papers-We-Love-Seattle/events/228753723/)
Fuzzing is a technique to find software defects by providing random(ish) input
to a system, and watching to see which patterns of input cause bad behavior.

The paper is "Fuzzing: The State of the Art", available here:  
<http://www.dtic.mil/dtic/tr/fulltext/u2/a558209.pdf>

The talk will go over the history of fuzzing, different methods of fuzzing,
and how fuzzing can be applicable to your everyday life.

## [2016-03-29 PWL #17.5: Immutability Changes Everything](https://www.meetup.com/Papers-We-Love-Seattle/events/229594574/)
[Hi fellow paper lovers! One of *my* favorite paper-lovers, Pat Helland, is
going to be in town later this month, and we talked him into doing a PWL while
he's here! It's kind of cheating because he loves a paper that he wrote, but
he got shoehorned into this by well-meaning fan-persons without much time to
prepare so I'll still count it :)]

<http://www.cidrdb.org/cidr2015/Papers/CIDR15_Paper16.pdf>

Abstract:

"There is an inexorable trend towards storing and sending immutable data. We
need immutability to coordinate at a distance and we can afford immutability,
as storage gets cheaper.

This paper is simply an amuse-bouche on the repeated patterns of computing
that leverage immutability. Climbing up and down the compute stack really does
yield a sense of déjà vu all over again."

Who is this Pat person?

"Pat Helland has been implementing transaction systems, databases, application
platforms, distributed systems, fault-tolerant systems, and messaging systems
since 1978. For recreation, he occasionally writes technical papers. He
currently works at Salesforce."

## [2016-04-14 PWL #18: Conflict-Free Replicated Data Types](https://www.meetup.com/Papers-We-Love-Seattle/events/229471493/)
Y'all have called my bluff, we're talking about CRDTs! We'll use "A
comprehensive study of Convergent and Commutative Replicated Data Types."

  
[<http://hal.upmc.fr/inria-00555588/document>](http://hal.upmc.fr/inria-00555588/document)

Eventual consistency aims to ensure that replicas of some mutable shared
object converge without foreground synchronisation. Previous approaches to
eventual consistency are ad-hoc and error-prone. We study a principled
approach: to base the design of shared data types on some simple formal
conditions that are sufficient to guarantee eventual consistency. We call
these types Convergent or Commutative Replicated Data Types (CRDTs). This
paper formalises asynchronous object replication, either state based or
operation based, and provides a sufficient condition appropriate for each
case. It describes several useful CRDTs, including container data types
supporting both add and remove operations with clean semantics, and more
complex types such as graphs, montonic DAGs, and sequences. It discusses some
properties needed to implement non-trivial CRDTs.

## [2016-05-12 PWL #19: CFA: A Practical Prediction System for Video QoE Optimization](https://www.meetup.com/Papers-We-Love-Seattle/events/230398379/)
Many prior efforts have suggested that Internet video Quality of Experience
(QoE) could be dramatically improved by using data-driven prediction of video
quality for different choices (e.g., CDN or bitrate) to make optimal
decisions. However, building such a prediction system is challenging on two
fronts. First, the relationships between video quality and observed session
features can be quite complex. Second, video quality changes dynamically.
Thus, we need a prediction model that is (a) expressive enough to capture
these complex relationships and (b) capable of updating quality predictions in
near real-time. Unfortunately, several seemingly natural solutions (e.g.,
simple machine learning approaches and simple network models) fail on one or
more fronts. Thus, the potential benefits promised by these prior efforts
remain unrealized. We address these challenges and present the design and
implementation of Critical Feature Analytics (CFA). The design of CFA is
driven by domain-specific insights that video quality is typically determined
by a small subset of critical features whose criticality persists over several
tens of minutes. This enables a scalable and accurate workflow where we
automatically learn critical features for different sessions on coarse-grained
timescales, while updating quality predictions in near real-time. Using a
combination of a real-world pilot deployment and trace-driven analysis, we
demonstrate that CFA leads to significant improvements in video quality; e.g.,
32% less buffering time and 12% higher bitrate than a random decision maker.

Paper: [<https://www.usenix.org/system/files/conference/nsdi16/nsdi16-paper-
jiang-
junchen.pdf>](https://www.usenix.org/system/files/conference/nsdi16/nsdi16
-paper-jiang-junchen.pdf)

Presenter: Ankur Chauhan (Sr Software Engineer, Brightcove Inc.)

## [2016-06-09 PWL #20: Liquid Haskell / PayWord and Micromint](https://www.meetup.com/Papers-We-Love-Seattle/events/231024908/)
[Hi friends! For June we're going to try something a little different - two
presenters talking about two different papers in a shorter format. I'm excited
to see how it works! As usual, if you have a paper you love and would like to
present at a future meetup, give me a shout! -d]

**PayWord and MicroMint: Two simple micropayment schemes**

This paper from 2001 written by Ronald Rivest and Adi Shamir (The R and S from
RSA) is discussing how to design a micropayments scheme when making one of
those was a popular idea. It uses relatively simple cryptography and some neat
tricks in order to build systems that solve a complex problem.

  
<http://people.csail.mit.edu/rivest/RivestShamir-mpay.pdf>

Harley graduated from the University of California, Riverside and has been a
developer for the past decade. They are interested in microservices, security,
and free software.

  
**Liquid Haskell**

Liquid Haskell is a type refinement framework which can be loosely described
as a more rigorous and mathematical testing framework. It helps provide static
guarantees that your code never gets into a "bad" state, giving you more
freedom to write code.

Garrett is a Software Engineer specializing in Java based distributed systems.
He is a Haskell coder on the side and has a passion for writing correct but
fast code.

[<http://goto.ucsd.edu/~rjhala/papers/real_world_liquid.pdf>](http://goto.ucsd.edu/~rjhala/papers/real_world_liquid.pdf)

  
**Remember**

  
We strictly abide by the [Code of Conduct](https://github.com/papers-we-love
/papers-we-love/blob/master/CODE_OF_CONDUCT.md) set forth by all PWL charters.

## [2016-07-14 PWL #21: The Art of the Propagator](https://www.meetup.com/Papers-We-Love-Seattle/events/231423465/)
**The Paper  
**Scott Francis presents [The Art of the Propagator](http://web.mit.edu/~axch/www/art.pdf). 

"We develop a programming model built on the idea that the basic computational
elements are autonomous machines interconnected by shared cells through which
they communicate. Each machine continuously examines the cells it is
interested in, and adds information to some based on deductions it can make
from information from the others. This model makes it easy to smoothly combine
expression-oriented and constraint-based programming; it also easily
accommodates implicit incremental distributed search in ordinary programs."

  
We will also be covering some extra material from the [Revised Report on the
Propagator Model](http://groups.csail.mit.edu/mac/users/gjs/propagators/) ,
which contains the practical results from implementing the Propagator Model in
MIT Scheme.

**Boring Details**  
Thanks to thePlatform for hosting!

We are on the 10th floor. Someone will be in the ground floor lobby to let
people in the door, and in the 10th floor lobby to see you in.

**A Friendly Post-Script**  
We strictly abide by the [Code of Conduct](https://github.com/papers-we-love
/papers-we-love/blob/master/CODE_OF_CONDUCT.md) set forth by all PWL charters.
Please reach out to one of the organizers if you have any issues or concerns.

## [2016-08-11 PWL #22: Tango: Distributed Data Structures over a Shared Log](https://www.meetup.com/Papers-We-Love-Seattle/events/232475084/)
**The Main Event:   
****Derek Elkins presents**[Tango: Distributed Data Structures over a Shared Log](http://www.cs.cornell.edu/~taozou/sosp13/tangososp.pdf).

```  
Distributed systems are easier to build than ever with the emergence of new,
data-centric abstractions for storing and computing over massive datasets.
However, similar abstractions do not exist for storing and accessing metadata.
To fill this gap, Tango provides developers with the abstraction of a
replicated, in-memory data structure (such as a map or a tree) backed by a
shared log. Tango objects are easy to build and use, replicating state via
simple append and read operations on the shared log instead of complex
distributed protocols; in the process, they obtain properties such as
linearizability, persistence and high availability from the shared log. Tango
also leverages the shared log to enable fast transactions across different
objects, allowing applications to partition state across machines and scale to
the limits of the underlying log without sacrificing consistency.  
```

**Where is this going down?**  
Thanks to Whitepages for hosting! Enter the building through the doors on 4th
Ave, and head for the elevators in the southwest corner of the building. Suite
1600 is on the 16th floor!

**Please keep in mind:**  
We strictly abide by and enforce the PWL [Code of Conduct](https://github.com
/papers-we-love/papers-we-love/blob/master/CODE_OF_CONDUCT.md). Please reach
out to one of the organizers if you have any issues or concerns.

## [2016-09-08 PWL #23: A New Implementation Technique for Applicative Languages](https://www.meetup.com/Papers-We-Love-Seattle/events/233068249/)
**PWL Mini**  
Tristan Penman presents [A Few Useful Things to Know about Machine
Learning](http://homes.cs.washington.edu/~pedrod/papers/cacm12.pdf).

At just over eight pages, this paper by Pedro Domingos delivers an
approachable summary of some of the challenges and misunderstandings faced by
those new to the field of Machine Learning.

**The Main Event**  
David Graunke presents [A New Implementation Technique for Applicative
Languages](http://foswiki.cs.uu.nl/foswiki/pub/Cco/CourseResources/new_implementation_technique.pdf)
from 1979.

  
The paper describes a technique for eliminating bound variables from lambda
calculus programs by compiling to a small set of combinators, and describes a
machine for executing the resulting combinator programs.

  
This paper is a pretty gentle introduction to the challenges of implementing
functional languages in a way that's simple and efficient. The compilation
algorithm in the paper is based on a very small set of rewrite rules that
makes it easy to understand and implement (and fun to do by hand!).

**Who What Where?**  
Thanks to Whitepages for hosting! Enter the building through the doors on 4th
Ave, and head for the elevators in the southwest corner of the building. Suite
1600 is on the 16th floor!

  
**Keep it Classy**  
We abide by and enforce the PWL [Code of Conduct](https://github.com/papers-
we-love/seattle/blob/master/code-of-conduct.md). Please give it a read and
involve one of the organizers if you need help.

## [2016-11-03 PWL #25: Flexible Paxos](https://www.meetup.com/Papers-We-Love-Seattle/events/234767068/)
**PWL Mini**  
David Murray presents [Inferring and Debugging Path MTU Discovery
Failures](https://www.usenix.org/legacy/event/imc05/tech/full_papers/luckie/luckie.pdf).

The Internet was built on rough consensus and running code, and the code does
in fact mostly run. This paper from 2005 discusses one of the edge cases where
it doesn't - an edge case that still occasionally bothers Papers We Love
presenters named David in 2016.

**The Main Event**  
Denis Rystsov presents [Flexible Paxos: Quorum intersection
revisited](https://arxiv.org/pdf/1608.06696v1.pdf).

The paper explores how non-standard quorum configurations can improve latency
without affecting correctness of a system. In this talk Denis will describe
how Paxos works and how Flexible Paxos differs from the other algorithms of
the Paxos family.

**Who What Where?**  
Big ups to Comcast for hosting this month! There will be a person at the front
door ushering folks up to the 11th Floor for the event. We will have food (of
course), again sponsored by Comcast.

**Please Remember**  
As a chapter of Papers We Love, we abide by and enforce the [PWL Code of
Conduct](https://github.com/papers-we-love/seattle/blob/master/code-of-
conduct.md) at our events. Please give it a read, plan on conducting yourself
accordingly, and involve one of the organizers if you have any concerns.

  
**Drinks Afterwards**  
Please join us afterwards to have drinks at
[Sazerac](http://www.sazeracrestaurant.com/) for more conversations over a
[Ravena or two](http://www.sazeracrestaurant.com/menus/menus.htm).

## [2016-12-01 PWL #26: Boruta && Maglev](https://www.meetup.com/Papers-We-Love-Seattle/events/235218146/)
It's a two-for-one Paper-loving holiday bonanza!

  
**Act I**  
Brandon Sherman presents [Boruta - A System for Feature
Selection](http://www.mimuw.edu.pl/~ajank/papers/Kursa2010.pdf).

"Machine learning methods are often used to classify objects described by
hundreds of attributes; in many applications of this kind a great fraction of
attributes may be totally irrelevant to the classification problem. Even more,
usually one cannot decide a priori which attributes are relevant. In this
paper we present an improved version of the algorithm for identification of
the full set of truly important variables in an information system."

**Act II**  
Ryan Cox presents Maglev: A Fast and Reliable Software Network Load Balancer.

"Maglev is Google’s network load balancer. It is a large distributed software
system that runs on commodity Linux servers. Unlike traditional hardware
network load balancers, it does not require a specialized physical rack
deployment, and its capacity can be easily adjusted by adding or removing
servers."

**Who What Where?**  
Big ups to [Thomas Street](http://thomasstreet.com/) for hosting! Show up at
6:30 for food (banh mi and springs rolls) and talking; presentations and
discussion of the papers will begin at 7:00.

**Please Remember**

  
Like all chapters of Papers We Love, we abide by and enforce the [PWL Code of
Conduct](https://github.com/papers-we-love/seattle/blob/master/code-of-
conduct.md). Please give it a read, plan on conducting yourself accordingly,
and involve one of the organizers if you have any concerns.

## [2017-01-05 PWL #27: New Directions in Cryptography](https://www.meetup.com/Papers-We-Love-Seattle/events/235992744/)
**The Main Event  
**David Murray presents [New Directions in Cryptography](https://www.cs.upc.edu/~diaz/diffie.hellman.pdf) and [A Method for Obtaining Digital Signatures and Public-Key Cryptosystems](http://people.csail.mit.edu/rivest/Rsapaper.pdf).

These two classic papers are big favorites of mine. New Directions in
Cryptography introduced the idea of digital signatures and public key
cryptosystems, and reduced both problems to the search for a trap-door one-way
permutation. Although Diffie and Hellman were unable to come up with such a
permutation (settling for "just" Diffie-Hellman-Merkle key exchange), they
laid the theoretical framework and invited others to join the search. Rivest,
Shamir, and Adleman read the paper, did a lot of hard thinking, and a year
later published A Method for Obtaining Digital Signatures and Public-Key
Cryptosystems - now known as the RSA algorithm.

David works on Infrastructure Security for Salesforce.com.

**Who What Where**  
Big ups to [WeWork](https://www.wework.com/) for providing the space and
[Salesforce](https://trust.salesforce.com/en/security/) for providing the
victuals! Enter through the doors on the north corner of the building -
they'll be locked by 6:30 (when food starts), but we'll have someone down
there to let you in until 7:00 (when discussion of the paper starts).

**And Please Remember**

  
Like all chapters of Papers We Love, we abide by and enforce the [PWL Code of
Conduct](https://github.com/papers-we-love/seattle/blob/master/code-of-
conduct.md). Please give it a read, plan on conducting yourself accordingly,
and involve one of the organizers if you have any concerns.

## [2017-02-02 PWL #28: Quicksort and Haskore](https://www.meetup.com/Papers-We-Love-Seattle/events/236557338/)
We will have Wale Ogundipe presenting on Quicksort ([paper
link](http://comjnl.oxfordjournals.org/content/5/1/10.full.pdf)), and Chris
Kolodin presenting on Haskore ([paper
link](http://citeseerx.ist.psu.edu/viewdoc/download?doi=10.1.1.36.8687&rep=rep1&type=pdf)).

Quicksort is one of the most important and ubiquitous algorithms of Computer
Science. If you use Google Chrome, you use it. In this short presentation,
Walé will summarize the paper and tease out some of its finer points. Please
feel free to read the paper ahead of time - it weighs in as 6 pages, so it
should be a relatively quick (gah, no pun intended) read.

## [2017-03-02 PWL #29: Gorilla: A fast, scalable, in-memory time series database](https://www.meetup.com/Papers-We-Love-Seattle/events/237408130/)
Error rates across one of Facebook’s sites were spiking. The problem had first
shown up through an automated alert triggered by an in-memory time-series
database called Gorilla a few minutes after the problem started. One set of
engineers mitigated the immediate issue. A second group set out to find the
root cause. They fired up Facebook’s time series correlation engine built on
top of Gorilla, and searched for metrics showing a correlation with the
errors. This showed that copying a release binary to Facebook’s web servers (a
routine event) caused an anomalous drop in memory used across the site

Open source version: <https://github.com/facebookincubator/beringei>

Lazy people paper summary:
<https://www.google.com/amp/s/blog.acolyer.org/2016/05/03/gorilla-a-fast-
scalable-in-memory-time-series-database/amp/>

Link to the paper: <http://www.vldb.org/pvldb/vol8/p1816-teller.pdf>

Link to slides: [<https://goo.gl/1dXMxt>](https://goo.gl/1dXMxt)

Food (veg and gluten-free included) and drinks provided!

## [2017-04-06 PWL #30: LKRhash](https://www.meetup.com/Papers-We-Love-Seattle/events/238400445/)
The Main Event

George Reilly presents [LKRhash](http://www.georgevreilly.com/content/LKRhash-for-SoftwarePE.pdf).

LKRhash is a scalable hashtable. It scales to multiple processors and to
millions of items. It was invented at Microsoft in the late 90s by Paul Larson,
Murali Krishnan, and George Reilly. This talk is based on an unpublished paper
that was submitted to Software: Practice & Experience.

## [2017-05-04 PWL #31: Projectional Editors and Parsing with Derivatives](https://www.meetup.com/Papers-We-Love-Seattle/events/239026973/)
To parse or not to parse: a two-for-one paper-loving showdown! 

David Murray presents [Projecting a Modular Future](http://www.voelter.de/data/pub/projectingModuleFuture.pdf) - [Code and Slides](https://github.com/papers-we-love/seattle/tree/master/projectional-editors)

> "We describe two innovations in programming languages: modularity and
> projectional editing. Language modularity refers to the ability to combine
> independently developed languages without changing their respective
> definitions. A language is not anymore a fixed quantity, instead it can be
> extended with domain-specific constructs as needed. Projectional editing
> refers to a technique of building editors and IDEs that avoid the need for
> parsers. They support a wide range of tightly integrated notations including
> textual, symbolic, tabular and graphical. In addition, by avoiding parsers,
> the well-known limitations of grammar composition are avoided as well."

David Graunke presents [Parsing with Derivatives](http://matt.might.net/papers/might2011derivatives.pdf)

> "We present a functional approach to parsing unrestricted context-free
> grammars based on Brzozowskiâ's derivative of regular expressions. If we
> consider context-free grammars as recursive regular expressions,
> Brzozowskiâ's equational theory extends without modification to context-free
> grammars (and it generalizes to parser combinators). The supporting actors in
> this story are three concepts familiar to functional programmers' laziness,
> memoization and fixed points; these allow Brzozowskiâ's original equations to
> be transliterated into purely functional code in about 30 lines spread over
> three functions." 

## [2017-05-31 PWL #32: The Styx Architecture for Distributed Systems](https://www.meetup.com/Papers-We-Love-Seattle/events/239551291/)
[Scott Francis](http://www.kurokoproject.com/about/) ([@mechazoidal](https://twitter.com/mechazoidal)) will be guiding us through two papers on the Styx Architecture. [The Styx Architecture for Distributed Systems](http://doc.cat-v.org/inferno/4th_edition/styx) and [Styx-on-a-Brick](http://doc.cat-v.org/inferno/4th_edition/styx-on-a-brick/) invented by [Rob Pike](https://research.google.com/pubs/r.html) (he invented the [Go language](https://golang.org/)) and [Dennis Ritchie](https://www.bell-labs.com/usr/dmr/www/index.html) (he co-invented the [C language](https://archive.org/details/TheCProgrammingLanguageFirstEdition)).

The protocol is effectively [9P](https://en.wikipedia.org/wiki/9P_(protocol)) (specifically 9P2000). Pike and Ritchie renamed the protocol after the papers were written to unify with [Plan 9](http://www.plan9.bell-labs.com/plan9/index.html).

Links:
* [https://pinboard.in/u:mechazoidal/t:plan9/](https://pinboard.in/u:mechazoidal/t:plan9/)
* [https://pinboard.in/u:mechazoidal/t:inferno/](https://pinboard.in/u:mechazoidal/t:inferno/)
* [https://pinboard.in/u:mechazoidal/t:9p/](https://pinboard.in/u:mechazoidal/t:9p/)
* [RCX Code](https://github.com/jschiefer/legostyx)

Here is the abstract to whet your appetite:

> A distributed system is constructed from a set of relatively independent
> components that form a unified, but geographically and functionally diverse
> entity. Examples include networked operating systems, Internet services, the
> national telephone switching system, and in general all the technology using
> todayâs diverse digital networks. Nevertheless, distributed systems
> remain difficult to design, build, and maintain, primarily because of the
> lack of a clean, perspicuous interconnection model for the components.

> Our experience with two distributed operating systems, Plan 9 and Inferno,
> encourages us to propose such a model. These systems depend on, advocate, and
> generally push to the limit a fruitful idea: to present their resources as
> files in a hierarchical name space. The objects appearing as files may
> represent stored data, but may also be devices, dynamic information sources,
> interfaces to services, and control points. The approach unifies and provides
> basic naming, structuring, and access control mechanisms for all system
> resources. A simple underlying network protocol, Styx, forms the core of the
> architecture by presenting a common language for communication within the
> system.

> Even within non-distributed systems, the presentation of services as files
> advantageously extends a familiar scheme for naming, classifying, and
> connecting to system resources. More important, the approach provides a
> natural way to build distributed systems, by using well-known technology for
> attaching remote file systems. If resources are represented as files, and
> there are remote file systems, one has a distributed system: resources
> available in one place are usable from another.
