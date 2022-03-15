//
//  ChildController.swift
//  Testing
//
//  Created by Sabreen Mostafa on 11/24/20.
//

//the code workings for the artproject and the archive coded in swift
import UIKit
import Foundation

class artProject : Comparable,Decodable {
    var name = ""
    var artist = ""
    var id = 0
    var year = 0
    var description = ""
    
    //comparator methods
    static func < (lhs: artProject, rhs: artProject) -> Bool {
        return lhs.artist < rhs.artist
    }
    static func == (lhs: artProject, rhs: artProject) -> Bool {
        return lhs.artist == rhs.artist
    }
    
    static func artM (lhs: artProject, rhs: artProject) -> Bool {
        return lhs.name < rhs.name
    }
    
    static func artE (lhs: artProject, rhs: artProject) -> Bool {
        return lhs.name == rhs.name
    }
    
    static func num (lhs: artProject, rhs: artProject) -> Bool {
        return lhs.id < rhs.id
    }
    static func yearnum (lhs: artProject, rhs: artProject) -> Bool {
        return lhs.year < rhs.year
    }
    
    //default blank constructor
    init() {
    }
    
    //parametized constructor
    init (name : String, artist : String, id : Int, year : Int, description : String){
        self.name = name;
        self.artist = artist
        self.id = id
        self.year = year
        self.description = description
    }
    
    //string method
    func getString() {
        print("Name:",name,"Artist:",artist,"Year:",year,"ID:",id,"Description:",description)
    }
}

class archives:artProject{
    var testing = Array<artProject>()
    
    //load art work here
    
    func addArt(a : artProject )  {
        testing.append(a)
        print("added \(a.artist)  was added into the inventory ")
        
    }
    
    func removeArt(a : artProject){
        testing.remove(at: a.id-1)
        print("removed \(a.name)  from the inventory ")
        //fix the ids
        for countt in testing{
            for x in 0...testing.count{
                countt.id = x
            }
        }
    }
    
    func countingArt() -> Int{
        return testing.count
    }
    
    func printArt(){
        
        print(testing.count)
        print("id   name            artist            year    description      ")
        print("========================================================================")
        for count in testing{
            print("\(count.id) : \(count.name)           \(count.artist)         \(count.year)    \(count.description) ")
        }
        
    }
    
    func compareArtID(){
        print("id   name            artist            year    description      ")
        print("========================================================================")
        for count in testing.sorted(by: archives.num(lhs:rhs:)){
            print("\(count.id) : \(count.name)          \(count.artist)          \(count.year)    \(count.description) ")
        }
    }
    
    func compareArtARTIST(){
        print("id   name            artist            year    description      ")
        print("========================================================================")
        for count in testing.sorted(by: < ){
            print("\(count.id) : \(count.name)          \(count.artist)          \(count.year)    \(count.description) ")
        }
    }
    
    func compareArtYEAR(){
        print("id   name            artist            year    description      ")
        print("========================================================================")
        for count in testing.sorted(by: archives.yearnum(lhs:rhs:)){
            print("\(count.id) : \(count.name)          \(count.artist)          \(count.year)    \(count.description) ")
        }
    }
    
    func compareArtARTWORK(){
        print("id   name            artist            year    description      ")
        print("========================================================================")
        for count in testing.sorted(by: archives.artM(lhs:rhs:)){
            print("\(count.id) : \(count.name)          \(count.artist)         \(count.year)     \(count.description) ")
        }
    }
    
}

// the UI class
class ChildController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
    @IBOutlet weak var filter: UIPickerView!
    @IBOutlet weak var words: UITextView!
    
    var thiss = "Contents"
    
    var pickerData = [["","ID","Artwork","Artist","Year"]]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //do additional setup after loading the view
        // words.text=readdata(file: "result.csv")
        
        self.filter.delegate = self
        self.filter.dataSource = self
        textViewDidEndEditing(words)
    }
    
    
    // this is for the UIPickerView
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return pickerData.count
    }
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return pickerData[component].count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return pickerData[component][row]
        
    }
    //func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
    //pickerView.reloadComponent()
    // }
    
    //this is the actual archive text
    func textViewDidEndEditing(_ textView: UITextView) {
        if textView.text.isEmpty {
            textView.text = "Welcome to the Archives \n"
            textView.textColor = UIColor.black
            textView.text += "====================================\n"
            print("Welcome to the Archives")
            
            let work = artProject(name: "A", artist: "Gustav", id: 10, year: 1000, description: "lol")
            let work1 = artProject(name: "C", artist: "Jerminah", id: 2, year: 3300, description:
                                    "lodknvdslkdl")
            let work2 = artProject(name: "A", artist: "Jer", id: 5, year: 1001, description:
                                    "lodknvdslkdl ")
            let work3 = artProject(name: "b", artist: "Jedfr", id: 34, year: 10401, description:"lodfsfsfdsfsfsdfknvdslkdl ")
            let work4 = artProject(name: "N", artist: "Jtrerer", id: 6, year: 105601, description:"lodknvfdfdfdfdslkdl ")
            
            let temp = archives()
            
            print("done")
            
            temp.addArt(a: work)
            temp.addArt(a: work1)
            temp.addArt(a: work2)
            temp.addArt(a: work3)
            temp.addArt(a: work4)
            
            
            //using switchpicker
            
            //if statements
            //compare art iD
            temp.compareArtID()
            for count in temp.testing.sorted(by: archives.num(lhs:rhs:)){
                textView.text += (String(count.id)+" "+count.name+" "+count.artist+" "+String(count.year)+" "+count.description+"\n"+"-----------------------------------------------"+"\n")
                // print("\(count.id) : \(count.name)          \(count.artist)          \(count.year)    \(count.description) ")
            }
            print("one is done")
            
            //compare artist
            temp.compareArtARTIST()
            for count in temp.testing.sorted(by: < ){
                textView.text += (String(count.id)+" "+count.name+" "+count.artist+" "+String(count.year)+" "+count.description+"\n"+"-----------------------------------------------"+"\n")
                // print("\(count.id) : \(count.name)          \(count.artist)          \(count.year)    \(count.description) ")
            }
            print("two is done")
            
            //compare year
            temp.compareArtYEAR()
            for count in temp.testing.sorted(by: archives.yearnum(lhs:rhs:)){
                textView.text += (String(count.id)+" "+count.name+" "+count.artist+" "+String(count.year)+" "+count.description+"\n"+"-----------------------------------------------"+"\n")
                // print("\(count.id) : \(count.name)          \(count.artist)          \(count.year)    \(count.description) ")
            }
            print("three is done")
            //compare artwork
            temp.compareArtARTWORK()
            for count in temp.testing.sorted(by: archives.artM(lhs:rhs:)){
                textView.text += (String(count.id)+" "+count.name+" "+count.artist+" "+String(count.year)+" "+count.description+"\n"+"-----------------------------------------------"+"\n")
                // print("\(count.id) : \(count.name)          \(count.artist)         \(count.year)     \(count.description) ")
            }
            
            print("four is done")
            
        }
    }
    
}
