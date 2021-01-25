//
//  DataService.swift
//  CoderSwag
//
//  Created by saibalaji on 24/01/21.
//

import Foundation


class DataService
{
    static let sharedobj = DataService()
    
    
    private let productcategories = [
         Category(TitleName: "SHIRTS", ImageName: "shirts.png"),
        Category(TitleName: "HOODIES", ImageName: "hoodies.png"),
        Category(TitleName: "HATS", ImageName: "hats.png"),
        Category(TitleName: "DIGITAL", ImageName: "digital.png")
    ]
    
    private let hats = [
    
    Products(Name: "Hat 1", Price: "$50", ImageName: "hat01.png"),
    Products(Name: "Hat 2", Price: "$20", ImageName: "hat02.png"),
    Products(Name: "Hat 3", Price: "$25", ImageName: "hat03.png"),
    Products(Name: "Hat 4", Price: "$40", ImageName: "hat04.png")
    
    ]
    
    private let hoodies = [
    Products(Name: "Hoodie 1", Price: "$40", ImageName: "hoodie01.png"),
        Products(Name: "Hoodie 2", Price: "$20", ImageName: "hoodie02.png"),
        Products(Name: "Hoodie 3", Price: "$25", ImageName: "hoodie03.png"),
        Products(Name: "Hoodie 4", Price: "$40", ImageName: "hoodie04.png")
        
    ]
    
    
    
    private let shirts = [
    
        Products(Name: "Shirt 1", Price: "$40", ImageName: "shirt01.png"),
        Products(Name: "Shirt 2", Price: "$50", ImageName: "shirt02.png"),
        Products(Name: "Shirt 3", Price: "$30", ImageName: "shirt03.png"),
        Products(Name: "Shirt 4", Price: "$60", ImageName: "shirt04.png")
        
    
    ]
    
    
    
    
    
    func getCategories() -> [Category]
    {
        return productcategories
    }
    
    
    
    
    func getProducts(id: String) -> [Products]
    {
        switch id {
        case "SHIRTS":
            return shirts
        
        case "HOODIES":
            return hoodies
        
            
        case "HATS":
            return hats
            
        default:
            break
            
            
        }
        return shirts // Dummy return
    }
}
