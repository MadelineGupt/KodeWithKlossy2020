//
//  toDoCD.swift
//  toDoListPre
//
//  Created by MADELINE on 5/30/20.
//  Copyright © 2020 MADELINE. All rights reserved.
//

import Foundation
import CoreData


extension ToDoCD {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<ToDoCD> {
        return NSFetchRequest<ToDoCD>(entityName: "ToDoCD")
    }

    @NSManaged public var name: String?
    @NSManaged public var important: Bool

}


