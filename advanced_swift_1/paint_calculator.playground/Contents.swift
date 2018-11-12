import Foundation

var width:Float = 1.5
var height:Float = 2.3
var areaThatCanBePainted:Float = 0.0

//var areaThatCanBePainted:Float
//{
//    get
//    {
//        let areaCoveredPerBucket:Float = 1.5
//    }
//}

var bucketsOfPaint:Int
{
    get
    {
        let area = width * height
        let areaCoveredPerBucket:Float = 1.5
        let numberOfBuckets = area / areaCoveredPerBucket
        let roundedBuckets = ceilf(numberOfBuckets)
        return Int(roundedBuckets)
        
        //return Int((width * height) / 1.5)
    }
    set
    {
        let areaCoveredPerBucket:Float = 1.5
        areaThatCanBePainted = areaCoveredPerBucket * Float(newValue)
    }
}

print(bucketsOfPaint)
bucketsOfPaint = 10
print(areaThatCanBePainted)
