#lang slideshow

(slide
  #:title "Papers We Love 2016"
  (item "The Art Of The Propagator")
  (subitem "Alexey Radul and Gerald Jay Sussman, 2009")
  (item "Revised Report on the Propagator Model")
  (subitem "Alexey Radul and Gerald Jay Sussman"))
(slide
  #:title "The what now?"
  (item "\"Place\": memory location")
  'next
  (item "\"Source\": produces the value that is to be put in the place")
  'next
  (item "Most languages: 1 value = 1 source")
  'next
  (item "But what if we...relaxed that?"))
(slide
  #:title "Propagator Network"
  (item "Places can receive values from multiple sources")
  'next
  (item "An individual source doesn't have to know the complete value for a place")
  'next
  (item "And if places can combine sources, why not delay computations for the resulting value?")
  'next
  (item "Now we have a \"network\" of how values flow between places"))
(slide
  #:title "The simplest thing that could possibly work"
  (item "Place = \"Cell\"")
  'next
  (subitem "Stores everything it knows about a single value(or \"Nothing\")")
  (subitem "Maintains a set of other propagators to be notified upon change")
  'next
  (item "Source = \"Propagator\"")
  'next
  (subitem "Registers cells that it's interested in")
  (subitem "Does something only if it has inputs worth working on")
)
  ; compound-propagator?
(slide #:title "Partial Credit"
       (item "A single cell can get information from multiple sources")
       'next
       (item "Therefore, the cell acts as the unifier")
       'next
       (item "Especially when we drop the need for discrete values.")
       'next
       (item "Allow 'merge' to take intervals!")
       )
(slide #:title "Barometer abuse"
       (item "Make a network that measures the height of a building")
       'next
       (subitem "Dropping a barometer: h = 1/2gt^2")
       (subitem "Measuring height of barometer: h = s(hba / sba)")
       'next
       (item "Combine! ")
       'next
       (item "The nontrivial combination of partial information from different sources"))
(slide #:title "So what?"
       (item "We can already do that in most languages!")
       'next
       (item "Yeah, but since we can merge results, would you believe me if I said we could...")
       'next
       (subitem "trivially add constraints?(stack some mutual inverses inside operators)")
       'next
       (subitem "run it in reverse(add a propagator that feeds back into a source cell)")
       
       )
(slide #:title "Revised Report interlude"
       (item "Cell operations:")
       'next
       (subitem "(externally) add content")
       'next
       (subitem "collect(merge) accumulated content")
       'next
       (subitem "register a propagator to be notified")
       'next
       (item "Math:")
       (subitem "Merging must be monotonic, with respect to lattice induced by merge")
  )
(slide #:title "Revised Report interlude 2"
  (item "Propagator operations must be:")
  'next
  (subitem "commutative" )
  'next
  (subitem "associative" )
  'next
  (subitem "idempotent")
  (item "(That's all we need for cells + propagators!)"))
(slide #:title "Dependencies"
       (item "if the network observes an inconsistency, we \"chuckle\" instead of crashing")
       'next
       (item "This isn't Star Trek!")
       'next
       (item "We can deal with logical inconsistencies just fine, Kirk!")
       ; kirk-laughing.jpg
       )
(slide #:title "How do we know it's inconsistent?"
       (item "Every piece of data/procedure came from somewhere!")
       'next
       (item "Either it entered as a premise, or it was created by combining other data.")
       'next
       (item "With enough metadata decoration, we can show HOW each datum was derived.")
       'next
       (subitem "Yes, this might require more storage space"))
(slide #:title "The World According to Prop"
       (item "New definitions: world view")
       'next
       (item "A subset of the data that is supported by a given set of explicit assumptions")
       'next
       (item "IF a contradiction is discovered, the process can now determine WHICH set are \"nogood\"")
       'next
       (item "The \"chuckle\": no computation supported by any superset of those premises can be believed")
       )
(slide #:title "The truth may be found in one's pocket"
       (item "New definition: Truth Maintenance System")
       'next
       (subitem "A system for storing multiple world views")
       'next
       (subitem "A set of items representing direct deductions the surrounding system has added, and any consequences derived.")
       )
(slide #:title "Truth is complicated!"
    (item "When TMSs are merged, the facts are assimilated from the incoming one") 
    'next
    (subitem "Only consequences that are relevant to the current worldview are deduced") 
    'next
    (subitem "If we don't have the consequence yet, feed it back into ourself and check it for consistency")
    'next
    (subitem "If this results in a contradiction, we yell that no further computations should be done in this worldview") 
    'next
    (subitem "If the information in a previous TMS result is already in the new one, we can simply throw it away") 
      )
