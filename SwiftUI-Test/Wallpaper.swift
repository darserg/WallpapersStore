//
//  Wallpaper.swift
//  SwiftUI-Test
//
//  Created by Сергей Дарьин on 22.02.2024.
//

import Foundation


struct Wallpaper : Identifiable {
    var id = UUID()
    var imageName: String
    var title: String
    var uploadDate: String
}

struct WallpapersList{
    static let topFour = [
        Wallpaper(imageName: "Unknown", title: "Saint's Petersburgh", uploadDate: "22.03.2022"),
        Wallpaper(imageName: "Unknown-2", title: "Camp", uploadDate: "22.02.2024"),
        Wallpaper(imageName: "Unknown-3", title: "Porshe", uploadDate: "22.02.2023"),
        Wallpaper(imageName: "Unknown-4", title: "Campfire", uploadDate: "22.02.2023"),
    ]
}
