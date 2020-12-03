//
//  ContentView.swift
//  SwiftUIfirstDemo
//
//  Created by ShenYj on 2020/12/3.
//  Copyright © 2020 ShenYj. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            // 地图组件
            MapView()
                .edgesIgnoringSafeArea(.all)
                .frame(height: 300)
            // 圆角图片
            CircleImage()
                .offset(y: -80)
                .padding(.bottom, -80)
            // 底部介绍
            VStack(alignment: .leading) {
                Text("圆明园")
                    .font(.title)
                    .foregroundColor(Color.red)
                HStack {
                    Text("皇家园林").font(.subheadline).foregroundColor(.black)
                    Spacer()
                    Text("北京").font(.subheadline)
                }
            }.padding()
            // 占位, 配合.edgesIgnoringSafeArea(.all), 让地图置顶无安全区域的间隔
            Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
