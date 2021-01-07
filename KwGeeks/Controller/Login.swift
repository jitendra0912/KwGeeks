//
//  LoginViewController.swift
//  KwGeeks
//
//  Created by Capgemini on 07/01/21.
//

import SwiftUI
struct Login: View {
    @StateObject var loginData = LoginViewModel()
    @State var phoneNumber: String = ""
    @State var userPassword: String = ""
    private let placeHolder = "Your phone number"

    @State var isSmall = UIScreen.main.bounds.height < 750
    var body: some View {
        
        ZStack{
            
            VStack{
                
                VStack{
                    
                    Text("Continue With Phone")
                        .font(.title2)
                        .fontWeight(.bold)
                        .foregroundColor(.black)
                        .padding()
                    
                    Image("logo1")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: 150, alignment: .center)
                        .padding()
                    
                    Text("You'll receive a 4 digit code\n to verify next.")
                        .font(isSmall ? .none : .title2)
                        .foregroundColor(.gray)
                        .multilineTextAlignment(.center)
                }
                
                VStack(alignment: .leading, spacing: 6) {
                    
                    Text("Enter Your Number")
                        .font(.caption)
                        .foregroundColor(.gray)
                    HStack {
                        Text("+ \(loginData.getCountryCode())  \(loginData.phNo)")
                            .font(.title2)
                            .fontWeight(.bold)
                            .foregroundColor(.black)
                        TextField(placeHolder, text: $phoneNumber)
                            .font(Font.system(size: 15, weight: .medium, design: .serif))
                            .padding(10)
                            .keyboardType(.numberPad)
                            .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color("blue"), lineWidth: 1))
                        
                        
                        
                    }
                    
                }
                .padding()
                
                Button(action:{}, label: {
                    
                    Text("Continue")
                        .foregroundColor(.white)
                        .padding(.vertical,18)
                        .padding(.horizontal,38)
                        .background(Color("pink"))
                        .cornerRadius(15)
                })
                .disabled(loginData.phNo == "" ? true: false)
                Spacer()
                
            }
        }
        
        
    }
    
}

struct Login_Previews1: PreviewProvider {
    static var previews: some View {
        Login()
    }
}


