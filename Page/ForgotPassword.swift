//
//  ForgotPassword.swift
//  appp
//
//  Created by MacBookPro-07 on 28/2/2566 BE.
//

import SwiftUI

struct ForgotPassword: View {
    @State private var email = ""
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        VStack {
            Text("Forgot")
                .font(.largeTitle)
                .fontWeight(.bold)
                .padding(.bottom, 30)
            
            TextField("Email", text: $email)
                .padding()
                .background(Color(.systemGray6))
                .cornerRadius(5.0)
                .padding(.bottom, 20)
            
            // Add elements for resetting password here
            Button(action: {
                // Handle login button tap here
            }) {
                Text("Send")
                    .font(.headline)
                    .foregroundColor(.white)
                    .padding()
                    .frame(width: 220, height: 60)
                    .background(Color.blue)
                    .cornerRadius(15.0)
            }
            
            Button(action: {
                self.presentationMode.wrappedValue.dismiss()
            }) {
                Text("Cancel")
                    .foregroundColor(.red)
            }
            .padding(.top, 20)
        }
        .padding()
    }
}

struct ForgotPassword_Previews: PreviewProvider {
    static var previews: some View {
        ForgotPassword()
    }
}
