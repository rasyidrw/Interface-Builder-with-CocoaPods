//
//  ViewController.swift
//  Interface Builder
//
//  Created by Rasyid Respati Wiriaatmaja on 29/01/20.
//  Copyright © 2020 rasyidrw. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
    @IBOutlet weak var pvCity: UIPickerView!
    @IBOutlet weak var tfCity: UITextField!
    
    var pvCity2 = UIPickerView()
    
    let city = ["Bandung", "Jakarta", "Bogor", "Tangerang"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        pvCity.delegate = self
        pvCity.dataSource = self
        
        pvCity2.delegate = self
        pvCity2.dataSource = self
        
        tfCity.inputView = pvCity2
        
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
        
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        
        return city.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        
        return city[row]
        
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        
        tfCity.text = city[row]
        
        view.endEditing(true)
    }
    
    
}

