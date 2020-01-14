import UIKit

//Functions
    //funcs let you define a re-usable piece of code that performs specific pieces of functionality. usually funcs are able to recieve some values to modify, but not always
    func favAlbum() {
        print("My fav album is GooBoo Juice")
    }
    //so even though we wrote this func, nothing will be printed until we actually call it like this
    favAlbum()
    //but what if we needed the func to print a new album every time?
    //the code below tells swift we want the func to accept one parameter called "name" of type string.
    func favoriteAlbum(name: String) {
        print("my fav album is \(name)")
    }
    //now we can use string interpolation to acll the func
    favoriteAlbum(name: "GooBoo Juice")
    //you can also tell swift to return a value if need be
    func albumIsTaylor(name: String) -> Bool {
        if name == "Taylor Swift" {return true}
        if name == "Fearless" {return true}
        if name == "Speak Now" {return true}
        return false
    }

//Optionals
    //swift does its best to tell you your code will crash far befpre it builds. a big one is using data that is the wrong type or simply missing
    //in the code above, we said this func MUST return a value of type bool. But if we werent sure if the value would be there or not, we use an optional
    func getHaterStatus(weather: String) -> String? {
        if weather == "sunny" {
            return nil
        } else {
            return "Hate"
        }
    }
    var status: String?
    status = getHaterStatus(weather: "rainy")
    //force unwrapping uses ! to override swifts safety of not knowing whether a value is there or not
    func yearAlbumReleased(name: String) -> Int? {
        if name == "Taylor Swift" { return 2006 }
        if name == "Fearless" { return 2008 }
        if name == "Speak Now" { return 2010 }
        if name == "Red" { return 2012 }
        if name == "1989" { return 2014 }
        return nil
    }
    var year = yearAlbumReleased(name: "Red")
    if year == nil {
        print("There was an error")
    } else {
        print("It was released in \(year!)")
    }

//Optional Chaining
    //swift has ways to make your optionals less confusing. optional chaining only lets your code run if your optional has a value
    //i dont really understand what he means here. Looks like a normal swict case to me. he goes into all the stuff about making is uppercased which i guess is helpful, but i dont know what it has to do with optional chaining
    func albumReleased(year: Int) -> String? {
        switch year {
        case 2006: return "Taylor Swift"
        case 2008: return "Fearless"
        case 2010: return "Speak Now"
        case 2012: return "Red"
        case 2014: return "1989"
        default: return nil
        }
    }
    let album = albumReleased(year: 2006)?.uppercased()
        print("The album is \(album)")
    //the nil coalescing operator tells swift to use value A, but if there isnt a value A, use value B instead
    let album2 = albumReleased(year: 2006) ?? "unknown"
    print("The album is \(album)")

//Enumerations
    //a way to define your own kind of value in swift
    enum WeatherType {
        case sun, cloud, rain, wind, snow
    }
    func getHaterStatus2(weather: WeatherType) -> String? {
        if weather == WeatherType.sun {
            return nil
        } else {
            return "Hate"
        }
    }
    getHaterStatus2(weather: WeatherType.cloud)
    //enums are super helpful in switch statements because swift knows all the values your enum can have, so it can ensure you cover them all
    func getHaterStatus3(weather: WeatherType) -> String? {
        switch weather {
        case .sun:
            return nil
        case .cloud, .wind:
            return "dislike"
        case .rain:
            return "hate"
        default:
            return "volcano weather"
        }
    }
    //enums can also have multiple values
    enum WeatherTypeAgain {
        case sun
        case cloud
        case rain
        case wind(speed: Int)
        case snow
    }
    var speed = 0
    func getHaterStatus4(weather: WeatherTypeAgain) -> String? {
        switch weather {
        case .sun:
            return nil
        case .wind where speed < 10:
            return "meh"
        case .cloud, .wind:
            return "dislike"
        case .rain, .snow:
            return "hate"
        }
    }
    getHaterStatus4(weather: WeatherTypeAgain.wind(speed: 5))

//Structures
    //strcuts are complex data types, meaning they are made up of mulptiple values. you can then create an instance of the struct and fill it in
    struct Person {
        var clothes: String
        var shoes: String
    }
    let me = Person(clothes: "leggings", shoes: "10 dollar walmart sneakers")
    print(me.clothes)
    print(me.shoes)
    //you can also place funcs directly inside structs. these are not longer called funcs, but methods
    struct PersonAgain {
        var clothes: String
        var shoes: String
        func describe() {
            print("I like wearing \(clothes) with \(shoes)")
        }
    }

//Classes
    //simialr to structs except yu dont get an automatic memeberwise initializer, you can define a class based off another class, when you create an instance of a class it is called an object
    class Person2 {
        var clothes: String
        var shoes: String
        init(clothes: String, shoes: String) {
            self.clothes = clothes
            self.shoes = shoes
        }
    }
    //dont write your funcs before your inits. Since we have similar names set up for mulptiple valuse, use .self to be more specific
    //classes can build on each other to create bigger things, called class inheritence
    class Singer {
        var name: String
        var age: Int
        init(name: String, age: Int) {
            self.name = name
            self.age = age
        }
        func sing() {
            print("La la la la")
        }
    }
    var taylor = Singer(name: "Taylor", age: 25)
    taylor.name
    taylor.age
    taylor.sing()
    //now that we have our basic class, we can build like this. Use the override keyword totake over the func sing() form the parent class
    class CountrySinger: Singer {
        override func sing() {
            print("Trucks and guns and beer and JESUS")
        }
    }

//Properties
    //sructs and classes can have their own vars and lets called properties. thats why i can create a var named name over and over without throwing an error
    //swift lets you run code when a property is about to be changed or has chnaged. im going to copy and paste exactly how he puts it
    //There are two kinds of property observer: willSet and didSet, and they are called before or after a property is changed. In willSet Swift provides your code with a special value called newValue that contains what the new property value is going to be, and in didSet you are given oldValue to represent the previous value.
    struct Person4 {
        var clothes: String {
            willSet {
                updateUI(msg: "I'm changing from \(clothes) to \(newValue)")
            }
            didSet {
                updateUI(msg: "I just changed from \(oldValue) to \(clothes)")
            }
        }
    }
    func updateUI(msg: String) {
        print(msg)
    }
    var taylor2 = Person4(clothes: "T-shirts")
    taylor2.clothes = "short skirts"
    //is it possible to make your own .whateverYouNeed with structs
    struct PersonOMG {
        var age: Int
        var ageInDogYears: Int {
            get {
                return age * 7
            }
        }
    }
    var fan = PersonOMG(age: 25)
    print(fan.ageInDogYears)
