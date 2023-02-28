//
//   RegisterPage.swift
//  appp
//
//  Created by MacBookPro-07 on 28/2/2566 BE.
//

import SwiftUI

struct RegisterPage: View {
    @State private var name = ""
    @State private var email = ""
    @State private var password = ""
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        VStack {
            Text("Register")
                .font(.largeTitle)
                .fontWeight(.bold)
                .padding(.bottom, 30)
            
            TextField("Name", text: $name)
                .padding()
                .background(Color(.systemGray6))
                .cornerRadius(5.0)
                .padding(.bottom, 20)
            
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
            
            // Add elements for registration form here
            Button(action: {
                // Handle login button tap here
            }) {
                Text("Register")
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
//        .preferredColorScheme(.dark)
    }
    
    struct RegisterPage_Previews: PreviewProvider {
        static var previews: some View {
            RegisterPage()
        }
    }
}
 
