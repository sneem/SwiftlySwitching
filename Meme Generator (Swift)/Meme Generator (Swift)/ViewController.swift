//
//  ViewController.swift
//  Meme Generator (Swift)
//
//  Created by Maegan on 9/13/15.
//  Copyright (c) 2015 Sabre Labs. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var imageView: UIImageView!
    @IBOutlet var textField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func touchButton(sender: AnyObject) {
        let number:Int = (textField.text!.isEmpty) ? 0 : Int(textField.text!)!
        
        textField.endEditing(true)
        
        if number>0 && number<6 {
            changeImage(number)
        } else {
            showAlert()
        }
    }
    
    func changeImage(num:Int) {
        let imageName:String = "meme\(num)"
        imageView.image = UIImage(named: imageName)        
    }
    
    func showAlert() {
        let alertController = UIAlertController(
            title: "Oops!",
            message: "Your number must be between 1-5.",
            preferredStyle: UIAlertControllerStyle.Alert
        )
        alertController.addAction(UIAlertAction(
            title: "OK",
            style: UIAlertActionStyle.Default,
            handler: nil
            )
        )
        self.presentViewController(alertController, animated: true, completion: nil)
    }


}

