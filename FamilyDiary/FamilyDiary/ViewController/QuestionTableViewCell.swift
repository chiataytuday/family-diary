//
//  QuestionTableViewCell.swift
//  FamilyDiary
//
//  Created by Daniel Lim on 2020/10/25.
//  Copyright © 2020 Family Diary. All rights reserved.
//

import UIKit

class QuestionTableViewCell: UITableViewCell {

    @IBOutlet weak var questionID: UILabel!
    @IBOutlet weak var questionDescription: UILabel!
    @IBOutlet weak var questionAnsweredUser: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
