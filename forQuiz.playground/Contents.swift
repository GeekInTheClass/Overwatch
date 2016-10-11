//: Playground - noun: a place where people can play

import UIKit

//1번
var words101 = "Hello, playground"
var words102 = "one fish two fish red fish blue fish"

let regex = try! NSRegularExpression(pattern: "[^A-Za-z0-9 ]", options:[])

words102 = regex.stringByReplacingMatches(in: words102, options: [], range: NSMakeRange(0, words102.characters.count), withTemplate: "").lowercased()

var result:Dictionary<String, Int> = Dictionary<String, Int>()

let list = words102.components(separatedBy:" ")

for item:String in list {
    if (item.characters.count != 0) {
        if (result[item] == nil) {
            result[item] = 1
        } else {
            result[item] = result[item]! + 1
        }
    }
}
print(result)

func qest1(item:[String]) -> Dictionary<String, Int> {
    var result1:Dictionary<String, Int> = [:]
    item.map({
        if (result1[$0] == nil) {
            result1[$0] = 1
        } else {
            result1[$0] = result1[$0]! + 1
        }
    })
    return result1
}

print(qest1(item: list))

//2번
let numbers2 = [1, 2, 3, 4, 5]
var total2 = 0

for item in numbers2{
    total2 += item
}

func qest2(item:[Int]) -> Int {
    var result2:Int = 0
    item.map({
        result2 = result2 + $0
    })
    return result2
}

print(qest2(item:numbers2))

//3번
let words3 = ["h", "e", "l", "l", "o", "w", "o", "r", "l", "d"]
var sentence3 = ""

for item in words3{
    sentence3 += item
}

func qest3(item:[String]) -> String {
    var result3 = ""
    item.map({
        result3.append($0)
    })
    return result3
}

print(qest3(item:words3))


//4번
let numbers4 = [1,2,3,4,5,6,7,8,9,10]
var total4 = 0

for item in numbers4{
    if(item%2 == 0){
        total4 += item
    }
}

func qest4(item:[Int]) -> Int {
    var result4 = 0
    item.map({
        if ($0 % 2 == 0) {
            result4 = result4 + $0
        }
    })
    return result4
}

print(qest4(item:numbers4))

//5번
let word = "Orchestra"
let lowerWord = word.lowercased()
var wordDict:Dictionary<Character, Int> = Dictionary<Character, Int>()

for piece:Character in lowerWord.characters {
    if (wordDict[piece] == nil) {
        wordDict[piece] = 1
    } else {
        wordDict[piece] = wordDict[piece]! + 1
    }
}

print(wordDict)
var res:Array<String> = Array<String>()

for item:String in list {
    let lowerItem = item.lowercased()
    
    if (lowerItem != word && lowerItem.characters.count == word.characters.count) {
        var dict:Dictionary<Character, Int> = Dictionary<Character, Int>()
        
        for piece:Character in lowerItem.characters {
            if (dict[piece] == nil) {
                dict[piece] = 1
            } else {
                dict[piece] = dict[piece]! + 1
            }
        }
        
        if (dict == wordDict) {
            res.append(item)
        }
    }
}

print(res)

lowerWord.characters.map({(piece:Character) -> (Character) in
    
    if (wordDict[piece] == nil) {
        wordDict[piece] = 1
    } else {
        wordDict[piece] = wordDict[piece]! + 1
    }
    
    return piece
})

list.map({(item:String) -> (String) in
    let lowerItem = item.lowercaseString
    
    if (lowerItem != word && lowerItem.characters.count == word.characters.count) {
        var dict:Dictionary<Character, Int> = Dictionary<Character, Int>()
        
        a
        lowerItem.characters.map({(piece:Character) -> (Character) in
            
            if (dict[piece] == nil) {
                dict[piece] = 1
            } else {
                dict[piece] = dict[piece]! + 1
            }
            
            return piece
        })
        
        if (dict == wordDict) {
            result.append(item)
        }
    }
    
    return item
})
