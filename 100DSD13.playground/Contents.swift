import UIKit

//Variables and Constants
    //use a constatnt if you know a value will never chnage, that way if it does, swoft can tell you immediately
    var name = "tim"
    name = "rick"
    let name2 = "timmy"
    //var and contants names must be unique

//Types of Data
    //Strings hold ""
    var string = "String"
    //the error "type annotiation missing in pattern" means swift cant figure out what type of data you are trying to feed it, so you can create a type annotation
    var string2: String = "String"
    //Ints hold round numbers like 3, 30, or -78937768492014
    var int: Int
    int = 25
    //the website says floats and doubles are basiclly the same, but doubles are specifically recommened on apples website
    //floats cant hold as many decimal places
    var double: Double
    double = 36.859023615161
    //Booleans or Bool are true/false statements
    var bool: Bool
    bool = false
    
//Operators
    //this is the + - / and *
    var a = 10
    a = a + 1
    a += 1
    //you can also add doubles and strings togethjer the same way, just make sure every has the same type
    //dont forget about % > < <= and >=
    // == is the equivalency check
    // != means not equal

//String Interpolation
    //fancy way of saying "combine vars and lets into this string"
    var name3 = "tim"
    "Your name is \(name3)"
    //OR we can write this
    "Your name is" + name3
    //you can even do this
    var age = 2
    "You are \(age) and in \(age) years you'll be \(age * 2) "

//Arrays
    //arrays let you group[ values together in a single collection, then access those values by their position
    var evenNumbers = [2, 4, 6, 8]
    //call them like this
    //dont forget it starts counting at 0
    evenNumbers[0]
    //you can even ask swift what type your array is
    type(of: evenNumbers)

//Dictionaries
    //like arrays, but let you access values based on a key
    var person = ["first": "taylor","middle": "alison","last": "sify"]
    //so now we can call the dictionary with the key we specificed
    person["middle"]

//Conditional Statements
    //sometimes you want code to run only if a condition is true, and thats were if and else come into play
    var action: String
    var person2 = "hater"
    if person2 == "hater" {
        action = "hate"
    } else if person2 == "player" {
        action = "play"
    } else {
        action = "crusing"
    }
    //you can also check multiple conditions using &&
    //another trick is to use a ! right before something if you want to check if its false
    var havingFun = false
    var doing100DaysOfSwift = true
    if !havingFun && doing100DaysOfSwift {
        action = "at least im improving myself"
    }

//Loops
    //loops repeat a block of code for as long as the ocndition is true
    for i in 1...10 {
        print("\(i) x 10 is \(i * 10)")
    }
    //if you dont need to know what num your on, use _ instead of giving a varibale name like i
    //you can also use 1..<5 if you want to include all numbs but the last
    //then we have while loops, that tend to run for a long time because the coder doesnt really know when the player might tap somehting, or die, or something like that
    var counter = 0
    while true {
        print("Counter is now \(counter)")
        counter += 1
        if counter == 556 {
            break
        }
    }
    //instead of break, you can use continue. break sends your code to the next func, while continue will exit the loop, and rerun from the beginning

//Switch Cases
    //basically an advanced form of the if statement. You tell swift what var you need checked, then provide a list of possible cases for that var. swift finds the first case that matches your var, and runs that code. when that block is finished, swift exits the switch
    let albums = 2
switch albums {
case 0:
    print("Nothing")
case 1:
    print("First album bro")
case 2:
    print("Going big time")
default:
    print("ummmmmm okay?")
}
//switch statm,ents ensure you code is exhaustive, whihc means if theres a possibility of your var not being in the switch, swift wont even build
//you can even add ... between numbers in your case if multiple vars can match the same block of code
