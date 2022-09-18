//
//  ViewController.swift
//  AlertProject
//
//  Created by Alper Uyar on 16.09.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var usernameText: UITextField!
    
    @IBOutlet weak var passwordText: UITextField!
    
    @IBOutlet weak var password2Text: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    @IBAction func signUpClicked(_ sender: Any) {
        
        if usernameText.text == "" {
            setAlert(title: "Error", message: "Username not Found")
        }else if passwordText.text == ""{
            setAlert(title: "Error", message: "Password not found")
        }else if passwordText.text != password2Text.text {
            setAlert(title: "Error", message: "Paswwords do not match")
        }else {
            setAlert(title: "User Added", message: "Welcome to our family :)")
        }
    }
    func setAlert(title:String, message:String){
        let alert = UIAlertController(title: title, message: message, preferredStyle: UIAlertController.Style.alert)
        
        let ok = UIAlertAction(title: "OK", style: UIAlertAction.Style.default)

        alert.addAction(ok)
        self.present(alert, animated: true)
        
    }

}

