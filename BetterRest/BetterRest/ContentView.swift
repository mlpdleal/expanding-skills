//
//  ContentView.swift
//  BetterRest
//
//  Created by Manoel Leal on 21/05/22.
//

import SwiftUI

struct ContentView: View {
    
    @State private var sleepAmount = 8.0
    @State private var wakeUp = Date.now
    
    var body: some View {
        
        VStack{
            Stepper("\(sleepAmount.formatted()) hours",
                    value: $sleepAmount,
                    in: 4...12,
                    step: 0.25)
                
            DatePicker("Please enter a date", selection: $wakeUp, displayedComponents: .date)
            DatePicker("Please enter a hour", selection: $wakeUp, displayedComponents: .hourAndMinute)
            DatePicker("Please enter a date (except past date)", selection: $wakeUp, in: Date.now...)
            
            Text(Date.now, format: .dateTime.day().month().year())
            Text(Date.now, format: .dateTime.hour().minute())
            Text(Date.now.formatted(date: .long, time: .shortened))
            
        }
        
    }
    
    func exempleDate(){
        let tomorrow = Date.now.addingTimeInterval(86400)
        let range = Date.now...tomorrow
    }
    
    func trivialExemple(){
        var components = DateComponents()
        components.hour = 8
        components.minute = 0
        let date = Calendar.current.date(from: components) ?? Date.now
    }
    
    func trivialExemple1(){
        let components = Calendar.current.dateComponents([.hour, .minute], from: Date.now)
        let hour = components.hour ?? 0
        let minute = components.minute ?? 0
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
