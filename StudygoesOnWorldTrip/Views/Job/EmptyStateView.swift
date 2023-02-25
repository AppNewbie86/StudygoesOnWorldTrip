//
//  EmptyStateView.swift
//  StudygoesOnWorldTrip
//
//  Created by Marcel Zimmermann on 22.02.23.
//

import SwiftUI

struct EmptyStateView: View {
  var body: some View {
    VStack {
      Spacer()
      Image(systemName: "graduationcap.circle")
        .font(.system(size: 85))
        .padding(.bottom)
      Text("the easy Way to search a Work and Traveljob....")
        .font(.title)
      Spacer()
    }
    .padding()
    .foregroundColor(Color(.green))
  }
}

