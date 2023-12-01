//
//  ContentView.swift
//  StudySwiftUI
//
//  Created by 이홍렬 on 11/27/23.
//

import SwiftUI


//struct MenuItem: Identifiable {
//    var id = UUID()
//    let text: String
//}
//struct MenuContent: View {
//
//    let items = [MenuItem] = [
//        MenuItem(text: "Home"),
//        MenuItem(text: "Star"),
//        MenuItem(text: "Apple"),
//        MenuItem(text: "Mouse"),
//        MenuItem(text: "Lago"),
//        MenuItem(text: "Keo")
//
//    ]
//
//
//    var body: some View {
//        ZStack {
//            Color(UIColor(red: 33/255, green: 33/250, blue: 33/255, alpha: 1))
//
//            VStack(alignment: .leading, spacing: 0) {
//                ForEach(items) { item in
//
//                }
//            }
//        }
//    }
//}
//
//struct SideMenu: View {
//
//    let width: CGFloat
//    let menuOpened: Bool
//    let toggleMenu: () -> Void
//
//    var body: some View {
//        ZStack {
//// Dimmed background View
//            GeometryReader {    _ in
//                EmptyView()
//            }
//            .background(Color.red.opacity(0.5))
//            .opacity(self.menuOpened ? 1: 0)
//            .animation(Animation.easeIn.delay(0.25))
//            .onTapGesture {
//                self.toggleMenu()
//            }
////MenuContent
//            HStack {
//                MenuContent()
//                    .frame(width: width)
//                    .offset()
//                Spacer()
//            }
//        }
//    }
//}

struct ContentView: View {

//    @State var menuOpened = false

    var body: some View {

        TabView {
            StateExampleView()
                .tabItem {
                    Label("@State", systemImage: "house")
                }

            RandomNumberView()
                .tabItem {
                    Label("@StateObject", systemImage: "plus")
                }

            EnviormentView()
                .tabItem {
                    Label("@Envior", systemImage: "plus")
                }

            ForthView()
                .tabItem {
                    Label("EEEEE", systemImage: "plus")
                }
        }
//        ZStack {
//            if !menuOpened {
//                Button {
//                    self.menuOpened.toggle()
//                } label: {
//                    Text("Open Menu")
//                        .bold()
//                        .foregroundColor(Color.white)
//                        .frame(width: 200, height: 500, alignment: .center)
//                        .background(Color(.systemBlue))
//                }
//            }
//
//            SideMenu(width: 370, menuOpened: menuOpened, toggleMenu: toggleMenu)
//        }
//        .edgesIgnoringSafeArea(.all)
//
//    }
//
//    func toggleMenu() {
//        menuOpened.toggle()
    }
}



#Preview {
    ContentView()
}
