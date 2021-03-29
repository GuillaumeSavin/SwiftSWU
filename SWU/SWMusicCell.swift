//
//  MusicCell.swift
//  SWU
//
//  Created by Guillaume Savin on 29/03/2021.
//

import UIKit

class SWMusicCell: UITableViewCell {    
    @IBOutlet weak var title: UILabel!
    @IBOutlet weak var length: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
}
