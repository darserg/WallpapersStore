//
//  Wallpapers.swift
//  SwiftUI-Test
//
//  Created by Сергей Дарьин on 22.02.2024.
//

import Foundation
import SwiftUI

struct Wallpaper : Identifiable {
    var id = UUID()
    var imageName: String
    var title: String
    var uploadDate: String
    public var liked: Bool
    
    init(imageName: String, title: String, uploadDate: String) {
        self.imageName = imageName
        self.title = title
        self.uploadDate = uploadDate
        self.liked = false
    }
}


struct WallpapersList {
    static var topFour = [
        Wallpaper(imageName: "Unknown", title: "Saint's Petersburgh", uploadDate: "22.03.2022"),
        Wallpaper(imageName: "Unknown-2", title: "Camp", uploadDate: "22.02.2024"),
        Wallpaper(imageName: "Unknown-3", title: "Porshe", uploadDate: "22.02.2023"),
        Wallpaper(imageName: "Unknown-4", title: "Campfire", uploadDate: "22.02.2023"),
    ]
}


