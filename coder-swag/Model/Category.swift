//
//  Category.swift
//  coder-swag
//
//  Created by YuanHungLin on 2019/1/11.
//  Copyright © 2019 linyuanhung. All rights reserved.
//

import Foundation


struct Category {
    private(set) public var title: String
    private(set) public var imageName: String
    
    init(title: String, imageName: String) {
        self.title = title
        self.imageName = imageName
    }
}
