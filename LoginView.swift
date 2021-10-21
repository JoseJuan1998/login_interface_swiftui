//
//  LoginView.swift
//  login_interface
//
//  Created by jose juan alcantara rincon on 20/10/21.
//

import SwiftUI

struct LoginView: View {
    @State var activeHome: Bool = false
    @State var activeRegi: Bool = false
    @State var activePass: Bool = false
    @State var user: String = ""
    @State var pass: String = ""
    var body: some View {
        VStack {
            Spacer()
            VStack {
                Image(systemName: "gamecontroller")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(maxWidth: 200, maxHeight: 200)
                TextField("Username", text: $user)
                    .padding()
                    .padding(.top, 40)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .frame(maxWidth: 350)
                SecureField("Password", text: $pass)
                    .padding(.bottom, 40)
                    .padding(.horizontal)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .textContentType(.password)
                    .frame(maxWidth: 350)
                Button(action: {
                    activeHome = true
                    pass = ""
                }) {
                    Text("Login")
                        .padding()
                        .padding(.horizontal, 10)
                        .background(Color.black)
                        .foregroundColor(.white)
                        .cornerRadius(8)
                }
                .sheet(isPresented: $activeHome, content: {
                    HomeView(rootActive: $activeHome, user: $user)
                })
                Button(action: {
                    activeRegi = true
                }) {
                    Text("Signup")
                        .padding()
                        .padding(.horizontal, 3)
                        .background(Color.gray)
                        .foregroundColor(.white)
                        .cornerRadius(8)
                }
                .sheet(isPresented: $activeRegi, content: {
                    SignupView(rootActive: $activeRegi)
                })
                
            }
            Spacer()
            HStack {
                ButtonSocial(button: "Messenger", img: "bolt.horizontal.circle.fill")
                Spacer()
                ButtonSocial(button: "WhatsApp", img: "phone.bubble.left.fill")
                Spacer()
                ButtonSocial(button: "YouTube", img: "play.rectangle.fill")
            }
            .frame(width: 250, height: 50)
            Spacer()
            Text("Did you forget your password? Click me")
                .onTapGesture {
                    activePass = true
                }
                .sheet(isPresented: $activePass, content: {
                    PasswordView(rootActive: $activePass)
                })
            Spacer()
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}

struct ButtonSocial: View {
    var button: String
    var img: String
    
    var body: some View {
        Image(systemName: img)
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(maxWidth: 40, maxHeight: 40)
            .onTapGesture {
                print(button)
            }
    }
}
