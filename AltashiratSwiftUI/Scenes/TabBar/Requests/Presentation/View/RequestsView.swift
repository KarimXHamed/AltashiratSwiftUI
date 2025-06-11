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
                
                RequestsSegmentedView()
                    .padding(.top, 107)
                    .padding(.horizontal,8)
                
                requestsView
                
                Spacer()
                
            }
            .ignoresSafeArea()
          
            
            
            if viewModel.state.isLoading {
                ProgressView()
            }
            
        }
        .onAppear {
            viewModel.onAction(.onAppear)
        }
        
        
        }
    
    var requestsView: some View {
        ScrollView{
            
            LazyVStack(spacing: 0){
                
                ForEach(viewModel.state.requests){ model in
                    RequestsReusableView(model: model)
                        .onAppear {
                            if model == viewModel.state.requests.last {
                                viewModel.onAction(.onAppear)
                            }
                        }
                }
                
            }
        }
    }
    
}
