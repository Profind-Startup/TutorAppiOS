//
//  SubjectViewModel.swift
//  TutorApp
//
//  Created by PCSIJTIN on 11/10/19.
//  Copyright © 2019 Profind. All rights reserved.
//

import Foundation


struct SubjectViewModel: Identifiable {
  
  var subject: Subject
  
  var id = UUID()
  
  init(subject: Subject) {
    self.subject = subject
  }

    var id_subject: Int {
        return self.subject.id
    }
    
    var id_tutor: Int {
        return self.subject.id_tutor
    }
    
  var name: String {
    return self.subject.name
  }
  
  var string: String {
    return self.subject.area
  }
  

  
}
