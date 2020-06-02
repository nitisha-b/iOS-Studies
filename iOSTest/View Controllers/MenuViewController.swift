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
        
        formatButtons()
    }
    
    // MARK: - Actions

    @IBAction func chat(_ sender: UIButton) {
        let chatViewController = ChatViewController()
        navigationController?.pushViewController(chatViewController, animated: true)
    }
    @IBAction func login(_ sender: UIButton) {
    }
    @IBAction func animation(_ sender: UIButton) {
    }
    
    // MARK: - Additional Functions
    
    func formatButtons() {
        
        // Round corners of buttons
        chatButton.layer.cornerRadius = 10.0
        loginButton.layer.cornerRadius = 10.0
        animationButton.layer.cornerRadius = 10.0
    }
}
