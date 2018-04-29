//
//  ViewController.swift
//  fact_1
//
//  Created by azzaz on 3/20/18.
//  Copyright © 2018 azzaz. All rights reserved.
//

import UIKit

class ViewController: UIViewController , UITextFieldDelegate{

    @IBOutlet weak var textFieldEnterNum: UITextField!
    
    @IBOutlet weak var label2ShowFact: UILabel!
    
    @IBAction func buttonComputeFact(_ sender: Any) {

        textFieldEnterNum.resignFirstResponder()

        
        var n : Int = 0
        var fact = 1
        let num = NSCharacterSet.decimalDigits.inverted

        
        if !(textFieldEnterNum.text?.isEmpty)! &&
            textFieldEnterNum.text?.rangeOfCharacter(from: num) == nil
        {
            
            n = (Int)(textFieldEnterNum.text!)!
            
            for _ in 1...n
            {
                fact *= n
                n -= 1
                let castFact : String = (String)(fact)
            label2ShowFact .text = castFact
     
            }
            
        }
        else
        {
            label2ShowFact.text = "plz enter number in text  field"
        }
        
       
    }
    
    
  
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

