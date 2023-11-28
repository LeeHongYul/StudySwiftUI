//
//  CustomButton.swift
//  StudySwiftUI
//
//  Created by 이홍렬 on 11/27/23.
//

import SwiftUI

struct CustomButton: View {

    let title: String

    var body: some View {

        Text(title)
            .font(.title3)
            .fontWeight(.semibold)
            .frame(width: 260, height: 50)
            .foregroundColor(.white)
            .background(.green)
            .cornerRadius(10)

    }
}

#Preview {
    CustomButton(title: "Test Title")
}
