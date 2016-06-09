//
//  ViewController.swift
//  PresentViewsExperiment
//
//  Created by Daniel Huang on 6/9/16.
//  Copyright © 2016 Daniel Huang. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    
    
   let imagePicker = UIImagePickerController()
    
    @IBAction func openImagePicker(sender: UIButton) {
        imagePicker.allowsEditing = false
        imagePicker.sourceType = .PhotoLibrary
        
        presentViewController(imagePicker, animated: true, completion: nil)
    }
    

    @IBAction func activityView(sender: UIButton) {
        let activityViewController = UIActivityViewController(activityItems: ["hello"], applicationActivities: nil)
        
        presentViewController(activityViewController, animated: true, completion: nil)
    }
    
    
    func imagePickerControllerDidCancel(picker: UIImagePickerController) {
        dismissViewControllerAnimated(true, completion: nil)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        imagePicker.delegate = self
    }

}

