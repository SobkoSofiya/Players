//
//  ProfileViewModel.swift
//  SofiyaSobko
//
//  Created by Sofi on 12.01.2021.
//

import SwiftUI

struct ProfileViewModel: View {
    @Binding var Swift22:Int
    var body: some View {
        VStack(alignment:.leading){
            ZStack{
                VStack(spacing:0){
                    Rectangle()
                        .frame(width: 415, height: 70, alignment: .center)
                        .foregroundColor(.clear)
                        .background(LinearGradient(gradient: Gradient(colors: [Color("11"), Color("greeen")]), startPoint: .top, endPoint: .bottom))
            Rectangle()
                .frame(width: 415, height: 30, alignment: .center)
                .foregroundColor(.clear)
                .background(LinearGradient(gradient: Gradient(colors: [Color("greeen"), Color.white]), startPoint: .top, endPoint: .bottom))
                }
                HStack{
                    Text("Coach Profile")
                        .font(.custom("texgyreadventor-regular.otf", size: 25))
                        .foregroundColor(.white)
                        .padding(.leading, 30)
                        .padding(.top,5)
                    Spacer()
                }
                
                
            }
            VStack(alignment: .leading){
               
                HStack{
                Image("bart")
                    .resizable()
                    .frame(width: 130, height: 130, alignment: .center)
                    .padding(.leading,20)
                    VStack(alignment: .leading, spacing: 5){
                        Text("Simpson")
                            .font(.custom("texgyreadventor-regular.otf", size: 18))
                        
                        Text("Bart")
                            .font(.custom("texgyreadventor-regular.otf", size: 18))
                        Text("Age: 44")
                            .font(.custom("texgyreadventor-regular.otf", size: 18))
                        Text("Team: KremlinBears ")
                            .font(.custom("texgyreadventor-regular.otf", size: 18))
                    }
                }.padding(.top, 50)
                Spacer()
                Button(action: {
                    Swift22 = 2
                }, label: {
                    ZStack{
                        Rectangle()
                            .frame(width: 220, height: 40, alignment: .center)
                            .foregroundColor(Color("11"))
                            .cornerRadius(13)
                        Text("Back")
                            .foregroundColor(.white)
                            .font(.custom("texgyreadventor-regular.otf", size: 18))
                    }
                })
               .padding()
                .padding(.leading,80)
            }
            }.edgesIgnoringSafeArea(.all)
        
    }
    }


//struct ProfileViewModel_Previews: PreviewProvider {
//    static var previews: some View {
//        ProfileViewModel()
//    }
//}
