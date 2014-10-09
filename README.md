Radar: 18603097

The method ```[UIView animateWithDuration:delay:usingSpringWithDamping:initialSpringVelocity:options:animations:completion:]``` can fail while animating a UIImageView with certain ranges of input values. 

The UIImageView being transformed in the animations block disappears, and occasionally other unrelated UI elements flicker for a while. 

Here is a video of the issue https://www.youtube.com/watch?v=Y-AzseA4eSY and we have also created a test project at https://github.com/supertop/lolcano which reproduces the bug. 
