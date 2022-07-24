//
//  LandmarkRow.swift
//  Landmarks
//
//  Created by sungyeopTW on 2022/07/23.
//

import SwiftUI

struct LandmarkRow: View {
    var landmark: Landmark
    
    
    var body: some View {
        HStack {
            landmark.image
                .resizable()
                .frame(width: 50, height: 50)
            Text(landmark.name)
            
            Spacer()
        }
    }
}

struct LandmarkRow_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            LandmarkRow(landmark: LandmarkManager().landmarks[0])
            LandmarkRow(landmark: LandmarkManager().landmarks[1])
            LandmarkRow(landmark: LandmarkManager().landmarks[2])
        }
        .previewLayout(.fixed(width: 300, height: 70)) /// previewLayout의 크기 조정
    }
}
