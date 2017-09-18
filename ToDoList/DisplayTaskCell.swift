//
//  DisplayTaskCell.swift
//  ToDoList
//
//  Created by Betalantz on 9/17/17.
//  Copyright © 2017 Betalantz. All rights reserved.
//

import UIKit

protocol DisplayTaskCellDelegate: class {
    
}

class DisplayTaskCell: UITableViewCell {
    
    @IBOutlet weak var taskDisplayLabel: UILabel!
    @IBOutlet weak var descDisplayLabel: UILabel!
    @IBOutlet weak var dateDisplayLabel: UILabel!
    @IBOutlet weak var checkedLabel: UILabel!
    
    weak var delegate: ToDoViewController?
}
