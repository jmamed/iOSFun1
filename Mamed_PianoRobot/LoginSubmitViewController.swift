//
//  LoginSubmitViewController.swift
//  Mamed_PianoRobot
//
//  Created by Jason Mamed on 11/3/16.
//  Copyright © 2016 Mamed Technologies. All rights reserved.
//

import UIKit

class LoginSubmitViewController: UIViewController {

    @IBOutlet weak var VerifiedLoginLabel: UILabel!
    
    @IBOutlet weak var VerifiedPasswordLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        VerifiedLoginLabel.text = username
        VerifiedPasswordLabel.text = password
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
