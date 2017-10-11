Meet Another Team
======
**Meet Another Team** is a seemingly simple code test riddled with custom elements, subtle auto layout requirements, and commonly overlooked UX considerations.

Originally an Objective-C project, it was converted to Swift 4 as a straight forward yet complex coding example. The goal was to recreate the “Meet the Team” iOS application based on the (slightly modified) screenshots below. The app should allow the user to browse and learn about the team by scrolling through a list, and tapping anyone to learn more.

#### Screenshots
<img src="https://78.media.tumblr.com/dedbb80edd2105f99cff0598de66a2ba/tumblr_oxna9azl5B1qbkxdyo1_540.png" width="280"/>    <img src="https://78.media.tumblr.com/0ebd4b92a5795bc8074f5e21dbb4ce0f/tumblr_oxna9azl5B1qbkxdyo2_540.png" width="280"/>    <img src="https://78.media.tumblr.com/c61733658d1da41f28b95d47dd16c091/tumblr_oxna9azl5B1qbkxdyo3_540.png" width="280"/>

## Custom Elements
#### Team View
* Table View Cell - Custom font, color, image treatment, and disclosure arrow.
* Lato - A commonly used Google Font which doesn’t come with the iPhone by default.
* Text - Kerned.

#### Profile View
* View styling - Code driven design made from two bezier paths which resizes fluidly without degradation.
* Text - Justified and kerned.

## Auto Layout Requirements
#### Team View
* Custom disclosure arrow placement.

#### Profile View
* Profile Image - Scales to fill the available space in the header when scrolling down but locks to the top of the screen when scrolling up and slides under the lower half.
* Profile View - Dynamically sizes it’s height based on the contents/height of the ‘bio’ Text View.

## UX Improvements
#### Team View
* URL based images - A do-try-catch based function is used to request all images asynchronously without blocking the UI.

#### Profile View
* UILabel clipping - Labels padded and offset to contain custom font descenders.
* Profile Image - Scales to fill the available space in the header when scrolling down but slides under the lower half of the view when scrolling up.
