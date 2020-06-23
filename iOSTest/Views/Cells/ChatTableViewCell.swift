//
//  ChatTableViewCell.swift
//  iOSTest
//

import UIKit

class ChatTableViewCell: UITableViewCell {
    
    /**
     * =========================================================================================
     * INSTRUCTIONS
     * =========================================================================================
     * 1) Setup cell to match mockup
     *
     * 2) Include user's avatar image
     **/
    
    //MARK: - Properties
    
    // MARK: - Outlets
    @IBOutlet weak var avatar: UIImageView!
    @IBOutlet weak var header: UILabel!
    @IBOutlet weak var body: UILabel!
    @IBOutlet weak var chatBubbleView: UIView!
    
    // MARK: - Lifecycle
    override func awakeFromNib() {
        super.awakeFromNib()
        
        // Make the avatar image round
        avatar.layer.cornerRadius = avatar.frame.width / 2
        avatar.clipsToBounds = true
        
        // Create a chat bubble
        chatBubbleView.layer.cornerRadius = 7.0
        chatBubbleView.layer.masksToBounds = true
        chatBubbleView.layer.borderWidth = 0.1
        chatBubbleView.layer.borderColor = UIColor.gray.cgColor        
    }
    
    // MARK: - Public
    func setCellData(message: Message) {
        header.text = message.username
        body.text = message.text
    }
    
}
