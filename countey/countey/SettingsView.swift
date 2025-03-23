//
//  SettingsView.swift
//  countey
//
//  Created by Jason Yi on 3/22/25.
//

import SwiftUI

struct SettingsView: View {
    @Binding var maxOccupancy: Int
    
    var body: some View {
        ZStack {
            Color.black
                .ignoresSafeArea()
            VStack {
                Text("Settings")
                    .font(.system(size: 40))
                    .bold()
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.horizontal)
                
                ZStack {
                    RoundedRectangle(cornerRadius: 12)
                        .fill(Color.gray.opacity(0.2))
                        .frame(height: 60)
                    
                    Stepper {
                        Text("Maximum Occupancy: \(maxOccupancy)")
                            .foregroundStyle(.white)
                    } onIncrement: {
                        maxOccupancy += 1
                    } onDecrement: {
                        maxOccupancy -= 1
                    }
                    .padding(.horizontal, 20)
                    .accentColor(.white)
                }
                .padding(.horizontal, 20)
                
                Spacer()
                
            }
            .foregroundStyle(.white)
        }
    }
}

#Preview {
    struct PreviewWrapper: View {
        @State private var x = 10
        
        var body: some View {
            SettingsView(maxOccupancy: $x)
        }
    }
    
    return PreviewWrapper()
}
