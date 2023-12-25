//
//  MainView.swift
//  Domitory
//
//  Created by 노가현 on 12/25/23.
//

import SwiftUI
import UIKit

extension Color {
 
    static let gray2 = Color(hex: "#F0F0F0")
}

extension Color {
  init(hex: String) {
    let scanner = Scanner(string: hex)
    _ = scanner.scanString("#")
    
    var rgb: UInt64 = 0
    scanner.scanHexInt64(&rgb)
    
    let r = Double((rgb >> 16) & 0xFF) / 255.0
    let g = Double((rgb >>  8) & 0xFF) / 255.0
    let b = Double((rgb >>  0) & 0xFF) / 255.0
    self.init(red: r, green: g, blue: b)
  }
}

struct MainView: View {
    var body: some View {
    ZStack {
            Color.gray2.edgesIgnoringSafeArea(.all)
        
        ZStack {
            Image("Image 5")
                .resizable()
                .frame(width:395, height:300)
                .offset(x:0, y:-300)
            VStack {
                ZStack {
                    Image("Image")
                        .resizable()
                        .frame(width:65, height:65)
                        .offset(x:0, y: -20)
                    Text("조기입사")
                        .bold()
                        .font(.system(size: 20.0))
                        .foregroundColor(.black)
                        .offset(x:0, y: 40)
                        .lineLimit(1)
                }
                .padding(150)
                .background(Color.white)
                .frame(width:293, height: 162)
                .cornerRadius(20)
                
                HStack {
                    ZStack {
                        Image("Image 1")
                            .resizable()
                            .frame(width:65, height:65)
                            .offset(x:0, y: -20)
                        Text("외출증")
                            .bold()
                            .font(.system(size: 18.0))
                            .foregroundColor(.black)
                            .offset(x:0, y:40)
                            .lineLimit(1)
                    }
                    .padding(150)
                    .background(Color.white)
                    .frame(width:140, height: 162)
                    .cornerRadius(20)
                    
                    ZStack {
                        Image("Image 2")
                            .resizable()
                            .frame(width:65, height:65)
                            .offset(x:0, y: -20)
                        Text("현장체험학습")
                            .bold()
                            .font(.system(size: 15.0))
                            .foregroundColor(.black)
                            .offset(x:0, y:25)
                            .lineLimit(1)
                        Text("요청서")
                            .bold()
                            .font(.system(size: 15.0))
                            .foregroundColor(.black)
                            .offset(x:0, y:45)
                            .lineLimit(1)
                    }
                    .padding(150)
                    .background(Color.white)
                    .frame(width:140, height: 162)
                    .cornerRadius(20)
                }
                
                HStack {
                    ZStack {
                        Image("Image 3")
                            .resizable()
                            .frame(width:65, height:65)
                            .offset(x:0, y: -20)
                        Text("조퇴증")
                            .bold()
                            .font(.system(size: 18.0))
                            .foregroundColor(.black)
                            .offset(x:0, y:40)
                            .lineLimit(1)
                    }
                    .padding(150)
                    .background(Color.white)
                    .frame(width:140, height: 162)
                    .cornerRadius(20)
                    
                    ZStack {
                        Image("Image 4")
                            .resizable()
                            .frame(width:65, height:65)
                            .offset(x:0, y: -20)
                        Text("이석증")
                            .bold()
                            .font(.system(size: 18.0))
                            .foregroundColor(.black)
                            .offset(x:0, y:40)
                            .lineLimit(1)
                    }
                    .padding(150)
                    .background(Color.white)
                    .frame(width:140, height: 162)
                    .cornerRadius(20)
                    }
                }
            }
        }
    }
}

#Preview {
    MainView()
}
