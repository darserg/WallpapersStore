//
//  WallpaperRow.swift
//  SwiftUI-Test
//
//  Created by Сергей Дарьин on 17.03.2024.
//

import Foundation
import SwiftUI

// struct, which is creating an object of type view, will be used in  List
struct WallpaperRow: View {
    @Binding var wallpaper: Wallpaper
    
    var body: some View {
        VStack {
            VStack {
                Image(wallpaper.imageName)
                    .resizable()
                    .scaledToFit()
                    .frame(height: 500)
                    .cornerRadius(8)
            }
            Spacer().frame(width: 16)
            HStack() {
                VStack{
                    Text(wallpaper.title)
                        .fontWeight(.semibold)
                        .lineLimit(2)
                        .minimumScaleFactor(0.75)
                    Spacer().frame(height: 5)
                    Text(wallpaper.uploadDate)
                        .foregroundColor(.secondary)
                }
                Spacer()
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
}
