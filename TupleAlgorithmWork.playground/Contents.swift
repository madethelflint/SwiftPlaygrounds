//: Playground - noun: a place where people can play

import UIKit

var selectedOptions: [(variantIndex: Int, selectedOptionIndex: Int)] = []

print(selectedOptions)

func updateOption(forRow row: Int, withNewValue newValue: Int) {
    
    let newSelection = (row, newValue)
    
    var count = 0
    var indexToUpdate = 0
    var tupleFound = false
    
    for tuple in selectedOptions {
        switch newSelection {
        case (row, _) where row == tuple.variantIndex:
            indexToUpdate = count
            tupleFound = true
        default:
            break
        }
        count += 1
    }
    
    if tupleFound {
        selectedOptions[indexToUpdate] = newSelection
    } else {
        selectedOptions.append(newSelection)
    }


}

updateOption(forRow: 3, withNewValue: 123)
print(selectedOptions)

updateOption(forRow: 1, withNewValue: 87)
print(selectedOptions)

updateOption(forRow: 3, withNewValue: 999)
print(selectedOptions)

updateOption(forRow: 1, withNewValue: 866667)
print(selectedOptions)
