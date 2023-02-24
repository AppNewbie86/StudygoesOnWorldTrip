//
//  JobView.swift
//  StudygoesOnWorldTrip
//
//  Created by Marcel Zimmermann on 22.02.23.
//

import SwiftUI

struct JobView: View {
    @ObservedObject var viewModel: JobListViewModel
    var body: some View {
        
        NavigationView {
          VStack {
            SearchBar(searchTerm: $viewModel.searchTerm)
            if viewModel.jobs.isEmpty {
              EmptyStateView()
            } else {
              List(viewModel.jobs) { job in
                  NavigationLink(destination: JobDetailView(job: job)) {
                  JobView2(job: job)
              }
              }
              .listStyle(PlainListStyle())
            }
          }
          .navigationBarTitle("Job Finder")
        }
      }
  }

