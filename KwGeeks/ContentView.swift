//
//  ContentView.swift
//  KwGeeks
//
//  Created by Capgemini on 03/01/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{
            
            Login()
                .navigationBarHidden(true)
                .navigationBarBackButtonHidden(true)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
