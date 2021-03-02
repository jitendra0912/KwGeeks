//
//  CustomeTabbar.swift
//  KwGeeks
//
//  Created by Capgemini on 02/03/21.
//


import UIKit
import SwiftUI

struct CustomeTabbar: View {
    
    init() {
        UITabBar.appearance().barTintColor = .systemBackground
        UINavigationBar.appearance().barTintColor = .systemBackground
    }
    
    @State var selectedIndex = 0
    @State var shouldShowModal = false
    
    let tabBarImageNames = ["person", "gear", "plus.app.fill", "pencil", "lasso"]
    
    var body: some View {
        VStack(spacing: 0) {
            
            ZStack {
                
                Spacer()
                    .fullScreenCover(isPresented: $shouldShowModal, content: {
                        Button(action: {shouldShowModal.toggle()}, label: {
                            Text("Fullscreen cover")
                        })
                    
                })
                
                switch selectedIndex {
                case 0:
                    NavigationView {
                       Text("First Tab")
                    }
                    
                case 1:
                    ScrollView {
                        Text("TEST")
                    }
                    
                default:
                    NavigationView {
                        Text("Remaining tabs")
                        
                    }
                }
                
            }
            
//            Spacer()
            
            Divider()
                .padding(.bottom, 8)
            
            HStack {
                ForEach(0..<5) { num in
                    Button(action: {
                        
                        if num == 2 {
                            shouldShowModal.toggle()
                            return
                        }
                        
                        selectedIndex = num
                    }, label: {
                        Spacer()
                        
                        if num == 2 {
                            Image(systemName: tabBarImageNames[num])
                                .font(.system(size: 44, weight: .bold))
                                .foregroundColor(.red)
                        } else {
                            Image(systemName: tabBarImageNames[num])
                                .font(.system(size: 24, weight: .bold))
                                .foregroundColor(selectedIndex == num ? Color(.black) : .init(white: 0.8))
                        }
                        
                        
                        Spacer()
                    })
                    
                }
            }
            
            
        }
    }
}

struct CustomeTabbar_Previews: PreviewProvider {
    static var previews: some View {
        CustomeTabbar()
    }
}
