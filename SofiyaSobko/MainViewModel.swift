//
//  MainViewModel.swift
//  SofiyaSobko
//
//  Created by Sofi on 12.01.2021.
//

import SwiftUI

struct MainViewModel: View {
    @Binding var Swift22:Int
    var body: some View {
        
        VStack(spacing:0){
                ZStack{
                    VStack(spacing:0){
                        Rectangle()
                            .frame(width: 415, height: 80, alignment: .center)
                            .foregroundColor(.clear)
                            .background(LinearGradient(gradient: Gradient(colors: [Color("11"), Color("greeen")]), startPoint: .top, endPoint: .bottom))
                Rectangle()
                    .frame(width: 415, height: 30, alignment: .center)
                    .foregroundColor(.clear)
                    .background(LinearGradient(gradient: Gradient(colors: [Color("greeen"), Color.white]), startPoint: .top, endPoint: .bottom))
                    }
                    HStack{
                        Text("Main")
                            .foregroundColor(.white)
                            .font(.custom("texgyreadventor-regular.otf", size: 27))
                            .padding(.leading, 30)
                            .padding(.top,5)
                            
                        Spacer()
                           
                    }
                }
                    
                    
                
            VStack{
                HStack(spacing: 15){
                    Image("ball")
                        .resizable()
                        .frame(width: 100, height: 100, alignment: .center)
                    Text("MyTeam")
                        .font(.custom("texgyreadventor-regular.otf", size: 40))
                }.padding(.top,20)
                .padding(.bottom, 25)
                VStack(spacing: 25){
                    Button(action: {
                        Swift22 = 3
                    }, label: {
                        ZStack{
                            Rectangle()
                                .frame(width: 230, height: 40, alignment: .center)
                                .cornerRadius(15)
                                .foregroundColor(Color("11"))
                            Text("Profile")
                                .font(.custom("texgyreadventor-regular.otf", size: 17))
                                .foregroundColor(.white)
                        }
                    })
                
                ZStack{
                    Rectangle()
                        .frame(width: 230, height: 40, alignment: .center)
                        .cornerRadius(15)
                        .foregroundColor(Color("11"))
                    Text("Team")
                        .font(.custom("texgyreadventor-regular.otf", size: 17))
                        .foregroundColor(.white)
                }
                ZStack{
                    Rectangle()
                        .frame(width: 230, height: 40, alignment: .center)
                        .cornerRadius(15)
                        .foregroundColor(Color("11"))
                    Text("Tactical Board")
                        .font(.custom("texgyreadventor-regular.otf", size: 17))
                        .foregroundColor(.white)
                }
                ZStack{
                    Rectangle()
                        .frame(width: 230, height: 40, alignment: .center)
                        .cornerRadius(15)
                        .foregroundColor(Color("11"))
                    Text("Show Match")
                        .font(.custom("texgyreadventor-regular.otf", size: 17))
                        .foregroundColor(.white)
                }
                ZStack{
                    Rectangle()
                        .frame(width: 230, height: 40, alignment: .center)
                        .cornerRadius(15)
                        .foregroundColor(Color("11"))
                    Text("Show Tacticals ")
                        .font(.custom("texgyreadventor-regular.otf", size: 17))
                        .foregroundColor(.white)
                }
                    Button(action: {
                        Swift22 = 1
                    }, label: {
                        ZStack{
                            Rectangle()
                                .frame(width: 230, height: 40, alignment: .center)
                                .cornerRadius(15)
                                .foregroundColor(Color("reed"))
                            Text("SignOut")
                                .font(.custom("texgyreadventor-regular.otf", size: 17))
                                .foregroundColor(.white)
                        }

                    })
                                   
                }
            }
                
        }.edgesIgnoringSafeArea(.all).padding(.bottom, 300)
        
    }
    }


//struct MainViewModel_Previews: PreviewProvider {
//    static var previews: some View {
//        MainViewModel()
//    }
//}
