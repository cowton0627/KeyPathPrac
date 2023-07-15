//
//  ViewController.swift
//  KeyPathPrac
//
//  Created by Chun-Li Cheng on 2022/4/7.
//

import UIKit

struct Song {
    var name: String
    var genre: String
    var colorEgg: String?
    
    var favoriteGenre: Bool { genre == "抒情" }
}

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // MARK: - 物件宣告，單一 class 的物件、物件矩陣、字典（String: 物件class）
//        var favoriteSong = Song(name: "小幸運", genre: "抒情")
//        var favoriteSongs = [
//            Song(name: "小幸運", genre: "抒情"),
//            Song(name: "不幸運", genre: "抒情"),
//            Song(name: "大幸運", genre: "抒情", colorEgg: "兔腳"),
//            Song(name: "漂向北方", genre: "抒情饒舌")
//        ]
//        var favofiteDict = [
//            "田小姐": Song(name: "小幸運", genre: "抒情"),
//            "黃王先生": Song(name: "漂向北方", genre: "抒情饒舌")
//        ]

        // index 為矩陣下標
//        for (index, favoriteSong) in favoriteSongs.enumerated() {
//            if index != 0 {
//                print(favoriteSong.name)
//            }
//        }
        
        // 將陣列窮舉後，濾掉第一個 index
//        let filteredSongs = favoriteSongs.enumerated().filter { index, song in
////            return song.name != "小幸運"
//            return index != 0
//        }
        // 濾掉後會產生 tuple 為 (offset, element) 型別，將 element 組成陣列
//            .map { $0.element }
                
//        for song in favoriteSongs {
//            if song.name != "小幸運" {
//                print(song.name)
//            }
//        }

//        for i in 1...3 {
//            print(favoriteSongs[i].name)
//        }
        
//        favoriteSong.name = "不幸運"
//        print(favoriteSong.name)
        
//        var songNameArr = favoriteSongs.map { $0.name }
//        print(songNameArr)
        
        // MARK: - KeyPath
        
        var favoriteSong = Song(name: "小幸運", genre: "抒情")
        var favoriteSongs = [
            Song(name: "小幸運", genre: "抒情"),
            Song(name: "不幸運", genre: "抒情"),
            Song(name: "大幸運", genre: "抒情", colorEgg: "兔腳"),
            Song(name: "漂向北方", genre: "抒情饒舌")
        ]
        var favofiteDict = [
            "田小姐": Song(name: "小幸運", genre: "抒情"),
            "黃王先生": Song(name: "漂向北方", genre: "抒情饒舌")
        ]

        // MARK: - KeyPath描述為 \型別.屬性
//        let name = \Song.colorEgg
//        print(favoriteSong[keyPath: name])
//        print(favoriteSong[keyPath: \Song.name])
        
//        var songName = \[Song].[1].name
//        print(favoriteSongs[keyPath: songName])

//        var song = favofiteDict[keyPath: \.["田小姐"]?.genre ]
//        print(song)
          
        
          // MARK: - 高階函數與 KeyPath
//        let sgName = favoriteSongs.map(\.name)
//        print(sgName)
        
//        let fgSong = favoriteSongs.filter(\.favoriteGenre)
//        print(fgSong)
        
        // 與 map 的差異為，compactMap 會去掉 Optional
//        let allSongColorEgg = favoriteSongs.compactMap(\.colorEgg)
//        print(allSongColorEgg)
        
        
        // MARK: - 另兩個高階函數，reduce、sort
        let numbers = [1, 2, 3, 4, 5]
        let sum = numbers.reduce(0, +)
        print(sum)
        
        let names = ["Alice", "Bob", "Charlie", "Dave"]
        let sortedNames = names.sorted { $0.count < $1.count }
        print(sortedNames) // 輸出: ["Bob", "Dave", "Alice", "Charlie"]
//        123
        
    }


}

