//
//  TweetCell2TableViewCell.swift
//  Twitter
//
//  Created by Alex Schrader on 2022/03/11.
//  Copyright © 2022 Dan. All rights reserved.
//

import UIKit


class TweetCell2TableViewCell: UITableViewCell {
    var favorited:Bool = false
    var tweetId: Int = -1
    @IBOutlet weak var profileImageView: UIImageView!
    @IBOutlet weak var userNameLabel: UILabel!
    @IBOutlet weak var tweetContent: UILabel!
    @IBOutlet weak var favButton: UIButton!
    @IBOutlet weak var retweetButton: UIButton!
    
    @IBAction func favoriteTweet(_ sender: Any) {
        
        let tobeFavorited = !favorited
        if (tobeFavorited) {
            TwitterAPICaller.client?.favoriteTweet(tweetId: tweetId, success: {
                self.setFavorite(true)
                
            }, failure: { (error) in
                print("favorite did not succed: \(error)")
            })
        } else {
            TwitterAPICaller.client?.unfavoriteTweet(tweetId: tweetId, success: {self.setFavorite(false)}, failure: { (error) in
                print("unfavorite did not succed: \(error)")
        })
    }
    }
        
    @IBAction func retweetTweet(_ sender: Any) {
    }
    
    
    func setFavorite(_ isFavorited:Bool) {
        favorited = isFavorited
        if (favorited) {
            
            favButton.setImage(UIImage(named:"favor-icon-red"), for: UIControl.State.normal)
        } else {
            favButton.setImage(UIImage(named:"favor-icon"), for: UIControl.State.normal)
        }
    }
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
