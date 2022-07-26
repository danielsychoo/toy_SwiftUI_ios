//
//  LandmarkDetail.swift
//  Landmarks
//
//  Created by sungyeopTW on 2022/07/27.
//

import SwiftUI

struct LandmarkDetail: View {
    
    var landmark: Landmark
    
    
    // MARK: - Body
    
    var body: some View {
        ScrollView {
            MapView(coordinate: landmark.locationCoordinate)
                .frame(height: 300)
                .ignoresSafeArea(edges: .top) /// 기본적으로 safeArea가 지켜짐 (ignore를 해야 안지킴)
            
            CircleImage(image: landmark.image)
                .offset(y: -130)
                .padding(.bottom, -130)
            
            VStack(alignment: .leading) { /// Vertical StackView
                Text(landmark.name)
                    .font(.title)
                HStack { /// Horizontal StackView
                    Text(landmark.park)
                    Spacer() /// 해당 위치 기준 superView의 모든공간 차지하도록 spacing
                    Text(landmark.state)
                }
                .font(.subheadline) /// 부모에 줘서 자식요소 모두 적용 가능
                .foregroundColor(.secondary)
                
                Divider() /// 이젠 divider도 요소가 있음 ㄷㄷ
                
                Text("About \(landmark.name)")
                    .font(.title2)
                Text(landmark.description)
            }
            .padding()
        }
        .navigationTitle(landmark.name)
        .navigationBarTitleDisplayMode(.inline)
    }
}


// MARK: - Preview

struct LandmarkDetail_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkDetail(landmark: LandmarkManager.allLandmarks[0])
    }
}
