#lang slideshow
(slide
#:title "Papers We Love 2019"
(para #:align 'center "The Ultimate Display")
(para #:align 'center "Ivan E. Sutherland")
;(para #:align 'center "Information Processing Techniques Office, ARPA, OSD")
)

(slide
( para "We live in a physical world whose properties we have come to know well through long familiarity. We sense an involvement with this physical world which gives us the ability to predict its properties well. For example, we can predict where objects will fall, how well-known shapes look from other angles, and how much force is required to push objects against friction. We lack corresponding familiarity with the forces on charged particles, forces in non-uniform fields, the effects of non projective geometric transformations, and high-inertia, low friction motion. A display connected to a digital computer gives us a chance to gain familiarity with concepts not realizable in the physical world. It is a looking glass into a mathematical wonderland." )
)

(slide
(para  "Computer displays today cover a variety of capabilities. Some have only the fundamental ability to plot dots. Displays being sold now generally have built in line-drawing capability. An ability to draw simple curves would be useful. Some available displays are able to plot very short line segments in arbitrary directions, to form characters or more complex curves. Each of these abilities has a history and a known utility." )
)

(slide
(para  "It is equally possible for a computer to construct a picture made up of colored areas. Knowlton's movie language, BEFLIX [1], is an excellent example of how computers can produce area-filling pictures. No display available commercially today has the ability to present such area-filling pictures for direct human use. It is likely that new display equipment will have area-filling capability. We have much to learn about how to make good use of this new ability." )
)

(slide
(para "The most common direct computer input today is the typewriter keyboard. Typewriters are inexpensive, reliable, and produce easily transmitted signals. As more and more on-line systems are used, it is likely that many more typewriter consoles will come into use. Tomorrow's computer user will interact with a computer through a typewriter. He ought to know how to touch type." )
)

(slide
(para "A variety of other manual-input devices are possible. The light pen or RAND Tablet stylus serve a very useful function in pointing to displayed items and in drawing or printing For input to the computer. The possibilities for very smooth interaction with the computer through these devices is only just beginning to be exploited. RAND Corporation has in operation today a debugging tool which recognizes printed changes of register contents, and simple pointing and moving motions for format relocation. Using RAND's techniques you can change a digit printed on the screen by merely writing what you want on top of it. If you want to move the contents of one displayed register into another, merely point to the first and 'drag' it over to the second. The facility with which such an interaction system lets its user interact with the computer is remarkable." )
)

(slide
(para "Knobs and joysticks of various kinds serve a useful function in adjusting parameters of some computation going on. For example, adjustment of the viewing angle of a perspective view is conveniently handled through a three-rotation joystick. Push buttons with lights are often useful.Syllable voice input should not be ignored." )
)

(slide
(para "In many cases the computer program needs to know which part of a picture the man is pointing at. The two-dimensional nature of pictures makes it impossible to order the parts of a picture by neighborhood. Converting from display coordinates to find the object pointed at is, therefore, a time-consuming process. A light pen can interrupt at the time that the display circuits transfer the item being pointed at, thus automatically indicating its address and coordinates. Special circuits on the RAND Tablet or other position input device can make it serve the same function." )
)

(slide
(para "What the program actually needs to know is where in memory is the structure which the man is pointing to. In a display with its own memory, alight pen return tells where in the display file the thing pointed to is, but not necessarily where in main memory. Worse yet, the program really needs to know which sub part of which part the man is pointing to. No existing display equipment computes the depths of recursions that are needed. New displays with analog memories may well lose the pointing ability altogether." )
)

(slide
(para "Other Types of Display" )

(para "If the task of the display is to serve as a looking-glass into the mathematical wonderland constructed in computer memory, it should serve as many senses as possible. So far as I know, no one seriously proposes computer displays of smell, or taste. Excellent audio displays exist, but unfortunately we have little ability to have the computer produce meaningful sounds. I want to describe for you a kinesthetic display." )
)

(slide
(para "The force required to move a joystick could be computer controlled, just as the actuation force on the controls of a Link Trainer are changed to give the feel of a real airplane. With such a display, a computer model of particles in an electric field could combine manual control of the position, of a moving charge, replete with the sensation of forces on the charge, with visual presentation of the charge's position. Quite complicated 'joysticks' with force feedback capability exist. For example, the controls on the General Electric 'handyman' are nothing but joysticks with nearly as many degrees of freedom as the human arm. By use of such an input/output device, we can add a force display to our sight and sound capability." )
)

(slide
(para "The computer can easily sense the positions of almost any of our body muscles. So far only the muscles of the hands and arms have been used for computer control. There is no reason why these should be the only ones, although our dexterity with them is so high that they are a natural choice. Our eye dexterity is very high also. Machines to sense and interpret eye motion data can and will be built. It remains to be seen if we can use a language of glances to control a computer. An interesting experiment will be to make the display presentation depend on where we look." )
)

(slide
(para "For instance, imagine a triangle so built that whichever corner of it you look at becomes rounded. What would such a triangle look like? Such experiments will lead not only to new methods of controlling machines, but also to interesting understandings of the mechanisms of vision." )
)

(slide
(para "There is no reason why the objects displayed by a computer have to follow the ordinary rules of physical reality with which we are familiar. The kinesthetic display might be used to simulate the motions of a negative mass. The user of one of today's visual displays can easily make solid objects transparent - he can 'see through matter!' Concepts which never before had any visual representation can be shown, for example the 'constraints' in Sketchpad [2]. By working with such displays of mathematical phenomena we can learn to know them as well as we know our own natural world. Such knowledge is the major promise of computer displays." )
)

(slide
(para "The ultimate display would, of course, be a room within which the computer can control the existence of matter. A chair displayed in such a room would be good enough to sit in. Handcuffs displayed in such a room would be confining, and a bullet displayed in such a room would be fatal. With appropriate programming such a display could literally be the Wonderland into which Alice walked." )
)

;(slide
;"References"
;K. C. Knowlton, "A Computer Technique for Producing Animated Movies", Proceedings of the Spring Joint Computer Conference, (Washington, D.C.: Spartan, 1964).1.I. E. Sutherland, "Sketchpad-A Man-Machine Graphical Communication System", Proceedings of the Spring Joint Computer Conference, Detroit, Michigan, May 1963 (Washington, D.C.: Spartan, 1964).2.Proceedings of IFIP Congress, pp. 506-508, 1965.
;)
