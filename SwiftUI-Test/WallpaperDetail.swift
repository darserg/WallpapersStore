//
//  WallpaperDetail.swift
//  SwiftUI-Test
//
//  Created by Сергей Дарьин on 02.03.2024.
//

import SwiftUI

struct WallpaperDetail: View {
    @State var wallpaper : Wallpaper
    var body: some View {
        VStack{
            NavigationLink(destination: WallpaperView(Wallpapers: WallpapersList.topFour)) {
                HStack{
                    Spacer()
                }.padding(10)
            }.ignoresSafeArea(.all)
                .padding(10)
            Image(wallpaper.imageName).resizable()
                .scaledToFit()
            Button(action: {
                wallpaper.liked.toggle()
            }) {
                if (wallpaper.liked == false) {
                    Image(systemName: "heart")
                }
                else {
                    Image(systemName: "heart.fill").foregroundColor(.red)
                }
            }
        }
    }
}

#Preview {
    WallpaperDetail(wallpaper: Wallpaper(imageName: "Unknown-4", title: "Campfire", uploadDate: "22.02.2023"))
}
