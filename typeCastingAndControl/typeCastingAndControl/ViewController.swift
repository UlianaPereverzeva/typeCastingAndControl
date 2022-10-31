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
        
        
        
        //MARK:
        //  Пройдите по всем элементам коллекции.  Для каждого целого, напечайте "Целое число " и его значение.  Повторите то же самое для вещественных чисел, строк и булевых значений.
        
       for element in arrayOfAnyType {
            if element is Double {
                print("Вещественное число \(element)")
            } else if element is Int {
                print("Целое число \(element)")
            } else if element is String {
                print("Имя \(element)")
            } else if element is Bool {
                print("Это \(element)")
            }
        }

       
    }
    
}

