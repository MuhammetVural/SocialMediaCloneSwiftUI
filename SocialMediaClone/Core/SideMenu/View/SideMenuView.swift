//
//  SideMenuView.swift
//  SocialMediaClone
//
//  Created by Muhammet Vural on 4.06.2023.
//

import SwiftUI

struct SideMenuView: View {
    var body: some View {
            VStack(alignment: .leading, spacing: 32){
                VStack(alignment: .leading){
                    Circle()
                        .frame(width: 48, height: 48)
                    
                    VStack(alignment: .leading){
                        Text("Sezer Akalın")
                            .font(.headline)
                        Text("@batman")
                            .font(.caption)
                            .foregroundColor(.gray)
                    }
                    
                    UserStatsView()
                        .font(.subheadline)
                        .padding(.vertical)
                }
                .padding(.leading)
                ForEach(SideMenuViewModel.allCases, id: \.rawValue){ option in
                    HStack(spacing: 16){
                        Image(systemName: option.imageName)
                            .foregroundColor(.gray)
                        Text(option.title)
                            .font(.subheadline)
                            
                        Spacer()
            }
                    .frame(height:40)
                    .padding(.horizontal)
            
            
            }
                Spacer()
        }
    }
}

struct SideMenuView_Previews: PreviewProvider {
    static var previews: some View {
        SideMenuView()
    }
}
