//
//  ContentView.swift
//  PsychEchoDemo01
//
//  Created by Hang Zhang on 11/8/24.
//

import SwiftUI
import RealityKit
import RealityKitContent

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            // 背景色为柔和渐变
            LinearGradient(
                gradient: Gradient(colors: [Color.red.opacity(0.4), Color.cyan.opacity(0.4)]),
                startPoint: .topLeading,
                endPoint: .bottomTrailing
            )
            .ignoresSafeArea()

            VStack(spacing: 20) {
                // 项目名称
                Text("P S Y C H E C H O")
                    .font(.system(size: 50, weight: .bold))
                    .foregroundColor(.white)
                    .padding(.top, 50) // 顶部留空间
                
                Image("Logo") // 确保名称与Assets中的图片名称匹配
                                   .resizable()
                                   .scaledToFit()
                                   .frame(width: 400, height: 200) // 设置图片大小
                                   .padding(.top, 0)
              
                Spacer() // 使按钮组向下移动
                
                // 四个按钮的布局
                MenuButton(title: "Mindfulness") {
                    print("Mindfulness Selected")
                }
                MenuButton(title: "Sleep Enhancement") {
                    print("Sleep Enhancement Selected")
                }
                MenuButton(title: "Setting") {
                    print("Setting Selected")
                }
                MenuButton(title: "Exit") {
                    print("Exit Selected")
                }

                Spacer() // 底部留空间
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .padding()
        }
    }
}

// 自定义按钮样式
struct MenuButton: View {
    let title: String
    let action: () -> Void
    @State private var isPressed = false

    var body: some View {
        Button(action: action) {
            Text(title)
                .font(.title2)
                .padding()
                .frame(width: 250) // 将按钮宽度设置为200
                .background(Color.white.opacity(0.2))
                .cornerRadius(10)
                .overlay(
                    RoundedRectangle(cornerRadius: 10)
                        .stroke(Color.white, lineWidth: 1)
                )
                .shadow(radius: 5)
                .scaleEffect(isPressed ? 1.05 : 1.0) // 按下时放大
        }
        .buttonStyle(PlainButtonStyle())
        .onLongPressGesture(minimumDuration: 0.1, pressing: { pressing in
            withAnimation(.easeInOut(duration: 0.1)) {
                isPressed = pressing
            }
        }, perform: action)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
