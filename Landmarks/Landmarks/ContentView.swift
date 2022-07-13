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
 - 각 View들은 initialize할 때 parameter로 넘긴 값과
    뒤에 . 을 이용해 연결한 option들을 통해 정의됨 (마치 .then 사용하듯)
 */

struct ContentView: View {
    var body: some View {
        VStack(alignment: .leading) { /// Vertical StackView
            Text("Turtle Rock").font(.title)
            HStack { /// Horizontal StackView
                Text("Joshua Tree National Park").font(.subheadline)
                Spacer() /// superView의 모든공간 차지하도록 spacing
                Text("California").font(.subheadline)
            }
        }.padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewInterfaceOrientation(.portrait)
    }
}
