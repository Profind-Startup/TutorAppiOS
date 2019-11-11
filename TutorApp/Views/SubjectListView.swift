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

struct SubjectListView: View {
  @ObservedObject private var subjectListViewModel = SubjectListViewModel()
  
  var body: some View {
    List(self.subjectListViewModel.subjects) { subject in SubjectRow(subject: subject)
      
      }
      
  }
}

struct SubjectListView_Previews: PreviewProvider {
  static var previews: some View {
    SubjectListView()
  }
}




