//
//  ViewController.swift
//  UsingUserDefault
//
//  Created by Sefa Acar on 14.05.2024.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var counterLbl: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let ud = UserDefaults.standard //initilazion ettik
        
        
        //Kayıt
        ud.set("Ahmet", forKey: "name")
        ud.setValue(1.78, forKey: "boy")
        
        //silme
        //ud.removeObject(forKey: "name")
        
        
        //okuma
        let receivedName = ud.string(forKey: "name") ?? "empty"
        let receivedHeight = ud.double(forKey: "boy")
        print("Gelen Ad: \(receivedName)")
        print("Gelen Boy: \(receivedHeight)")
        
        
        
        //Sayac Uygulama
        var count = ud.integer(forKey: "count")
        count += 1
        ud.setValue(count, forKey: "count")
        counterLbl.text = "Opening Count: \(count)"
    }


}

