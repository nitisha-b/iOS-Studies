//
//  MenuViewController.swift
//  iOSTest
//

import UIKit

class MenuViewController: UIViewController {
    
    /**
     * =========================================================================================
     * INSTRUCTIONS
     * =========================================================================================
     *
     * 1) UI must work on iOS phones of multiple sizes. Do not worry about iPads.
     *
     * 2) Use Autolayout to make sure all UI works for each resolution
     *
     * 3) Use this starter project as a base and build upon it. It is ok to remove some of the
     *    provided code if necessary. It is ok to add any classes. This is your project now!
     *
     * =========================================================================================
     */
    
    // MARK: - Outlets

    @IBOutlet weak var chatButton: UIButton!
    @IBOutlet weak var loginButton: UIButton!
    @IBOutlet weak var animationButton: UIButton!
    
    // MARK: - Lifecycle
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        title = "Coding Tasks"
        
        // Round the corners of all buttons
        chatButton.layer.cornerRadius = 10.0
        loginButton.layer.cornerRadius = 10.0
        animationButton.layer.cornerRadius = 10.0
        
        // Set the button insets
        
        let imageSpacing = CGFloat(22.0)
        let titleSpacing = CGFloat(16.0)
        let netTitleSpacing = imageSpacing + titleSpacing
        
        // Add padding to the chat button
        chatButton.imageEdgeInsets = UIEdgeInsets(top:0.0, left: imageSpacing, bottom: 0.0, right: 0.0)
        
        chatButton.titleEdgeInsets = UIEdgeInsets(top:0.0, left: netTitleSpacing, bottom:0.0, right: 0.0)
        
        // Add padding to the login button
        loginButton.imageEdgeInsets = UIEdgeInsets(top:0.0, left: imageSpacing, bottom: 0.0, right: 0.0)
        
        loginButton.titleEdgeInsets = UIEdgeInsets(top:0.0, left: netTitleSpacing, bottom:0.0, right: 0.0)
        
        // Add padding to the animation button
        animationButton.imageEdgeInsets = UIEdgeInsets(top:0.0, left: imageSpacing, bottom: 0.0, right: 0.0)
               
        animationButton.titleEdgeInsets = UIEdgeInsets(top:0.0, left: netTitleSpacing, bottom:0.0, right: 0.0)
    }
    
    // MARK: - Actions

    @IBAction func chat(_ sender: UIButton) {
        let chatViewController = ChatViewController()
        navigationController?.pushViewController(chatViewController, animated: true)
    }
    @IBAction func login(_ sender: UIButton) {
        let loginViewController = LoginViewController()
        navigationController?.pushViewController(loginViewController, animated: true)
    }
    @IBAction func animation(_ sender: UIButton) {
        let animationViewController = AnimationViewController()
        navigationController?.pushViewController(animationViewController, animated: true)
    }
}
