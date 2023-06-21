//
//  PredatorRow.swift
//  JP Apex Predators
//
//  Created by Yery Castro on 14/6/23.
//

import SwiftUI

struct PredatorRow: View {
    let predator: ApexPredator
    
    var body: some View {
        HStack {
            // Dinosaur image
            Image(predator.name.lowercased().filter { $0 != " "})
                .resizable()
                .scaledToFit()
                .frame(width: 100, height: 100)
                .shadow(color: .white, radius: 1, x: 0, y: 0)
            
            VStack(alignment: .leading) {
                // Name
                Text(predator.name)
                    .fontWeight(.bold)
                
                // Type
                Text(predator.type.capitalized)
                    .font(.subheadline)
                    .fontWeight(.bold)
                    .padding(.horizontal, 13)
                    .padding(.vertical, 5)
                    .overlay(
                        RoundedRectangle(cornerRadius: 20)
                            .fill(predator.typeOverlay().opacity(0.33))
                    )
            }
        }
    }
}


