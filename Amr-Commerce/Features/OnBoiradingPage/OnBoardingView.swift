//
//  OnBoardingView.swift
//  Amr-Commerce
//
//  Created by Amr Ali on 05/01/2022.
//

import SwiftUI

let CustomFont = "Raleway-Regular"

struct OnBoardingView: View {
    var body: some View {
        VStack(alignment: .leading){
            Text("Find Your Gadget")
                .font(.custom(CustomFont, size: 55))
                .fontWeight(.bold)
                .foregroundColor(.white)
            
            Image("VrPerson").resizable().aspectRatio(contentMode: .fit).padding(20.0)
            
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                Text("Get Started")
                    .font(.custom(CustomFont, size: 18))
                    .fontWeight(.semibold)
                    .padding(.vertical,18)
                    .frame(maxWidth : .infinity)
                    .background(Color.white)
                    .cornerRadius(10)
                    .shadow(color: .white.opacity(0.2), radius: 5, x: 5, y: 5)
                    .foregroundColor(.black)
            }
            .padding(.horizontal,30)
            .offset(y:20)
            
            Spacer()
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.mint)
    }
}

struct OnBoardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnBoardingView()
    }
}
