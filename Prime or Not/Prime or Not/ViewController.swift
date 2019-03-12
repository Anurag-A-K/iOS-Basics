//
//  ViewController.swift
//  Prime or Not
//
//  Created by Anurag A on 12/03/19.
//  Copyright © 2019 Anurag A. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var numberTextField: UITextField!
    @IBAction func isItPrime(_ sender: Any) {
        
        if let s = numberTextField.text {
        let n =  Int(s)
            if let nu = n{
                var  p = true
                var l=false
                if nu==1{
                    p=false
                }
                if nu<0 || nu==0 {
                    l=true
                    p=false
                }
                var k=2
                while k<nu{
                    if nu % k == 0 {
                        p=false
                    }
                    k+=1
                }
                if p{
                    resultLabel.text = "\(nu) is Prime"
                }
                else if l && !p{
                    resultLabel.text = "Enter a natural number."
                }
                else{
                    resultLabel.text = "\(nu) is Not Prime"
                }
            }
            else{
                resultLabel.text = "Enter a number"
            }
        }
    }
    @IBOutlet weak var resultLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
}
