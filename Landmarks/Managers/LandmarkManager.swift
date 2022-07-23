//
//  LandmarkManager.swift
//  Landmarks
//
//  Created by sungyeopTW on 2022/07/23.
//

import Foundation

// struct LandmarkManager {
//     static var landmarks: [Landmark] = load("landmarkData.json")
//
//
//     // MARK: - Methods
//
//     private static func load<T: Decodable>(_ filename: String) -> T { /// json에서 data를 가공하는 함수
//         let data: Data
//
//         guard let file = Bundle.main.url(forResource: filename, withExtension: nil) else { fatalError("Couldn't find \(filename) in main bundle.") }
//
//         do {
//             data = try Data(contentsOf: file)
//         } catch {
//             fatalError("Couldn't load \(filename) from main bundle:\n\(error)")
//         }
//
//         do {
//             let decoder = JSONDecoder()
//             return try decoder.decode(T.self, from: data)
//         } catch {
//             fatalError("Couldn't parse \(filename) as \(T.self):\n\(error)")
//         }
//     }
// }

class LandmarkManager {
    
    var landmarks: [Landmark] { self.load("landmarkData.json") }
    
    // json에서 data를 가공하는 함수
    func load<T: Decodable>(_ filename: String) -> T {
        let data: Data

        guard let file = Bundle.main.url(forResource: filename, withExtension: nil) else { fatalError("Couldn't find \(filename) in main bundle.") }

        do {
            data = try Data(contentsOf: file)
        } catch {
            fatalError("Couldn't load \(filename) from main bundle:\n\(error)")
        }

        do {
            let decoder = JSONDecoder()
            return try decoder.decode(T.self, from: data)
        } catch {
            fatalError("Couldn't parse \(filename) as \(T.self):\n\(error)")
        }
    }
    
}
