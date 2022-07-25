//
//  LandmarkList.swift
//  Landmarks
//
//  Created by sungyeopTW on 2022/07/27.
//

import SwiftUI

struct LandmarkList: View {
    
    var body: some View {
        List(LandmarkManager.allLandmarks) { landmark in
            LandmarkRow(landmark: landmark)
        }
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkList()
    }
}
