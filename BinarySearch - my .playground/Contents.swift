func binarySearch (_ array: [Int], _ key: Int) -> Bool {
    if array.count == 0 {
        return false
    }
    
    let sortedArray = array.sorted()
    
    let minIndex = 0
    let maxIndex = sortedArray.count - 1
    let midIndex = maxIndex / 2
    let midValue = sortedArray[midIndex]
    
    if key < sortedArray[minIndex] || key > sortedArray[maxIndex] {
        return false
    }
    
    if key > midValue {
        let slice = Array(sortedArray[midIndex + 1 ... maxIndex])
        return binarySearch(slice, key)
    }
    
    if key < midValue {
        let slice = Array(sortedArray[minIndex ... midIndex - 1])
        return binarySearch(slice, key)
    }
    
    if key == midValue {
        print("\(key) is found")
        return true
    }
    
    return false
}
