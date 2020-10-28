//
//  requirmentViewController.swift
//  property
//
//  Created by NewHorizons on 10/24/20.
//  Copyright © 2020 Educations. All rights reserved.
//

import UIKit

class requirmentViewController: UIViewController,UIImagePickerControllerDelegate, UINavigationControllerDelegate {
let imagePicker = UIImagePickerController()
    @IBOutlet weak var bedroom: UITextField!
    @IBOutlet weak var type: UILabel!
    @IBOutlet weak var desc: UITextField!
    @IBOutlet weak var fimage: UIImageView!
    @IBOutlet weak var price: UITextField!
    @IBOutlet weak var area: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        imagePicker.delegate = self

        // Do any additional setup after loading the view.
    }

    @IBAction func land(_ sender: Any) {
        imagePicker.allowsEditing = false
        imagePicker.sourceType = .photoLibrary
        
        present(imagePicker, animated: true, completion: nil)
    }
    
    @IBAction func house(_ sender: Any) {
        imagePicker.allowsEditing = false
        imagePicker.sourceType = .photoLibrary
        
        present(imagePicker, animated: true, completion: nil)
    }
    @IBAction func apt(_ sender: Any) {
        imagePicker.allowsEditing = false
        imagePicker.sourceType = .photoLibrary
        
        present(imagePicker, animated: true, completion: nil)
    }
    @IBOutlet weak var Land: UIButton!
    @IBOutlet weak var House: UIButton!
    @IBOutlet weak var Apt: UIButton!
    @IBAction func flat(_ sender: Any) {
        imagePicker.allowsEditing = false
        imagePicker.sourceType = .photoLibrary
        
        present(imagePicker, animated: true, completion: nil)
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
        if let pickedImage = info[UIImagePickerControllerOriginalImage] as? UIImage {
            fimage.contentMode = .scaleAspectFit
            fimage.image = pickedImage
        }
        
        dismiss(animated: true, completion: nil)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func addproperty(_ sender: Any) {
        
        performSegue(withIdentifier: "allflats", sender: nil)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let sec = segue.destination as! allflatsViewController
        sec.farea = area.text!
        sec.fprice = price.text!
        sec.fbeed = bedroom.text!
        sec.fdesc = desc.text!
    }
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
