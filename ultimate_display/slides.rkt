#lang slideshow
(slide
#:title "Papers We Love 2019"
(para #:align 'center "The Ultimate Display")
(para #:align 'center "Ivan E. Sutherland")
)

(slide #:title "Who am I?"
       (item (list "Scott Francis"))
       (item (list "http://www.kurokoproject.com"))
       (item (list "A guy who loves graphics: motion, animation, making things appear that don't exist in real life."))
       )


; old ivan photo
(slide 
    #:title "Who's Ivan Sutherland?"
    (item (list "Bachelor’s degree in electrical engineering from the Carnegie Institute of Technology (now Carnegie Mellon University) in 1959"))
       (item (list "Master’s degree from the California Institute of Technology (Caltech) in 1960"))
       (item (list "Ph.D. from the Massachusetts Institute of Technology (MIT) in EECS in 1963 with his dissertation, 'Sketchpad: A Man-Machine Graphical Communication System,' under the direction of the information theory pioneer Claude Shannon")))

; ivan at sketchpad
(slide (para "From 1968 to 1974, Sutherland was a professor at the University of Utah. ")
(item (list "Alan Kay"))
(item (list "Henri Gouraud"))
(item (list "Frank Crow(antialiasing)"))
(item (list "Edwin Catmull"))
(item (list "Jim Clark"))
)

(slide 
  #:title "The Paper (1965)"
    (para "For Augmented Reality, this is the equivalent of Vannevar Bush’s famous essay about computer networks, “As We May Think” (1945)."
       )
    (para "Every paragraph, when unpacked, pointed the way towards decades of computer graphics development"
    )
)

(slide #:title "Original paper"
( para "We live in a physical world whose properties we have come to know well through long familiarity. We sense an involvement with this physical world which gives us the ability to predict its properties well. For example, we can predict where objects will fall, how well-known shapes look from other angles, and how much force is required to push objects against friction. We lack corresponding familiarity with the forces on charged particles, forces in non-uniform fields, the effects of non projective geometric transformations, and high-inertia, low friction motion. A display connected to a digital computer gives us a chance to gain familiarity with concepts not realizable in the physical world. It is a looking glass into a mathematical wonderland." )
)
; sketchpad flowchart

(slide #:title "Original paper"
(para  "Computer displays today cover a variety of capabilities. Some have only the fundamental ability to plot dots. Displays being sold now generally have built in line-drawing capability. An ability to draw simple curves would be useful. Some available displays are able to plot very short line segments in arbitrary directions, to form characters or more complex curves. Each of these abilities has a history and a known utility." )
)

; sketchpad demo
; splines/curves

(slide #:title "Original paper"
(para  "It is equally possible for a computer to construct a picture made up of colored areas. Knowlton's movie language, BEFLIX [1], is an excellent example of how computers can produce area-filling pictures. No display available commercially today has the ability to present such area-filling pictures for direct human use. It is likely that new display equipment will have area-filling capability. We have much to learn about how to make good use of this new ability." )
)

; beflix slides
; tempest vector display
; raster display
(slide #:title "Display" (para "https://en.wikipedia.org/wiki/Frame_buffer"))
; superpaint
(slide #:title "Display" (para "SuperPaint system: Data General Nova, '311,040 bytes of memory and was capable of storing 640 by 480 pixels of data with 8 bits of color depth. The memory was scattered across 16 circuit boards'"))

; frame buffer cards

(slide #:title "Display" (para "1 (one) megabyte(!)"))

; 747 flight simulator
(slide #:title "Display" (para "'So, the Novoview simulators drew all of the polygons in normal raster manner, but the light points were written to a separate buffer. The backend of the graphics machine, where the pixels were read out of the frame buffer and sent to the display finished that task quicker than the frame time. The remaining time in the frame was used to calligraphically render the light points. Each light point would be read from the buffer, the CRT beam (actually beams, because this was a full color display) was turned off and positioned to the place where the light was to be drawn on the screen, then the beam was turned on briefly in order to draw the light point. The longer the beam was turned on, the brighter the light point.'"))

(slide #:title "Original paper"
(para "The most common direct computer input today is the typewriter keyboard. Typewriters are inexpensive, reliable, and produce easily transmitted signals. As more and more on-line systems are used, it is likely that many more typewriter consoles will come into use. Tomorrow's computer user will interact with a computer through a typewriter. He ought to know how to touch type." )
)

(slide #:title "Original paper"
(para "A variety of other manual-input devices are possible. The light pen or RAND Tablet stylus serve a very useful function in pointing to displayed items and in drawing or printing For input to the computer. The possibilities for very smooth interaction with the computer through these devices is only just beginning to be exploited. RAND Corporation has in operation today a debugging tool which recognizes printed changes of register contents, and simple pointing and moving motions for format relocation. Using RAND's techniques you can change a digit printed on the screen by merely writing what you want on top of it. If you want to move the contents of one displayed register into another, merely point to the first and 'drag' it over to the second. The facility with which such an interaction system lets its user interact with the computer is remarkable." )
)

; light pen in use
; trackpoint
; trackpad

(slide #:title "Original paper"
(para "Knobs and joysticks of various kinds serve a useful function in adjusting parameters of some computation going on. For example, adjustment of the viewing angle of a perspective view is conveniently handled through a three-rotation joystick. Push buttons with lights are often useful. Syllable voice input should not be ignored." )
)

; star wars prototype
; star wars 1980 arcade
; space orb
; wiimote
; Put That There
; Hideo-Kojima-In-Mocap-Suit dot jpeg

(slide #:title "Original paper"
(para "In many cases the computer program needs to know which part of a picture the man is pointing at. The two-dimensional nature of pictures makes it impossible to order the parts of a picture by neighborhood. Converting from display coordinates to find the object pointed at is, therefore, a time-consuming process. A light pen can interrupt at the time that the display circuits transfer the item being pointed at, thus automatically indicating its address and coordinates. Special circuits on the RAND Tablet or other position input device can make it serve the same function." )
)
(slide #:title "Yu Suzuki on the Sega Model 2"
    (para "'[the] chip came from military equipment from Lockheed Martin, which was formerly General Electric Aerial & Space's textural mapping technology. It cost $2 million to use the chip. It was part of flight-simulation equipment that cost $32 million. I asked how much it would cost to buy just the chip and they came back with $2 million. And I had to take that chip and convert it for video game use, and make the technology available for the consumer at 5,000 yen ($50) ($89 in 2019) per machine'")
  )

; sega model 2 board
; Daayytooonaaa doot doot doot doo doo doot (Daytona)
(slide #:title "Namco strikes back"
    (para "In 1993 Evans and Sutherland helped Japanese arcade giant Namco with texture-mapping technology in Namco's System 22 arcade board that powered Ridge Racer.")
)
;namco system 22
; Riiiddgee Raaaccer! (Ridge Racer 2)

(slide #:title "Original paper"
(para "What the program actually needs to know is where in memory is the structure which the man is pointing to. In a display with its own memory, alight pen return tells where in the display file the thing pointed to is, but not necessarily where in main memory. Worse yet, the program really needs to know which sub part of which part the man is pointing to. No existing display equipment computes the depths of recursions that are needed. New displays with analog memories may well lose the pointing ability altogether." )
)

(slide #:title "Display with its own memory?"
  (para "Analog memory??")
  (para "He's talking about this:")
  )

;tektronix 4014 storage tube
(slide #:title "Display with its own memory?"
  (item (list "If you ever wonder why in old movies with terminal output that part of the letters look like they're 'burning' in, this is due to the storage tube"))
  (item (list "Printing(literally) the screen was viable at this point!"))
  (item (list "Eventually we moved on to frame buffers, but this required memory to get cheaper!"))
  (item (list "Once we had enough memory for buffers, analog displays were dropped and 'memory in display unit' doesn't exist anymore"))
  (item (list "But! Enter 'xterm -t' to get 4014 emulation!" ))
  (item (list "Try C-W or C-A and overtyping!"))
  )
(slide #:title "Original paper"
(para "Other Types of Display" )

(para "If the task of the display is to serve as a looking-glass into the mathematical wonderland constructed in computer memory, it should serve as many senses as possible. So far as I know, no one seriously proposes computer displays of smell, or taste. Excellent audio displays exist, but unfortunately we have little ability to have the computer produce meaningful sounds. I want to describe for you a kinesthetic display." )
)

(slide #:title "Audio" (para "Alles synthesizer"))
; alles synthesizer in 1977
(slide #:title "Audio" (para "Crystal River Convolvotron (1991-4?)")
(item (list "28 16x16 ALU's in a TMS DSP system"))
(item (list "Up to eight Convolvotron boardsets can be run in parallel to spatialize 32 anechoic sound sources or 8 sounds sources with first-order reflections simulating an acoustic environment. "))
)
; convolvatron cards
; ensoniq card

(slide #:title "Speech synthesis"
  (para "Plogue's 'chipspeech'"))
(slide #:title "DeepMind's Wavenet"
       (para "I don't have the speaker setup here, but compared to early synthesis, it's quite good! It can also be used in reverse, apparently")
        (para "theoretically it could simulate ANY sound, like the Alles Machine did with music. Let's hear what a pair of univerity students did with it:")
        )
; wavenet samples
(slide #:title "Smell and Taste?"
       (para "(no)"))

(slide #:title "Kinesthetic?"
       (para "(not really)")
       (para "( https://patents.google.com/patent/US5872438A/en )"))
; kinesthetic diagram
; that 90's movie, lawnmower man

(slide #:title "Kinesthetic?"
(para "The force required to move a joystick could be computer controlled, just as the actuation force on the controls of a Link Trainer are changed to give the feel of a real airplane. With such a display, a computer model of particles in an electric field could combine manual control of the position, of a moving charge, replete with the sensation of forces on the charge, with visual presentation of the charge's position. Quite complicated 'joysticks' with force feedback capability exist. For example, the controls on the General Electric 'handyman' are nothing but joysticks with nearly as many degrees of freedom as the human arm. By use of such an input/output device, we can add a force display to our sight and sound capability." )
)

; link trainer
; dualshock

(slide #:title "Force Feedback"
    (para "Note that Sutherland means the Handyman, not a generic waldo controller!")
    )

; handyman demo
; hardiman
; sarcos

(slide #:title "Original paper"
(para "The computer can easily sense the positions of almost any of our body muscles. So far only the muscles of the hands and arms have been used for computer control. There is no reason why these should be the only ones, although our dexterity with them is so high that they are a natural choice. Our eye dexterity is very high also. Machines to sense and interpret eye motion data can and will be built. It remains to be seen if we can use a language of glances to control a computer. An interesting experiment will be to make the display presentation depend on where we look." )
)

(slide #:title "Control"
       (para "Show us the HMDs!")
       )
; hmds
(slide #:title "Control"
       (para "Sword of Damocles"))

(slide #:title "Control"
       (para "VPL Dataglove")
      (item (list "Thomas Zimmerman(prototype)"))
      (item (list "Mitch Altman(programmer)"))
      (item (list "Young L. Harvill(optical flex)"))
      )
; NASA Ames VR user
(slide #:title "Control"
       (para "(note that the NASA picture is NASA Ames Center, using a VPL data glove and a LEEP HMD)"))
; binocular patent
; note that leepvr claims that while skipping the Fresnel lenses is cheaper, the lenses don't need as much processing and are better on your eyes
(slide #:title "Control"
       (para "Motion tracking"))
; virtuality historian
(slide #:title "Control"
       (para "Eye tracking")
       (para "many homebrew systems, but they can be clunky")
       (para "(and most are still probably locked up by military)"))
; Macross Zero : VF-0 antimissile system

(slide #:title "Original paper"
(para "For instance, imagine a triangle so built that whichever corner of it you look at becomes rounded. What would such a triangle look like? Such experiments will lead not only to new methods of controlling machines, but also to interesting understandings of the mechanisms of vision." )
)

; subdivision surface
;(slide #:title "Vision"
       ;para ())
(slide #:title "Vision"
       (para "Fred Brooks(yes, that Fred Brooks) notes in his interview that they did do some haptic research"))

(slide #:title "Vision"
       (para "UW HITLab: SnowWorld"))
; snowworld display
; snowworld brain scan

(slide #:title "Vision"
       (para "Virtual Retina Display")
       (para "https://patents.google.com/patent/US6008781A/"))

(slide #:title "Original paper"
(para "There is no reason why the objects displayed by a computer have to follow the ordinary rules of physical reality with which we are familiar. The kinesthetic display might be used to simulate the motions of a negative mass. The user of one of today's visual displays can easily make solid objects transparent - he can 'see through matter!' Concepts which never before had any visual representation can be shown, for example the 'constraints' in Sketchpad. By working with such displays of mathematical phenomena we can learn to know them as well as we know our own natural world. Such knowledge is the major promise of computer displays." )
)

; Mario physics
; Skate physics (glitches)
; Interstellar black hole rendering

(slide #:title "Original paper"
(para "The ultimate display would, of course, be a room within which the computer can control the existence of matter. A chair displayed in such a room would be good enough to sit in. Handcuffs displayed in such a room would be confining, and a bullet displayed in such a room would be fatal. With appropriate programming such a display could literally be the Wonderland into which Alice walked." )
)
(slide #:title "The Ultimate Display"
       (para "Of course, we don't have anything like this yet, and must rely again on fiction. And of course that's what VR is used as a mental metaphor: a system that can replace our entire reality.")
       )
(slide #:title "The Ultimate Display"
       (para "But frankly I like the idea of entering an entire room, where reality can be malleable. Holographic, even.")
       )
(slide #:title "The Ultimate Display"
       (para "And so I leave you with the best Hollywood visualization of Ivan Sutherland's ideas to date")
       )

; Holodeck: Picard tommy-gunning Borg drones

(slide (para #:align 'center "Thank you!"))
