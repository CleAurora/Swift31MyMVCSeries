//
//  CarTableViewCell.swift
//  trainingAPIAndXib
//
//  Created by Cleís Aurora Pereira on 18/11/20.
//

import UIKit

class CarTableViewCell: UITableViewCell {

    @IBOutlet weak var nameLabel: UILabel!

    func setup(brand: BrandModel) {
        nameLabel.text = brand.name
    }

    func setupType(type: TypeCarModel) {
        nameLabel.text = type.name
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
