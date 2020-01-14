import UIKit

//Arrays
    //arrays are collections of values stored as a single value
    let john = "John Lennon"
    let paul = "Paul McCartney"
    let george = "George Harrison"
    let ringo = "Ringo Star"
    //this is the actual array, starying and ending with brackets
    //commas seperate data
    let beatles = [john, paul, george, ringo]
    //you can read or print an value form an array
    //put a number in brackets after array name
    //arrays start counting from 0, so john = 0, paul = 1
    beatles[1]
    //if youre using type annotations, arrays are in brackets
    let beatles2: [String] = [john, paul, george, ringo]

//Sets
    //set are just like arrays except
        //items arent stored in order, effectovely random
        //no item can appear twice in a set
    //you can create sets directly form arrays
    let colors = Set(["red", "green", "blue"])
    //if you look in the output, it doesnt match the order
    //because they are unordered, you cant read values like arrays
    //duplictae items in a set get ignored
    let colors2 = Set(["red", "green", "blue", "red", "blue"])

//Tuples
    //tuples are similar to arrays and sets except:
        //you cant add or remove items from a tupple
        //you cant change the type of items in a tuple
        //you can access items using numerical positions like arrays
    //they are created by placing multiple items into ()
    var name = (first: "Taylor", last: "Swift")
    //you can access items using numbers starting at 0
    name.0
    //or you can access by the name
    name.first
    //you can change values like this
    name = (first: "justin", last: "bieber")
    //but you cant change values like this
    //name = (first: "taylor", age: 30)

//Arrays VS Sets VS Tuples
    //if you need a specific, fixed collection use tuple
    let address = (house: 555, street: "TS Avenue", city: "Nashville")
    //if you need a collection of values that must be unqiue, use set
    let set = Set(["aardvark", "astrounaut", "azalea"])
    //if you need duplicats, or order is important, use arrays
    let pythons = ["Eric", "Graham", "John", "mike"]

//Dictionaries
    //collections of values
    let heights = [
        "Taylor Swift": 1.78,
        "Ed Sheeran": 1.73
    ]
    //taylor swift is an identifier
    //identifiers are called keys, and oyu can use them to read back
    heights["Taylor Swift"]
    //when using type annotations, dictionaries are written like this
    let heights2: [String: Double] = [
        "Taylor Swift": 1.78,
        "Ed Sheeran": 1.73
    ]

//Dictionary Default Value
    //if you try to call a key that doesnt exist, swift will send Nil
    //that may be okay, but you can also provide a default value
    let favIceCream = [
        "Paul": "Choc",
        "Sophie": "Vanilla"
    ]
    //can read Pauls fav ice cream like this
    favIceCream["Paul"]
    //but if we ask for an unknown name, swoft will give nil
    favIceCream["Bill"]
    //can fix by providing default value
    favIceCream["Robert", default: "Unknown"]

//Creating Empty Collections
    //arrays, sets, dictionaroes, are called collevtions
    //to create empty collections do this
    //empty dictionaries
    var teams = [String: String]()
    //and we can add values later like this
    teams["Paul"] = "Red"
    //empty arrays
    var results = [Int]()
    //empty set
    var words = Set<String>()

//Enumerations
    //aka emuns, define groups of related values
    //for example, you dont want to accidental use the same types of words over and over like this
    let result = "failure"
    let result2 = "failed"
    let result3 = "fail"
    //instead use an enum to cleary define values
    enum Result {
        case success
        case failure
    }
    //now you must choose one of the values
    let result4 = Result.failure

//Enum Associated Value
    //enums can sort values and associated value
    enum Activity {
        case bored
        case running(destination: String)
        case talking(topic: String)
        case singing(volume: Int)
    }
    //now we can be even more presise
    let talking = Activity.talking(topic: "football")

//Enum Raw Values
    //sometimes you need to assign values to enums so it has menaing
    enum Planet: Int {
        case mercury
        case venus
        case earth
        case mars
    }
    //swift automatically assigns numbers starting with mercury = 0
    //it is not natural to think of mercury as the zero plant, so you can assign it a value of one instead
    enum Planet2: Int {
        case mercury = 1
        case venus
        case earth
        case mars
    }
    //now mer = 1, venus = 2, earth = 3, mars = 4
