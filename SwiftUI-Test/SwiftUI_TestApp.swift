//
//  SwiftUI_TestApp.swift
//  SwiftUI-Test
//
//  Created by Сергей Дарьин on 22.02.2024.
//

import SwiftUI

@main
struct SwiftUI_TestApp: App {
    var body: some Scene {
        WindowGroup {
            WallpaperView(Wallpapers: WallpapersList.topFour)
        }
    }
}
