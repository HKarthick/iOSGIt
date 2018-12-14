//
//  ViewController.swift
//  Json
//
//  Created by Anilkumar on 11/12/18.
//  Copyright © 2018 Anilkumar. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var array : [String] = []
    
    @IBOutlet weak var v: UIView!
    @IBOutlet weak var emailTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        guard let url = URL(string: "https://maps.googleapis.com/maps/api/place/nearbysearch/json?types              =movie_theater&location=11.043620,76.924670&radius=50000&sensor=true&key=AIzaSyBA387cDqEvav48v3cuYGrjqeHx1-faamc") else {return}
        array = callMethod(urlName: url)
        // Do any additional setup after loading the view, typically from a nib.
        
    }
    func isValidEmail(testStr:String) -> Bool {
        let emailRegEx = "^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,61}[a-zA-Z0-9])?(?:\\.[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,61}[a-zA-Z0-9])?)*$"
        let emailTest = NSPredicate(format:"SELF MATCHES %@", emailRegEx)
        return emailTest.evaluate(with: testStr)
        
    }
    
    
    @IBAction func actionButton(_ sender: Any) {
        if emailTextField.text == ""
        {
            emailTextField!.shake(10, withDelta: 5, speed: 0.05, shakeDirection: ShakeDirection.horizontal)
            emailTextField.becomeFirstResponder()
            v.isHidden = !v.isHidden
        }
        else
        {
            let isValidEmail:Bool = self.isValidEmail(testStr: emailTextField.text!)
            if isValidEmail == true
            {
                signupService()
                
            }
            else
            {
                emailTextField!.shake(10, withDelta: 5, speed: 0.05, shakeDirection: ShakeDirection.horizontal)
                emailTextField.becomeFirstResponder()
                
            }
            
        }
        
        
    }
    func signupService() {}
    
}

