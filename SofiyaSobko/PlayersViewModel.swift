//
//  PlayersViewModel.swift
//  SofiyaSobko
//
//  Created by Sofi on 12.01.2021.
//

import SwiftUI

struct PlayersViewModel: View {
    var body: some View {
        ZStack{
            Image("back")
                .resizable()
            Image("backb")
                .resizable()
            VStack{
                Image("ball")
                    .resizable()
                    .frame(width: 150, height: 150, alignment: .center)
                Text("MyTeam")
                    .font(.custom("texgyreadventor-regular.otf", size: 40))
                    .foregroundColor(.white)
                
            }
        }.edgesIgnoringSafeArea(.all)
    }
}

struct PlayersViewModel_Previews: PreviewProvider {
    static var previews: some View {
        PlayersViewModel()
    }
}
