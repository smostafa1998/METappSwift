//
//  artwork.swift
//  Testing
//
//  Created by Sabreen Mostafa on 5/16/21.
//

import Foundation

class artwork: Codable {
    
    var ID: Int!
    var ARTIST: String!
    var ARTWORK: String!
    var YEAR: Int!
    var DESCRIPTION: String!
    
    init() {
    }
    
    init (ID : Int, ARTIST : String, ARTWORK : String, YEAR : Int, DESCRIPTION : String){
        self.ID = ID
        self.ARTIST = ARTIST
        self.ARTWORK = ARTWORK
        self.YEAR = YEAR
        self.DESCRIPTION = DESCRIPTION
    }
    
    static func < (lhs: artwork, rhs: artwork) -> Bool {
        return lhs.ARTIST < rhs.ARTIST
    }
    static func == (lhs: artwork, rhs: artwork) -> Bool {
        return lhs.ARTIST == rhs.ARTIST
    }
    
    static func artM (lhs: artwork, rhs: artwork) -> Bool {
        return lhs.ARTWORK < rhs.ARTWORK
    }
    
    static func artE (lhs: artwork, rhs: artwork) -> Bool {
        return lhs.ARTWORK == rhs.ARTWORK
    }
    
    static func num (lhs: artwork, rhs: artwork) -> Bool {
        return lhs.ID < rhs.ID
    }
    static func yearnum (lhs: artwork, rhs: artwork) -> Bool {
        return lhs.YEAR < rhs.YEAR
    }
    
    func getString() {
        print("ID:",ID,"ARTIST:",ARTIST,"ARTWORK:",ARTWORK,"YEAR:",YEAR,"Description:",DESCRIPTION)
    }
    
    
}


