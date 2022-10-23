//
//  ContentView.swift
//  OnePassword
//
//  Created by zoya me on 10/23/22.
//

import SwiftUI

struct ContentView: View {
    
    @EnvironmentObject var passwordManager: PasswordManager
   
    var body: some View {
        ZStack(alignment: .bottom) {
            VStack {
                Screen()
                VStack {
                    RoundedRectangle(cornerRadius: 30, style: .continuous)
                        .frame(maxWidth: .infinity)
                        .frame(height: 50)
                        .foregroundStyle(LinearGradient(colors: [Color(UIColor.magenta), .purple, .blue.opacity(0.7)], startPoint: .leading, endPoint: .trailing))
                
                    
                        .overlay(alignment: .leading) {
                            Text("Password lenght : ")
                                .font(.title2.bold())
                                .foregroundColor(Color.white)
                                .offset(x: 20)
                            Text("\(passwordManager.length)")
                                .font(.title2.bold())
                                .foregroundStyle(Color.white)
                                .offset(x: 130)
                        }
                    
                }
                .padding([.leading, .trailing])
                .offset(y: 20)
                
                HStack {
                    decrease
                    Spacer()
                    increase
                    
                    
                }
                .background(Color.cyan)
                .cornerRadius(30)
                .padding()
                .offset(y: 10)
                
                Button {
                    passwordManager.createPasswrod1()
                    passwordManager.createPasswrod2()
                    passwordManager.createPasswrod3()
                    passwordManager.createPasswrod4()
                    passwordManager.createPasswrod5()
                    passwordManager.createPasswrod6()
                    passwordManager.createPasswrod7()
                    passwordManager.createPasswrod8()
                    
                } label: {
                    Image(systemName: "bolt.fill")
                        .foregroundColor(Color.white)
                    Text("Generate password")
                        .font(.title2.bold())
                        .foregroundColor(Color.black)
                    
                    
                }
                .frame(maxWidth: .infinity)
                .frame(height: 50)
                .background(Color.green)
                .cornerRadius(30)
                .shadow(radius: 3)
                .padding([.leading, .trailing])
                
                Spacer()
                
            }
            
            if passwordManager.isPasswordCopied == true {
                Text("Password is copied")
                    .font(.title2.bold())
                    .frame(maxWidth: .infinity)
                    .frame(height: 50)
                    .background(Color.blue)
                    .foregroundColor(Color(.white))
                    .cornerRadius(30)
                    .padding(.bottom, 5)
                    .padding([.leading, .trailing])
                Spacer()
                
            }
            
        }
        
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(PasswordManager())
    }
}


private extension ContentView {
    
    private var increase: some View {
        Button {
            guard passwordManager.length >= 5 else { return }
            passwordManager.length -= 1
            
        } label: {
            Image(systemName: "minus")
                .font(.title2.bold())
                .frame(maxWidth: .infinity)
                .frame(height: 50)
                .foregroundColor(Color.white)
                
        }
    }
    
    private var decrease: some View {
        Button {
            guard passwordManager.length >= 4 && passwordManager.length <= 11 else { return }
            passwordManager.length += 1
            
        } label: {
            Image(systemName: "plus")
                .font(.title2.bold())
                .frame(maxWidth: .infinity)
                .frame(height: 50)
                .foregroundColor(Color.white)
                
            
        }
    }
}
