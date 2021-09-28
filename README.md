
# Quasar
An iOS app that displays various space related content feeds.
- NASA's Astronomy Picture of the Day
- Mars Rovers - Perseverance, Opportunity, Curiosity, Spirit
- Space related news
- SpaceX rocket launches
- More to come!

> Built with SwiftUI and UIKit.

> Uses Kingfisher for asynchronous image loading and caching.

> Utilizes MVVM architecture.


Home Page                  |  Perseverance Rover       | Spacecraft                | Rocket Launches
:-------------------------:|:-------------------------:|:-------------------------:|:-------------------------:
<img src="/GifDemo/gif1.gif" width="207" height="448">|<img src="/GifDemo/gif2.gif" width="207" height="448">|<img src="/GifDemo/gif3.gif" width="207" height="448">|<img src="/GifDemo/gif4.gif" width="207" height="448">

:-------------------------:|:-------------------------:
![](img1.png)  |  ![](img2.png) | ![](img3.png)  |  ![](img4.png)

## Priority 
- [ ] Trivia game
- [ ] NASA live streams
- [ ] Media feeds (e.g. Twitter, Instagram)
- [ ] Expand news feed feature
- [ ] Milky Way planet info+animation interactive feature

## In the future
- [ ] Rework image magnification, (double tap, pinch to zoom, swipe to return to normal)
- [ ] Implement notifications for Picture of the Day, news articles
- [ ] Implement TheSpaceDevs API features - ~~spacecraft~~, ~~astronauts~~, space stations, events
- [ ] Implement TheSpaceDevs news api feature
- [ ] Implement Updating homepage image buttons
- [ ] Gray-out unavilable rover dates in picker

## Waiting for iOS15
- [ ] Implement skeleton loader to present before get request completes
- [ ] Pull to refresh all image feeds
- [ ] Fix preset email color change bug

## Completed
- [X] Redesign homepage UI
- [X] Info modal with privacy/terms/app info
- [X] Refactor horizontal tab paging
- [X] Fix SpaceX sub-tabview remote image bug (images get stuck paging while loading remotely)
- [X] Implement grid vs column page view button
- [X] Save images to photo album
- [X] Share images (email, text, etc)
- [X] Ability to 'favorite' images and view favorited images
- [X] Spacecraft feature
- [X] Astronaut feature
