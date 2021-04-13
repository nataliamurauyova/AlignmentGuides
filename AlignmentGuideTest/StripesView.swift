//
//  StripesView.swift
//  AlignmentGuideTest
//
//  Created by Nataliya Murauyova on 4/12/21.
//

import SwiftUI

struct StripesView: View {
    var body: some View {
        HStack(alignment: .half){
            Rectangle()
                .fill(Color.purple)
                .frame(width: 50, height: 200)
                .alignmentGuide(.half, computeValue: { dimension in
                    dimension[.bottom]
                })

            Rectangle()
                .fill(Color.red)
                .frame(width: 50, height: 200)
                .alignmentGuide(.half, computeValue: { dimension in
                    dimension[.top]
                })

            Rectangle()
                .fill(Color.blue)
                .frame(width: 50, height: 200)
                .alignmentGuide(.half, computeValue: { dimension in
                    dimension[.bottom]
                })

            Rectangle()
                .fill(Color.orange)
                .frame(width: 50, height: 200)
                .alignmentGuide(.half, computeValue: { dimension in
                    dimension[.top]
                })
        }
    }
}

extension VerticalAlignment {
    private enum Half: AlignmentID {
        public static func defaultValue(in context: ViewDimensions) -> CGFloat {
            context.height / 2
        }
    }


    static let half = VerticalAlignment(Half.self)
}

struct StripesView_Previews: PreviewProvider {
    static var previews: some View {
        StripesView()
    }
}
