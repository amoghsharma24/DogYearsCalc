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
            Color.teal
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
//            Spacer()
            Slider(value: $age, in: 0...24, step: 1)
                .fontDesign(.default)
            
            HStack{
                    Text("My age: \(Int(age))")
                        .fontWeight(.black)
                        .font(.title)
    
                    
                    Text("Dog's Age: \(calculateDogYears())")
                        .fontWeight(.black)
                        .font(.title)
            }
            Spacer()

            Image(systemName: "pawprint.fill")
                .resizable()
                .scaledToFit()
                .foregroundStyle(.brown)
                .frame(width: 300, height: 300)
            Spacer()
            
        }
        .padding(30)
        }
    }
}

#Preview {
    ContentView()
}
