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

        
        //MARK:
        //  Создайте словарь [String : Any], где все значения — это смесь вещественных и целых чисел, строк и булевых значений.  Выведите крассиво на консоль пары ключ/значения для всех элементов коллекции.
        
        
        
        
        var dictionaryOfAnyType: [String : Any] = ["Вещественное число 0" : 2.2, "Вещественное число 1" : 9.66, "Целое число 3" : 8, "Целое число 4" : 76, "мое Имя" : "Uly", "Имя подруги" : "Anna", "Это" : true, "А это" : false]
        
        for (key, value) in dictionaryOfAnyType {
            print("\(key) : \(value)")
        }
        
        
        
    }
    
}

