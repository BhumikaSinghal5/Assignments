//
//  NewsCell.swift
//  MVC
//
//  Created by BKS-GGS on 11/01/23.
//

import UIKit

class HackerNewsCell: UITableViewCell {
    
    @IBOutlet weak var titleLabel : UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    func configureCell(_ title: String?) {
        self.titleLabel.text = title ?? ""
    }
    
}