(slide #:title "Truth is complicated!"
    (item "Combining these approaches, we can find the most informative consequence of the current worldview just by using 'merge'!") 
)
(slide #:title "Never forget"
       (item "Remember that the TMS has its own memory!")
       'next
       (item "Even if we \"kick-out\" a prior datum, we can bring it back in later on!")
       'next
      (item "We also record which ones were bad, so we can throw them out of a search tree.") 
      'next
      (item "This 'metadata' can record HOW we got to a result, not just the result itself")
      'next
      (item "The network will not propagate consequences deducible in an inconsistent worldview") 
       )
(slide #:title "Searching by guessing"
       (item "Now allow the receiver to \"throw back\" results if they are not acceptable")
       'next
       (item "The sender now knows about this, and must propose an alternate")
       'next
       (subitem "Now we can allow the network to traverse its own search tree much more efficiently")
       'next
       (item "This now starts to resemble \"dependency-directed backtracking\"")
       )
(slide #:title "Dependency tracking"
    (item "If we can move both ways, that could lead to complexity explosion.")
    'next
    (item "So let's allow each choice to reverse its decision, and keep track of the ones that worked out")
    'next
    (item "If we can do that, why not start making guesses?")
    'next
    (item "With that, we can now manufacture new premises and modify the contradiction detection to inform the guessers of their mistakes(and allow them to change their minds)")
    'next
    (item "We now have a directed implicit search!")
       )
;(slide #:title "Now we are implicit"
       ;(item "By using a combination of these strategies, we achieve modular flexibility and evolution")
       ;(item "We no longer fear endless searches")
       ;(item "And we can join propagator networks without end, without worry of an infinite result")
       ;(subitem "A query to a cell may be restricted to values supported by a subset of the set of possible premises")
       ;)
(slide #:title "mindblown.gif"
    (item "Or more mathy: \"a distributed incremental implicit-SAT solver based on propositional resolution\"")
    'next
    (item "From the point of view of the solver, the problem is implicit in the computation")
    'next
    (item "From the point of view of the computation, the search done by the solver is implicit")
    'next
    (item "These networks resemble \"applicative order lambda calculus\": the propagators \"push\" data through the network.")
)
;(slide #:title "\"There is more to do\""
    ;(item "Can you \"pull\" from the network as well? Maybe represent them as explicit requests")
    ;(item "Only \"atomic\" values are covered so far")
    ;(item "There is no reason to require time to pass uniformly in a network!")
;)
(slide #:title "Tantalizing experiments"
       'next
    (item "\"The propagator wiring diagram is more analogous to assembly language than expression languages\"")
    'next
    (subitem "a virtual machine that implemented ONLY the cell/propagator options?")
    (subitem "such RPython, very wow")
    'next
    (item "\"There is no reason to require time to pass uniformly and synchronously in all regions of the network\"")
    'next
    (subitem "Using the CALM theorem to synchronize cells across remote nodes?")
    (subitem "Fold it into the \"merge\" operation?"))

(slide #:title "Revised Report"
       (item "The \"shop manual\", as opposed to the theory")
       'next
       (item "Demonstrates all of the background wiring")
       'next
       (item "Flip between both as necessary"))

(slide #:title "Caveats"
    (item "Propagator prototype is written in MIT Scheme")
    'next
    (item "Also needs \"scmutils\" package for full performance")
    'next
    (subitem "Of course most package managers don't even include mit-scheme, let alone scmutils"))

(slide #:title "Ramifications and musings"
       (item "Compare to the Actor model")
       'next
       (item "Compare to Alan Kay's vision of what Smalltalk was aiming for"))

(slide #:title "Other people's thoughts"
  (item "Lambda the Ultimate poster ") 
  (subitem "\"this paper is not \"we made propagators\", it's more about \"what if we do all computations through propagators\"\"")
  'next
  (subitem "\"their conclusion might be \"you get something similar to a constraint system\"\"") )

(slide #:title "Other people's thoughts"
  (item "A conversation with Sussman")
  'next
    (subitem "\"Sussman saw these [asynchronous programming, AI] as interlinked, and that's what the propagator system is all about! \"")
    'next
    (subitem "\"AI should be \"accountable\", in the sense that it should be able to express its symbolic reasoning, and be held up to whether or not its assumptions held up to that. \""))
(slide #:title "Credits"
  (item "Propagator Network Prototype")
  (subitem "https://github.com/namin/propagators")
  (item "Lambda the Ultimate: The Art of the Propagator")
  (subitem "http://lambda-the-ultimate.org/node/3250#comment-47997")
  (item "A conversation with Sussman")
  (subitem "http://dustycloud.org/blog/sussman-on-ai"))

(slide #:title "~fin~"
       (item "\"If you didn't have fun, we were doing it wrong.\""))
