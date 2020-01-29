//
//  ImagePickerViewController.swift
//  Interface Builder
//
//  Created by Rasyid Respati Wiriaatmaja on 29/01/20.
//  Copyright © 2020 rasyidrw. All rights reserved.
//

import UIKit
import AssetsPickerViewController

class ImagePickerViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {

    @IBOutlet weak var imgShow: UIImageView!
    
    let imagePicker = UIImagePickerController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imagePicker.delegate = self

        // Do any additional setup after loading the view.
    }
    
    @IBAction func btnPickImage(_ sender: UIButton) {
        
        let alert = UIAlertController(title: "Choose picture", message: "Choose picture from..", preferredStyle: .alert)
        
        let camera = UIAlertAction(title: "Camera", style: .default) { (UIAlertAction) in
            
            if UIImagePickerController.isSourceTypeAvailable(.camera){
                self.imagePicker.sourceType = .camera
                self.present(self.imagePicker, animated: true, completion: nil)
            }
            else{
                print("Not supported camera")
            }
        }
        
        let gallery = UIAlertAction(title: "Gallery", style: .default) {(UIAlertAction) in
            
            self.imagePicker.sourceType = .photoLibrary
            self.present(self.imagePicker, animated: true, completion: nil)
        }
        
        alert.addAction(camera)
        alert.addAction(gallery)
        
        present(alert, animated: true, completion: nil)
        
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        
        let image = info[UIImagePickerController.InfoKey.originalImage]
        
        imgShow.image = image as? UIImage
        
        imagePicker.dismiss(animated: true, completion: nil)
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
