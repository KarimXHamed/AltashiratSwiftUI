//
//  RequestsView.swift
//  AltashiratSwiftUI
//
//  Created by Karim Hamed  on 11/06/2025.
//
import SwiftUI

struct RequestsView<ViewModel: RequestsViewModelProtocol>: View {
   
    @StateObject  var viewModel: ViewModel

    
    var body: some View {
        ZStack{
            
            VStack(spacing: 0){
                
                RequestsSegmentedView(selectedCategory: $viewModel.state.selectedCategory)
                    .padding(.top, 107)
                    .padding(.horizontal,8)
                
                requestsView
                
                Spacer()
                
            }
            .ignoresSafeArea()
          
        }
        .onAppear {
            viewModel.onAction(.onAppear)
        }
        
        
        }
    
    var requestsView: some View {
        ScrollView{
            
            LazyVStack(spacing: 0){
                
                ForEach(currentRequests){ model in
                    RequestsReusableView(model: model)
                        .onAppear {
                            if model == currentRequests.last {
                                viewModel.onAction(.onReachLastRequest)
                            }
                        }
                    
                }
                
                if viewModel.state.isLoading {
                    ProgressView()
                }

                
            }
        }
    }
    
    var currentRequests: [RequestModel] {
        
        switch viewModel.state.selectedCategory {
       
        case .tourismVisa:
            return viewModel.state.tourismRequests
        
        case .employmentVisa:
            return viewModel.state.employmentRequests
        
        case .sellVisa:
            return viewModel.state.sellRequests
        }
        
    }
    
}
