//
//  LoginScreenViewController.swift
//  KwGeeks
//
//  Created by Capgemini on 03/01/21.
//

import UIKit
import SwiftUI

struct LoginScreen: View {
    @State var userEmail: String = ""
    @State var userPassword: String = ""
    
    private let emailIconName = "Icon_Email"
    private let passwordIconName = "Icon_Password"
   
    var body: some View {
        ZStack {
            Color("cart")
            VStack {
                Image("logo").resizable()
                    .frame(width: 200, height: 200, alignment: .center)
                CustomeTextField(text: $userEmail, textFieldView: textView, placeholder: "User Name", imageName: emailIconName)
                    .shadow(color: Color.black.opacity(0.2), radius: 10, x: 10, y: 10)
                    .shadow(color: Color.white.opacity(0.7), radius: 10, x: -5, y: -5)
                Button("Sign In") {
                    
                }
            .buttonStyle(FilledButton())
                .shadow(color: Color.black.opacity(0.2), radius: 10, x: 10, y: 10)
                .shadow(color: Color.white.opacity(0.7), radius: 10, x: -5, y: -5)
                Spacer()
            }.padding(.top, 100)
        }.edgesIgnoringSafeArea(.all)
        //
        
    }
}


struct Login_Previews: PreviewProvider {
    static var previews: some View {
        LoginScreen()
    }
}
struct FilledButton: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration
            .label
            .foregroundColor(configuration.isPressed ? .gray : .white)
            .frame(width: 200, height: 44,alignment: .center)
            .shadow(color: Color.black.opacity(0.2), radius: 10, x: 10, y: 10)
            .shadow(color: Color.white.opacity(0.7), radius: 10, x: -5, y: -5)
            .background(Color.red)
            .cornerRadius(8)
    }
}



extension LoginScreen {
    

    private var textView : some View {
        TextField("", text: $userEmail)
            .foregroundColor(.black)
            .keyboardType(.numberPad)
            .autocapitalization(.none)
        
            
    }

    
}
