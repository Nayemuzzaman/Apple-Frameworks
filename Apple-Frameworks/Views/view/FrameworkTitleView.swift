//
//  FrameworkTitleView.swift
//  Apple-Frameworks
//
//  Created by Nayemuzzaman on 9/11/23.
//

import SwiftUI

struct FrameworkTitleView: View {
    let framework: Framework
    
    var body: some View{
        
        
        HStack {
            Image(framework.imageName)
                .resizable()
                .frame(width: 90, height: 90)
            Text(framework.name)
                .font(.title2)
                .fontWeight(.semibold)
                .scaledToFit()
                .minimumScaleFactor(0.6)
        }
        .padding()
    }
}

struct FrameworkTitleView_Previews: PreviewProvider {
    static var previews: some View {
        FrameworkGridView().preferredColorScheme(.dark)
    }
}
