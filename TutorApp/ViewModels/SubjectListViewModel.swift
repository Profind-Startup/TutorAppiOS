//
//  SubjectListViewModel.swift
//  TutorApp
//
//  Created by PCSIJTIN on 11/10/19.
//  Copyright © 2019 Profind. All rights reserved.
//

import Foundation

class SubjectListViewModel: ObservableObject {
  
  @Published var subjects = [SubjectViewModel]()
  
  init() {
    TutorAppService().getSubjects { subjects in
      
      if let subjects = subjects {
        self.subjects = subjects.map(SubjectViewModel.init)
      }
      
    }
  }
  
}
