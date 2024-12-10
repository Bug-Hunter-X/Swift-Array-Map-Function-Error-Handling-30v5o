let numbers: [Int?] = [1, 2, nil, 4, 5]

let doubledNumbers = numbers.compactMap { $0 }.map { number in
    guard let doubledNumber = Int64(exactly: number * 2) else {
        print("Overflow occurred for number: "
              + String(number))
        return nil
    }
    return Int(doubledNumber) // Handle potential overflow
}

print(doubledNumbers) // Output: [2, 4, 8, 10]