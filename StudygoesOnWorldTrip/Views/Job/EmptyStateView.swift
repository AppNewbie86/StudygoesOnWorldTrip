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
      Image(systemName: "briefcase.fill")
        .font(.system(size: 85))
        .padding(.bottom)
      Text("Start searching for a Job...")
        .font(.title)
      Spacer()
    }
    .padding()
    .foregroundColor(Color(.systemBlue))
  }
}

