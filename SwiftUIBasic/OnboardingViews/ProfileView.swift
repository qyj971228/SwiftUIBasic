//
//  ProfileView.swift
//  SwiftUIBasic
//
//  Created by 邱英健 on 2023/11/20.
//

import SwiftUI

struct ProfileView: View {
    
    @AppStorage("name") var storeName: String?
    @AppStorage("age") var storeAge: Int?
    @AppStorage("gender") var storeGender: Gender?
    @AppStorage("signed_in") var userSignedIn: Bool?
    
    @AppStorage("boarding_state") var onBoardingState: Int?
    
    var body: some View {
        VStack(spacing: 20) {
            Image(systemName: "person.circle.fill")
                .resizable()
                .scaledToFit()
                .frame(width: 150, height: 150)
            Text("\(storeName ?? "your name")")
            Text("your age: \(storeAge ?? 0)")
            Text("your gender: \(storeGender?.rawValue ?? "unknow")")
            Text("Sign out")
                .font(.headline)
                .foregroundStyle(.white)
                .frame(height: 50)
                .frame(maxWidth: .infinity)
                .background(.black)
                .clipShape(RoundedRectangle(cornerRadius: 10))
                .onTapGesture {
                    signOut()
                }
        }
        .font(.title)
        .foregroundStyle(.purple)
        .padding()
        .padding(.vertical, 40)
        .background(.white)
        .clipShape(RoundedRectangle(cornerRadius: 10))
        .shadow(radius: 10)
    }
}

extension ProfileView {
    func signOut() {
        storeName = nil
        storeAge = nil
        storeGender = nil
        onBoardingState = 0
        userSignedIn = false
    }
}

#Preview {
    ProfileView()
}
