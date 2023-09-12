//
//  ViewController.swift
//  test1
//
//  Created by Huy Vu on 9/12/23.
//

import UIKit
import MobileCoreServices



class ViewController: UIViewController {

    @IBOutlet weak var imgUI: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func button1(_ sender: Any) {
        let imagePicker = UIImagePickerController()
        imagePicker.delegate = self
          imagePicker.sourceType = .photoLibrary // You can use .camera for the camera
          imagePicker.allowsEditing = false
        present(imagePicker, animated: true, completion: nil)
    }
    
}

extension ViewController: UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        if let selectedImage = info[.originalImage] as? UIImage {
            // Do something with the selected image
            
            print("fbfhvfhvf \(info)")
            // Hiển thị ảnh đã chọn trên UIImageView
            imgUI.image = selectedImage
        }
        
        picker.dismiss(animated: true, completion: nil)
    }

    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        picker.dismiss(animated: true, completion: nil)
    }

    
    
}
