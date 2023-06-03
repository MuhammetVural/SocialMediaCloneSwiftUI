//
//  ProfileView.swift
//  SocialMediaClone
//
//  Created by Muhammet Vural on 2.06.2023.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        VStack(alignment: .leading) {
            headerView
            actionButtons
            userInfoDetails
            
            
            
            
            Spacer()
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}

extension ProfileView{
    var headerView: some View{
        ZStack(alignment: .bottomLeading){
            Color(.systemBlue)
                .ignoresSafeArea()
            VStack {
                Button{
                    
                } label: {
                    Image(systemName: "arrow.left")
                        .resizable()
                        .frame(width: 20, height: 16)
                        .foregroundColor(.white)
                        
                }
                Circle()
                    .frame(width: 72, height: 72)
                .offset(x:16, y:25)
            }
        }
        .frame(height: 100)
        
    }
    var actionButtons: some View{
        HStack(spacing: 12){
            Spacer()
            Image(systemName: "bell.badge")
                .font(.title3)
                .padding(6)
                .overlay(Circle().stroke(Color.gray, lineWidth: 0.75))
            Button{
                
            } label: {
                Text("Edit Profile")
                    .font(.subheadline).bold()
                    .frame(width: 120, height: 32)
                    .overlay(RoundedRectangle(cornerRadius: 20).stroke(Color.gray, lineWidth: 0.75))
                    .foregroundColor(.black)
            }
        }.padding(.trailing)
        
    }
    
    var userInfoDetails: some View {
        VStack(alignment: .leading){
            HStack {
                Text("Muhammet Vural")
                    .font(.title2).bold()
                Image(systemName: "checkmark.seal.fill")
                    .foregroundColor(Color(.systemBlue))
            }
            Text("@joker")
                .font(.subheadline)
                .foregroundColor(.gray)
            Text("Your moms favorite villain")
                .font(.subheadline)
                .padding(.vertical)
            HStack{
                HStack{
                    Image(systemName: "mappin.and.ellipse")
                    Text("Gotham, NY")
                        
                }
                HStack{
                    Image(systemName: "link")
                    Text("linkedin.com.tr/muhammetvural")
                    
                        
                    
                }
            }
            .font(.caption)
            .foregroundColor(.gray)
            
            HStack{
                HStack{
                    Text("15")
                        .bold()
                    Text("Following")
                        .foregroundColor(.gray)
                        
                        
                }
                HStack{
                    Text("5.2M")
                        .bold()
                    Text("Followers")
                        .foregroundColor(.gray)
                        
                        
                    
                }
            }
            .font(.subheadline)
            .padding(.vertical)
            
            
            
            
            
        }.padding(.horizontal)
    }
}
