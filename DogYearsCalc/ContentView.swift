//
//  ContentView.swift
//  DogYearsCalc
//
//  Created by Amogh Sharma  on 20/2/2025.
//

import SwiftUI

struct ContentView: View {
    
    @State private var age = 0.0
    
    func calculateDogYears() -> Int {
        let conversionAge = 7.0
        
        return Int(age * conversionAge)
    }
    
    var body: some View {
        
        ZStack{
            Color.accentColor
                .ignoresSafeArea()
        
        VStack {
            
            switch age {
            case 0...15:
                Text("🐶")
                    .font(.system(size: 90))
            case 15...20:
                Text("🐺")
                    .font(.system(size: 90))
            case 20...25:
                Text("🪦")
                    .font(.system(size: 90))
            default:
                Text("🐕‍🦺")
                    .font(.system(size: 90))
            }
            
            Text("Dog Years Calculator!")
                .font(.largeTitle)
                .fontDesign(.rounded)
                .fontWeight(.black)
            Slider(value: $age, in: 0...24, step: 1)
            
            HStack{
                    Text("My age: \(Int(age))")
                        .fontWeight(.black)
                    
                    Text("Dog's Age: \(calculateDogYears())")
                        .fontWeight(.black)
                        
            }
        }
        .padding()
        }
    }
}

#Preview {
    ContentView()
}
