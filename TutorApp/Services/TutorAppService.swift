//
//  TutorAppService.swift
//  TutorApp
//
//  Created by PCSIJTIN on 11/10/19.
//  Copyright © 2019 Profind. All rights reserved.
//

import Foundation

class TutorAppService {
  func getSubjects(completion: @escaping ([Subject]?) -> ()) {
    guard let url = URL(string: "http://tutorapp.somee.com/api/subjects") else {
      fatalError("Invalid URL")
    }
    URLSession.shared.dataTask(with: url) { data, response, error in
      guard let data = data, error == nil else {
        completion(nil)
        if let error = error {
          print(error.localizedDescription)
        }
        return
      }
      
      
      let subjects = try? JSONDecoder().decode([Subject].self, from: data)
      DispatchQueue.main.async {
        completion(subjects)
      }

      if let error = error {
        print(error.localizedDescription)
      }

    }.resume()
  }
    func postLogin(completion: @escaping (User?) -> ())
    {
        guard let url = URL(string: "http://tutorapp.somee.com/api/users/check") else {
             fatalError("Invalid URL")
            }
        var request = URLRequest(url: url)
        request.httpMethod = "POST"
        var userpost = User()
        userpost.username = "alexnewbie378@gmail.com"
        userpost.password = "231400aP01"
        
        let postString = try! JSONEncoder().encode(userpost)
        let jsonString = String(data: postString, encoding: .utf8)!
        
        print(jsonString)
        
        request.httpBody = jsonString.data(using: .utf8)
        URLSession.shared.dataTask(with: request) { data, response, error in
             guard let data = data, error == nil else {
              
               completion(nil)
               if let error = error {
                 print(error.localizedDescription)
               }
               return
             }
           //    print(response)
             let user = try? JSONDecoder().decode(User.self, from: data)
             DispatchQueue.main.async {
              completion(user)
              //  UserDefaults.standard.set(user.id, forKey: "user_id")
                
                UserDefaults.standard.set(1, forKey: "user_id")
                
             }
           
             if let error = error {
               print(error.localizedDescription)
             }

           }.resume()
         }
    
   /* func checkTutorUser(completion: @escaping ([Tutor]?) -> ()) {
      guard let url = URL(string: "http://tutorapp.somee.com/api/tutors/") else {
        fatalError("Invalid URL")
      }
      URLSession.shared.dataTask(with: url) { data, response, error in
        guard let data = data, error == nil else {
          completion(nil)
          if let error = error {
            print(error.localizedDescription)
          }
          return
        }
        
        
        let subjects = try? JSONDecoder().decode([Subject].self, from: data)
        DispatchQueue.main.async {
          completion(subjects)
        }

        if let error = error {
          print(error.localizedDescription)
        }

      }.resume()
    }*/
    
}

