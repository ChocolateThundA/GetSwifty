import Cocoa

var x = 9.0
func calcSqrt(a:inout Double ){
    a = sqrt(a)
}

//code on paper first

func allEven(arr:Int...) -> Bool{
    var sum = 0
    for num in arr{
        sum = sum + (num % 2)
        if sum != 0{
            return false
        }
    
    }
return true
    

}
