//
//  LoginView.swift
//  appp
//
//  Created by MacBookPro-07 on 28/2/2566 BE.
//

import SwiftUI

struct LoginView: View {
    @State private var email = ""
    @State private var password = ""
    @State private var showForgotPassword = false
    @State private var showRegister = false
    
    var body: some View {
        VStack {
            Text("Login")
                .font(.largeTitle)
                .fontWeight(.bold)
                .padding(.bottom, 30)
            
            TextField("Email", text: $email)
                .padding()
                .background(Color(.systemGray6))
                .cornerRadius(5.0)
                .padding(.bottom, 20)
            
            SecureField("Password", text: $password)
                .padding()
                .background(Color(.systemGray6))
                .cornerRadius(5.0)
                .padding(.bottom, 20)
            
            Button(action: {
                // Handle login button tap here
            }) {
                Text("Login")
                    .font(.headline)
                    .foregroundColor(.white)
                    .padding()
                    .frame(width: 220, height: 60)
                    .background(Color.blue)
                    .cornerRadius(15.0)
            }
            
            Spacer()
            
            HStack {
                Button(action: {
                    self.showForgotPassword = true
                }) {
                    Text("Forgot Password?")
                        .foregroundColor(.red)
                }
                
                Spacer()
                
                Button(action: {
                    self.showRegister = true
                }) {
                    Text("Register")
                        .foregroundColor(.blue)
                }
            }
            .padding(.top,20)
        }
        .padding()
        .navigationTitle("")
        .navigationBarHidden(true)
        .sheet(isPresented: $showForgotPassword) {
            ForgotPassword()
        }
        .sheet(isPresented: $showRegister) {
            RegisterPage()
        }
    }
    
    struct LoginView_Previews: PreviewProvider {
        static var previews: some View {
            LoginView()
        }
    }
    
}
