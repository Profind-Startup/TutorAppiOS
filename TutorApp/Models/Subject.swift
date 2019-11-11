//
//  Subject.swift
//  TutorApp
//
//  Created by PCSIJTIN on 11/10/19.
//  Copyright © 2019 Profind. All rights reserved.
//

import Foundation

struct Subject: Codable {
  
  var id: Int
  var name: String
  var area: String
  var id_tutor: Int
  
  init() {
    id = 0
    name = ""
    area = ""
    id_tutor = 0
   
  }
}
