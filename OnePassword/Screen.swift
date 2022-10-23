//
//  Screen.swift
//  OnePassword
//
//  Created by zoya me on 10/23/22.
//

import SwiftUI

struct Screen: View {
    
    @EnvironmentObject var manager: PasswordManager
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("Generate a")
                .fontWeight(.heavy)
                .font(.system(size: 50))
                .foregroundStyle(LinearGradient(colors: [.pink, .purple, .blue], startPoint: .leading, endPoint: .trailing))
                .padding(.leading)
                .padding(.top, 10)
                .offset(x: -4, y: 10)
            
            
            Text("random password")
                .fontWeight(.bold)
                .font(.system(size: 42))
                .foregroundColor(Color.green)
                .padding(.leading)
            
            Text("Never use an insecure password again")
                .font(.system(size: 18))
                .foregroundColor(Color.black)
                .padding(.leading)
            
            Rectangle()
                .foregroundColor(Color.purple)
                .frame(maxWidth: .infinity)
                .frame(height: 1)
                .padding([.leading, .trailing])
                //.padding(.top, 5)
            VStack {
                HStack {
                    Text("\(manager.passwords1.description)")
                        .font(.title3.bold())
                        .font(.system(size: 30))
                        .frame(width: 180, height: 50)
                        .foregroundColor(Color.green)
                        .background(Color.black)
                        .opacity(manager.opacity1 ? 0.6 : 1.0)
                        .cornerRadius(5)
                        .padding(.top, 15)
                    
                        .onTapGesture {
                            manager.isPasswordCopied.toggle()
                            manager.opacity1.toggle()
                            
                            DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
                                
                                manager.isPasswordCopied = false
                                manager.opacity1 = false
                            }
                            
                            UIPasteboard.general.string = self.manager.passwords1.description
                            print("coyied: \(manager.passwords1.description)")
                            
                        }
                    
                    Text("\(manager.passwords2.description)")
                        .font(.title3.bold())
                        .font(.system(size: 30))
                        .frame(width: 180, height: 50)
                        .foregroundColor(Color.green)
                        .background(Color.black)
                        .opacity(manager.opacity2 ? 0.6 : 1.0)
                        .cornerRadius(5)
                        .padding(.top, 15)
                    
                        .onTapGesture {
                            
                            manager.isPasswordCopied.toggle()
                            manager.opacity2.toggle()
                            
                            DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
                                
                                manager.isPasswordCopied = false
                                manager.opacity2 = false
                            }
                            
                            UIPasteboard.general.string = self.manager.passwords2.description
                            print("coyied: \(manager.passwords2.description)")
                            
                        }
                    
                }
                .padding([.leading, .trailing])
                
                HStack {
                    Text("\(manager.passwords3.description)")
                        .font(.title3.bold())
                        .frame(width: 180, height: 50)
                        .foregroundColor(Color.green)
                        .background(Color.black)
                        .opacity(manager.opacity3 ? 0.6 : 1.0)
                        .cornerRadius(5)
                        .padding(.top, 15)
                    
                        .onTapGesture {
                            
                            manager.isPasswordCopied.toggle()
                            manager.opacity3.toggle()
                            
                            DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
                                
                                manager.isPasswordCopied = false
                                manager.opacity3 =  false
                            }
                            
                            UIPasteboard.general.string = self.manager.passwords3.description
                            print("coyied: \(manager.passwords3.description)")
                            
                        }
                    
                    
                    Text("\(manager.passwords4.description)")
                        .font(.title3.bold())
                        .frame(width: 180, height: 50)
                        .foregroundColor(Color.green)
                        .background(Color.black)
                        .opacity(manager.opacity4 ? 0.6 : 1.0)
                        .cornerRadius(5)
                        .padding(.top, 15)
                    
                    
                        .onTapGesture {
                            
                            manager.isPasswordCopied.toggle()
                            manager.opacity4.toggle()
                            
                            DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
                                
                                manager.isPasswordCopied = false
                                manager.opacity4 = false
                            }
                            
                            UIPasteboard.general.string = self.manager.passwords4.description
                            print("coyied: \(manager.passwords4.description)")
                            
                        }
                    
                }
                .padding([.leading, .trailing])
                
                HStack {
                    Text("\(manager.passwords5.description)")
                        .font(.title3.bold())
                        .frame(width: 180, height: 50)
                        .foregroundColor(Color.green)
                        .background(Color.black)
                        .opacity(manager.opacity5 ? 0.6 : 1.0)
                        .cornerRadius(5)
                        .padding(.top, 15)
                    
                        .onTapGesture {
                            
                            manager.isPasswordCopied.toggle()
                            manager.opacity5.toggle()
                            
                            DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
                                
                                manager.isPasswordCopied = false
                                manager.opacity5 = false
                            }
                            
                            UIPasteboard.general.string = self.manager.passwords5.description
                            print("coyied: \(manager.passwords5.description)")
                            
                        }
                    
                    
                    Text("\(manager.passwords6.description)")
                        .font(.title3.bold())
                        .frame(width: 180, height: 50)
                        .foregroundColor(Color.green)
                        .background(Color.black)
                        .opacity(manager.opacity6 ? 0.6 : 1.0)
                        .cornerRadius(5)
                        .padding(.top, 15)
                    
                        .onTapGesture {
                            
                            manager.isPasswordCopied.toggle()
                            manager.opacity6.toggle()
                            
                            DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
                                
                                manager.isPasswordCopied = false
                                manager.opacity6 = false
                            }
                            
                            UIPasteboard.general.string = self.manager.passwords6.description
                            print("coyied: \(manager.passwords6.description)")
                            
                        }
                    
                    
                }
                .padding([.leading, .trailing])
                
                HStack {
                    Text("\(manager.passwords7.description)")
                        .font(.title3.bold())
                        .frame(width: 180, height: 50)
                        .foregroundColor(Color.green)
                        .background(Color.black)
                        .opacity(manager.opacity7 ? 0.6 : 1.0)
                        .cornerRadius(5)
                        .padding(.top, 15)
                    
                        .onTapGesture {
                            
                            manager.isPasswordCopied.toggle()
                            manager.opacity7.toggle()
                            
                            DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
                                
                                manager.isPasswordCopied = false
                                manager.opacity7 = false
                            }
                            
                            UIPasteboard.general.string = self.manager.passwords7.description
                            print("coyied: \(manager.passwords7.description)")
                            
                        }
                    
                    
                    Text("\(manager.passwords8.description)")
                        .font(.title3.bold())
                        .frame(width: 180, height: 50)
                        .foregroundColor(Color.green)
                        .background(Color.black)
                        .opacity(manager.opacity8 ? 0.6 : 1.0)
                        .cornerRadius(5)
                        .padding(.top, 15)
                    
                        .onTapGesture {
                            
                            manager.isPasswordCopied.toggle()
                            manager.opacity8.toggle()
                            
                            DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
                                
                                manager.isPasswordCopied = false
                                manager.opacity8 = false
                            }
                            
                            UIPasteboard.general.string = self.manager.passwords8.description
                            print("coyied: \(manager.passwords8.description)")
                            
                        }
                    
                }
                .padding([.leading, .trailing])
            }
            .offset(y: 10)
            
        }
        .offset(y: -20)
        
    }
}

struct Screen_Previews: PreviewProvider {
    static var previews: some View {
        Screen()
            .environmentObject(PasswordManager())
    }
}
