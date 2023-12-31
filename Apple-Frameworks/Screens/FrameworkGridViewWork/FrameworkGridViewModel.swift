//
//  FrameworkGridViewModel.swift
//  Apple-Frameworks
//
//  Created by Nayemuzzaman on 9/10/23.
//

import SwiftUI


final class FrameworkGridViewModel: ObservableObject {
    
    var selectedFramework: Framework? {
        didSet {
            isShowingDetailView = true
        }
    }
    @Published var isShowingDetailView = false
    
    let columns: [GridItem] = [GridItem(.flexible()),
                               GridItem(.flexible()),
                               GridItem(.flexible())]
    
}
