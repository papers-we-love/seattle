# The Ultimate Display

- Papers We Love @ Seattle [#52](https://www.meetup.com/Papers-We-Love-Seattle/events/sdftxpyzdbkb/)
- Presented by [Scott Francis](http://www.kurokoproject.com) as a grand tour of virtual reality and computer graphics history, in the style of [James Burke's "Connections"](https://en.wikipedia.org/wiki/Connections_\(TV_series\))
- Read the paper: [PDF version](https://github.com/papers-we-love/seattle/blob/master/ultimate_display/sutherland_ultimate_display.pdf), [Markdown version](https://github.com/papers-we-love/seattle/blob/master/ultimate_display/sutherland_ultimate_display.md)
- View [the slides](https://github.com/papers-we-love/seattle/blob/master/ultimate_display/slides.pdf)

## Links / Research notes
This talk ended up being much more of a multimedia presentation than typical Papers We Love talks. Instead of using straight Racket slides, they were rendered to image format and combined with (edited)Internet videos, still images, and audio samples in a playlist.
As it's not viable to upload all of the media to Github, here are the overall links and further reading. As a bonus, there are some videos and links I didn't have time to include in the original presentation.
### [Ivan Sutherland](http://scihi.org/ivan-sutherland-computer-graphics/)
- From 1968 to 1974, Sutherland was a professor at the University of Utah. Among his students there were 
  - [Alan Kay](https://en.wikipedia.org/wiki/Alan_Kay)
  - [Henri Gouraud](https://en.wikipedia.org/wiki/Henri_Gouraud_\(computer_scientist\)) (Gourand shading)
  - [Frank Crow](https://en.wikipedia.org/wiki/Franklin_C._Crow) ([spatial anti-aliasing](https://en.wikipedia.org/wiki/Spatial_anti-aliasing) and [shadow volumes](https://en.wikipedia.org/wiki/Shadow_volume))
  - [Edwin Catmull](https://en.wikipedia.org/wiki/Edwin_Catmull) (Lucasfilm, Pixar, Disney Animation, [RenderMan](https://en.wikipedia.org/wiki/Pixar_RenderMan))
  - [Jim Clark](https://en.wikipedia.org/wiki/James_H._Clark) (Silicon Graphics Inc., [Catmull-Clark subdivision surfacing](https://en.wikipedia.org/wiki/Catmull%E2%80%93Clark_subdivision_surface)
### Sketchpad
- [Sketchpad (1963) 3 of 3 - 3D Graphics](https://www.youtube.com/watch?v=t3ZsiBMnGSg)
- Better curves in graphics: [NURBS](https://en.wikipedia.org/wiki/Non-uniform_rational_B-spline) and its parent the [Bezier curve](https://en.wikipedia.org/wiki/B%C3%A9zier_curve)
### "Area-filling", Vector and raster displays
- BEFLIX graphics language: [Programming Computer Animation in 1964 - AT&T Archives](https://www.youtube.com/watch?v=-5mFhDIJfNA)
- Vector display example: [1981 Atari Tempest Arcade Video Gameplay HD](https://www.youtube.com/watch?v=AMto2HJJSSA&t=0m44s)
- Bonus: [A discussion on the Evans & Sutherland CT5 flight simulator](https://forum.beyond3d.com/threads/ct5-evans-sutherland-simulator-how-did-it-work.57664/). Note that a former E&S employee arrives about halfway through the thread to clear up details, as well as talking about [Novoview's hybrid raster/vector displays](https://forum.beyond3d.com/threads/ct5-evans-sutherland-simulator-how-did-it-work.57664/#post-1914095)
- [Frame buffer](https://en.wikipedia.org/wiki/Framebuffer)
- [SuperPaint(frame buffer system)](https://en.wikipedia.org/wiki/SuperPaint)
- Bonus: [Early Digital Paint Systems Demonstration–Narration by Alvy Ray Smith](https://www.youtube.com/watch?v=nHkxem785B4)
### Keyboards
- Innovations in keyboards: [IBM TrackPoint](https://en.wikipedia.org/wiki/Pointing_stick)
- Light pen and scribbling to change items: [Hypertext Editing System](https://en.wikipedia.org/wiki/Hypertext_Editing_System)
### Control
- [Touchpad](https://en.wikipedia.org/wiki/Touchpad)
- [Star Wars (Atari)](https://www.arcade-museum.com/game_detail.php?game_id=9773) (note the Technical section talking about issues with vector display monitors)
- Bonus: [Atari Star Wars: Arcade Cockpit Development – The Arcade Blogger](https://arcadeblogger.com/2017/06/16/atari-star-wars-arcade-cockpit-development/)
- [SpaceOrb 360](https://en.wikipedia.org/wiki/SpaceOrb_360)
- [Wiimote](https://en.wikipedia.org/wiki/Wii_Remote)
### Voice, gestural, contextual interfaces
- [Put That There (1980)](https://www.youtube.com/watch?v=sC5Zg0fU2e8)
### Expensive hardware
- [The Disappearance of Yu Suzuki](https://web.archive.org/web/20131113174154/http://www.1up.com/features/disappearance-suzuki-part-1?pager.offset=2), talking about mass-producing GE Aerospace(now Lockheed Martin)'s texture-mapping hardware.
- [Sega Model 2](http://www.system16.com/hardware.php?id=713)
- Bonus: I mentioned the [Intel 960](https://en.wikipedia.org/wiki/Intel_i960)
- [Daytona USA](http://www.system16.com/hardware.php?id=713&page=1#2028)
- [Namco System 22](http://www.system16.com/hardware.php?id=537)
- [Ridge Racer](http://www.system16.com/hardware.php?id=537&page=1#1322)
### Analog displays and local memory
- [Storage tube](https://en.wikipedia.org/wiki/Storage_tube)
- [Tektronix 4014](https://en.wikipedia.org/wiki/Tektronix_4010)
- Bonus: I intentionally glossed over the difference between storage tubes and an actual display processor for dramatic effect, but you can read Ivan Sutherland himself recall the technical details: [The Wheel of Reincarnation](http://www.cap-lore.com/Hardware/Wheel.html)
- Noted in the slide: if your copy of xterm has it compiled in, try `xterm -t` and using text-movement commands! What happens to the display?
### Computer audio
- [Laurie Spiegel plays Alles synth - temporary replacement (1977)](https://www.youtube.com/watch?v=NChqEEz31eE)
- shout out to plogue's chipspeech, since no good (quick) demo video exists)
- [Plogue Art et Technologie, Inc.: Chipspeech](https://www.plogue.com/products/chipspeech.html)
- [Crystal River Engineering's Convolvotron](http://www-cdr.stanford.edu/DesignSpace/sponsors/Convolvotron.html)
- ..which was eventually miniaturized into the [Ensoniq AudioPCI](https://en.wikipedia.org/wiki/Ensoniq_AudioPCI#ES1370)
- [DeepMind's WaveNet](https://deepmind.com/blog/wavenet-generative-model-raw-audio/)
- ..which then two college students use to train up their own music generator: [First Try](http://deepsound.io/wavenet_first_try.html)
### Kinesthetic display
- [Whole-body kinesthetic display](https://patents.google.com/patent/US5872438A/en)
- [The Lawnmower Man](https://www.youtube.com/watch?v=3LNvXjb44-U)
- Bonus: coming out near Cameron's "The Abyss" and "Terminator 2", the movie pioneered a lot of visual effects at the time: [Lawnmower Man Truncated (only cgi)](https://www.youtube.com/watch?v=I33u7P-XokE)
- Bonus: [Lawnmower Man VR accelerated learning](https://www.youtube.com/watch?v=zTrgHXNAs24): note that the VR goggles and gloves are from [VPL Research](https://en.wikipedia.org/wiki/VPL_Research)
### Evolution of force-feedback
- [Link Trainer](https://en.wikipedia.org/wiki/Link_Trainer)
- [Sony DualShock](https://en.wikipedia.org/wiki/DualShock)
- [The GE Handyman(1958)](http://cyberneticzoo.com/man-amplifiers/1958-9-ge-handyman-ralph-mosher-american/)
- [The GE Hardiman(1966-69](http://cyberneticzoo.com/man-amplifiers/1966-69-g-e-hardiman-i-ralph-mosher-american/)
- [The Raytheon XOS-2](https://www.youtube.com/watch?v=Ymlnk_PDwnc&t=0m26s), as shown by Clark Gregg
### Head-mounted displays and data gloves
- [Head-mounted display](https://en.wikipedia.org/wiki/Head-mounted_display)
- [First Head mounted display 1965 The Sword of Damocles](https://www.youtube.com/watch?v=0iyNrV7w4f4) (probably taken from the longer official film: [Virtual Reality Before it Had That Name](https://www.youtube.com/watch?v=Y2AIDHjylMI))
- [Binocular stereovision patent](https://patents.google.com/patent/US4982278A/en): the core patent that all HMDs derived from.
- Bonus: The company behind the lenses used in HMDs: [LEEP Systems](http://www.leepvr.com/about.php) (scroll down to "LEEP and the Virtual Reality Standard")
- [Power Glove](https://en.wikipedia.org/wiki/Power_Glove)
- Bonus: ["I love the Power Glove. It's so bad."](https://www.youtube.com/watch?v=AacoxHFYvZw&t=0m46s)
### Motion tracking
- [Virtuality Arcade System](https://en.wikipedia.org/wiki/Virtuality_\(gaming\))
- [Kotaku: The Man Who Is Keeping 1990s Virtual Reality Machines Alive](https://www.kotaku.com.au/2016/05/the-man-who-is-keeping-1990s-virtual-reality-machines-alive/)
- [Motion capture suits](https://duckduckgo.com/?q=mocap+suit&t=ffab&iax=images&ia=images)
### [Eye tracking](https://en.wikipedia.org/wiki/Eye_tracking)
- [Mad Maneuver - VF-0 vs SV-51 from Macross Zero (2006)](https://www.youtube.com/watch?v=iXNa88lRh4E&t=0m38s)
### New methods of control and understanding mechanisms of vision
- Smoothing a triangle corner: [Subdivision surface](https://en.wikipedia.org/wiki/Subdivision_surface)
- UW HITLab's SnowWorld: [Soldiers Get Virtual Reality Therapy for Burn Pain](https://www.youtube.com/watch?v=jNIqyyypojg)
- [Fred Brooks on Ivan Sutherland’s 1965 "Ultimate Display" Speech](https://www.roadtovr.com/fred-brooks-ivan-sutherlands-1965-ultimate-display-speech/): talking about an early VR simulation where they could detect noticeable heart rate changes when "looking over the side of a building"
- [Virtual Retina Display patent](https://patents.google.com/patent/US6008781A/)
- [Tom Furness on Magic Leap's Virtual Retinal Display](https://www.youtube.com/watch?v=_-V1SQA84KU)
- [Wrinkles in Spacetime: The Warped Astrophysics of Interstellar](https://www.wired.com/2014/10/astrophysics-interstellar-black-hole/): on the scientific guidance of Kip Thorne, the Double Negative VFX company managed to generate an accurate picture of what a black hole would look like visually.
- Bonus: [Gravitational Lensing by Spinning Black Holes in Astrophysics, and in the Movie Interstellar](https://arxiv.org/abs/1502.03808)
- Physics glitches in EA's Skate 3: [Helix Snake's Top 50 Skate 3 videos #2 (2014)](https://www.youtube.com/watch?v=ofnxaJUIFYg)
- Bonus: physics glitches in games usually trace back to [an improperly integrated timestep function](https://gafferongames.com/post/fix_your_timestep/)
### The Ultimate Display
- [Captain Picard tommy gunning Borg](https://www.youtube.com/watch?v=7OCKDEdtWys)

### Bonus(?)
- Fred Moody's books on Seattle and VR history. Take these with a big grain of salt as he is on-par with Knute Berger as being a Cranky Old Guy From Seattle:
  - [The Visionary Position](https://www.goodreads.com/book/show/840723.The_Visionary_Position)
  - [Seattle and the Demons of Ambition](https://www.goodreads.com/book/show/517483.Seattle_and_the_Demons_of_Ambition)

## Presentation format

If you'd like to generate a limited form of the presentation, you can use the provided [generation script](https://github.com/papers-we-love/seattle/blob/master/ultimate_display/generate_slides.sh). This requires [racket and its slideshow module](https://docs.racket-lang.org/slideshow/index.html), [Ghostscript](https://www.ghostscript.com/), and [ImageMagick](https://www.imagemagick.org/)

I've provided the [original playlist](https://github.com/papers-we-love/seattle/blob/master/ultimate_display/playlist.m3u) with appropriate comments and links to original Youtube videos where possible. The playlist is in M3U format and can then be run with [MPV](https://mpv.io/):

`mpv --fullscreen --image-display-duration=5 --playlist=playlist.m3u`

Make sure you're on a fast connection when playing!

