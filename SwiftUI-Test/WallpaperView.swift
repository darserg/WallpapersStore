//
//  WallpaperView.swift
//  SwiftUI-Test
//
//  Created by Сергей Дарьин on 17.03.2024.
//

import SwiftUI

struct WallpaperView: View {
    @State var Wallpapers : [Wallpaper]
    
    var body: some View {
        NavigationView{
            VStack {
                List {
                    ForEach(Wallpapers.indices, id: \.self) { index in
                        NavigationLink (destination: WallpaperDetail(wallpaper: self.Wallpapers[index])){
                            WallpaperRow(wallpaper: self.$Wallpapers[index])
                        }
                    }
                }
            }
=======
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
    WallpaperView(Wallpapers: WallpapersList.topFour)
}
