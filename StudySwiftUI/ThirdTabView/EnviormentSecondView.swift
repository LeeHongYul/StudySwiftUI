//
//  EnviormentSecondView.swift
//  StudySwiftUI
//
//  Created by 이홍렬 on 11/28/23.
//

import SwiftUI

struct EnviormentSecondView: View {

    @EnvironmentObject var viewModel: ContentViewModel

    private var user: User {
        return viewModel.user
    }

    var body: some View {
        List {
            Section("Edit Options") {
                Text(user.fullname)

                NavigationLink {
                    EnviormentEmailView()

                } label: {
                    Text(user.email)
                }

                NavigationLink {
                    EnviormentAdressView()
                        
                } label: {
                    Text(user.address)
                }
            }
        }
    }
}


#Preview {
    EnviormentSecondView()
}
