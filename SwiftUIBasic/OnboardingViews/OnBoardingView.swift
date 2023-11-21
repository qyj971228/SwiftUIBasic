//
//  OnBoardingView.swift
//  SwiftUIBasic
//
//  Created by 邱英健 on 2023/11/20.
//

import SwiftUI

enum Gender: String {
    case male = "male"
    case female = "female"
}

struct OnBoardingView: View {
    // onboarding states
    /// 0 - welcome
    /// 1 - add name
    /// 2 - add age
    /// 3 - add gender
    @AppStorage("boarding_state") var onBoardingState: Int = 0
    
    // form data
    @State var name: String = ""
    @State var age: Double = 0
    @State var gender: Gender = .male
    
    
    // alert states
    @State var alert: Bool = false
    @State var alertTitle: String = ""
    
    // user info
    @AppStorage("name") var storeName: String?
    @AppStorage("age") var storeAge: Int?
    @AppStorage("gender") var storeGender: Gender?
    @AppStorage("signed_in") var userSignedIn: Bool?
    
    let transition: AnyTransition = .asymmetric(
        insertion: .move(edge: .trailing),
        removal: .move(edge: .leading)
    )
    
    var body: some View {
        ZStack {
            // content
            ZStack {
                switch onBoardingState {
                case 0:
                    welcomeSection
                        .transition(transition)
                case 1:
                    addNameSection
                        .transition(transition)
                case 2:
                    addAgeSection
                        .transition(transition)
                case 3:
                    addGender
                        .transition(transition)
                default:
                    RoundedRectangle(cornerRadius: 25.0)
                        .foregroundStyle(.green)
                }
            }
            .animation(.spring, value: onBoardingState)
            // buttons
            VStack {
                Spacer()
                bottomButton
            }
            .padding(30)
        }
        .alert(isPresented: $alert, content: {
            getAlert()
        })
    }
}

#Preview {
    OnBoardingView()
}

extension OnBoardingView {
    private var bottomButton: some View {
        Text((onBoardingState == 0 ? "sign up" : onBoardingState == 3 ? "finished" : "next").capitalized)
            .font(.headline)
            .foregroundStyle(Color.purple)
            .frame(height: 55)
            .frame(maxWidth: .infinity)
            .background(Color.white)
            .clipShape(RoundedRectangle(cornerRadius: 10))
            .onTapGesture {
                onHandleNextButtonTap()
            }
    }
    private var welcomeSection: some View {
        VStack(spacing: 40) {
            Spacer()
            Image(systemName: "heart.text.square.fill")
                .resizable()
                .scaledToFit()
                .frame(width: 200, height: 200)
                .foregroundStyle(.white)
            Text("Find your match.")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .foregroundStyle(.white)
//                .underline()
                // 使用胶囊形状模拟下划线
                .overlay(Capsule(style: .continuous)
                    .frame(height: 3)
                    .offset(y: 5)
                    .foregroundStyle(.white), alignment: .bottom
                )
            Text("This is the #1 app for finding your match online! In this tutorial we are practicing using AppStorage and other SwiftUI techniques")
                .fontWeight(.medium)
                .foregroundStyle(.white)
            Spacer()
            Spacer()
        }
        .multilineTextAlignment(.center)
        .padding(30)
    }
    
    private var addNameSection: some View {
        VStack(spacing: 20) {
            Spacer()
            Text("What's your name?")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .foregroundStyle(.white)
            TextField("Your name here...", text: $name)
                .font(.headline)
                .frame(height: 55)
                .padding(.horizontal)
                .background(Color.white)
                .clipShape(RoundedRectangle(cornerRadius: 10))
                .padding(.horizontal, 30)
            Spacer()
            Spacer()
        }
    }
    private var addAgeSection: some View {
        VStack(spacing: 20) {
            Spacer()
            Text("What's your age?")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .foregroundStyle(.white)
            Text("\(String(format: "%.0f", age))")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .foregroundStyle(.white)
            Slider(
                value: $age,
                in: 18...100,
                step: 1.0
            )
            .padding(.horizontal, 30)
            .tint(.white)
            Spacer()
            Spacer()
        }
    }
    private var addGender: some View {
        VStack(spacing: 20) {
            Spacer()
            Text("What's your gender?")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .foregroundStyle(.white)
            Picker(
                selection: $gender,
                content: {
                    Text("male".capitalized).tag(Gender.male)
                    Text("female".capitalized).tag(Gender.female)
                },
                label: {
                    Text("your gender")
                }
            )
            .tint(.purple)
            .frame(height: 55)
            .frame(maxWidth: .infinity)
            .background(.white)
            .clipShape(RoundedRectangle(cornerRadius: 10))
            .padding(30)
            Spacer()
            Spacer()
        }
    }
}

extension OnBoardingView {
    func onHandleNextButtonTap() {
        switch onBoardingState {
        case 1:
            guard name.count >= 3 else {
                showAlert(title: "more than 3 words")
                return
            }
        case 2:
            guard age > 0 else {
                showAlert(title: "input your age")
                return
            }
        default:
            break
        }
    
        if onBoardingState == 3 {
            signIn()
        } else {
            onBoardingState += 1
        }
    }
    func signIn() {
        storeName = name
        storeAge = Int(age)
        storeGender = gender
        userSignedIn = true
    }
    func getAlert() -> Alert {
        return Alert(
            title: Text(alertTitle),
            dismissButton: .default(Text("Confirm"))
        )
    }
    func showAlert(title: String) {
        alertTitle = title
        alert.toggle()
    }
}
