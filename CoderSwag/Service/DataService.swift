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
    
    func getCategories() -> [Category]
    {
        return productcategories
    }
}
