////
////  ContentView.swift
////  SwiftUIStudy
////
////  Created by Andrey Rachitskiy on 28.03.2022.
////
//
//import SwiftUI
//
//struct ContentView: View {
//    var body: some View {
//        ScrollView {
//            CellView(name: "Фамилия", iconName: "person", color: .blue, stackType: .hStack )
//                .applyCustomMPadding(isDoubled: true)
//            CellView(name: "Группа", iconName: "square", color: .green, stackType: .hStack )
//                .applyCustomMPadding(isDoubled: true)
//        }
//    }
//}
//
//struct CustomPaddingModifier: ViewModifier {
//    let isDoubled: Bool
//
//    private var factor: CGFloat {
//        isDoubled ? 2:1
//    }
//    func body(content: Content) -> some View {
//        content
//            .padding(.leading, 5)
//            .padding(.trailing, 10)
//            .padding(.top, 4)
//            .padding(.bottom, 4)
//    }
//}
//
//extension View {
//    func applyCustomMPadding(isDoubled: Bool) -> some View {
//        self
//            .modifier(CustomPaddingModifier(isDoubled: isDoubled))
//    }
//}
//
//struct CellView: View {
//
//    enum StackType {
//        case vStack
//        case hStack
//        case zStack
//    }
//
//    let name: String
//    let iconName: String
//    let color: Color
//    let stackType: StackType
//
//    var body: some View {
//        Group {
//            switch stackType {
//            case .vStack:
//                VStack {
//                    cellContent
//                }
//            case .hStack:
//                HStack {
//                    cellContent
//                }
//            case .zStack:
//                ZStack {
//                    cellContent
//                }
//            }
//        }
//        .padding()
//        .background(color.opacity(0.5))
//    }
//
//    @ViewBuilder
//    private var cellContent: some View {
//        Image(systemName: iconName)
//        Text(name)
//        Spacer()
//
//    }
//}
//
//struct ContentView_Previews: PreviewProvider {
//    static var previews: some View {
//        ContentView()
//    }
//}
