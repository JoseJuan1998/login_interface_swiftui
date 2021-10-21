//
//  HomeView.swift
//  login_interface
//
//  Created by jose juan alcantara rincon on 20/10/21.
//

import SwiftUI

struct HomeView: View {
    @Binding var rootActive: Bool
    @Binding var user: String
    var body: some View {
        VStack {
            Image(systemName: "circle.grid.cross.left.fill")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(maxWidth: 200)
            Text("Welcome, \(user)!")
                .padding()
                .font(.largeTitle)
            Text("Go Back")
                .padding()
                .font(.largeTitle)
                .background(Color.black)
                .foregroundColor(.white)
                .cornerRadius(10)
                .onTapGesture {
                    rootActive = false
                    user = ""
                }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView(rootActive: .constant(true), user: .constant("User"))
    }
}
