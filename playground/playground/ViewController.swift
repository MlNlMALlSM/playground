//
//  ViewController.swift
//  playground
//
//  Created by Trung Nguyen on 20/03/2023.
//

import UIKit

class ViewController: BaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        self.view.backgroundColor = .yellow
    }
    
    
    @IBAction func tapBtnLog(_ sender: Any) {
        print("tapBtnLog")
    }
    
    
    @IBAction func tapBtnRealm(_ sender: Any) {
        
        print("tapBtnRealm")
        let vc = RealmViewController(nibName: "RealmViewController", bundle: nil)
        self.present(vc, animated: true)
    }
    

}

