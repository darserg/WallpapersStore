//
//  ContentView.swift
//  SwiftUI-Test
//
//  Created by Сергей Дарьин on 22.02.2024.
//

import SwiftUI

struct ContentView: View {
    
    var wallpapers : [Wallpaper] = []
    
    var body: some View {
        NavigationView{
            List(wallpapers){ item in
                Image(item.imageName)
                    .resizable()
                    .scaledToFit()
                    .frame(height: 200)
                    .cornerRadius(8)
                
                VStack(alignment: .leading) {
                    Text(item.title)
                        .fontWeight(.semibold)
                        .lineLimit(2)
                        .minimumScaleFactor(0.75)
                    Spacer()
                        .frame(height: 5)
                    Text(item.uploadDate)
                        .foregroundColor(.secondary)
                }
            }.navigationTitle(Text("Cool wallpapers"))
        }
    }
}

#Preview {
    ContentView(wallpapers: WallpapersList.topFour)
}
