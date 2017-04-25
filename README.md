# AnimationRestoration

The `AnimationPreservingView` class keeps it's layer tree animations safe from being removed.
There are two cases when `CAAnimation` can be removed from `CALayer` automatically:

- when application goes to background
- when view backed by the layer is removed from window

![Screencast](https://raw.github.com/wnagrodzki/AnimationRestoration/master/screencast.gif)