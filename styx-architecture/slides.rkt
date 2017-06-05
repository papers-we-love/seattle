#lang slideshow
(slide
  #:title "Papers We Love 2017"
  (para #:align 'center "The Styx Architecture for Distributed Systems")
  (para #:align 'center "Rob Pike and Dennis M. Ritchie, 1999"))
(slide
  #:title "Definitions"
  (item "Plan 9 (from Bell Labs)")
  (subitem "a distributed operating system")
  (item "9P")
  (subitem "a simple message-oriented file system protocol")
  (item "Inferno")
  (subitem "a commercialized distributed portable operating system")
  (item "Styx")
  (subitem "an update of 9P for Inferno, officially '9P2000'")
  )
(slide
  #:title "What?"
  (para "What is a file? ")
  'next
  (item "Just a miserable pile of bytes!")
  'next
       (item "What does it matter where they come from in your program?")
       'next
       (bitmap "tweet_pike.png"))
(slide
  #:title "9p operations"
  (para (list (tt "version") " : start a new session"))
  (para (list (tt "attach/auth") " : attach/auth to the root of a file tree"))
  (para (list (tt "walk") " : walk up or down in the file tree"))
  (para (list (tt "open") " : open a file (directory) checking permissions"))
  (para (list (tt "create/remove") " : create or remove a file"))
  (para (list (tt "read/write") " : read or write data from an open file"))
  (para (list (tt "stat/wstat") " : retrieve or write a file’s attributes"))
  (para (list (tt "flush") " : flush pending requests (eg, on interrupt)"))
  (para (list (tt "clunk") " : discard a file tree reference (ie, close)"))
  (para (list (tt "error") " : (not an operation) error reply with diagnostic"))
  )
(slide
  #:title "OS-level operations"
  (para (list (tt "bind") ": create a new reference to another file/directory"))
  (subitem "(the original union mount!)")
  (para (list (tt "mount") " : create a reference to a file server on an existing directory"))
  (para (list (tt "unmount") " : remove a bind or mount reference"))
  (para (list (tt "exportfs") " : translates file calls into system calls and vice-versa," (it "itself as a file server")) )
  )
(slide
  #:title "Thus!"
    (item "A \"file server\" is any program that manufactures a name space by implementing the server-side of 9P")
    'next
    (item (list "The entire name space is thus" (it "computable")))
    'next
    (item (list "There is" (it "no") "true name space"))
    'next
    (subitem "The Farnsworth Parabox")
    'next
     (item "open /net/tcp/clone -> /net/tcp/42")
    'next
     (subitem "It didn't exist a second ago!")
     'next
     (subitem "No other process can see it!")
     'next
     (subitem "do it again -> /net/tcp/43")
  )
(slide
  #:title "Relate this to programming!"
  'next
  (para "\"to jail a process, simply give it a namespace that doesn't have anything you don't want it to\"")
  'next
    (item "Lua: setfenv / setupvalue")
    'next
    (subitem "Just provide a table of functions to an environment!")
    'next
    (item "Io / Self")
    'next
    (subitem "Just remove the base slot reference once you have an object setup!")
    'next
    (item "Smalltalk")
    'next
    (subitem "Message-send and truly private variables (ok, reaching)"))
  (slide
    #:title "Uses:"
   (item "Devices!")
   (subitem "PathStar")
   'next
   (item "Shells!")
   (subitem "cpu / rc")
   'next
   (item "IPC / Message bus!")
   (subitem "plumber")
   'next
   (item "Graphics!")
   (subitem "rio")
   'next
   ;(item "Mail reader!")
   ;(subitem "upas")
   (item "IDE!")
   (subitem "acme")
   )
(slide
  (para #:align 'center "Styx On A Brick")
  'next
  (para #:align 'center "(a serious write-up)"))
(slide
    (para #:align 'center "An example of a \"distributed system\"")
    'next
    (para #:align 'center "...but done as a LAN over exotic data links")
  
  )
(slide
  #:title "But on an embedded device?"
  'next
 (item "Nobody says you need a full 9P implementation")
  'next
 (subitem (list "you just need "(it "enough")))
  'next
 (item "Can fake qids or subsidiary nodes to reduce code size")
 )
(slide 
  #:title "an aside"
  'next
  (item "like the Scheme of network protocols")
  'next
  (subitem "For the most part, it is very simple, but people see need to extend it to fit their environments.")
  'next
  (subitem "Luckily this is done in ways that are often backwards compatible.")
  
  )
(slide
 #:title "Mapping physical devices"
  'next
 (item "Just make them \"files!\"")
  'next
 (subitem "Read = sensors")
  'next
 (subitem "Write = motors")
  'next
 (item "Let the bind'ee determine how to use them!")
 )
(slide 
  #:title "But unsaaafe!"
  'next
  (item "McIlroy vs. Knuth")
  'next
  (subitem "6 lines and 4 Unix commands to replace an entire literate program")
  'next
  (item "It may not be safe, but that's not what it's for"))

(slide
 #:title "But 9P isn't used anymore, right?"
 'next
 (item "QEMU: libvirt")
 (item "Erlang-on-Xen:  code loading, storage access, node monitoring, message passing, goofs(filesystem)")
 (item "https://github.com/chaos/diod : supercomputing interconnect")
 (item "Forsyth's use of inferno for grid computing")
 )
(slide
  #:title "Wrapup"
  'next
 (para #:align 'center "I love this paper!")
  'next
 (para #:align 'center "The idea is so simple, almost trivial")
  'next
 (para #:align 'center "\"Everything falls out of doing the little stuff right\"")
  'next
 (para #:align 'center "It gives discoverability back to the user, doesn't remove need for docs/protocols/agreements")
 )
(current-font-size 24)
(slide
 #:title "Further reading/watching"
 (para #:align 'center "The Ubiquitious File Server in Plan 9 : ")
(para #:align 'center "http://doc.cat-v.org/plan_9/misc/ubiquitous_fileserver/ubiquitous_fileserver.pdf")
 (para #:align 'center "LP49: Embedded system OS based on L4 and Plan 9 : ")
 (para #:align 'center"http://lsub.org/iwp9/cready/lp49_iwp9_camera_ready.pdf")
 (para #:align 'center"OSHUG 46 — The Name Game, feat. Plan 9 & Inferno, Dr Charles Forsyth : ")
(para #:align 'center"https://www.youtube.com/watch?v=3d1SHOCCDn0")
 )
