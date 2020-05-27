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
     * 3) A valid email is 'info@datechnologies.co'
     *    A valid password is 'Test123'
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
    private var client = LoginClient()
    
    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Login"
    }
    
    // MARK: - Actions
    
    @IBAction func didPressLoginButton(_ sender: Any) {
        
    }
    
}
