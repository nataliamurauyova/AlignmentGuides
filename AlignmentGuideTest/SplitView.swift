//
//  SplitView.swift
//  AlignmentGuideTest
//
//  Created by Nataliya Murauyova on 4/12/21.
//

import SwiftUI

struct SplitView: View {
    @State private var ratio: Double = Double(UIScreen.main.bounds.width / 2)

    var body: some View {
        VStack {
            HStack(spacing: 0) {
                RedView()
                    //.alignmentGuide(.top, computeValue: { d in d[.top] + CGFloat(ratio)})
                    .frame(width: CGFloat(ratio), alignment: .center)
                BlueView()
                    .frame(width: UIScreen.main.bounds.width - CGFloat(ratio), alignment: .center)
            }
            Spacer()

            Slider(value: $ratio, in: 0...Double(UIScreen.main.bounds.width))
            Text("Value - \(ratio)")
        }
    }
}

struct RedView: View {
    var body: some View {
        Rectangle()
            .fill(Color.red)
    }
}

struct BlueView: View {
    var body: some View {
        Rectangle()
            .fill(Color.blue)
    }
}

struct SplitView_Previews: PreviewProvider {
    static var previews: some View {
        SplitView()
    }
}
