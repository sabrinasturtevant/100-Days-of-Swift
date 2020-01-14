import UIKit

//Protocols
    //a way of telling swift what properties and methods something must have
    protocol Identifiable {
        var id: String { get set }
    }
    struct User: Identifiable {
        var id: String
    }
    func displayID(thing: Identifiable) {
        print("My id is \(thing.id)")
    }

//Protocol Inheritance
    //one protocol can inherit from another
    protocol Payable {
        func calculateWages() -> Int
    }
    protocol NeedsTrainings {
        func study()
    }
    protocol HasVacation {
        func takeVacation(days: Int)
    }
    //now we create an employee protocol that can combine them
    protocol Employee: Payable, NeedsTrainings, HasVacation {}

//Extensions
    //super powerful. Allows you to add extensions to existing types
    extension Int {
        func squared() -> Int {
            return self * self
        }
    }
    let number = 8
    //now we can simply use the .whatever syntax to call it
    number.squared()

//Protocol Extensions
    //protocol extensions are like regular extensions except you can extend a whole protocol so all of your conforming protoypes get your changes
    let pythons = ["Eric", "Graham", "John", "mike", "terry", "terry" ]
    let beatles = Set(["john", "paul", "george", "ringo"])
        //both arrays and sets are called a Collection in swift so we can manage both using this [rotocol name
    extension Collection {
        func summarize() {
            print("There are \(count) of us:")
            for name in self {
                print(name)
            }
        }
    }
    pythons.summarize()
    beatles.summarize()

//Protocol-oriented Programming
    //this makes it easy for types to conform to protocols
    protocol Identifiable2 {
        var id: String { get set }
        func idntitfy()
    }
    extension Identifiable2 {
        func idntitfy() {
            print("me id is \(id)")
        }
    }
    struct User2: Identifiable2 {
        var id: String
    }
    let twoStraws = User2(id: "twostraws")
    twoStraws.idntitfy()

//not gonna lie, I didnt understand this completely. I have some review days coming up and i think it will help once we get going in the projects and i can see these things in action
