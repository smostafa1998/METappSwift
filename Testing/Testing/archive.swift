//
//  archive.swift
//  Testing
//
//  Created by Sabreen Mostafa on 5/16/21.
//

import Foundation

class archive:artwork{
    var test = Array<artwork>()
    
    func addArt(a : artwork )  {
        test.append(a)
        print("added \(a.ARTIST)  was added into the inventory ")
        
    }
    
    func count() -> Int{
        //print(String(test.count))
        return test.count
    }
    
    func string() -> Void {
        for count in test{
            print("ID:\(String(describing: count.ID))\n ARTWORK: \(String(describing: count.ARTWORK))\n ARTIST:           \(String(describing: count.ARTIST))\n YEAR:          \(String(describing: count.YEAR))\n DESCRIPTION:    \(String(describing: count.DESCRIPTION))\n")
            print("**************************************************************")
        }
    }
    
    func compareArtID(){
        print("========================================================================")
        for count in test.sorted(by: archive.num(lhs:rhs:)){
            print("ID:\(String(describing: count.ID))\n ARTWORK: \(String(describing: count.ARTWORK))\n ARTIST:           \(String(describing: count.ARTIST))\n YEAR:         \(String(describing: count.YEAR))\n DESCRIPTION:    \(String(describing: count.DESCRIPTION))\n")
            print("**************************************************************")
        }
    }
    
    func compareArtARTIST(){
        print("========================================================================")
        for count in test.sorted(by: <){
            print("ID:\(String(describing: count.ID))\n ARTWORK: \(String(describing: count.ARTWORK))\n ARTIST:           \(String(describing: count.ARTIST))\n YEAR:          \(String(describing: count.YEAR))\n DESCRIPTION:    \(String(describing: count.DESCRIPTION))\n")
            print("**************************************************************")
        }
        
    }
    
    func compareArtYEAR(){
        print("========================================================================")
        for count in test.sorted(by: archive.yearnum(lhs:rhs:)){
            print("ID:\(String(describing: count.ID))\n ARTWORK: \(String(describing: count.ARTWORK))\n ARTIST:           \(String(describing: count.ARTIST))\n YEAR:          \(String(describing: count.YEAR))\n DESCRIPTION:    \(String(describing: count.DESCRIPTION))\n")
            print("**************************************************************")
            
        }
        
    }
    
    
    func compareArtARTWORK(){
        print("========================================================================")
        for count in test.sorted(by: archive.artM(lhs:rhs:)){
            print("ID:\(String(describing: count.ID))\n ARTWORK: \(String(describing: count.ARTWORK))\n ARTIST:           \(String(describing: count.ARTIST))\n YEAR:          \(String(describing: count.YEAR))\n DESCRIPTION:   \(String(describing: count.DESCRIPTION))\n")
            print("**************************************************************")
            
        }
    }
    
    
}


