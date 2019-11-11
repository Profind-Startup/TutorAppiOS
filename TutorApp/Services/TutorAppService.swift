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
}
