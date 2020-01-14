import UIKit

//Writing Functions
    //functions let us reuse code, as repeating code is generally a bad idea
    func printHelp() {
        let message =
        """
        Welcome to MyApp!

        Run this app inside a Directpry of images and
        MyApp will resize them all into thumbnails
        """
        print(message)
    }
    //now the func can be called simply by
    printHelp()

//Accepting Parameters
    //functions are more powerful when you can customize them each time you use them
    //we have been using a parameter this whole time with print
    print("Hey Spongebob, over here")
    //to make your own parameter, give the parameter a name: dateType
    func square(number: Int) {
        print(number * number)
    }
    //this func is telling swift we expect to recieve an Int, and its name is declared as number.
    //this is what it looks like to run the function
    square(number: 8)

//Returning Values
    //functions can also send back data
    //inside your func, you must include the word return
        //your func will immediately exit sending back that value, and no other code will be run
    func square2(number2: Int) -> Int {
        return number2 * number2
    }
    //so this super confusing thing is saying: i declare a new func called square2. I want this func to consider the value of number2 that is going to be an Int, and then return a differnt item that will also be an Int. Finally, the return will be number2 times number2
    //now we can run it
    let result = square2(number2: 8)
    print(result)
    //so now swift creates a constant called result. Result is equal to the function square2 with a parameter of 8. Then it prints the value of result

//Parameter Labels
    //swift will let us provide two names for each parameter
        //one of these is used externally to call the function
        //the other used internally inside funcs
    func sayHello(to name: String) {
        print("Hello, \(name)!")
    }
    //the paramter is called to name, which means externally its called to, but internally it is called name. this makes the func read more naturally
    sayHello(to: "Taylor")
    //this code say, run the func called sayHello with the parameters to: "Taylor" which is the string referneced above

//Omitting parameters
    //when you use a parameter in print, you dont actually have to use any paramter names. to do this is your code, use an underscore rather than a parameter name
    func greet(_ person: String) {
        print("Hello, \(person)!")
    }
    //now you can call greet w/out a parameter
    greet("Taylor")

//Default Parameters
    //you can change the behavior of func using someting called terminator parameters. This gives it a default value
    func greet2(_ person: String, nicely: Bool = true) {
        if nicely == true {
        print("Hello \(person)!")
        } else {
        print("oh fuck a duck its \(person) again")
        }
    }
    //now the func can be called two different ways
    greet2("Taylor")
    greet2("Taylor", nicely: false)
        
//Variadic Functions
    //some funcs are variadic, which means they can accept any number of parameters of the same type. print is an example. if you pass many strings parameters in print, they are all printed on the sam line with a space in between
    print("Haters", "gonna", "HATTTTE")
    //you also makes ints variatic by using ...
    func square2(numbers: Int...) {
        for number in numbers {
            print("\(number) squared is \(number * number)")
        }
    }
    //omggg so this func says: make a new func called square2. this func is gonna have a paramter called numbers that will be a range on ints. create a variable called number, and for every numbers that is passed through later, print this statement
    //now we can run this func using numbers seoerated by commas
    square2(numbers: 1, 2, 3, 4, 5)

//Writing Throwing Functions
    //swift lets us throw errors from funcs by marking them as throws before their return type
    enum PasswordError: Error {
        case obvious
    }
    func checkPassword(_ password: String) throws -> Bool {
        if password == "password" {
        throw PasswordError.obvious
    }
    return true
    }
    //so this code is saying: Make an enum called PasswordError based on the existing type in swift called Error. Its only case is obvious. then make a func called checkPassword with a parameter called password that will be a string. return a true or false value based on return case. if the password == a string password throw an obvious enum case.

//Running Error Throwing Functions
    //do starts a section of code that might cause issues
    //try is used beofre each function that may throw an error
    //catch lets you handle errors easier
    //if errors are thrown in the do block, execution of code goes straight to the catch block
    do {
        try checkPassword("password")
        print("That password is good")
    } catch {
        print("You cant use that password")
    }
    //so this says, do(try this thing that may not work), go up to my func called checkPassword with the parameter of "password". Print that password is good, except the fact that swift is smart enough to realize that password will throw an error, so it will jump down to the  catch block {} and print that messge instead

//Inout Parameters
    //all parameters passed ino swift are constants
    //you can pass paramters in as inout so they can be changed inisde your func
    func doubleInPLace(number: inout Int) {
        number *= 2
    }
    //this func says: make a new func called doubleInPlace. Give it a parameter that I can change later called number that is an Int. Multiply the number by 2
    //first make a var int, as you cant use inout without a var
    //use & as it tells swoft youre explicitly aware it is an inout
    var myNum = 10
    doubleInPLace(number: &myNum)


