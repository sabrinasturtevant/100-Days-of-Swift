import UIKit

//Creating Stuctures (Structs)
    //strcuts can be given their own variables, constants and functions
    //vars inside structs are called properties
    struct Sport {
        var name: String
    }
    //now we can create an instance of it
    var tennis = Sport(name: "Tennis")
    print(tennis.name)
    //so this says, make a new struct called Sport, give it one property called name of type string. now create a var called tennis, and asign it to the structure Sport with a name of Tennis. Finally print

//Computed Properties
    //now we are going to add a propert that looks like a string, but returns different values depending on the Bool
    struct Sport2 {
    var name: String
    var isOlympicSport: Bool
    var olympicStatus: String {
    if isOlympicSport {
        return "\(name) is an Olympic Sport"
    } else {
        return "\(name) isnt an Olymipic Sport"
        }
    }
    }
    let chessBoxing = Sport2(name: "Chessboxing", isOlympicSport: false)
    print(chessBoxing.olympicStatus)

//Property Observers
    //property bservers let you run code right before or after any property chnages
    //for this, we can use the didSet property to print every time the progess.amount chnages
    //willSet is what you could use to run code before a property chnage
    struct Progress {
        var task: String
        var amount: Int {
            didSet {
                print("\(task) is now \(amount) complete")
            }
        }
    }
    var progress = Progress(task: "Loading", amount: 0)
    progress.amount = 30
    progress.amount = 80
    progress.amount = 100

//Methods
    //strcuts can have funcs inside them, this is called a method
    struct City {
        var population: Int
        func collectTaxes() -> Int {
            return population * 1000
        }
    }
    //how to call it
    let london = City(population: 9_000_000)
    london.collectTaxes()
        

//Mutating Methods
    //you can speficiy in your method if you know your func might change down the line
    struct Person {
        var name: String
        mutating func makeAnonymous() {
            name = "Anonymous"
        }
    }
    //becuase it changes the property, swift will only allow you to call it with a var
    var person = Person(name: "ed")
    person.makeAnonymous()

//Properties and Methods of Strings
    //turns out strings are just structs and they have a ton of mothods and properties to manipulate it
    let string = "Im ugly and proud"
    print(string.count)
    print(string.hasPrefix("Im"))
    print(string.uppercased())
    print(string.sorted())
    //there are tons more but this is just a start

//Properities and Methods of Arrays
    //very simialr to above, just with arrays
    var toys = ["Woody"]
    print(toys.count)
    toys.append("Buzz")
    toys.firstIndex(of: "Buzz")
    print(toys.sorted())
    toys.remove(at: 0)
