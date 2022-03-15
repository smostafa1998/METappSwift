//
//  chapTWO.swift
//  Testing
//
//  Created by Sabreen Mostafa on 11/20/20.
//


import UIKit
import SwiftUI
let temping = archive()

class chapTWO: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
   
    //UISearchResultsUpdating
    //
    
    @IBOutlet weak var text: UITextView!
    @IBOutlet weak var filter: UIPickerView!
    
    var pickerData = [["","ID","Artwork","Artist","Year"]]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //let search = UISearchController(searchResultsController: nil)
       // search.searchResultsUpdater = self
        //search.obscuresBackgroundDuringPresentation = false
        //search.searchBar.placeholder = "Type something here to search"
       // navigationItem.searchController = search
        self.filter.delegate = self
        self.filter.dataSource = self
        //textViewDidEnd(text,filter)
        
        fetchPostData { [self] (arts) in
        }
        //print("DONE DONE")
    }
    /*func updateSearchResults(for searchController: UISearchController) {
        guard let text = searchController.searchBar.text else {return}
        print(text)
    }
     */
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
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        
        //filter.selectRow(1, inComponent: 0, animated: false)
        
        if row == 1 {
            //self.view.endEditing(false)
            //text.text = "UPDATE ID"
            if temping.count()>0{
                
                temping.compareArtID()
                text.text = "UPDATE ID:::Welcome to the Archives \n"
                //textView.text += String(temping.count())
                for count in temping.test.sorted(by: archive.num(lhs:rhs:)){
                    text.text += ("ID: "+String(count.ID)+"\n"+"ARTIST: "+count.ARTIST+"\n "+"ARTWORK: "+count.ARTWORK+"\n "+"YEAR:"+String(count.YEAR)+"\n "+"DESCRIPTION: "+count.DESCRIPTION+"\n"+"-----------------------------------------------"+"\n")
                }
                
                
                // pickerView.selectRow(1, inComponent: 0, animated: false)
                
            }else{
                print("WAIT CLICK AGAIN")
            }
            
            filter.reloadAllComponents()
        }else if row == 2{
            if temping.count()>0{
                temping.compareArtARTWORK()
                
                text.text = "UPDATE ARTWORK:: Welcome to the Archives \n"
                //textView.text += String(temping.count())
                for count in temping.test.sorted(by: archive.artM(lhs:rhs:)){
                    text.text += ("ID: "+String(count.ID)+"\n"+"ARTIST: "+count.ARTIST+"\n "+"ARTWORK: "+count.ARTWORK+"\n "+"YEAR:"+String(count.YEAR)+"\n "+"DESCRIPTION: "+count.DESCRIPTION+"\n"+"-----------------------------------------------"+"\n")
                }
                
            }else{
                print("WAIT CLICK AGAIN")
            }
            
            filter.reloadAllComponents()
        }else if row == 3{
            if temping.count()>0{
                temping.compareArtARTIST()
                
                text.text = "UPDATE ARTIST:: Welcome to the Archives \n"
                //textView.text += String(temping.count())
                for count in temping.test.sorted(by: < ){
                    text.text += ("ID: "+String(count.ID)+"\n"+"ARTIST: "+count.ARTIST+"\n "+"ARTWORK: "+count.ARTWORK+"\n "+"YEAR:"+String(count.YEAR)+"\n "+"DESCRIPTION: "+count.DESCRIPTION+"\n"+"-----------------------------------------------"+"\n")
                }
                
            }else{
                print("WAIT CLICK AGAIN")
            }
            filter.reloadAllComponents()
        }else if row == 4{
            if temping.count()>0{
                temping.compareArtYEAR()
                
                text.text = "UPDATE YEAR Welcome to the Archives \n"
                //textView.text += String(temping.count())
                for count in temping.test.sorted(by: archive.yearnum(lhs:rhs:)){
                    text.text += ("ID: "+String(count.ID)+"\n"+"ARTIST: "+count.ARTIST+"\n "+"ARTWORK: "+count.ARTWORK+"\n "+"YEAR:"+String(count.YEAR)+"\n "+"DESCRIPTION: "+count.DESCRIPTION+"\n"+"-----------------------------------------------"+"\n")
                }
                
            }else{
                print("WAIT CLICK AGAIN")
            }
            
            filter.reloadAllComponents()
        }else if row == 0{
            text.text = "Welcome to the Archives \n organize by \n ID \n ARTWORK \n ARTIST \n YEAR "
            
            /*
            if temping.count()>0{
                text.text = "Welcome to the Archives \n"
                //textView.text += String(temping.count())
                for count in temping.test{
                    text.text += ("ID: "+String(count.ID)+"\n"+"ARTIST: "+count.ARTIST+"\n "+"ARTWORK: "+count.ARTWORK+"\n "+"YEAR:"+String(count.YEAR)+"\n "+"DESCRIPTION: "+count.DESCRIPTION+"\n"+"-----------------------------------------------"+"\n")
                }
                
            }else{
                print("WAIT CLICK AGAIN")
            }
            */
            filter.reloadAllComponents()
        }
    }
    
    func fetchPostData(completionHandler: @escaping ([artwork]) -> Void){
        
        let url = URL(string:"https://raw.githubusercontent.com/smostafa1998/ArtStuff/main/ART.json")!
        
        let task = URLSession.shared.dataTask(with: url) { (data,response,error)in
            guard let data = data else {return}
            
            do {
                let postsData = try JSONDecoder().decode([artwork].self,from: data)
                completionHandler(postsData)
                for art in postsData {
                    print(art.ARTIST!)
                    let t = artwork(ID: art.ID,ARTIST: art.ARTIST,ARTWORK: art.ARTWORK,YEAR: art.YEAR,DESCRIPTION: art.DESCRIPTION)
                    t.getString()
                    temping.addArt(a: t)
                    print("Done")
                    //self.testing.append(t)
                }
                print(temping.count())
                
            }
            catch{
                let error = error
                print(error.localizedDescription)
            }
            
        }.resume()
        temping.test.removeAll()
    }
    
    func textViewDidEnd(_ textView: UITextView, _ pickerView: UIPickerView) {
        if textView.text.isEmpty && temping.count()>0{
            textView.text = "Welcome to the Archives \n"
            //textView.text += String(temping.count())
            
            
            for count in temping.test{
                textView.text += ("ID: "+String(count.ID)+"\n"+"ARTIST: "+count.ARTIST+"\n "+"ARTWORK: "+count.ARTWORK+"\n "+"YEAR:"+String(count.YEAR)+"\n "+"DESCRIPTION: "+count.DESCRIPTION+"\n"+"-----------------------------------------------"+"\n")
            }
            
            
            pickerView.selectRow(1, inComponent: 0, animated: false)
            
        }else{
            print("WAIT CLICK AGAIN")
        }
    }
    
    
}
