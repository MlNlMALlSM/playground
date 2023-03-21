//
//  RealmViewController.swift
//  playground
//
//  Created by Trung Nguyen on 20/03/2023.
//

import UIKit

class RealmViewController: BaseViewController {
    
    let realm = try! Realm()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        
        print("RealmViewController")
        self.view.backgroundColor = .blue
        
        saveData(name: "Username1", birthdate: "1991")
        saveData(name: "Username2", birthdate: "1992")
        saveData(name: "Username3", birthdate: "1993")
        
        let list = realm.objects(PersonalInfo.self)
        print(list)
    }
    
    private func saveData(name: String, birthdate: String) {
        let data = PersonalInfo()
        data.name = name
        data.birthdate = birthdate
        try! realm.write {
            realm.add(data)
        }
    }
}

import Foundation
import RealmSwift

class PersonalInfo: Object {
    @objc dynamic var name: String = ""
    @objc dynamic var birthdate: String = ""
    convenience init(name: String, birthdate: String) {
        self.init()
        self.name = name
        self.birthdate = birthdate
    }
}
