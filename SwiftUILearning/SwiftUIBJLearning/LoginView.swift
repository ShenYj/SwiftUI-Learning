//
//  LoginView.swift
//  SwiftUIBJLearning
//
//  Created by ShenYj on 2020/7/28.
//  Copyright © 2020 ShenYj. All rights reserved.
//

import SwiftUI

struct LoginView: View {
    
    @State private var account : String = ""
    @State private var password : String = ""
    internal var loginCallback: (( _ account: String, _ password: String) -> Void)
    
    
    var body: some View {
        VStack() {
            HStack() {
                Text("登录:")
                    .font(Font.system(size: 16))
                    .multilineTextAlignment(.leading)
                Spacer()
            }
            TextField("账号:", text: $account, onEditingChanged: { (value) in
                print("onEditingChanged: \(self.account)")
            }) {
                print("onCommit:\(self.account)")
            }
            .textFieldStyle(RoundedBorderTextFieldStyle())
            
            
            TextField("密码:", text: $password, onEditingChanged: { (value) in
                print("onEditingChanged: \(self.password)")
            }) {
                print("onCommit:\(self.password)")
            }
            .textFieldStyle(RoundedBorderTextFieldStyle())
            
            HStack() {
                Spacer()
                Button(action: {
                    print("账号: \(self.account) 密码: \(self.password)")
                    self.loginCallback(self.account, self.password)
                }) {
                    Text("登录")
                }
                .foregroundColor(.black)
                .frame(width: 70, height: 40)
                .buttonStyle(BorderlessButtonStyle())
                    .overlay(RoundedRectangle(cornerRadius: 10)
                    .stroke(Color.orange, lineWidth: 2))
            }
        }
        .padding(.all, 20)
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        
        LoginView { (_,_) in
            
        }
        
//        let width = UIScreen.main.bounds.size.width
//        return Group {
//            LoginView(account: "", password: "", loginCallback: nil)
//            .previewLayout(.fixed(width: width, height: 300))
//        }
    }
}
