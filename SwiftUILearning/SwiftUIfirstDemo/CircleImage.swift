//
//  CircleImage.swift
//  SwiftUILearning
//
//  Created by ShenYj on 2020/7/12.
//  Copyright © 2020 ShenYj. All rights reserved.
//

import SwiftUI

struct CircleImage: View {
    var body: some View {
        Image("ymy")
            .frame(width: 150.0, height: 150.0)
            .clipShape(Circle())
            .overlay(Circle().stroke(Color.white, lineWidth: 4)).shadow(radius: 10)
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage()
    }
}
