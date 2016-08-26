/*:
 ## Exercise: Good names
 
 You’ve inherited some code from another programmer, who never had a chance to take the App Development With Swift course. All you found was a post-it note with the following written on it:
 
 > **Truck loading guide**
 >
 > Pallets of oranges weigh 100lbs
 >
 > Pallets of watermelons weigh 200lbs
 >
 > Have to load up the left then right of the truck and keep it as balanced, how many on each side? Melons always go together.
*/
let co = 14
let cw = 3
let ow = 100
let ww = 200
let to = co * ow
let tw = cw * ww
let ttl = to + tw
let es = ttl / 2
let lhso = es / ow
let rhso = co - lhso


//: - experiment: Rewrite the code so that it makes sense without needing a post-it note. Use meaningful names and comments.
//Number of orage pallets
let orangePallets = 14

//Number of watermelon pallets
let watermelonPallets = 3

//Orange weight
let orangeWeight = 100

//Watermelon weight
let watermelonWeight = 200

//Total orange weight
let totalOrange = orangePallets * orangeWeight

//Total watermelon weight
let totalWatermelon = watermelonPallets * watermelonWeight

//Total combined weight
let totalWeight = totalOrange + totalWatermelon

//Weight for each side
let eachSide = totalWeight / 2

//Left side orange pallets
let leftSide = eachSide / orangeWeight

//Right side pallets
let rightSide = orangePallets - leftSide




/*:
 _Copyright (C) 2016 Apple Inc. All Rights Reserved.\
 See 00_LICENSE.txt for this sample’s licensing information_
 */
//:[Previous](@previous)  |  page 14 of 14
