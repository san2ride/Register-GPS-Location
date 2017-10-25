//
//  DataInputViewController.swift
//  SphereGeoMetrics
//
//  Created by don't touch me on 10/24/17.
//  Copyright © 2017 trvl, LLC. All rights reserved.
//

import UIKit

class DataInputViewController: UIViewController {
    
    var userStore: UserStore!
    
    @IBOutlet var firstNameField: UITextField!
    @IBOutlet var lastNameField: UITextField!
    @IBOutlet var streetField: UITextField!
    @IBOutlet var cityField: UITextField!
    @IBOutlet var stateField: UITextField!
    @IBOutlet var zipCodeField: UITextField!
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        let imageView = UIImageView(frame: CGRect(x: 0, y: 0, width: 128, height: 42))
        imageView.contentMode = .scaleAspectFit
        
        let image = UIImage(named: "sphere")
        imageView.image = image
        
        navigationItem.titleView = imageView
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

       
    }
    
    @IBAction func saveButtonPushed(_ sender: UIButton) {
        
    }
    
    @IBAction func backgroundTapped(_ sender: UITapGestureRecognizer) {
        view.endEditing(true)
    }
    
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }

    

}
