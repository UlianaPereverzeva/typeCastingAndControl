//
//  ViewController.swift
//  typeCastingAndControl
//
//  Created by ульяна on 31.10.22.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        //MARK:
        // Создайте коллекцию типа [Any], включающую несколько вещественных чисел, целых, строк и булевых значений.  Распечатайте содержимое коллекции.
        
        
        var arrayOfAnyType: [Any] = [2.21, 3.87, 4, 8, "Катя", "Ира", true, false]
        print(arrayOfAnyType)
        
        
        
    }
    
}

