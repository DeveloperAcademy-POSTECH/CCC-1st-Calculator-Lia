//
//  ContentView.swift
//  Calculator
//
//  Created by 리아 on 2022/05/28.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        GeometryReader  { geometry in
            VStack {
                Text("123,456")
                    .font(.custom("", size: 90))
                    .foregroundColor(.white)
                    .padding(.trailing, 20) // 패딩 순서에 따라 레이아웃 달라짐
                    .frame(width: geometry.size.width, height: 240, alignment: .bottomTrailing)
                VStack {
                    ForEach(0..<5) { _ in
                        HStack {
                            ForEach(0..<4) { _ in
                                KeyButton()
                            }
                        }
                    }
                }
                .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .center)
                .padding(.horizontal)
                .padding(.bottom, 35)
                .padding(.top, 5)
            }
            .background(.black)
        }
    }
}

struct KeyButton: View {
    var body: some View {
        GeometryReader  { geometry in
            Button {
                // action
            } label: {
                Text("8")
                    .font(.largeTitle)
                    .frame(width: geometry.size.width, height: geometry.size.width, alignment: .center)
                    .background(.gray)
                    .foregroundColor(.black)
                    .cornerRadius(geometry.size.width / 2)
            }
        }
        .padding(2)
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
