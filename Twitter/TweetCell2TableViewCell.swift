//
//  TweetCell2TableViewCell.swift
//  Twitter
//
//  Created by Alex Schrader on 2022/03/11.
//  Copyright © 2022 Dan. All rights reserved.
//

import UIKit

class TweetCell2TableViewCell: UITableViewCell {
    @IBOutlet weak var profileImageView: UIImageView!
    @IBOutlet weak var userNameLabel: UILabel!
    @IBOutlet weak var tweetContent: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
