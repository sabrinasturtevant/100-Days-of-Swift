import UIKit

//Variables
    //called varibale(var) because they can vary
    //can change
    var str = "Hello, playground"
    //dont need var the seocnd time, since its already been created
    str = "Goodbye"

//Strings and Integers
    //Swift is a "type safe language"
    //meaning every var must be one specific type
    //swift can assume type of whole number is an Integer(Int)
    var age = 38
    //can use _ as , in large numbers
    //doesnt actually chnage anything, but makes code easier to read
    var population = 8_000_000
    //strings and ints are different, cannot make int = string

//Multi-Line Strings
    //standard strings use "" but dont have line breaks
    //use """ to make multi-line strings
    //opening and closing """ but must on thier own lines
    var str1 =
    """
    This goes
    over mutiple
    lines
    """
    //if you want pretty code but no real lines breaks use \ between lines
    var str2 =
    """
    This doesnt actually \
    go over multiple \
    lines
    """

//Doubles and Booleans
    //double holds fractional values AKA 3.14 or 3.141592654
    var pi = 3.141
    //doubles are not the same as ints, cant mix them up
    //booleans hold true/false statements
    var awesome = true

//String Interpolation
    //this means swift can place varibales in your strings
    //can place any type of variable, just put a \(varName)
    var score = 85
    var strScore = "Your score was \(score)"

//Constants
    //var can chnage over time, but sometimes you dont want change
    //constants (let) is safer to use if a var will never change
    let taylor = "swift"
    //xcode will throw an error if a let is changed
    //it will also recommend vars be let when their value never changes

//Type Annotations
    //swift can infer a tyoe based on how you wrote it
    let anotherStr = "hi"
    //this forces anotherString to be a string, and connot be changed later
    //if you to specifically tell swift a data type, do this
    let album: String = "Reputation"
    let year: Int = 1989
    let height: Double = 1.78
    let taylorRocks: Bool = true



