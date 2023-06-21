//
//  PredatorDetail.swift
//  JP Apex Predators
//
//  Created by Yery Castro on 14/6/23.
//

import SwiftUI

struct PredatorDetail: View {
    let predator: ApexPredator
    
    var body: some View {
        ScrollView {
            VStack(alignment: .trailing) {
                Image(predator.type)
                    .resizable()
                    .scaledToFit()
                
                Image(predator.name.lowercased().filter { $0 != " "})
                    .resizable()
                    .scaledToFit()
                    .frame(width: UIScreen.main.bounds.width/1.5, height: UIScreen.main.bounds.height/4)
                    .shadow(color: .black, radius: 6, x: 0, y: 0)
                    .offset(y: -210)
                    .rotation3DEffect(.degrees(180), axis: (x: 0, y: 1, z: 0))
                
                VStack(alignment: .leading) {
                    Text(predator.name)
                        .font(.largeTitle)
                        .padding(.bottom, 8)
                    
                    Text("Appears In:")
                        .font(.title3)
                    
                    ForEach(predator.movies, id: \.self) { movie in
                        Text("•" + movie)
                            .font(.subheadline)
                    }
                    
                    Text("Movie Moments")
                        .font(.title)
                        .padding(.top, 15)
                    
                    ForEach(predator.movieScenes) { scene in
                        Text(scene.movie)
                            .font(.title2)
                            .padding([.top, .bottom], 1)
                        
                        Text(scene.sceneDescription)
                            .padding(.bottom, 15)
                    }
                    
                    Text("Read More")
                        .font(.caption)
                    Link(predator.link, destination: URL(string: predator.link)!)
                        .font(.caption)
                        .foregroundColor(.blue)
                }
                .padding(.top, -230)
                .padding()
            }
        }
        .edgesIgnoringSafeArea(.top)
    }
}


