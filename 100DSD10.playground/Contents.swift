import UIKit

//Creating your own Class
    //similar to strcurs, but have 5 differences
    //the frst difference is they never come with an init
    class Dog {
        var name: String
        var breed: String
        init(name: String, breed: String) {
            self.name = name
            self.breed = breed
            }
        }
    //creating istanbces looks just like a struct
    let puppy = Dog(name: "Gary", breed: "snail")
    
//Class Inheritance
    //the second difference from a struct is that you can create a class based on a preexisting one
    class Dog2 {
        var name: String
        var breed: String
        init(name: String, breed: String) {
            self.name = name
            self.breed = breed
        }
    }
    //now this class is a subclass of Dog
    //here we are making the Poodle Initiailzer call the dog initializer directly. swift makes you use super.innit() from child classes, just in case the info chnages between the parent and child class
    class Poodle: Dog {
        init(name: String) {
            super.init(name: name, breed: "Poodle")
        }
        
    }

//Overriding Methods
    //child classes can override parent classes
    //swift requires override func when overiding a method
    //if the override wasnt there, poppy.MakeNoise would print woof instead
    class Dog3 {
        func makeNoise() {
            print("Woof")
        }
    }
    class Poodle2: Dog3 {
        override func makeNoise() {
            print("Yip")
        }
    }
    let poppy = Poodle2()
    poppy.makeNoise
    

//Final Classes
    //final classes mean no one can create child or subclasses of it
    //that means everyone has to ue your code exactly how it was written
    final class Dog4 {
        var name: String
        var breed: String
        init(name: String, breed: String) {
            self.name = name
            self.breed = breed
        }
    }

//Copying Objects
    //when you copy a struct, both the og and the copy are different, but when you copy a class, both the og and copy point to the same thing
    class Singer {
        var name = "Taylor Swoft"
    }
    var singer = Singer()
    print(singer.name)
    //this above instance prints taylor swift, but if we create a second var and changes its name itll print something else. if this was a struct, xcode would print taylor swift twice
    var singerCopy = singer
    singerCopy.name = "Justin Beibs"
    print(singer.name)
    
//Deinitializers
    //fourth difference from structs is that classes have deinitializers
    //this a code that gets run when an instance of a class is destryed
    class Person {
        var name = "Squidward TennisBalls"
        init() {
            print("\(name) is alive")
        }
        func printGreeting() {
            print("Hello Im \(name)")
        }
        deinit {
            print("\(name) was DESTROYED son")
        }
    }
    //each time this loop goes around, a new person is created and destroyed
    for _ in 1...3 {
        let person = Person()
        person.printGreeting()
    }

//Mutability
    //the last difference between structs and classes is the way they handle constants. if in the class, you declare something as a var, then lter attcah that var to constant, it can be changed
    class Singers {
        var name = "Taylor Swift"
    }
    let taylor = Singer()
    taylor.name = "Ed Sheeran"
    print(taylor.name)
    //if you dont want to be able to change later, use let in your class as well
    
