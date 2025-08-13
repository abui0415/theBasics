//
//  EssentialCell.swift
//  theBasics
//
//  Created by Anh-Thu Bui on 8/5/25.
//

import UIKit

class EssentialCell: UITableViewCell {
    
    @IBOutlet weak var essentialname: UILabel!
    @IBOutlet weak var markedButton: UIButton!
    @IBAction func markButtonTapped(_ sender: UIButton) {
        sender.isSelected = !sender.isSelected
        UserDefaults.standard.set(sender.isSelected, forKey: buttonKey)
    }
    
    var buttonKey: String {
        return "button_\(essentialname.text ?? "")"
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
