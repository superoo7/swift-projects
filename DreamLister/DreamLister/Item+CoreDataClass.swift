//
//  Item+CoreDataClass.swift
//  DreamLister
//
//  Created by Johnson Lai on 30/03/2017.
//  Copyright © 2017 johnsonlwh7. All rights reserved.
//  This file was automatically generated and should not be edited.
//

import Foundation
import CoreData

@objc(Item)
public class Item: NSManagedObject {
    // anytime that this item is inserted into NSManagedObjectContext or when you create this item from the entity, this func will be called
    public override func awakeFromInsert() {
        super.awakeFromInsert()
        self.created = NSDate()
        
    }
}
