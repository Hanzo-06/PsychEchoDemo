//
//  MindfulnessView.swift
//  PsychEchoDemo01
//
//  Created by Hang Zhang on 11/8/24.
//

import SwiftUI

struct MindfulnessView: View {
    var body: some View {
        ZStack {
            // 设置背景为柔和的渐变色
            Image("IMG06") // 确保名称与Assets中的图片名称匹配
                           .resizable() // 使图片可以调整大小
                           .scaledToFill() // 填充整个屏幕
                           .ignoresSafeArea() // 使图片扩展到整个安全区域之外

            VStack(spacing: 50) {
                // Start按钮
                Button(action: {
                    print("Start Meditation")
                }) {
                    Text("Start")
                        .font(.title2)
                        .padding()
                        .frame(width: 400)
                        .background(Color.white.opacity(0.1))
                        .cornerRadius(10)
                        .shadow(radius: 5)
                }

                // Time Set按钮
                Button(action: {
                    print("Time Set")
                }) {
                    Text("Time Set")
                        .font(.title2)
                        .padding()
                        .frame(width: 400)
                        .background(Color.white.opacity(0.1))
                        .cornerRadius(10)
                        .shadow(radius: 5)
                }
            }
        }
    }
}

struct MindfulnessView_Previews: PreviewProvider {
    static var previews: some View {
        MindfulnessView()
    }
}
