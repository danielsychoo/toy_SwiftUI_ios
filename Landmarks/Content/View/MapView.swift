//
//  MapView.swift
//  Landmarks
//
//  Created by sungyeopTW on 2022/07/13.
//

import SwiftUI
import MapKit

/*
 @State 속성을 이용해 상태를 만들 수 있다.
 @State 속성으로 만든 상태는 하나 이상의 View에서 수정할 수 있는 하나의 source 이다.
 SwiftUI는 내부 상태들을 관리하고 상태의 값에 따라 자동으로 View들을 업데이트 한다.
 
 예로 아래에서 MKCoordinateRegion 타입의 region 이라는 상태를 만든 후
 Map의 coordinateRegion에 상태 regin을 binding 해줌으로서
 이후 유저가 Map에 인터렉션을 가하면 그에 따라 상태가 변화하고 상태의 변화에 따라 View가 업데이트 된다.
 */

struct MapView: View {
    // 상태 region
    @State private var region = MKCoordinateRegion(
        center: CLLocationCoordinate2D(latitude: 34.011_286, longitude: -116.166_868),
        span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2)
    )
    
    var body: some View {
        Map(coordinateRegion: $region) /// $을 이용해 region 을 binding
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}
