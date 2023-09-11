//
//  FrameworkDetailView.swift
//  Apple-Frameworks
//
//  Created by Nayemuzzaman on 9/10/23.
//

import SwiftUI

struct FrameworkDetailView: View {
    
    
    var framework: Framework
    @Binding var isShowingDetailVIew: Bool
    @State private var isShowingSafariView = false
      
    var body: some View {
        VStack{
            XDismissButton(isShowingDetailVIew: $isShowingDetailVIew)
            Spacer()

            FrameworkTitleView(framework: framework)
            Text(framework.description)
                .font(.body)
                .padding()
            
            Spacer()
            
            Button {
                isShowingSafariView = true
            }label: {
                AFButton(title: "Learn More")
            }
        }
        .fullScreenCover(isPresented: $isShowingSafariView, content: {
            SafariView(url: URL(string: framework.urlString ) ?? URL(string: "www.apple.com")!)
        } )
    }
}

struct FrameworkDetailView_Previews: PreviewProvider {
    static var previews: some View {
        FrameworkDetailView(framework: MockData.sampleFramework, isShowingDetailVIew: .constant(false))
            .preferredColorScheme(.dark)
    }
}
