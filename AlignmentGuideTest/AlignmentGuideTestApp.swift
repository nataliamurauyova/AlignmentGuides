//
//  AlignmentGuideTestApp.swift
//  AlignmentGuideTest
//
//  Created by Nataliya Murauyova on 4/12/21.
//

import SwiftUI

@main
struct AlignmentGuideTestApp: App {
    var body: some Scene {
        WindowGroup {
            TabView {
                SplitView()
                    .tabItem { Label("Split View", systemImage: "square.and.pencil") }

                AnimationView()
                    .tabItem { Label("Animation View", systemImage: "square.and.pencil") }

                ContentView()
                    .tabItem { Label("Learning tool", systemImage: "square.and.pencil") }
                StripesView()
                .tabItem { Label("Test View", systemImage: "square.and.pencil") }
            }
        }
    }
}
