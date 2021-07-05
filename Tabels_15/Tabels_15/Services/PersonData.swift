//
//  PersonData.swift
//  Tabels_15
//
//  Created by Владимир  on 7/4/21.
//  Copyright © 2021 Владимир . All rights reserved.
//

import Foundation

let name: [String] = ["Ben",
     "Sam",
     "Trevor",
     "Jass",
     "Mary",
     "Simon",
     "Tony",
     "Piter"]
 let email: [String] = ["ben@mail.com",
     "sam@mail.com",
     "trevor@mail.com",
     "jass@mail.com",
     "mary@mail.com",
     "simon@mail.com",
     "tony@mail.com",
     "piter@mail.com"]
 let phoneNumber: [String] = ["+375291111111",
     "+375291111178",
     "+375291111112",
     "+375291111123",
     "+375291111134",
     "+375291111145",
     "+375291111156",
     "+375291111167"]
 let surname: [String] = ["Benson",
     "Samual",
     "Trevorson",
     "Jasson",
     "Maryland",
     "Simonson",
     "Tonyshy",
     "Piterson"]

 struct Person {
     var name: String
     var email: String
     var phoneNumber: String
     var surname: String
 }
 var arrayOfPersons: [Person] = []

func randomNumb() -> [Int] {
     var nums = [0, 1, 2, 3, 4, 5, 6, 7]
     var random: [Int] = []
     while nums.count > 0 {
         let arrayKey = Int(arc4random_uniform(UInt32(nums.count)))
         let randNum = nums[arrayKey]
         random.append(nums.remove(at: arrayKey))
     }
     return random
 }
func randomPerson() -> [Person] {
     var randomPersonArray: [Person] = []
     for element in randomNumb() {
         randomPersonArray.append(Person(name: name[element], email: email[element], phoneNumber: phoneNumber[element], surname: surname[element]))
     }
    for element in randomNumb() {
        randomPersonArray[element].surname = surname[element]
    }
    
     print(randomPersonArray)
     return randomPersonArray

 }

//var arrayOfPersons: [Person] = []

//for element in 0...7 {
//    arrayOfPersons.append(Person(name: name[element], email: email[element], phoneNumber: phoneNumber[element], surname: surname[element]))
//}
//arrayOfPersons


