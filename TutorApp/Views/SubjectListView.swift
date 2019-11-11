//
//  SubjectListView.swift
//  TutorApp
//
//  Created by PCSIJTIN on 11/10/19.
//  Copyright © 2019 Profind. All rights reserved.
//

import SwiftUI

struct SubjectRow: View {
  var subject: SubjectViewModel
  
  var body: some View {
      Text(subject.name)
  }
}




