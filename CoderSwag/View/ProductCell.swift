//
//  ProductCell.swift
//  CoderSwag
//
//  Created by saibalaji on 24/01/21.
//

import UIKit

class ProductCell: UICollectionViewCell {
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        
        layer.borderWidth = 2.0
        layer.borderColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        layer.cornerRadius = 4.0
        layer.shadowColor = #colorLiteral(red: 0.501960814, green: 0.501960814, blue: 0.501960814, alpha: 1)
        layer.shadowOpacity = 4.0
    }
    
    
    
    
    
    @IBOutlet weak var ProductPrice: UILabel!
    
    @IBOutlet weak var ProductName: UILabel!
    @IBOutlet weak var ProductImage: UIImageView!
    
    
    func UpdateCell(PName: String,PImgName: String,PPrice: String)
    {
        self.ProductName.text = PName
        self.ProductImage.image = UIImage(named: PImgName)
        self.ProductPrice.text = PPrice
    }
}
