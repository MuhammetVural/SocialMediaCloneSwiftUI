//
//  ContentView.swift
//  SocialMediaClone
//
//  Created by Muhammet Vural on 2.06.2023.
//

import SwiftUI

struct ContentView: View {
    @State private var showMenu = false
    var body: some View {
        ZStack(alignment: .topLeading) {
            MainTabView()
                .navigationBarHidden(showMenu)
            if showMenu{
                ZStack{
                    Color(.black)
                        .opacity(showMenu ? 0.25 : 0)

                }.onTapGesture {
                    withAnimation(.easeInOut){
                        showMenu = false
                    }
                }
                .ignoresSafeArea()
            }
            SideMenuView()
                .frame(width: 300)
                .background(showMenu ? Color.white : Color.clear)
                .offset(x: showMenu ? 0 : -300, y:0)
                
        }
        .navigationTitle("Home")
        .navigationBarTitleDisplayMode(.inline)
        .toolbar{
            ToolbarItem(placement: .navigationBarLeading){
                Button{
                    withAnimation{
                        showMenu.toggle()
                    }
                } label: {
                    Circle()
                        .frame(width: 32, height: 32)
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            ContentView()
        }
    }
}
