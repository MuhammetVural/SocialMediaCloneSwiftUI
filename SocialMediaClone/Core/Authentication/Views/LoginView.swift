//
//  LoginView.swift
//  SocialMediaClone
//
//  Created by Muhammet Vural on 8.06.2023.
//

import SwiftUI

struct LoginView: View {
    @State private var email = ""
    @State private var password = ""
    var body: some View {
        VStack{
            VStack(alignment: .leading){
                HStack{Spacer()}
                Text("Hello")
                    .font(.largeTitle).fontWeight(.semibold)
                Text("Welcome Back")
                    .font(.largeTitle).fontWeight(.semibold)
            }
            .frame(height: 250)
            .padding()
            .background(Color(.systemBlue))
            .foregroundColor(.white)
            .clipShape(RoundedShape(corners: [.bottomRight]))
            
            VStack(spacing: 40){
                TextField("Email", text: $email)
                TextField("Password", text: $password)
            }
            .padding(.horizontal, 32)
            .padding(.vertical, 44)
            
            HStack{
                Spacer()
                
                NavigationLink{
                    Text("Reset password view")
                } label: {
                    Text("Forgot password")
                        .bold().foregroundColor(Color(.systemBlue))
                        .font(.caption)
                        .padding(.top)
                        .padding(.trailing, 24)
                }
            }
            
            Button {
                print("Sign in Here..")
            } label: {
                Text("Sign In")
                    .font(.headline)
                    .foregroundColor(.white)
                    .frame(width: 340, height: 50)
                    .background(Color(.systemBlue))
                    .clipShape(Capsule())
                    .padding()
            }
            .shadow(color: .gray.opacity(0.5), radius: 10, x: 0, y: 0 )

            
            Spacer()
            
            NavigationLink {
                RegistrationView()
                    .navigationBarHidden(true)
            } label: {
                HStack{
                    Text("Don't have an account?")
                        .font(.body)
                    Text("Sign up")
                        .font(.body)
                        .fontWeight(.semibold)
                }
            }
            .padding(.bottom , 30)
        }
        .ignoresSafeArea()
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
