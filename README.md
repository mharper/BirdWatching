BirdWatching
============

Overview
--------

This is my implementation of the iOS Developer Center's tutorial familiarizing you with storyboards.  I made a few simple departures from the
tutorial.

1. I am not a fan of synthesizing properties with instance variables prefixed by underscore.
2. The tutorial uses naked `unsigned` type in the `BirdSightingDataController` class. I use `NSUInteger` instead.
3. I decided to implement as a universal app from the outset. Consequently, this will run on both iPhone and iPad.

The tutorial itself can be found here: [Your Second iOS App: Storyboards](https://developer.apple.com/library/ios/#documentation/iPhone/Conceptual/SecondiOSAppTutorial/Introduction/Introduction.html)