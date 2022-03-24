//
//  ContentView.swift
//  SwiftUIStudy
//
//  Created by Andrey Rachitskiy on 24.03.2022.
//

import SwiftUI
import Combine

struct LoginView: View {
    @State private var login = ""
    @State private var password = ""
    @State private var shouldShowLogo: Bool = true

    var body: some View { ZStack {
        GeometryReader { _ in Image("backgroundLogin")
                .resizable() .edgesIgnoringSafeArea(.all)
        }
        ScrollView(showsIndicators: false) {
            VStack {
                if shouldShowLogo {
                    Text("VK APP") .font(.largeTitle)
                }
                VStack {
                } } .padding(.vertical, 50)
            HStack { Text("Login:")
                Spacer()
                TextField("", text: $login)
                    .frame(maxWidth: 150) .textFieldStyle(RoundedBorderTextFieldStyle())

            }
            HStack {
                Text("Password:")
                Spacer()
                SecureField("", text: $password)
                    .frame(maxWidth: 150) .textFieldStyle(RoundedBorderTextFieldStyle())
            } }.frame(maxWidth: 250)
            .padding(.top, 50)
        Button(action: { print("Hello") }) {
            Text("Log in") }.padding(.top, 50) .padding(.bottom, 20)
            .disabled(login.isEmpty || password.isEmpty)
    }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
