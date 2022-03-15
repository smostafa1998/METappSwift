//
//  ViewController.swift
//  Testing
//
//  Created by Sabreen Mostafa on 11/15/20.
//

import UIKit

class ViewController: UIViewController {
 
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func button1(_ sender: UIButton) {
        
       print("it works")
    }
    
    @IBAction func button2(_ sender: UIButton) {
        print("it works button2")

    }
    
    @IBAction func button3(_ sender: UIButton) {
        print("it works button3")

    }
    
    @IBAction func button4(_ sender: UIButton) {
        print("it works button4")
    }
    
    @IBSegueAction func click(_ coder: NSCoder) -> UIViewController? {
        return archiveView(coder: coder)
    }
    

}

