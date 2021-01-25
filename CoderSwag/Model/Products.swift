//
//  Products.swift
//  CoderSwag
//
//  Created by saibalaji on 24/01/21.
//

import Foundation

struct Products
{
   private(set) public var Name: String
   private(set) public var Price: String
   private(set) public var ImageName: String
    
    init(Name: String,Price: String,ImageName: String) {
        self.Name = Name
        self.Price = Price
        self.ImageName = ImageName
    }
}
