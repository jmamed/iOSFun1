//
//  LoginViewController.swift
//  Mamed_PianoRobot
//
//  Created by Jason Mamed on 11/3/16.
//  Copyright © 2016 Mamed Technologies. All rights reserved.
//

import UIKit

var username = ""
var password = ""

class LoginViewController: UIViewController, UITextFieldDelegate {

    //My username text field
    @IBOutlet weak var UsernameTextField: UITextField!
    
    //My password text field
    @IBOutlet weak var PasswordTextField: UITextField!
    
    
    @IBAction func SubmitLogin(_ sender: Any) {
        if (UsernameTextField.text != ""){
            username = UsernameTextField.text!
            password = PasswordTextField.text!
            performSegue(withIdentifier: "segue1", sender: self)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.UsernameTextField.delegate = self

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //Hide keyboard when user touches outside keyboard
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    //Presses Return key
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return (true)
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
