//
//  chapFOUR.swift
//  Testing
//
//  Created by Sabreen Mostafa on 11/20/20.
//
import UIKit

class chapFOUR: UIViewController {
 
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let label_r = CGRect(x: 50, y: 100, width: 200, height: 100)
        let label = UILabel(frame:label_r)
        label.text = "Welcome to Chapter Four "
        label.numberOfLines = 2
        view.addSubview(label)
    }
}
