//
//  LandmarkList.swift
//  Landmarks
//
//  Created by sungyeopTW on 2022/07/27.
//

import SwiftUI

struct LandmarkList: View {
    
    enum Text {
        static let title = "Landmarks"
    }
    
    
    // MARK: - Body
    
    var body: some View {
        NavigationView {
            List(LandmarkManager.allLandmarks) { landmark in
                NavigationLink {
                    LandmarkDetail(landmark: landmark)
                } label: {
                    LandmarkRow(landmark: landmark)
                }
            }
            .navigationTitle(Text.title)
        }
    }
    
}


// MARK: - Preview

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        ForEach(["iPhone SE (2nd generation)", "iPhone 12"], id: \.self) { deviceName in
            LandmarkList()
                .previewDevice(PreviewDevice(rawValue: deviceName))
                .previewDisplayName(deviceName)
        }
    }
}
