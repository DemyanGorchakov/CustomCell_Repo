//
//  TableCell.swift
//  TableView
//
//  Created by Демьян Горчаков on 08.01.2023.
//

import UIKit

class TableCell: UITableViewCell {
    
    @IBOutlet weak var ViewCard: UIView!
    @IBOutlet weak var titleTextField: UITextField!
    @IBOutlet weak var dataLable: UILabel!
    @IBOutlet weak var imagePost: UIImageView!
    @IBOutlet weak var labelText: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    func setCardCell(_ card: Card) {
        ViewCard.layer.cornerRadius = 20
        titleTextField.text = card.post.title
        dataLable.text = card.post.date
        imagePost.image = UIImage(named: card.post.image)
        labelText.text = card.post.text
    }
    
}
