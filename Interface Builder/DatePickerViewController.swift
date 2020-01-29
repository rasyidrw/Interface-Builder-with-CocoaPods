//
//  DatePickerViewController.swift
//  Interface Builder
//
//  Created by Rasyid Respati Wiriaatmaja on 29/01/20.
//  Copyright © 2020 rasyidrw. All rights reserved.
//

import UIKit

class DatePickerViewController: UIViewController {
    
    @IBOutlet weak var dpDate: UIDatePicker!
    @IBOutlet weak var tfDate: UITextField!
    
    var dpDate2 = UIDatePicker()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tfDate.inputView = dpDate2
        dpDate2.datePickerMode = .dateAndTime
        
        dpDate2.addTarget(self, action: #selector(selectDate2), for: .valueChanged)
        
        // Do any additional setup after loading the view.
    }
    
    @objc func selectDate2(){
        
        let format = DateFormatter()
        format.dateFormat = "d-MMM-yyyy H:m"
        
        let date = format.string(from: dpDate2.date)
        
        tfDate.text = date
        view.endEditing(true)
    }
    
    @IBAction func selectDate(_ sender: UIDatePicker) {
        
        let format = DateFormatter()
        format.dateFormat = "d-MMM-yyyy H:m"
        
        let date = format.string(from: dpDate.date)
        
        tfDate.text = date
        
    }
    
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destination.
     // Pass the selected object to the new view controller.
     }
     */
    
}
