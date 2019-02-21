// Swift Programming Exercises
// Answer each question after the comment, then zip this and upload it

// You can do this using the computers in CH, Owens Library, checking out a MBP from Owens Library (3 days max) or go to repl.it, and create a Swift REPL

import UIKit

/*
in case anything gets mixed up when I send this, this is from Jaob Hughes in the 9:30 section
*/


// 0. Declare a constant pi and assign it the value 3.14159. Use type annotation
let pi:Double = 3.14159

// 1. Declare a variable, isCold, and assign the value true. Use type annotation
var isCold:Bool = true

// 2. Declare a variable, fastFood, with the value "Jimmy Johns". Use type inference.
var fastFood = "Jimmy Johns"

// 2.1 Declare a variable, age, with the value 18. Then print out the statement "You are xx years old", replacing xx with age. Use type interpolation to do so.
var age = 18
print("You are",age,"years old")

// 3. Declare an empty array of Strings, movies. Use type annotation.
var movies:[String] = []

// 4. Repeat 3, but this time using type inference. What error do you get? [After determining the error, comment out the statement so the rest of your playground will run.]
//var movies = []   //empty collection literal requires an explicit type, in human, the computer can't infer a type if we don't have any object

// 5. Add a new movie, "Rogue One", to movies
movies.append("Rogue One")

// 6. Add 2 new movies, "Zootopia" and "Wonder Woman" (in one statement)
movies.append(contentsOf: ["Zootopia","Wonder Woman"])

// 7. Write code to print out all the elements of movies. Do so using an explicit index and [ ] to access the elements.
for a in 0 ..< movies.count {
    print(movies[a])
}

// 8. Repeat 6 using a for-in loop
for b in movies{
    print(b)
}

// 9. Write code to print out the numbers 0, 3, 6, 9, ... 21. Use stride(from:to:by:)
for step in stride(from: 0, to: 22, by: 3){
    print(step)
}

// 10. Write code to print out the numbers 100, 90, 80, ... 0. Use stride(from:through:by:)
for ten in stride(from: 100, to: -1, by: -10){
    print(ten)
}

// 11. Declare an array of Ints, data, with 10 unique values.
var data: [Int] = [13,3,5,7,1,17,31,19,23,29]

// 12. Write the code to find the smallest value in data and then print it out.
var least = 10^9
for point in data{
    if (point < least){
        least = point
    }
}
//var least = data.min() this seemed too easy to be the answer so I commented it out
print("The smallest value is",least,".")

// 13. Write the code to find the sum of all the elements in data
var total = 0
for point in data{
    total = total + point
}
print("The sum of all the elents in data is",total,".")

// 14. Write a switch statement to analyze roll (an Int between 2-12, representing the roll of 2 dice). If it is 7 or 11, print "Win!". If it is a 2, 3 or 12, print "Crap Out". If it is  6, print "Perfection". Otherwise, print "Try again"

    var roll = Int.random(in: 1...6) + Int.random(in:1...6) // generates 2 random Ints, each between 1 and 6 inclusive
switch roll {
case 11 : fallthrough
case 7 : print("Win!")
case 2 : fallthrough
case 3 : fallthrough
case 12 : print("Crap Out")
case 6 : print("Perfection")
default:
    print("Try again")
}
