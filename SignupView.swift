//
//  SignupView.swift
//  login_interface
//
//  Created by jose juan alcantara rincon on 20/10/21.
//

import SwiftUI

struct SignupView: View {
    @Binding var rootActive: Bool
    @State var user: String = ""
    @State var pass: String = ""
    @State var pass_conf: String = ""
    var body: some View {
        VStack {
            Spacer()
            VStack {
                Image(systemName: "dpad.left.fill")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(maxWidth: 200, maxHeight: 200)
                TextField("Username", text: $user)
                    .padding()
                    .padding(.top, 40)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .frame(maxWidth: 350)
                SecureField("Password", text: $pass)
                    .padding(.bottom)
                    .padding(.horizontal)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .textContentType(.password)
                    .frame(maxWidth: 350)
                SecureField("Confirm your password", text: $pass_conf)
                    .padding(.bottom, 40)
                    .padding(.horizontal)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .textContentType(.password)
                    .frame(maxWidth: 350)
                Button(action: {
                    rootActive = false
                    user = ""
                    pass = ""
                    pass_conf = ""
                }) {
                    Text("Signup")
                        .padding()
                        .padding(.horizontal, 3)
                        .background(Color.black)
                        .foregroundColor(.white)
                        .cornerRadius(8)
                }
                
            }
            Spacer()
            HStack {
                Image(systemName: "bolt.horizontal.circle.fill")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(maxWidth: 40, maxHeight: 40)
                Spacer()
                Image(systemName: "phone.bubble.left.fill")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(maxWidth: 40, maxHeight: 40)
                Spacer()
                Image(systemName: "play.rectangle.fill")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(maxWidth: 40, maxHeight: 40)
            }
            .frame(width: 250, height: 50)
            Spacer()
        }
    }
}

struct SignupView_Previews: PreviewProvider {
    static var previews: some View {
        SignupView(rootActive: .constant(true))
    }
}
