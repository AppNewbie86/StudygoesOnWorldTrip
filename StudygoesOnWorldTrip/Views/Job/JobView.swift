//
//  JobView.swift
//  StudygoesOnWorldTrip
//
//  Created by Marcel Zimmermann on 22.02.23.
//

import SwiftUI

struct JobView: View {
    @ObservedObject var viewModel: JobListViewModel
    @State private var offsetY: CGFloat = 0.0
    
    var body: some View {
        GeometryReader { geometry in
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
                        .offset(y: offsetY)
                        .animation(.spring())
                        .gesture(DragGesture().onChanged({ value in
                            self.offsetY = value.translation.height
                        }).onEnded({ value in
                            withAnimation {
                                if offsetY > 50 {
                                    offsetY = geometry.size.height
                                } else if offsetY < -50 {
                                    offsetY = -geometry.size.height
                                } else {
                                    offsetY = 0
                                }
                            }
                        }))
                    }
                }
                .navigationBarTitle("StudyWorkFinder")
            }
        }
    }
}
