//
//  EnviormentThirdView.swift
//  StudySwiftUI
//
//  Created by 이홍렬 on 11/28/23.
//

import SwiftUI

struct EnviormentThirdView: View {
    var body: some View {
        Text("aa")
    }
}

struct EnviormentEmailView: View {

    @State private var email = ""
    @Environment(\.dismiss) var dismiss
    @EnvironmentObject var viewModel: ContentViewModel

    var body: some View {
        VStack {
            TextField("Edit your email", text: $email)
                .font(.subheadline)
                .cornerRadius(10)
                .padding(.horizontal, 4)
        }
        .navigationTitle("Edit Email")
        .navigationBarTitleDisplayMode(.inline)
        .padding()
        .toolbar {
            ToolbarItem(placement: .topBarTrailing) {
                Button("Done") {
                    viewModel.user.email = email
                    dismiss()
                }
                .fontWeight(.semibold)          
            }
        }
    }
}

struct EnviormentAdressView: View {

    @State private var address = ""
    @Environment(\.dismiss) var dismiss
    @EnvironmentObject var viewModel: ContentViewModel

    var body: some View {
        VStack {
            TextField("Edit your address", text: $address)
                .font(.subheadline)
                .cornerRadius(10)
                .padding(.horizontal, 4)
        }
        .navigationTitle("Edit address")
        .navigationBarTitleDisplayMode(.inline)
        .padding()
        .toolbar {
            ToolbarItem(placement: .topBarTrailing) {
                Button("Done") {
                    viewModel.user.address = address
                    dismiss()
                }
                .fontWeight(.semibold)
            }
        }
    }
}

#Preview {
    EnviormentThirdView()
}
