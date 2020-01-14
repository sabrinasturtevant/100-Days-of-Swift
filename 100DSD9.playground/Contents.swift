import UIKit

//Initializers
    //initializers are special methods that provide different ways to create a struct.
    struct User {
        var username: String
        init() {
            username = "Anonymous"
            print("Creating a new user")
        }
    }
    //now calling it
    var user = User()
    user.username = "patrickStar"
    //this kind of struct could be useful when you need swift to retain memory of the initial name a user gives themselves, but then swicth it to be anonymous

//Referring to the Current Instance
    //inside methods you get a constatnt called "self", whihch will poijt swoft to whatever instance of the struct is being currently used. This can be very useful when you name your parmateer the same as your property
    //in the struct below, name would refer to the parameter, but self.name refers to the property(var name: String)
    struct Person {
        var name: String
        init(name: String) {
            print("\(name) was born today")
            self.name = name
        }
    }

//Lazy Properties
    //this is basically for performace optimization, as lazy properties only run when you need them
    struct FamilyTree {
        init() {
            print("Creating a family tree")
        }
    }
    //now we can use this struct inside of another
    struct Person2 {
        var name: String
        lazy var familyTree = FamilyTree()
        init(name: String) {
            self.name = name
        }
    }
    //now finally to call it
    var ed = Person2(name: "ed")
    //so now if you want to access the print from the init, you have to access the property
    ed.familyTree

//Static Properties and Methods
    //each properties and method we have used belong to an indivodual struct, and i basically dont understand what a static var does. He really doesnt explain it well
    struct Student {
        static var classSize = 0
        var name: String
        init(name: String) {
            self.name = name
            Student.classSize += 1
        }
    }
    let ed2 = Student(name: "ed")
    let taylor = Student(name: "taylor")
    print(Student.classSize)
    //After just googling it, i found this definition that helped me undertand a little better. "Static variables are those variables whose values are shared among all the instance or object of a class. When we define any variable as static, it gets attached to a class rather than an object."
    //so if you remove the "static" from the struct above, youll get errors saying you cant use classSize on student because the instance was never carried over. Use static to mean you will refernece this later

//Access Control
    //private vars let you restrict which code canuse properties and methods
    struct Person3 {
        private var id: String
        init(id: String) {
            self.id = id
        }
        func identify() -> String {
            return "My SS number is \(id)"
        }
    }
    let ed3 = Person3(id: "12345")
    //then public does the exact opposite
