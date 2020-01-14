import UIKit

//Cretaing basic closures
    //swift uses functions just like any other type (Ints, Strings, etc)
    //so you can create funcs just like a var, and call that func later
    //functions used this way are called closures
    let boatDriving = {
        print("SPONGEBOB SLOW DOWN")
    }
    //this effectivly creates a func without a name, then assigns that func to the word driving
    boatDriving()

//Accepting parameters in a closure
    //this is how you write a closure w/ a paramter
    //in tells swift the main body of the closure is starting
    let boatDrivingTest = { (place: String) in
        print("Im going to get my licesne from \(place)")
    }
    //all we have to do no is
    boatDrivingTest("Ms. Puff's boating school")

//Returning Values from a Closure
    //again, placed before in
    let boatDrivingTest2 = { (place: String) -> String in
            return("Im going to get my licesne from \(place)")
        }
    let message = boatDrivingTest2("Ms. Puff's boating school")
    print(message)

//Closures as Parameters
    //closures can be passed into functions, which is super confusing
    //first we specify the parameter type as Void, meaning it accepts no parameters and returns a void or nil
    let boatDriving2 = {
           print("CHEATING??????? WAHHHHHHHHHHHHH")
       }
    func travel(action: () -> Void) {
        print("IM CHEATING..CHEATING!! MRS.PUFF HELP")
        action()
        print("THAT WAY! CHEAT THAT WAY")
    }
    travel(action: boatDriving2)
    //so this says, create a closure called boatDriving 2, and set it to print that statement when it runs. Then create a func called travel that has to pass a paparmenter called action, wihch is currently labeled as a nil, but will chnage to to the correct type later. Then print, then run the action apecificed in the parameter, then anothe print. Then right below, swift gets the info for the paramter because the user calls the func travel, and sets a new parameter, which is the original closure.

//Trailing Closure Syntax
    //if the last parameter to a func is a closure, swit lets you use a special syntax called trialing closure syntax like this
    func travel2(action: () -> Void) {
        print("IM CHEATING..CHEATING!! MRS.PUFF HELP")
        action()
        print("THAT WAY! CHEAT THAT WAY")
    }
    travel2 {
        print("CHEATING??????? WAHHHHHHHHHHHHH")
    }
    //this is the same as above, but the code is a little cleaner. We elimniatd the need for a closure statement above our func, because we can simply use {} around around travel2 action
    //notice you dont even need () to make travel2 run despite it being a func


