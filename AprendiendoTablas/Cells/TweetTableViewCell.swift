//
//  TweetTableViewCell.swift
//  AprendiendoTablas
//
//  Created by XCodeClub on 2020-08-24.
//  Copyright © 2020 avilamisc. All rights reserved.
//

import UIKit

class TweetTableViewCell: UITableViewCell {

    // MARK: - Referencias UI
    
    @IBOutlet weak var userImageView: UIView!
    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var usernameLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        userImageView.clipsToBounds = true
        
        //frame.width = ancho
        userImageView.layer.cornerRadius = userImageView.frame.width / 2
    }
    
    func setUpCell(username: String, message: String){
        usernameLabel.text = username
        messageLabel.text = message
    }
}
