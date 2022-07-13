//
//  ContentView.swift
//  Landmarks
//
//  Created by sungyeopTW on 2022/07/13.
//

import SwiftUI

/*
 - 기본적으로 SwiftUI로 View를 관리할 때에는 struct를 쌓는 방식으로 진행됨.
    따라서 indent를 통해 같은 level의 UI를 통해 배치를 예상해야 할 것으로 예상됨
 - 각 View들은 initialize할 때 parameter로 넘긴 값으로 정의된 후
    뒤에 . 을 이용해 연결한 option들을 통해 가공 됨 (마치 .then 사용하듯)
 - 블럭처럼 쌓인 순서대로 배치되므로 Spacer의 경우에도 위치를 잘 확인해야 한다.
 */

struct ContentView: View {
    var body: some View {
        VStack {
            MapView()
                .frame(height: 300)
                .ignoresSafeArea(edges: .top) /// 기본적으로 safeArea가 지켜짐 (ignore를 해야 안지킴)
            
            CircleImage()
                .offset(y: -130)
                .padding(.bottom, -130)
            
            VStack(alignment: .leading) { /// Vertical StackView
                Text("Turtle Rock")
                    .font(.title)
                HStack { /// Horizontal StackView
                    Text("Joshua Tree National Park")
                    Spacer() /// 해당 위치 기준 superView의 모든공간 차지하도록 spacing
                    Text("California")
                }
                .font(.subheadline) /// 부모에 줘서 자식요소 모두 적용 가능
                .foregroundColor(.secondary)
                
                Divider() /// 이젠 divider도 요소가 있음 ㄷㄷ
                
                Text("About Turtle Rock")
                    .font(.title2)
                Text("Descriptive text goes here.")
            }
            .padding()
            
            Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewInterfaceOrientation(.portrait)
    }
}
