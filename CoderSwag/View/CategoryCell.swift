//
//  CategoryCell.swift
//  CoderSwag
//
//  Created by saibalaji on 24/01/21.
//

import UIKit

class CategoryCell: UITableViewCell {

    @IBOutlet weak var CategoryName: UILabel!
    
    @IBOutlet weak var CategoryImage: UIImageView!
    
  
    func UpdateCell(Name: String,ImgName: String)
    {
        self.CategoryName.text = Name
        self.CategoryImage.image = UIImage(named: ImgName)
    }

  

}
