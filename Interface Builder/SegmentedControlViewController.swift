//
//  SegmentedControlViewController.swift
//  Interface Builder
//
//  Created by Rasyid Respati Wiriaatmaja on 29/01/20.
//  Copyright © 2020 rasyidrw. All rights reserved.
//

import UIKit

class SegmentedControlViewController: UIViewController {
    
    @IBOutlet weak var showImage: UIImageView!
    @IBOutlet weak var segmentIndex: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let index = segmentIndex.selectedSegmentIndex
        
        if index == 0 {
            showImage.image = UIImage(named: "alpukat")
        }
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func selectSegment(_ sender: UISegmentedControl) {
        
        let index = segmentIndex.selectedSegmentIndex
        
        switch index {
        case 0:
            showImage.image = UIImage(named: "alpukat")
        case 1:
            showImage.image = UIImage(named: "durian")
        case 2:
            showImage.image = UIImage(named: "apel")
        case 3:
            showImage.image = UIImage(named: "ceri")
        default:
            print("nothing selected")
            
        }
        
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
