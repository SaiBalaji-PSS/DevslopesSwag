//
//  Category.swift
//  CoderSwag
//
//  Created by saibalaji on 24/01/21.
//

import Foundation


struct Category
{
  private (set) public var ImageName: String
  private (set) public var TitleName: String
    
    init(TitleName: String,ImageName: String) {
        self.ImageName = ImageName
        self.TitleName = TitleName
    }
}
