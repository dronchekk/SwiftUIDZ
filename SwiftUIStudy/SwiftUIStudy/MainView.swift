//
//  MainView.swift
//  SwiftUIStudy
//
//  Created by Andrey Rachitskiy on 04.04.2022.
//

import SwiftUI

struct MainView: View {

    @Binding var isShown: Bool
    @State var showFriendGallery = false

    var body: some View {
        NavigationView{
            TabView {
                ScrollView {
                    CellView(name: "Фамилия", iconName: "person", color: .blue, stackType: .hStack )
                        .applyCustomMPadding(isDoubled: true)
                        .onTapGesture {
                            showFriendGallery.toggle()
                        }
                    NavigationLink("", destination: FriendGalleryView(), isActive: $showFriendGallery)
                }

                .tabItem {
                    Text("Friends")
                    Image(systemName: "person")
                }
                Text ("Groups")
                    .tabItem {
                        Text("Groups")
                        Image(systemName: "square")
                    }
                Text ("News")
                    .tabItem {
                        Text("News")
                        Image(systemName: "newspaper")
                    }
            }

        }
        .navigationBarHidden(true)
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView(isShown: .constant(false))
    }
}
