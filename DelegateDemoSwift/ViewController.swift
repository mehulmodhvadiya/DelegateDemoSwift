//
//  ViewController.swift
//  DelegateDemoSwift
//
//  Created by Verve Mac on 11/06/18.
//  Copyright © 2018 Verve Mac. All rights reserved.
//

import UIKit

class ViewController: UIViewController ,someDelegate
{
//    func getFiletrData(arrData: NSArray)
//    {
//        NewArr.removeAllObjects()
//        NewArr.addObjects(from: arrData as! [Any])
//        tblList.reloadData()
//    }
    
    func getData(arrData: NSArray) {
        NewArr .removeAllObjects()
        NewArr.addObjects(from: arrData as! [Any])
        tblList .reloadData()
    }
    
    let kUserDefault = UserDefaults.standard
    
    var arrayData = [Any]()
    
    var cow:String? = nil
    
    var dog:String!

    let optionalString:String? = "Nice"
    
    var NewString:String!=nil
    
    var dictionary = [String: String]()

    let cellReuseableIdentifier = "cell"
    
    @IBOutlet var btnPop : UIButton!
    
    @IBOutlet var tblList : UITableView!
    
    var NewArr  = NSMutableArray()
    
   // var ArrNewData = ["raju","natho","gigo","bhimo","keshri"]

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // set array object store in usedefault
        
//        kUserDefault.set(["KIRIT" , "MODI" , "FIRST" , "LAST"], forKey: "nameArray")
//        kUserDefault.set("Kirit Modi", forKey: "fullName")
//        kUserDefault.set(["firstName" : "kirit" , "lastName" : "Modi"], forKey: "name")
//        kUserDefault.set(true, forKey: "isCheck")

        print(optionalString)
        print(NewString)
        dog = cow
        kUserDefault.synchronize()
        
        // get array object
        arrayData = kUserDefault.array(forKey: "nameArray")!
        let fullName = kUserDefault.object(forKey: "fullName")!
        let  dictionary1 = (kUserDefault.object(forKey: "name") as? [String:String])!
        print(kUserDefault.array(forKey: "nameArray")!)
        print(kUserDefault.bool(forKey: "isCheck"))
        if kUserDefault.bool(forKey: "isCheck")==true {
            print("ok done it...........")
        }
//        print(!((dictionary["firstName"] != nil)))
        let first = dictionary1["firstName"] ?? "No subscript found: 🙁"
        
//        NewArr.add([kUserDefault.object(forKey: "nameArray")!])
        print(arrayData)
        print(arrayData[0])

        // Do any additional setup after loading the view, typically from a nib.
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
    }
//    func updateValues(update: String) {
//        self.labelText.text? = update
//    }

//    func getData(arrData: NSMutableArray) {
//        NewArr.adding(arrData)
//        tblList .reloadData()
//    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func gotoSecondVC()
    {
        let SecondVC = UIStoryboard.init(name: "Main", bundle: Bundle.main).instantiateViewController(withIdentifier: "SecondViewController") as? SecondViewController
        SecondVC?.delegate = self
        self.navigationController?.pushViewController(SecondVC!, animated: true)
        
//        let SecondVC = UIStoryboard.init(name: "Main", bundle: Bundle.main).instantiateViewController(withIdentifier: "SelectedVC") as? SelectedVC
//        SecondVC?.delegate = self
//        self.navigationController?.pushViewController(SecondVC!, animated: true)
    }
}

extension ViewController : UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return NewArr.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tblList.dequeueReusableCell(withIdentifier: cellReuseableIdentifier) as! TableViewCell
        
        cell.labelText.text? = NewArr[indexPath.row] as! String
        
        return cell
    }
}
extension ViewController : UITableViewDelegate{
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat
    {
        return 56;//Choose your custom row height
    }
    
}
