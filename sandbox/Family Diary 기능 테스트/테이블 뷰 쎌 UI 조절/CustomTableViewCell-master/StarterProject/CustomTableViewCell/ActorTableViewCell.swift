//
//  ActorTableViewCell.swift
//  CustomTableViewCell
//
//  Created by Daniel Lim on 2020/10/25.
//  Copyright © 2020 YourAreAwesome. All rights reserved.
//

import UIKit

class ActorTableViewCell: UITableViewCell {

    @IBOutlet weak var fullName: UILabel!
    @IBOutlet weak var email: UILabel!
    @IBOutlet weak var raiting: UILabel!
    @IBOutlet weak var actorImage: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
