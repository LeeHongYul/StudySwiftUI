//
//  StateObject.swift
//  StudySwiftUI
//
//  Created by 이홍렬 on 11/28/23.
//

import SwiftUI

class StateObjectViewModel: ObservableObject {
    @Published var count = 0

    func increaseCount() {
        count += 1
    }
}
//dsdsds

struct RandomNumberView: View {

    @State private var randomNumber = 0

    var body: some View {
        VStack {
            VStack {
                Text("Random Number: \(randomNumber)")

                Button() {
                    randomNumber = (1...100).randomElement()!
                } label: {
                    CustomButton(title: "Make Random Number")
                }
            }

            StateObjectView()
                .padding()
        }
    }
}

struct StateObjectView: View {

    @StateObject var viewModel = StateObjectViewModel()
//    @ObservedObject var viewModel = StateObjectViewModel()


    var body: some View {
        VStack {
                Text("Number \(viewModel.count)")

                Button() {
                    viewModel.increaseCount()
                } label: {
                    CustomButton(title: "+ 1")
                }
        }
    }
}

#Preview {
    RandomNumberView()
}
