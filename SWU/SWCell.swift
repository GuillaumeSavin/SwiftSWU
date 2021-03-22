//
//  SWCell.swift
//  SWU
//
//  Created by sg812131 on 22/03/2021.
//

import UIKit

class SWCell: UITableViewCell {

    @IBOutlet weak var title: UILabel!
    @IBOutlet weak var epNumber: UILabel!
    @IBOutlet weak var year: UILabel!
    @IBOutlet weak var poster: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
