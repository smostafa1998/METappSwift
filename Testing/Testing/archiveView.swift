//
//  archiveView.swift
//  Testing
//
//  Created by Sabreen Mostafa on 11/20/20.
//
import UIKit

class archiveView: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
       // print("welcome")
        /*
        let label_r = CGRect(x: 50, y: 100, width: 200, height: 100)
        let label = UILabel(frame:label_r)
        label.text = "hey whats up"
        label.numberOfLines = 2
        view.addSubview(label)
        */
    }
    
    //BUTTONS
    //CHAPTER ONE
    @IBAction func ch1(_ sender: UIButton) {
        print("ch1")
    }
    
    @IBSegueAction func directCH1(_ coder: NSCoder, sender: Any?) -> UIViewController? {
        return ChapONE(coder: coder)
    }
    //CHAPTER TWO
    
    @IBAction func ch2(_ sender: UIButton) {
        print("ch2")
    }
    
    @IBSegueAction func directCH2(_ coder: NSCoder, sender: Any?) -> UIViewController? {
        return chapTWO(coder: coder)
    }
    
    //CHAPTER THREE
    
    @IBAction func ch3(_ sender: UIButton) {
        print("ch3")
    }
    
    @IBSegueAction func directCH3(_ coder: NSCoder, sender: Any?) -> UIViewController? {
        return chapTHREE(coder: coder)
    }
    //CHAPTER FOUR
    @IBAction func ch4(_ sender: UIButton) {
        print("ch4")
    }
    
    @IBSegueAction func directCH4(_ coder: NSCoder, sender: Any?) -> UIViewController? {
        return chapFOUR(coder: coder)
    }
    
    
    
    
}

