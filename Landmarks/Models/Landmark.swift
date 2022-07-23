//
//  Landmark.swift
//  Landmarks
//
//  Created by sungyeopTW on 2022/07/23.
//

import Foundation
import CoreLocation

import SwiftUI

struct Coordinates: Hashable, Codable {
    var latitude: Double
    var longitude: Double
}

struct Landmark: Hashable, Codable {
    var id: Int /// id
    var name: String /// 이름
    var park: String /// 공원
    var state: String /// 도시
    var description: String /// 설명
    
    private var imageName: String /// 이미지
    var image: Image {
        Image(imageName)
    }
    
    private var coordinates: Coordinates /// 좌표
    var locationCoordinate: CLLocationCoordinate2D {
        CLLocationCoordinate2D(
            latitude: coordinates.latitude,
            longitude: coordinates.longitude
        )
    }
}
