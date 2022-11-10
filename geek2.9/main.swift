//
//  main.swift
//  geek2.9
//
//  Created by Айбек Шакиров on 10/11/22.
//

import Foundation


 /*Создайте пример наследования, реализуйте класс Student и класс Aspirant, аспирант отличается от студента наличием некой научной работы.
  Класс Student содержит переменные: String firstName, lastName, group. А также, double averageMark, содержащую среднюю оценку.
  Создать переменную типа Student, которая ссылается на объект типа Aspirant.
  Создать метод getScholarship() для класса Student, который возвращает сумму стипендии. Если средняя оценка студента равна 5, то сумма 100 грн, иначе 80. Переопределить этот метод в классе Aspirant.  Если средняя оценка аспиранта равна 5, то сумма 200 грн, иначе 180.
  Создать массив типа Student, содержащий объекты класса Student и Aspirant. Вызвать метод getScholarship() для каждого элемента массива.
  */

class Student{
    var firstName:String
    var lastName:String
    var group:String
    var averageMark:Double
    var schoolarship = 0
    init(firstName: String, lastName: String, group: String, averageMark: Double) {
        self.firstName = firstName
        self.lastName = lastName
        self.group = group
        self.averageMark = averageMark
    }
    
    func getScholarship(){
        if averageMark == 5.0{
            schoolarship = 100
        }else{
            schoolarship = 80
        }
        print("Stipndiya: \(schoolarship) grn")
    }
}

class Aspirant : Student{
    var scienceProject:String
    init(firstName: String, lastName: String, group: String, averageMark: Double , scienceProject:String) {
        self.scienceProject = scienceProject
        super.init(firstName: firstName, lastName: lastName, group: group, averageMark: averageMark)
    }
    override func getScholarship() {
        if averageMark == 5.0{
            schoolarship = 200
        }else{
            schoolarship = 180
        }
        print("Stependiya: \(schoolarship) grn")
    }
}

var studentArray = [Student]()
var student1 = Student(firstName: "Ralan", lastName: "Jigalov", group: "8-a", averageMark: 5.0)
var student2 = Student(firstName: "Atake", lastName: "Kasenov", group: "8-v", averageMark: 5.0)
var aspirant1 = Aspirant(firstName: "Kiril", lastName: "Tinkow", group: "7-b", averageMark: 3.5, scienceProject: "phisicc")
var aspirant2 = Aspirant(firstName: "Aibek", lastName: "Shakirov", group: "8-a", averageMark: 4.7, scienceProject: "Phisika")
studentArray.append(student1)
studentArray.append(student2)
studentArray.append(aspirant1)
studentArray.append(aspirant2)
for item in studentArray{
    print("\(item.firstName) \(item.lastName)")
    item.getScholarship()
}
