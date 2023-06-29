//
//  ContentView.swift
//  LeetCode
//
//  Created by Sergey Koriukin on 29.06.2023.
//

import SwiftUI

struct ContentView: View {
    
   let nums = [2,7,11,15]
   let target = 9
    
    
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Button(action: {
               let sum = twoSum(nums, target)
                
               print(sum)
            }) {
                Text("Hello")
            }
           
        }
        .padding()
    }
    
   private func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
             var dict = [Int: Int]()

           for (index, value) in nums.enumerated() {
            if let addent = dict[value] {
                    return [addent, index]
                } else {
                    dict[target - value] = index
                }

           }
            return []
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
