//
//  LoginPage.swift
//  Amr-Commerce
//
//  Created by Amr Ali on 05/01/2022.
//

import SwiftUI

struct LoginPage: View {
    @StateObject var loginVM : LoginPageVM = LoginPageVM()
    var body: some View {
        VStack {
            ZStack{
                Text("Welcome\nBack")
                    .font(.custom(CustomFont, size: 55))
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                    .frame(maxWidth : .infinity,alignment: .center)
                    .frame(height: UIScreen.main.bounds.size.height * 0.22)
          
                Circle().strokeBorder(Color.white,lineWidth: 3).frame(width: .infinity, height: UIScreen.main.bounds.size.height * 0.3
                )
            }
            
            ScrollView(.vertical,showsIndicators: false){
                VStack(spacing: 15){
                    
                    Text("Login")
                        .font(.custom(CustomFont, size: 22))
                        .fontWeight(.bold)
                        .foregroundColor(.mint)
                        .frame(maxWidth : .infinity,alignment: .leading)
                    
                    CustomTextField(icon: "envelope",
                                    title: "Email",
                                    hint: "Theamr.ali@gmail.com",
                                    value: $loginVM.email,
                                    showPassword: $loginVM.showPassword)
                    
                    
                }.padding(30)
            }.frame(maxWidth : .infinity , maxHeight: .infinity)
             .background(
                Color.white
                    .clipShape(
                        CustomCorners(coners: [.topLeft , .topRight], radius: 40)
                    )
                    .ignoresSafeArea()
             )
            
        }.frame(maxWidth : .infinity , maxHeight: .infinity)
            .background(Color.mint)
    }
    
    @ViewBuilder
    func CustomTextField(icon: String , title: String, hint: String , value : Binding<String> , showPassword : Binding<Bool> ) -> some View {
        VStack(alignment: .leading, spacing: 12) {
            Label {
                Text(title).font(.custom(CustomFont, size: 14))
            } icon: {
                Image(systemName: icon)
            }
            .foregroundColor(Color.black.opacity(0.8))
            
            TextField(hint, text: value).padding(.top,2)
            
            Divider().background(Color.black.opacity(0.8))
            
        }
        
    }
    
    
    
    
}

struct LoginPage_Previews: PreviewProvider {
    static var previews: some View {
        LoginPage()
    }
}
