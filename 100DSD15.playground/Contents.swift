import UIKit

//Properties
    //structs and classes can have thier own vars and lets. these are called properties. these let yuou attach values to your types to represent them uniquely
    struct Instrument {
        var first: String
        var second: String
        func describe() {
            print("Is \(first) an instrument?")
        }
    }
    let mayonaise = Instrument(first: "mayonaise", second: "horseradish")
    mayonaise.describe()
    //swift lets you add code that is only run when a property is about to change, or has been changed. usually the interface updates as well
    //oldValue and newValue are basically vars that swift generates automatically in a willSet or didSet
    struct Person {
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
    var taylor = Person(clothes: "T-shirts")
    taylor.clothes = "short skirts"
    //it is possible to make properties that act like code behind the scenes. for ecxample, we can use .uppercase to make a str uppercase. we can also make custom ones
    struct PersonPuppy {
        var age: Int
        var ageInDogYears: Int {
            get {
                return age * 7
            }
        }
    }
    var personPupper = PersonPuppy(age: 25)
    print(personPupper.ageInDogYears)

//Static Properties and Methods
    //swift lets you make properies and methods that belong to a type, rathee than an instance of a type. swift calls these "static" properies.
    //in dumb dumb terms: static vars in structs make it so every time you call the struct, you dont have to input a value for the static var
    //in this case, i only have to provide a name and age. no favSong
    struct TaylorFan {
        static var favSong = "Look"
        var name: String
        var age: Int
    }
    let fan = TaylorFan(name: "jam", age: 25)
    print(TaylorFan.favSong)

//Access Control
    //this lets you specify what data inside structs should be modified
    //the forst is public whihc means anyone can read and write the propert
    //the second is internal, whihc means only your swift code can read and write the property. if you ship your code, others wont be able to read the property
    //the third is file private. this means only swift code in the same file as the ype can read or write the property
    //the fourth is private. this is the most restritive. this means the propert is only avaiable inside methods that belong to its type or its extensions
    class whyIsThisDudeObessedWithTaylorSwift {
        private var name: String?
    }

//Polymorphism and Typecasting
    //because classes can inherit from each other, it means one class is a superset of another. class B has all the things class A does. this means you can treat type B as type B or type A
    class Album {
        var name: String
        init(name: String) {
            self.name = name
        }
    }
    class StudioAlbum: Album {
        var studio: String
        init(name: String, studio: String) {
            self.studio = studio
            super.init(name: name)
        }
    }
    class LiveAlbum: Album {
        var location: String
        init(name: String, location: String) {
            self.location = location
            super.init(name: name)
        }
    }
    //this define three classes, with the two inheriting from Album. becuase LiveAlbum inherits from album, it can be treated like either. this is called polymorphism
    //that means you can write your code like this
    var taylorSwift = StudioAlbum(name: "Taylor Swift", studio: "The Castles Studios")
    var fearless = StudioAlbum(name: "Speak Now", studio: "Aimeeland Studio")
    var iTunesLive = LiveAlbum(name: "iTunes Live from SoHo", location: "New York")
    //here we made an array to hold all the albums. even tho they are techinically different classes, this doesnt metter because they all stem from Album
    var allAlbums: [Album] = [taylorSwift, fearless, iTunesLive]
    //in this version, we added a func. when we create an array that hold Albums2, we fill it with subclasses of Album2.
    class Album2 {
        var name: String
        init(name: String) {
            self.name = name
        }
        func getPerformance() -> String {
            return "The album \(name) sold lots"
        }
    }
    class StudioAlbum2: Album2 {
        var studio: String
        init(name: String, studio: String) {
            self.studio = studio
            super.init(name: name)
        }
        override func getPerformance() -> String {
            return "The studio album \(name) sold lots"
        }
    }
    class LiveAlbum2: Album2 {
        var location: String
        init(name: String, location: String) {
            self.location = location
            super.init(name: name)
        }
        override func getPerformance() -> String {
            return "The live album \(name) sold lots"
        }
    }
    var taylorSwiftFuckingAgain = StudioAlbum(name: "Taylor Swift", studio: "The Castles Studios")
    var fearlessFuckingAgain = StudioAlbum(name: "Speak Now", studio: "Aimeeland Studio")
    var iTunesLiveAgain = LiveAlbum(name: "iTunes Live from SoHo", location: "New York")
    var allAlbumsAgain: [Album] = [taylorSwift, fearless, iTunesLive]
    //you have an object of a certain type, but really you know it should be a different ype. the solution is typecasting, conmverting one object to another
    //im gonna skip a section on typecasting because it keeps thrpwing errors. Im not sire if im doing something wrong or if its bcause my xcode is a little newer than his but ive been stuck on this section 20+ minutes and i think I understand what hes trying to say

//Closures
    //a closure is thought of as a var that can hold ocde
    let vw = UIView()
    UIView.animate(withDuration: 0.5, animations: {
        vw.alpha = 0
    })
    //this method has to use a closure because UIKit has to do all sorts of work to prep the animation
    //if the last parameter to a method takes a closure, you dont have to write out that parameter, and instead provide a block of code like this
    let vw2 = UIView()
    UIView.animate(withDuration: 0.5) {
        vw.alpha = 0
    }
