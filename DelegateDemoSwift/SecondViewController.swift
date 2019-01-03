//
//  SecondViewController.swift
//  DelegateDemoSwift
//
//  Created by Verve Mac on 11/06/18.
//  Copyright © 2018 Verve Mac. All rights reserved.
//

import UIKit

protocol someDelegate {
    //func updateValues(update:String)
    func getData(arrData : NSArray)
}
class SecondViewController: UIViewController , UITextViewDelegate {
    
    var delegate : someDelegate! = nil
    
    @IBOutlet weak var txtEnterText : UITextField!
    
    @IBOutlet weak var btnPop : UIButton!
    
    var arrData = [String]()
    
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        let birthday:(String) -> () = { name in
            print("Happy birthday, \(name)!")
        }
        
        let fullname:(String,String) -> () = {(name,lastname) in
            print(name+lastname)
            
        }
        fullname("Mehul","Modhvadiya")
        
        birthday("Arthur")
        
        var user = User(username: "farhansyed", email: "farhansyed123@gmail.com", name: "Farhan Syed")
        print(user.name)
        print(user.username)
        print(user.email)

        let finalNme = { (a:Int,b:Int) -> Int in
            return (a+b)
        }
        let finalString = { (name:String,lastname:String) -> String in
            return (name + lastname)
        }
        print(finalString("Mehul", "Modhvadiya"))
        print(finalNme(5, 6))
        
        var printFullName = LearnSwift(name: "Mehul", LastName: "Modhvadiya")
        var printFinalName = printFullName.joinTwoString(name: "Mehul", LastName: "Modhvadiya")
        var structLearn = LearnNewStructure.init(name: "mehul", lastname: "modh")
        print(structLearn.name!)
        print(structLearn.lastname!)
        print(printFullName.name!)
         print(printFullName.LastName!)
        print(printFinalName)

        print(Week.Tuesday.hashValue)

        
        var nonempty = "non-empty"
            if let i = nonempty.index(of: "-") {
                nonempty.remove(at: i)
            }
            print(nonempty)
             // Prints "nonempty"
        
        let label = "The width is "
        let width = 94
        // that is called type casting
        
        let widthLabel = label + String(width)
        print(widthLabel)
        
        let vegetable = "red pepper"
        switch vegetable {
        case "celery":
            print("Add some raisins and make ants on a log.")
        case "cucumber", "watercress":
            print("That would make a good tea sandwich.")
        case let x where x.hasSuffix("pepper"):
            print("Is it a spicy \(x)?")
        default:
            print("Everything tastes good in soup.")
        }
        
        func anyCommonElements<T: Sequence, U: Sequence>(_ lhs: T, _ rhs: U) -> Bool
            where T.Element: Equatable, T.Element == U.Element
        {
            for lhsItem in lhs {
                for rhsItem in rhs {
                    if lhsItem == rhsItem {
                        return true
                    }
                }
            }
            return false
        }
        anyCommonElements(["Mehul","Nikul","Hitesh","Amit"], ["Nikul"])
        
        func makeArray<Item>(repeating item: Item, numberOfTimes: Int) -> [Item] {
            var result = [Item]()
            for _ in 0..<numberOfTimes {
                result.append(item)
            }
            return result
        }
        makeArray(repeating: "knock", numberOfTimes: 4)
        
        
             let cast = ["Vivien", "Marlon", "Kim", "Karl"]
             let shortNames = cast.filter { $0.count < 5 }
             print(shortNames)
             // Prints "["Kim", "Karl"]"
        
        func passedTo(int:Int)-> Int{
            return 5+int
        }
        let saveNewValue = passedTo(int: 5)
        print(saveNewValue)
        
        func passTwoValue(int1:Int, int2:Int) -> Int{
            return int1+int2
        }
//        let saveNewValue1 =
        passTwoValue(int1: 5, int2: 5)
//        print(saveNewValue1)

        
        /// laern new closer working as function in ios in swift 4.0
        
        let clouser : (Int,Int) -> Int = { (number1:Int,number2:Int) in
            return (number1 + number2)
            
        }
        print(clouser(10,12))
        
        // new closerer type southerhand
        
        let clouser1: (Int,Int) -> Int = {
            return $0 + $1
        }
        print(clouser1(8,2))
        
        // lets go inferred type of clouser
        
        let closer12 = {(someeInt:Int) in (5 * someeInt)}
        print(closer12(45))

    } 
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func btnpopclick()
    {
        
        guard  !(txtEnterText.text?.isEmpty)! else {
            let alert = UIAlertController(title: "Demo", message: "Please enter text in textField.", preferredStyle: UIAlertControllerStyle.alert)
            let action = UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler: nil)
            alert.addAction(action)
            self.present(alert, animated: true, completion: nil)
            return
        }
        arrData.append((txtEnterText?.text)!)
        delegate.getData(arrData: arrData as NSArray)
        self.navigationController?.popViewController(animated: true)
        
//        if (txtEnterText.text?.characters.count)!>0
//        {
//           // delegate.updateValues(update: txtEnterText.text!)
//            delegate.getData(arrData: ["raju","natho","gigo","bhimo","keshri"])
//            self.navigationController?.popViewController(animated: true)
//        }
//        else{
//            let alert = UIAlertController(title: "Demo", message: "Please enter text in textField.", preferredStyle: UIAlertControllerStyle.alert)
//            let action = UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler: nil)
//            alert.addAction(action)
//            self.present(alert, animated: true, completion: nil)
//        }
    }
}
