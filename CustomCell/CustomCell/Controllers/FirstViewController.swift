//
//  FirstViewController.swift
//  CustomCell
//
//  Created by Демьян Горчаков on 11.01.2023.
//

import UIKit

class FirstViewController: UIViewController {
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var imageIcon: UIImageView!
    
    var imageIconFirstVC: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if imageIconFirstVC != nil {
            self.imageIcon.image = UIImage(named: imageIconFirstVC!)
        }
    }
}
