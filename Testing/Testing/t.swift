//
//  t.swift
//  Testing
//
//  Created by Sabreen Mostafa on 5/6/21.
//

import UIKit

class t: NSObject {
    var data: [[String:String]] = [] // id, rest of info
    var columnTitles:[String]=[]
    var columnType:[String]=["String","String","String","String","String"]

    
    func readStringFromURL(stringURL:String)-> String!{
            if let url = URL(string: stringURL) {
                do {
                    return try String(contentsOf: url, usedEncoding:&.utf8)
                } catch {
                    print("Cannot load contents")
                    return nil
                }
            } else {
                print("String was not a URL")
                return nil
            }
        }
    
    
    

    


}
