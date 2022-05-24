//
//  ContentView.swift
//  WordScramble
//
//  Created by Manoel Leal on 24/05/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
    
        List{
            
            Section("Section 1"){
                Text("Static row 1")
                Text("Static row 2")
            }
            
            Section("Section 2"){
                ForEach(0..<5){
                    Text("Dynamic row \($0)")
                }
            }
            
            Section("Section 3"){
                Text("Static row 4")
                Text("Static row 5")
            }
            
            
        }
        
        List(0..<5){
            Text("Dynamic row \($0)")
        }.listStyle(.grouped)
    }
    
    func loadFile(){
        if let fileURL = Bundle.main.url(forResource: "some-file", withExtension: "txt"){
            if let fileContents = try? String(contentsOf: fileURL){
                
            }
        }
    }
    
    func test(){
        let input = """
a
b
c
"""
        let letters = input.components(separatedBy: "\n")
        let letter = letters.randomElement()
        let trimmed = letter?.trimmingCharacters(in: .whitespacesAndNewlines)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
