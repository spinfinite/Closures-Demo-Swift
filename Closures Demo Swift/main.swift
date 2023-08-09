//
//  main.swift
//  Closures Demo Swift
//
//  Created by Dad's 6,1 on 8/9/23.
//

import Foundation
// Operation is a parameter but it is a function
func calculator (n1: Int, n2: Int, operation: (Int, Int) -> Int) -> Int {
    return operation(n1, n2)
}

//func add(no1: Int, no2: Int) -> Int {
//    return no1 + no2
//}

//func multiply (no1: Int, no2: Int) -> Int {
//    return no1 * no2
//}

//Below you will see the multiply function above but in a closed format.
//We delete the "func multiply" part and replace it with a open curly brace and substitue the previous open curly brace with the key word 'in'


//Example of functions with closure:
//print(calculator(n1: 2, n2: 3, operation: {(no1: Int, no2: Int) -> Int in
//    return no1 * no2}))
//Example of a more simplified version where we get rid of the type of operation and also it's return of int
//print(calculator(n1: 2, n2: 3, operation: {(no1, no2) in
//    return no1 * no2}))
//Even more simplified.  Get rid of return
//print(calculator(n1: 2, n2: 3, operation: {(no1, no2) in no1 * no2}))
//Even more of a simplified version where we can use the anonymous parameters $0 and $1
//print(calculator(n1: 2, n2: 3, operation: {$0 * $1}))
//Even more simplified with a trailing closure.  If the last parameter is a closure, then you can actually you can omit the last parameter name of 'operation'.
print(calculator(n1: 2, n2: 3) {$0 * $1})

let array = [6, 2, 3, 9, 4, 1]
//func addOne (n1: Int) -> Int {
//    return n1 + 1
//}
//Turn into a closure


print(array.map({(n1) in n1 + 1}))

