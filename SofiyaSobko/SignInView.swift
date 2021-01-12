//
//  SignInView.swift
//  SofiyaSobko
//
//  Created by Sofi on 12.01.2021.
//

import SwiftUI

struct SignInView: View {
    @Binding var Swift22:Int
    @State var nam: String = ""
    @State var error:Bool = false
    @State var mess:String = ""
    var body: some View {
        ZStack{
            Rectangle()
               
               
                .foregroundColor(Color("11"))
              
            VStack(spacing:0){
                HStack{
                    Spacer()
                    Text("Skip")
                .foregroundColor(.white)
                        .padding()
                    
                }
                Image("ball")
                    .resizable()
                    .frame(width: 100, height: 100, alignment: .center)
                Text("MyTeam")
                    .foregroundColor(.white)
                    .font(.custom("texgyreadventor-regular.otf", size: 50))
                    .padding(.top, 5)
                HStack(spacing: 1){
                    ZStack{
                Rectangle()
                    .foregroundColor(.white)
                    .frame(width: 250, height: 40, alignment: .center)
                    .cornerRadius(15)
                        HStack( spacing:0 ){
                            Image("xtk")
                                .resizable()
                                .frame(width: 15, height: 15, alignment: .center)
                                .padding(10)
                            Rectangle()
                                .frame(width: 1, height: 40, alignment: .center)
                                .foregroundColor(.gray)
                                .opacity(0.2)
                            TextField("Ivanov", text: $nam)
                                .frame(width: 200, height: 40, alignment: .center)
                                .padding(.leading,5)
                                
                        }
                    }
                    Image("ongtxfn")
                        .resizable()
                        .frame(width: 50, height: 50, alignment: .center)
                }.padding(.top, 25)
                VStack(spacing: 30){
                HStack(spacing:30){
                Image("ball2")
                    .resizable()
                    .frame(width: 50, height: 50, alignment: .center)
                    Image("ball2")
                        .resizable()
                        .frame(width: 50, height: 50, alignment: .center)
                    Image("ball2")
                            .resizable()
                            .frame(width: 50, height: 50, alignment: .center)
                }
                    HStack(spacing:30){
                    Image("ball2")
                        .resizable()
                        .frame(width: 50, height: 50, alignment: .center)
                        Image("ball2")
                            .resizable()
                            .frame(width: 50, height: 50, alignment: .center)
                        Image("ball2")
                                .resizable()
                                .frame(width: 50, height: 50, alignment: .center)
                    }
                    HStack(spacing:30){
                    Image("ball2")
                        .resizable()
                        .frame(width: 50, height: 50, alignment: .center)
                        Image("ball2")
                            .resizable()
                            .frame(width: 50, height: 50, alignment: .center)
                        Image("ball2")
                                .resizable()
                                .frame(width: 50, height: 50, alignment: .center)
                    }
                }.padding(.top, 40)
                Button(action: {
                    if nam != "" {
                        Swift22 = 2
                    } else {
                        mess = "Fill in all fields"
                        error.toggle()
                    }
                   
                }, label: {
                    ZStack{
                        Rectangle()
                            .frame(width: 250, height: 40, alignment: .center)
                            .foregroundColor(Color("gren1"))
                            .cornerRadius(15)
                        
                        Text("Sign In")
                            .foregroundColor(.white)
                            .font(.custom("texgyreadventor-regular.otf", size: 17))
                    }
                }).alert(isPresented: $error, content: {
                    Alert(title: Text("Error"), message: Text("\(mess)"), dismissButton: .default(Text("Ok")))
                })
                .padding()
                .padding(.top, 10)
            }
        }.edgesIgnoringSafeArea(.all)
    }
}

//struct SignInView_Previews: PreviewProvider {
//    static var previews: some View {
//        SignInView()
//    }
//}
