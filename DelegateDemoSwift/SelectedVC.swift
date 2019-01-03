//
//  SelectedVC.swift
//  DelegateDemoSwift
//
//  Created by Verve Mac on 04/07/18.
//  Copyright © 2018 Verve Mac. All rights reserved.
//

import UIKit

protocol filterDelegate {
    //func updateValues(update:String)
    func getFiletrData(arrData : NSArray)
}

class SelectedVC: UIViewController {
    
    var delegate : filterDelegate! = nil
    
    @IBOutlet var tblSelected : UITableView!
    
    let CellSelecteduse  = "cell"
    
    var ArrNewData = ["raju","natho","gigo","bhimo","keshri"]
    
   // var arrSelect : [String] = []
    
     var arrSelect = [String] ()

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
extension SelectedVC : UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       return ArrNewData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tblSelected.dequeueReusableCell(withIdentifier: CellSelecteduse, for: indexPath) as! SelectedCell
        
        cell.label.text = ArrNewData[indexPath.row]
        
       
        return cell
    }
}
extension SelectedVC : UITableViewDelegate{
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat
    {
        return 71;//Choose your custom row height
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath)
    {
        let cell = tableView.cellForRow(at: indexPath as IndexPath) as! SelectedCell
        
        if cell.accessoryType == .none
        {
            cell.accessoryType = .checkmark
            arrSelect.insert(ArrNewData[indexPath.row], at: indexPath.row)
            delegate.getFiletrData(arrData:arrSelect as NSArray )
            //animalCheck.insert(indexPath)
        }else{
            cell.accessoryType = .none
            print(indexPath.row)
            arrSelect.remove(at: indexPath.row)
          //  arrSelect.remove(at: indexPath.row)
            delegate.getFiletrData(arrData:arrSelect as NSArray )
        }
        
    }

}
