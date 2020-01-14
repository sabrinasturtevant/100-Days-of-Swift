import UIKit

//Using Closures as Parameters when they also Accept Parameters
    //a closure you pass into a func can also be its own parameter
    //this func accepts a clsure as its only parameter, and that closure in turn accepts a string
    func travel(action: (String) -> Void) {
        print("To the invisible boatmobile!")
        action("bikini bottom")
        print("We are here to bring justicw")
    }
    //now when we call trvel(), our cosure code its required to accept a ""
    travel { (place: String) in
        print("Im going to \(place) in my car")
    }
    //so this code says, make a func called trvel. Give ot the parameters of an action of type string. return a nil. print, run the action with the string of "bikini bottom", then print. then when we call the func, we tell it that theres a new parameter called place that is a string. and tbh im a little confused after that. im not sure how swift knows to replace action w/ place, unless it has something to do with them being in the same spot.

//using closures as parameters when they return values
    //you can change void to any type to force a return
    func travel2(action: (String) -> String) {
        print("Im getting ready to go")
        let description = action("London")
        print(description)
        print("I arrived")
    }
    travel2 { (place: String) -> String in
        return "im going to \(place) in my car"
    }
    //so this says: make a func called travel2, give it a parameter called action that is of type string. I also need this func to return a string value. print, set a description equal to action, and give action a string value of london. print, and print again. Finally, we call trvael2 and set action equal to place, then return a string. then it gives the eturn value.

//shorthand paramter names
    //we can write the same func without many of the confusing bits
    func travel3(action: (String) -> String) {
        print("Im getting ready to go")
        let description = action("London")
        print(description)
        print("I arrived")
    }
    //can remove the return string, and paramter string becuase swift can automatically assume what the type is
    //since there is only one line of code, swift also allows us to remove the word return
    //we can go even further by removing 'place in' because swoft can automatically name  closure paramters for us. just replace \(place) with \($0)
    travel3 {
         "im going to \($0) in my car"
    }

//Closures with multiple paramters
    //same func as above, just with mutple parameters
    func travel4(action: (String, Int) -> String) {
        print("Im getting ready to go")
        let description = action("London", 60)
        print(description)
        print("I arrived")
    }
    travel4 {
        return "im going to \($0) at \($1) in my car"
    }

//Returning Closures from Functions
    //you have to use -> twice, first to specify the func return value, seocnd to specificy closure return value
    //this func accepts no paramters, but returns a closure
    func travel5() -> (String) -> Void {
        return {
            print("Im going to \($0)")
        }
    }
    //then we call travel5() to get back the closure, then call it as a function
    let result = travel5()
    result("london")

//Capturing Values
    //if you use an external values inside your closure, swift captures that value and stores it, so it can be modified
    //so if we add a counter, swift will keep up with that value
    func travel6() -> (String) -> Void {
        var counter = 1
        return {
            print("im going to \($0)")
            counter += 1
        }
    }
    let result2 = travel6()
    result("london")
    result("london")
    result("london")
