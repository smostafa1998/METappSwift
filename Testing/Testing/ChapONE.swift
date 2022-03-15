//
//  chapONE.swift
//  Testing
//
//  Created by Sabreen Mostafa on 11/20/20.
//

import UIKit

class ChapONE: UIViewController {
     
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    // this is for the CHild Controller
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier=="embedChildSegue"{
            if let childVC = segue.destination as?  ChildController {
                //Some property on ChildVC that needs to be set
                childVC.view.backgroundColor = .brown
                
              }
        }
    }
    
}
