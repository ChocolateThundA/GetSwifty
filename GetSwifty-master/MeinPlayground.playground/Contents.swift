import UIKit

var str = "Hello, playground"

func addBy(_ value: Int) -> (Int) -> Int{
    func sum(x:Int) -> Int{return value + x}
return sum
}

let add5 = addBy(5)

var randy:[Int] = []

for i in stride(from: 0, to: 24, by: 1) {
    randy.append(Int(arc4random_uniform(100))+1)
}

var cubes = randy.map({(rand:Int)->Int in
    return rand * rand * rand
})
print(cubes)

let persquares = cubes.filter({(x:Int)->Bool in
    return sqrt(Double(x)) == Double(Int(sqrt(Double(x))))})
print("perfec squares:")
print(persquares)
