////
////  ContentView.swift
////  SwiftUIStudy
////
////  Created by Andrey Rachitskiy on 24.03.2022.
////
//
//import SwiftUI
//import Combine
//
//struct LoginView: View {
//    @State private var login = ""
//    @State private var password = ""
//    @State private var shouldShowLogo: Bool = true
//
//    var body: some View {
//        ZStack {
//            Image("backgroundLogin")
//                .resizable()
//            ScrollView(showsIndicators: false) {
//                VStack {
//                    if shouldShowLogo {
//                        Text("VK APP") .font(.largeTitle)
//                    }
//                    VStack {
//                    }
//                }
//                .padding(.vertical, 50)
//                HStack { Text("Login:")
//                    Spacer()
//                    TextField("", text: $login)
//                        .frame(maxWidth: 330) .textFieldStyle(RoundedBorderTextFieldStyle())
//                }
//                HStack {
//                    Text("Password:")
//                    Spacer()
//                    SecureField("", text: $password)
//                        .frame(maxWidth: 330) .textFieldStyle(RoundedBorderTextFieldStyle())
//                }
//            }
//            .frame(minWidth: 150)
//            .padding(.top, 50)
//            Button(action: { print("Hello") }) {
//                Text("Log in")
//                .foregroundColor(Color.white) }
//            .padding(.top, 50)
//            .padding(.bottom, 20)
//            .disabled(login.isEmpty || password.isEmpty)
//        }
//        .edgesIgnoringSafeArea(.all)
//    }
//}
//
//struct LoginView_Previews: PreviewProvider {
//    static var previews: some View {
//        LoginView()
//    }
//}
