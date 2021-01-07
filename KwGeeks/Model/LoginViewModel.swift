//
//  LoginViewModel.swift
//  KwGeeks
//
//  Created by Capgemini on 07/01/21.
//

import SwiftUI
class LoginViewModel: ObservableObject {
    
    @Published var phNo = ""
    func getCountryCode()->String{
        
        let regionCode = Locale.current.regionCode ?? ""
        
        return countries[regionCode] ?? ""
    }
}
