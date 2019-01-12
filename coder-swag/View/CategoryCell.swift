//
//  CategoryCell.swift
//  coder-swag
//
//  Created by YuanHungLin on 2019/1/11.
//  Copyright © 2019 linyuanhung. All rights reserved.
//

import UIKit

class CategoryCell: UITableViewCell {
    
    @IBOutlet weak var categoryImage: UIImageView!
    @IBOutlet weak var categoryLabel: UILabel!
    
    func updateView (category: Category) {
        categoryImage.image = UIImage(named: category.imageName)
        categoryLabel.text = category.title
    }

}
