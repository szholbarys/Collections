//
//  ContentView.swift
//  Collections
//
//  Created by Zholbarys on 20.09.2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Text("Array Creation and Access: \(arrayTaskResult())")
            Text("Set Creation and Manipulation: \(setTaskResult())")
            Text("Dictionary Creation and Access: \(dictionaryTaskResult())")
            Text("Array Element Update: \(arrayUpdateTaskResult())")
            Text("Set Intersection: \(setIntersectionResult())")
            Text("Dictionary Update: \(dictionaryUpdateResult())")
            Text("Array Merge: \(arrayMergeResult())")
            Text("Dictionary Key Addition: \(dictionaryAdditionResult())")
            Text("Set Union and Subtract: \(setUnionAndSubtractResult())")
            Text("Nested Collection: \(nestedCollectionResult())")
        }
        .padding()
        .onAppear {
            print("Array Creation and Access: \(arrayTaskResult())")
            print("Set Creation and Manipulation: \(setTaskResult())")
            print("Dictionary Creation and Access: \(dictionaryTaskResult())")
            print("Array Element Update: \(arrayUpdateTaskResult())")
            print("Set Intersection: \(setIntersectionResult())")
            print("Dictionary Update: \(dictionaryUpdateResult())")
            print("Array Merge: \(arrayMergeResult())")
            print("Dictionary Key Addition: \(dictionaryAdditionResult())")
            print("Set Union and Subtract: \(setUnionAndSubtractResult())")
            print("Nested Collection: \(nestedCollectionResult())")
        }
    }
        
    func arrayTaskResult() -> String {
        let fruits = ["Apple", "Banana", "Mango", "Grape", "Elderberry"]
        return fruits[2]
    }
    
    func setTaskResult() -> String {
        var favoriteNumbers: Set<Int> = [1, 7, 10]
        favoriteNumbers.insert(17)
        return "\(favoriteNumbers)"
    }
    
    func dictionaryTaskResult() -> String {
        let programmingLanguages = ["Swift": 2014, "Python": 1991, "JavaScript": 1995]
        return "\(programmingLanguages["Swift"] ?? 0)"
    }
    
    func arrayUpdateTaskResult() -> String {
        var colors = ["Red", "Green", "Blue", "Yellow"]
        colors[1] = "Purple"
        return "\(colors)"
    }
    
    func setIntersectionResult() -> String {
        let setA: Set = [1, 2, 3, 4]
        let setB: Set = [3, 4, 5, 6]
        let intersection = setA.intersection(setB)
        return "\(intersection)"
    }
    
    func dictionaryUpdateResult() -> String {
        var studentScores = ["Asyl": 85, "Erda": 90, "Merei": 88]
        studentScores.updateValue(95, forKey: "Merei")
        return "\(studentScores)"
    }
    
    func arrayMergeResult() -> String {
        let array1 = ["apple", "banana"]
        let array2 = ["mango", "grape"]
        let mergedArray = array1 + array2
        return "\(mergedArray)"
    }
    
    func dictionaryAdditionResult() -> String {
        var countryPopulations = ["Kazakhstan": 19000000, "Canada": 38000000]
        countryPopulations["Japan"] = 125000000
        return "\(countryPopulations)"
    }
    
    func setUnionAndSubtractResult() -> String {
        let animalsA: Set = ["cat", "dog"]
        let animalsB: Set = ["dog", "mouse"]
        let unionSet = animalsA.union(animalsB)
        let finalSet = unionSet.subtracting(animalsB)
        return "\(finalSet)"
    }
    
    func nestedCollectionResult() -> String {
        let studentGrades = ["Asyl": [90, 85, 88], "Erda": [75, 80, 79]]
        return "\(studentGrades["Erda"]?[1] ?? 0)"
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

