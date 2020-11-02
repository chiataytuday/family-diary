//
//  ViewController.swift
//  sand_FamilyDiary
//
//  Created by sungtae on 2020/10/30.
//

import UIKit
import FirebaseDatabase

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let ref = Database.database().reference()
        
        //ref.child("id/age").setValue(19)
        
        //ref.childByAutoId().setValue(["age":26, "name":"Sungtae", "role":"Son"])
        
        ref.child("id").observeSingEvent(of: .value)
            { (snapshot) in
            let emplyeedata = snapshot.value as?
                [String:Any]
            
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

