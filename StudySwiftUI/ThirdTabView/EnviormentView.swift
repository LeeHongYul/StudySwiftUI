//
//  EnviormentView.swift
//  StudySwiftUI
//
//  Created by 이홍렬 on 11/28/23.
//

import SwiftUI


struct User {
    let fullname: String
    var email: String
    var address: String

    var initials: String? {
        let formatter = PersonNameComponentsFormatter()
        guard let components = formatter.personNameComponents(from: fullname) else { return nil }
            formatter.style = .abbreviated
            return formatter.string(from: components)
    }
}

class ContentViewModel: ObservableObject {
    @Published var user: User

    init() {
        self.user = User(fullname: "Lee Hong Ryul", email: "test@gmail.com", address: "Suwon")
    }
}

struct EnviormentView: View {

//    @StateObject var viewModel = ContentViewModel()
    @EnvironmentObject var viewModel: ContentViewModel

    private var user: User {
        return viewModel.user
    }

    var body: some View {
        NavigationView {
            List {
                NavigationLink {
                    EnviormentSecondView()
                        
                } label: {
                    HStack {
                        Text(user.initials ?? "")
                            .font(.headline)
                            .foregroundStyle(.white)
                            .frame(width: 48, height: 48)
                            .background(Color(.systemGray4))
                            .clipShape(Circle())

                        VStack(alignment: .leading, spacing: 4) {
                            Text(user.fullname)
                                .font(.subheadline)
                                .fontWeight(.semibold)

                            Text(user.email)
                                .font(.footnote)
                                .foregroundStyle(.gray)
                                .padding(.leading, 2)
                                .tint(.gray)

                            Text(user.address)
                                .font(.footnote)
                                .foregroundStyle(.gray)
                        }
                    }
                }
            }
            .navigationTitle("Accounts")
        }
    }
}

#Preview {
    EnviormentView()
}
