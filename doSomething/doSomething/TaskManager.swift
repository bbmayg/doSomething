//
//  TaskManager.swift
//  doSomething
//
//  Created by Evi Liu on 9/26/15.
//  Copyright © 2015 CLEP. All rights reserved.
//

import Foundation
import UIKit

var taskManager: TaskManager = TaskManager()

struct task{
    var taskName = ""
    var amount = ""
    var details = ""
}

class TaskManager: NSObject {
    var tasks = [task]()
    
    func addTask(taskName: String, amount: String, details: String){
        tasks.append(task(taskName: taskName, amount: amount, details: details))
    }
    
}
