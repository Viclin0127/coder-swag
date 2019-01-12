//
//  ViewController.swift
//  coder-swag
//
//  Created by YuanHungLin on 2019/1/11.
//  Copyright © 2019 linyuanhung. All rights reserved.
//

import UIKit

class CategoriesVC: UIViewController, UITableViewDataSource, UITableViewDelegate {
    

    
    @IBOutlet weak var categoryTable: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
        categoryTable.dataSource = self //當有調用 UITableViewDataSource時 需加上這段code
        categoryTable.delegate = self  //當有調用 UITableViewDelegate時 需加上這段code
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return DataService.instance.getCategories().count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "CategoryCell") as? CategoryCell {
            let category = DataService.instance.getCategories()[indexPath.row] //取得Category的array
            cell.updateView(category: category)
            return cell
        }
        else {
            return CategoryCell()
        }
    }
    


}

