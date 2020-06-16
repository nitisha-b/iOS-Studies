//
//  LoginViewController.swift
//  iOSTest
//

import UIKit

class LoginViewController: UIViewController {
    
    /**
     * =========================================================================================
     * INSTRUCTIONS
     * =========================================================================================
     * 1) Make the UI look like it does in the mock-up.
     *
     * 2) Take username and password input from the user using UITextFields
     *
     * 3) A valid email is 'user@iosstudies.co'
     *    A valid password is 'pinksalmon'
     *
     * 4) Calculate how long the function call took in milliseconds
     *
     * 5) If the response is wrong, display the error to the user if either the email, password or both textfields are incorrect in a UIAlertView
     *
     * 6) When login is successful, tapping 'OK' in the UIAlertView should bring you back to the main menu.
     **/
    
    // MARK: - Properties
    @IBOutlet weak var usernameTextfield: UITextField!
    @IBOutlet weak var passwordTextfield: UITextField!
    @IBOutlet weak var usernameView: UIView!
    @IBOutlet weak var passwordView: UIView!
    
    var username:String?
    var password:String?
    let validUsername = "user@iosstudies.co"
    let validPassword = "pinksalmon"
    var runtime:Double = 0.0
    
    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Login"
        roundViewCorners()
        
        // Hide the password as it is typed in
        passwordTextfield.isSecureTextEntry = true
    }
    
    // MARK: - IBActions
    
    @IBAction func didPressLoginButton(_ sender: Any) {
        
        let startTime = CACurrentMediaTime()
    
        validateUsernameAndPassword()
        
        let endTime = CACurrentMediaTime()
        runtime = (1000 * (endTime - startTime))
    }
    
    // MARK: - Actions
    
    func roundViewCorners(){
        usernameView.layer.cornerRadius = 5.0
        passwordView.layer.cornerRadius = 5.0
    }
    
    func validateUsernameAndPassword() {

        username = usernameTextfield.text
        password = passwordTextfield.text
        
        // Check validity of username and password
        if (username != validUsername) || (password != validPassword) {
            
            let invalidAlert = UIAlertController(title: "Invalid Username or Password", message: "Please enter a valid username and passowrd.", preferredStyle: .alert)
            let invalidAction = UIAlertAction(title: "OK", style: .default, handler: nil)
            
            invalidAlert.addAction(invalidAction)
            present(invalidAlert, animated: true)
        }
        
        // Both username and password are valid - go to MenuViewController
        else {
            
            let validAlert = UIAlertController(title: "Login Successful", message: "Function duration: \(runtime) ms", preferredStyle: .alert)
            let validAction = UIAlertAction(title: "OK", style: .default, handler: {(_) -> Void in
                    self.navigationController!.popViewController(animated: true)
            })
            
            validAlert.addAction(validAction)
            present(validAlert, animated: true)
        }

    }
}
