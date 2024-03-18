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
        }
    }
}

#Preview {
    WallpaperView(Wallpapers: WallpapersList.topFour)
}
