//
//  ContentView.swift
//  countey
//
//  Created by Jason Yi on 3/22/25.
//

import SwiftUI

struct ContentView: View {
    private var colorOne: Color = Color.blue
    private var colorTwo: Color = Color.red
    @State private var count: Int = 0
    @State private var maxOccupancy: Int = 10
    
    var body: some View {
        NavigationStack {
            ZStack {
                colorOne
                    .opacity(1 - Double(count) / Double(maxOccupancy))
                    .ignoresSafeArea()
                colorTwo
                    .opacity(Double(count) / Double(maxOccupancy))
                    .ignoresSafeArea()

                VStack {
                    HStack {
                        Text("\(count) people")
                            .font(.largeTitle)
                            .bold()
                        Spacer()
                        NavigationLink {
                            SettingsView(maxOccupancy: $maxOccupancy)
                        } label: {
                            Image(systemName: "gear")
                                .font(.system(size: 30))
                        }
                        
                    }
                    .foregroundStyle(.white)
                    .padding()
                    Spacer()
                    HStack {
                        Button {
                            if count > 0{
                                count -= 1
                            }
                        } label: {
                            Image(systemName: "minus")
                                .font(.largeTitle)
                                .foregroundStyle(.white)
                                .padding()
                            
                            
                        }
                        Spacer()
                        
                        Button {
                            if count < maxOccupancy {
                                count += 1
                            }
                        } label: {
                            Image(systemName: "plus")
                                .font(.largeTitle)
                                .foregroundStyle(.white)
                                .padding()
                            
                        }
                    }
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
