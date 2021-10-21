//
//  PasswordView.swift
//  login_interface
//
//  Created by jose juan alcantara rincon on 20/10/21.
//

import SwiftUI
import iPhoneNumberField

struct PasswordView: View {
    @Binding var rootActive: Bool
    @State var phone: String = ""
    var body: some View {
        VStack {
            Spacer()
            VStack {
                Image(systemName: "r1.rectangle.roundedbottom")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(maxWidth: 200, maxHeight: 200)
                Text("Enter your phone number to reset your password")
                    .padding()
                    .font(.title3)
                iPhoneNumberField(text: $phone)
                    .flagHidden(false)
                    .flagSelectable(true)
                    .maximumDigits(10)
                    .padding()
                    .cornerRadius(10)
                    .frame(maxWidth: 350)
                    .padding(.bottom, 20)
                    .padding(.top, 20)
                Button(action: {
                    rootActive = false
                    phone = ""
                }) {
                    Text("Send")
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

struct PasswordView_Previews: PreviewProvider {
    static var previews: some View {
        PasswordView(rootActive: .constant(true))
    }
}
