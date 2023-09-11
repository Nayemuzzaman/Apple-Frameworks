//
//  FrameworkGridView.swift
//  Apple-Frameworks
//
//  Created by Nayemuzzaman on 9/10/23.
//

import SwiftUI

struct FrameworkGridView: View {
    
    @StateObject var viewModel = FrameworkGridViewModel()
     

    
    var body: some View {
        NavigationView{
            ScrollView{
                LazyVGrid(columns: viewModel.columns) {
                    ForEach(MockData.frameworks, id: \.id){
                        framework in
                        FrameworkTitleView(framework: framework)
                            .onTapGesture {
                                viewModel.selectedFramework = framework
                            }
                    }
                }
            }
            .navigationTitle("🚾 FrameWorks")
            .sheet(isPresented: $viewModel.isShowingDetailView){
                FrameworkDetailView(framework: viewModel.selectedFramework!, isShowingDetailVIew: $viewModel.isShowingDetailView)
                
            }
        }
    }
}

struct FrameworkGridView_Previews: PreviewProvider {
    static var previews: some View {
        FrameworkGridView()
            .preferredColorScheme(.dark)
    }
}


