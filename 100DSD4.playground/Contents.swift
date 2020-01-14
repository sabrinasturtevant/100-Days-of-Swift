import UIKit

//Loops
    //loops run some code repeatedly until a condition evaluates as false
    //most common loop is a for loop
        //it loops over arrays and ranges, and each time the loop goes around it will pull one item and assign it to a constant
    let count = 1...10
    //this loop creates a variable called number, then prints a string for each item in the count
    for number in count {
        print("Number is \(number)")
    }
    //same thing with arrays
    let albums = ["Red", "1989", "Reputation"]
    for album in albums {
        print("\(album) is on Apple Moosic")
    }
    //if you do not want to create a new var/let, use an underscore
    print("Players gonna ")
    for _ in 1...5 {
        print("play")
    }

//While Loops
    //give a while loop a condition to check, and it will go until the condition fails
    var number = 1
    //this loop takes number (1) and prints it. After, it adds 1 to the previous number. This goes until number == 20, then finally the last print statement is executed
    while number <= 20 {
        print(number)
        number += 1
    }
    print("Ready or not here I come")

//Repeat Loops
    //idential to while loop except the conditiion to check comes at the end
    var number1 = 1
    repeat {
        print(number1)
        number1 += 1
    } while number1 <= 20
    print("Ready or not here I come")
    //because the condition is at the end, the code will always be executed at least one time, while while loops check the condiiton before running
    //this print function will never run because false is always false
    while false {
        print("This is false")
    }

//Exiting Loops
    //you can exit a loop anytime using the word break
    var countDown = 10
    while countDown >= 0 {
        print(countDown)
        countDown -= 1
    }
    print("Blast Off!")
    //say the astronaut gets bored halfway through and lanuches at four
    //the break command can help
    var countDown2 = 10
    while countDown2 >= 0 {
        print(countDown2)
        if countDown2 == 4 {
            print("bruh lets just go")
            break
        }
        countDown2 -= 1
    }
    print("Blast Off!")

//Exiting Multiple Loops
    //when you put a loop in a loop, its called nesting
    for i in 1...10 {
        for j in 1...10 {
            let product = i * j
            print ("\(i) * \(j) is \(product)")
        }
    }
    //the loop above creates a var called i and a var called j that each can range from 1-10. tell a constant is made called product that is i times j. then it uses a print statement to show the loop
    //if you want to exit the loop halfway through, you have to add an outside loop label
    //then add a condition on the inner loop and use break outerloop to exit both loops simitanously
    //with only a regualr break, only the inner loop would be exited
    outerLoop: for i2 in 1...10 {
        for j2 in 1...10 {
            let product = i2 * j2
            print ("\(i2) * \(j2) is \(product)")
            
            if product == 50 {
                print("Bullseye")
                break outerLoop
            }
        }
    }

//Skipping Items
    //if you just want to skip an item and go to the next, use continue instead of break
    for i in 1...10 {
        if i % 2 == 1 {
            continue
        }
        print(i)
    }
    //the code above creates a variable called i with a range of 1-10. using swifts remainder operator, when i = 1 it cannot go into 2 evenly, so it is skipped. The results are all the even numbers being printed
    
//Infinite Loops
    //it is common to use while loops to create inifnite loops
    //to make one, just use true as your condition, as true is always true
    //make sure you have a check to end your loop or else you will kill you Xcode and maybe even your computer
    var counter = 0
    while true {
        print(" ")
        counter += 1
        //MUST INCLUDE BREAK
        if counter == 273 {
            break
        }
    }
