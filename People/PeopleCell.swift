//
//  PeopleCell.swift
//  People
//
//  Created by Mickael Mas on 01/10/2019.
//  Copyright © 2019 APPIWEDIA. All rights reserved.
//

import UIKit

class PeopleCell: UITableViewCell {

    @IBOutlet weak var peopleNameLabel: UILabel!
    @IBOutlet weak var peopleImageView: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
