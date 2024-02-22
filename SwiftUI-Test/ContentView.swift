//
//  ContentView.swift
//  SwiftUI-Test
//
//  Created by Сергей Дарьин on 22.02.2024.
//

import SwiftUI

struct ContentView: View {
    
    var Wallpaper : [Wallpapers] = []
    
    var body: some View {
        NavigationView{
            List(Wallpaper){ wallpaper in
                Image(wallpaper.imageName)
                    .resizable()
                    .scaledToFit()
                    .frame(height: 200)
                    .cornerRadius(8)
                
//                Spacer().frame(width: 16)
                
                VStack(alignment: .leading) {
                    Text(wallpaper.title)
                        .fontWeight(.semibold)
                        .lineLimit(2)
                        .minimumScaleFactor(0.75)
                    Spacer().frame(height: 5)
                    Text(wallpaper.uploadDate)
                        .foregroundColor(.secondary)
                }
            }.navigationTitle(Text("Cool walpapers"))
        }
    }
}

#Preview {
    ContentView(Wallpaper: WallpapersList.topFour)
}
