//
//  Swift2.swift
//  SofiyaSobko
//
//  Created by Sofi on 12.01.2021.
//

import SwiftUI

struct Swift2: View {
    @State var Swift22:Int = 1
    var body: some View {
        if Swift22 == 1{
            SignInView(Swift22: $Swift22)
        } else if Swift22 == 2{
            MainViewModel(Swift22: $Swift22)
        } else if Swift22 == 3{
            ProfileViewModel(Swift22: $Swift22)
        }
    }
}

//struct Swift2_Previews: PreviewProvider {
//    static var previews: some View {
//        Swift2()
//    }
//}
