//
//  ChatViewController.swift
//  iOSTest
//

import UIKit

class ChatViewController: UIViewController {
    
    /**
     * =========================================================================================
     * INSTRUCTIONS
     * =========================================================================================
     * 1) Make the UI look like it does in the mock-up.
     *
     * 2) Parse the chat data using 'Message' model
     *
     **/
    
    // MARK: - Properties
    private var messages = [Message]()
    
    // MARK: - Outlets
    @IBOutlet weak var chatTable: UITableView!
    
    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Chat"
        configureTable(tableView: chatTable)
        
        let albinMessage = Message(testName: "Lovelace", withTestMessage: "Let's eat!")
        let purcellMessage = Message(testName: "Purcell", withTestMessage: "What are you thinking?")
        let pinkFloydMessage = Message(testName: "Pink Floyd", withTestMessage: "Salmon")
        messages.append(albinMessage!)
        messages.append(purcellMessage!)
        messages.append(pinkFloydMessage!)
        
        chatTable.reloadData()
        
    }
    
    // MARK: - Private
    private func configureTable(tableView: UITableView) {
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(UINib(nibName: "ChatTableViewCell", bundle: nil), forCellReuseIdentifier: "ChatTableViewCell")
        tableView.tableFooterView = UIView(frame: .zero)
        
        // Self sizing TableView cells
        tableView.rowHeight = UITableView.automaticDimension
        tableView.estimatedRowHeight = 100.0
            
        // Disable row selection
        tableView.allowsSelection = false
    }
    
}

// MARK: - UITableViewDataSource
extension ChatViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell: ChatTableViewCell? = nil
        if cell == nil {
            let nibs = Bundle.main.loadNibNamed("ChatTableViewCell", owner: self, options: nil)
            cell = nibs?[0] as? ChatTableViewCell
        }
        cell?.setCellData(message: messages[indexPath.row])
        return cell!
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return messages.count
    }
}

// MARK: - UITableViewDelegate
extension ChatViewController: UITableViewDelegate {
    
//    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
//        return 58.0
//    }

}
