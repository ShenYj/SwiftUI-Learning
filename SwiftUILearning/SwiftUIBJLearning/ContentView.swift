//
//  ContentView.swift
//  SwiftUIBJLearning
//
//  Created by ShenYj on 2020/7/28.
//  Copyright © 2020 ShenYj. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        LoginView { (account, password) in
            print("点击登录 账号是: \(account) 密码是: \(password)")
//            ZStack {
//                NavigationLink(destination: Text("新页面")) {
//                    EmptyView()
//                }
//                .hidden()
//            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            ContentView()
                .navigationBarTitle("BJ学习平台" , displayMode: .inline)
                .navigationBarHidden(true)
        }
    }
}
