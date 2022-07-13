//
//  CircleImage.swift
//  Landmarks
//
//  Created by sungyeopTW on 2022/07/13.
//

import SwiftUI

struct CircleImage: View {
    var body: some View {
        Image("turtlerock")
            .clipShape(Circle()) /// 모양 변경
            .overlay { /// 테두리
                Circle().stroke(.white, lineWidth: 4)
            }
            .shadow(radius: 7) /// 그림자
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage()
    }
}
