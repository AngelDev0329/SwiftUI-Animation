//
//  RootView.swift
//  happn-dating
//
//  Created by Arvind on 01/12/20.
//

import SwiftUI

struct RootView: View {

//    @State var showAlert: Bool = false
    var body: some View {
        VStack {
            HStack {
                ButtonProvider(imageName: "line.horizontal.3") {
//                    showAlert = true
                }
                Spacer()
                TextProvider(labelText: "tinder")
            }
            .foregroundColor(.black)
            .padding()
            .padding(.top, 40)
            
            ZStack {
                Ripple() // Uncommnet if you want Ripple Search Effect
                ForEach(getProfileModels().reversed()) { profile in
                    UserProfile(profile: profile)
                }
            } .padding()
            .offset(y: -10)
        }
        .background(Color.init(red: 0.92, green: 0.92, blue: 0.92).edgesIgnoringSafeArea(.all))
//        .alert(isPresented: $showAlert) {
//            Alert.init(title: Text("Menu button clicked"))
//        }
    }
}
