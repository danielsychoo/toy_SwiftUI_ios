//
//  CircleImage.swift
//  Landmarks
//
//  Created by sungyeopTW on 2022/07/13.
//

import SwiftUI

struct CircleImage: View {
    
    var image: Image
    
    
    // MARK: - Body
    
    var body: some View {
        image
            .clipShape(Circle()) /// 모양 변경
            .overlay { /// 테두리
                Circle().stroke(.white, lineWidth: 4)
            }
            .shadow(radius: 7) /// 그림자
    }
    
}


// MARK: - Preview

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage(image: Image("turtlerock"))
    }
}
