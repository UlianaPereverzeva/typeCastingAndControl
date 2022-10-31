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
        
        
        
        
        var dictionaryOfAnyType: [String : Any] = ["Вещественное число 0" : 2.2, "Вещественное число 1" : 9.66, "Целое число 3" : 8, "Целое число 4" : 76, "мое Имя" : "7", "Имя подруги" : "Anna", "Это" : true, "А это" : false]
        
        for (key, value) in dictionaryOfAnyType {
            print("\(key) : \(value)")
        }
        
        
        //MARK:
        // Создайте переменную total типа Double, равную 0.  Переберите все значения словаря, и добавьте значение каждого целого и вещественного числа к значению вашей переменной.  Для каждой строки добавьте 1.  Для каждого булева значения, добавьте 2, в случае, если значение равно true, либо вычтите 3, если оно false.  Напечатайте значение total.
        
        
        func getSum() {
        
        var total: Double = 0
        
        for value in dictionaryOfAnyType.values {
            
            if value is Double {
                if let value = value as? Double {
                    total += value
                }
            } else if value is Int {
                if let value = value as? Int {
                    total += Double(value)
                }
            } else if value is String {
                    total += 1
            
            } else if value is Bool {
                if let value = value as? Bool {
                    if value {
                    total += 2
                    } else {
                    total -= 3
                    }
                }
            }
            }
            print(total)
        }
        
        getSum()
        
        //MARK:
        //  Обнулите переменную total и снова пройдите по всей коллекции, прибавляя к ней все целые и вещественные числа.  Для каждой строки, встретившейся на пути, попробуйте сконвертировать её в число, и добавьте это значение к общему.  Игнорируйте булевы значения.  Распечатайте итог.
        
        func recalculatingTheSumOfACollection() {
            
            var total: Double = 0
            
            for element in dictionaryOfAnyType.values {
                
                if element is Double {
                    if let element = element as? Double {
                        total += element
                    }
                } else if element is Int {
                    if let element = element as? Int {
                        total += Double(element)
                    }
                } else if element is String {
                    if let element = element as? String {
                        if let stringWithNumbers = Double(element) {
                            total += stringWithNumbers
                        }
                    }
                }
                
            }
            print(total)
        }
        recalculatingTheSumOfACollection()
    }
        
    
}

