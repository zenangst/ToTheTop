# ToTheTop

ToTheTop is a small macOS application that adds the same kind of scroll-to-top behavior 
that you know and love from iOS. The application creates a small clickable area in your status bar
located in the top center of your screen covering the status bar. Don't worry, the area is invisible,
just like in iOS. The current width and height is set to 60x22 pixels.

When that area is clicked, the application will then create a keystroke using `CGEvent`, more specifically
a home key event, that will cause the front most application to scroll to the top. 

It is as easy as that, enjoy!
