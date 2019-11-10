//
//  ContentView.swift
//  TutorApp
//
//  Created by PCSIJTIN on 11/2/19.
//  Copyright © 2019 Profind. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State var username: String = ""
    @State var password: String = ""
    @State var view: String = "viewLogin"
    let lightGreyColor = Color(red: 239.0/255.0, green: 243.0/255.0, blue: 244.0/255.0, opacity: 1.0)
    @State var subject: String = ""
          
           @State var area: String = ""
    
    var body: some View {
          
        return Group {
        if view  == "viewLogin"{
          VStack {
          WelcomeText()
            UserImage()
            
            TextField("Username", text: $username)
                            .padding()
                            .background(lightGreyColor)
                            .cornerRadius(5.0)
                            .padding(.bottom, 20)
            SecureField("Password", text: $password)
                            .padding()
                            .background(lightGreyColor)
                            .cornerRadius(5.0)
                            .padding(.bottom, 20)
            
            Button(action: {self.view = "Home"}) {
            LoginButtonContent()
                        }
          }.padding()
            }
            
         if view  == "Home"{
            Button(action: {self.view = "Register"}) {
                                                LoginButtonContent()
                                                            }
            
            }
            if view  == "Register"{
                
                VStack {
                        TextField("Tema", text: $subject)
                                                     .padding()
                                                     .background(lightGreyColor)
                                                     .cornerRadius(5.0)
                                                     .padding(.bottom, 20)
                          TextField("Area", text: $area)
                                                     .padding()
                                                     .background(lightGreyColor)
                                                     .cornerRadius(5.0)
                                                     .padding(.bottom, 20)
                          Button(action: {self.view = "Register"}) {
                                                                        LoginButtonContent()
                                                                                    }
                        
                      }
                }
            
      }
         }
}


struct WelcomeText: View {
    
    var body: some View {
          
          VStack {
          return Text("TutorApp")
              .font(.largeTitle)
              .fontWeight(.semibold)
              .padding(.bottom, 20)
          }
      }
}


struct UserImage: View {
    
    var body: some View {
          
          VStack {
          return Image("userImage")
          .resizable()
          .aspectRatio(contentMode: .fill)
          .frame(width: 250, height: 150)
          .clipped()
          .padding(.bottom, 75)

          }
      }
}


struct LoginButtonContent: View {
    
    var body: some View {
           VStack {
        
                      Text("LOGIN")
                          .font(.headline)
                          .foregroundColor(.white)
                          .padding()
                          .frame(width: 220, height: 60)
                          .background(Color.green)
                          .cornerRadius(15.0)
                  }
                  .padding()
      }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
