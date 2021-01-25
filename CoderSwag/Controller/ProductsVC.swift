//
//  ProductsVC.swift
//  CoderSwag
//
//  Created by saibalaji on 24/01/21.
//

import UIKit

class ProductsVC: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource {
    
    

    
    @IBOutlet weak var ProductCollectionView: UICollectionView!
    var test: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print(test!)
        
        ProductCollectionView.delegate = self
        ProductCollectionView.dataSource = self
        
        
        
    }
    
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int
    {
        
        return DataService.sharedobj.getProducts(id: test!).count
        
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "pcell", for: indexPath) as? ProductCell
        {
            let parray = DataService.sharedobj.getProducts(id: test!)
            cell.UpdateCell(PName: parray[indexPath.row].Name, PImgName: parray[indexPath.row].ImageName, PPrice: parray[indexPath.row].Price)
            
            return cell
        }
        
        return UICollectionViewCell()
        
        
    }

  

}
