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
    @State private var showAlert = false
    @State private var showSheet = false
    @State private var showMainView = false
    

    var body: some View {
        NavigationView {
            ZStack {
                Image("backgroundLogin")
                    .resizable()
                ScrollView(showsIndicators: false) {
                    VStack {
                        if shouldShowLogo {
                            Text("VK APP") .font(.largeTitle)
                        }
                        VStack {
                        }
                    }
                    .padding(.vertical, 50)
                    HStack { Text("Login:")
                        Spacer()
                        TextField("", text: $login)
                            .frame(maxWidth: 330) .textFieldStyle(RoundedBorderTextFieldStyle())
                    }
                    HStack {
                        Text("Password:")
                        Spacer()
                        SecureField("", text: $password)
                            .frame(maxWidth: 330) .textFieldStyle(RoundedBorderTextFieldStyle())
                    }
                }
                .frame(minWidth: 150)
                .padding(.top, 50)

                NavigationLink(isActive: $showMainView){
                    MainView(isShown: $showMainView)
                } label: {
                    Text("")
                }

                Spacer()

                Button {
                    showMainView = true
                } label: {
                    Text("Войти в приложение")
                }

                .foregroundColor(Color.white)
                .padding(.top, 50)
                .padding(.bottom, 20)
                .disabled(login.isEmpty || password.isEmpty)
                .alert(isPresented: $showAlert) {alert}
            }
            .edgesIgnoringSafeArea(.all)
        }
    }
}

private extension LoginView {
    var alert: Alert {
        Alert(
            title: Text("123"),
            message: Text("321"),
            dismissButton: .cancel())
    }
}

extension View {
    func applyCustomMPadding(isDoubled: Bool) -> some View {
        self
            .modifier(CustomPaddingModifier(isDoubled: isDoubled))
    }
}

struct CellView: View {

    enum StackType {
        case vStack
        case hStack
        case zStack
    }

    let name: String
    let iconName: String
    let color: Color
    let stackType: StackType

    var body: some View {
        Group {
            switch stackType {
            case .vStack:
                VStack {
                    cellContent
                }
            case .hStack:
                HStack {
                    cellContent
                }
            case .zStack:
                ZStack {
                    cellContent
                }
            }
        }
        .padding()
        .background(color.opacity(0.5))
    }
    @ViewBuilder
    private var cellContent: some View {
        Image(systemName: iconName)
        Text(name)
        Spacer()
    }
}

struct CustomPaddingModifier: ViewModifier {
    let isDoubled: Bool

    private var factor: CGFloat {
        isDoubled ? 2:1
    }
    func body(content: Content) -> some View {
        content
            .padding(.leading, 5)
            .padding(.trailing, 10)
            .padding(.top, 4)
            .padding(.bottom, 4)
    }
}


struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
