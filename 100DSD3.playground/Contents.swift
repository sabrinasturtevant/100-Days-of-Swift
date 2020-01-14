import UIKit

//Arithmetic Operators
    //operators are + - / and *
    let scoreOne = 12
    let scoreTwo = 4
    let total = scoreOne + scoreTwo
    let difference = scoreOne - scoreTwo
    let product = scoreOne * scoreTwo
    let divided = scoreOne / scoreTwo
    //another special operator is %
    //it calculates how many times one number can fit inside another
    let remainder = 13 % scoreTwo
    //4 fits into 13 three times with a remainder of 1

//Operator Overloading
    //+ can be used mulptiple ways
    let meaningOfLife = 24
    let meaningOfLife2 = 24 + 1
    //but it can also join strings
    let hilariousJoke = "Hey Spongebob, what's funnier than 24?"
    let spongebob = "Idk Patrick, what?"
    let patBoy = "25"
    hilariousJoke + spongebob + patBoy
    //and dictionaroes
    let spongebobCast = ["spongeBoyMeBob", "Patrick"]
    let restOfCast = ["mrKrabs", "Squidward"]
    let cast = spongebobCast + restOfCast

//Compound Operators
    //swift has shorthand operators that can be combined with =
    var squidwardAngerLevel = 100
    squidwardAngerLevel += 50
    //or you can do the same with strings
    var quote = "I hate you"
    quote += "Spongebob"

//Comparison Operators
    //swift has operators that perform comparisons between two values
    let sponges = 4
    let stars = 6
    //checking if they are equal
    sponges == stars
    //checking if they arent equal
    sponges != stars
    //you can also use greater than or less than symbols
    sponges < stars
    sponges >= stars
    //works on strings, as it uses alphebetical order
    "Spongbob" <= "Patrick"

//Conditions
    //using if statements with a function called print
    let firstCard = 11
    let secondCard = 10
    if firstCard + secondCard == 21 {
        print("Oh no cousin Blackjack PLEASE DONT HURT ME")
    }
    //the code inside the {} will print if the conditions are true
    //or you can give it an alternative like this
    if firstCard + secondCard == 21 {
        print("Oh no cousin Blackjack PLEASE DONT HURT ME")
    } else {
        print("sobbing")
    }
    //or you can chain if statements together
    if firstCard + secondCard == 2 {
        print("Aces – lucky!")
    } else if firstCard + secondCard == 21 {
        print("Oh no cousin Blackjack PLEASE DONT HURT ME")
    } else {
        print("sobbing")
    }

//Combining Conditions
    //&& means and
    //|| means or
    let age1 = 12
    let age2 = 21
    if age1 > 18 && age2 > 18 {
        print("Both are over 18")
    }
    //swift will ignore above print statment because the conditions are not met
    if age1 > 18 || age2 > 18 {
        print("One is over 18")
    }

//Ternary Operator
    //very rarely used
    //hard to read
    let firstCard1 = 11
    let secondCard2 = 10
    print(firstCard1 == secondCard ? "Cards are th same" : "Cards are different")
    //the above statement says the same thing as this if statemnt
    if firstCard1 == secondCard {
        print("Cards are rhe same")
    } else {
        print("Cards are different")
    }

//Switch Statements
    //if you have seberal condiitons in your if statement, itll be better to switch statements
    let weather = "sunny"
    switch weather {
    case "rain":
        print("bring an umbrella")
    case "snow":
        print("wear jacketsssssss")
    case "sunny":
        print("wear sunscreen bois")
    default:
        print("Enjoy your day")
    }
    //default must be there to ensure swift has something to give to user when it cannot determine a value

//Range Operators
    //the ..< creates a range from and up to the final value
        //for example 1..<5 has 1, 2, 3, and 4
    //the ... creates a range from and to the final value
        //for example 1...5 has 1, 2, 3, 4, 5
    let score = 85
    switch score {
    case 0..<50:
        print("You failed dude")
    case 50..<85:
        print("MMMmmmmkay")
    default:
        print("Awesome job my dude")
    }


