//
//  ViewController.swift
//  ShoeConverter
//
//  Created by Paul Hasfjord on 02.05.2016.
//  Copyright © 2016 Paul Hasfjord. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //men
    @IBOutlet weak var mensShoeSizeTextField: UITextField!
    @IBOutlet weak var convertedLabel: UILabel!
    
    //woman
    @IBOutlet weak var womensShoeSizeTextField: UITextField!
   
    @IBOutlet weak var womanConvertedLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func convertButtonPressed(sender: UIButton) {
        
     
        let sizeFromTextField = Int(mensShoeSizeTextField.text!)
        let conversionConstant = 30
        convertedLabel.hidden = false
        convertedLabel.text = "\(sizeFromTextField! + conversionConstant)" + " in European shoe size"
        mensShoeSizeTextField.isFirstResponder()
        mensShoeSizeTextField.text = ""
    
    }
    
    @IBAction func convertedButtonTwo(sender: UIButton) {
        
        let sizeFromTextField = Double((womensShoeSizeTextField.text! as NSString).doubleValue)
        let conversionConstant = 30.5
        womanConvertedLabel.hidden = false
        womanConvertedLabel.text = "\(sizeFromTextField + conversionConstant)" + " in European shoe size"
        womensShoeSizeTextField.isFirstResponder()
        womensShoeSizeTextField.text = ""
    }
    

}

