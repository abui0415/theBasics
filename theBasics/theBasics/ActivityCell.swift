//
//  ActivityCell.swift
//  theBasics
//
//  Created by Anh-Thu Bui on 8/5/25.
//

import UIKit

class ActivityCell: UITableViewCell {

    @IBOutlet weak var activityDescription: UILabel!
    @IBOutlet weak var activityName: UILabel!
    @IBOutlet weak var activityImage: UIImageView!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
