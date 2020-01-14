import UIKit

//Handling Missing Data
    //optionals help you store data that you dont currently know or it might have no value at all
    var age: Int? = nil
    //then later, when the user inputs or whatever, you can change age from a nil to a number
    age = 38

//Unwrapping Optionals
    //a common way to unwrap optionals is with an if let statement, that way, if the value is nil, the code has something else to turn to
    var name: String? = nil
    if let unwrapped = name {
        print("\(unwrapped.count) letters")
    } else {
        print("Miising name")
    }

//Unwrapping with a Guard
    //guard let also unwraps optionals, but if it finds a nil, it expects to exit the func or loop
    func greet(name: String?) {
        guard let unwrapped2 = name else {
            print("No name provided")
            return
        }
        print("Hello, \(unwrapped2)")
    }

//Force Unwrapping
    //only when you KNOW the value isnt nil or else your code will crash
    //simply use a !
    let str = "5"
    let num = Int(str)!
    //the code above is converting the String of 5 into an Int of 5

//Implicity Unwrapped Optionals
    //like optionals, these might contain a vlaye or just nil
    //unlike regular optionals, you dont need to unwrap them
    let age2: Int! = nil
    //because they act like they are already unwrapped, you dont need if let or guard let, however if you use them and your code finds nil, it will crash
    //best used when you know a value will start off as nil but will chnage later

//Nil Coalescing
    //this unwraps an optional and returns the value inside if there is one. if there isnt one, a default value will be used instead
    func username(for id: Int) -> String? {
        if id == 1 {
            return "Its ya boi"
        } else {
            return nil
        }
    }
    //if we call the func above, we will get nil because the user isnt reconized, but we can provide a default value of anaymous by using ??
    let user = username(for: 15) ?? "Anonymous"

//Optional Chaining
    //you can write a question mark within dot syntax to make something called optional chanining
    //swift will see if your ? value has a vlaue, and if it doesnt, the whole line of code will be skipped
    let names = ["john", "pual", "george", "ringo"]
    let beatles = names.first?.uppercased()
    //if first returns nil, then it will set beatles to nil immediately
    
//Optional Try
    //try? changes throwing functions into functions that retirn an optional
    enum PasswordError: Error {
        case obvious
    }
    func checkPassword(_ password: String) throws -> Bool {
        if password == "password" {
            throw PasswordError.obvious
        }
        return true
    }
    do {
        try checkPassword("password")
        print("Good password")
    } catch {
        print("no can do sonny boi")
    }
    //that was just the set up. Now the new try?
    if let result = try? checkPassword("password") {
        print("Result was \(result)")
    } else {
        print("Nope")
    }
    //this is try!, whihc you can use of you know your code wont fail
    try! checkPassword("sekrit")
    print("OK")
    
//Failable Initializers
    //these are inits that may or may not work
    //write these in your own structs by using init?
    struct Person {
        var id: String
        init?(id: String) {
            if id.count == 9 {
                self.id = id
            } else {
                return nil
            }
        }
    }

//Typecasting
    //this allows you to have alittle more control over what type swift places on certain values using as?
    class Animal {}
    class Fish: Animal {}
    class Pupper: Animal {
        func makeNoise() {
            print("Woof")
        }
    }
    let pets = [Fish(), Pupper(), Fish(), Pupper()]
    //swoft knows both fish and pupper come from the animal class, so it makes an array of animals. but we want the dogs to bark so we would write
    for pet in pets {
        if let pupper = pet as? Pupper {
            pupper.makeNoise()
        }
    }
