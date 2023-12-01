//
//  ForthView.swift
//  StudySwiftUI
//
//  Created by 이홍렬 on 12/1/23.
//

import SwiftUI

class MyObservableObject: ObservableObject {
  @Published var isOn = false
}


struct MyView: View {

    @EnvironmentObject var myObject: MyObservableObject

    var body: some View {
        Button(myObject.isOn ? "Child isON" : "Child isOff") {
            myObject.isOn.toggle()
        }
    }
}

struct ForthView: View {

    @StateObject var myObject = MyObservableObject()

    var body: some View {
        VStack {
            Text(myObject.isOn ? "isOn" : "IsOff")
            Divider()
            MyView()
                .environmentObject(myObject)
        }
    }
}

#Preview {
    ForthView()
}
