//
//  XDismissButton.swift
//  Apple-Frameworks
//
//  Created by Nayemuzzaman on 9/11/23.
//

import SwiftUI

struct XDismissButton: View {
    
    @Binding var isShowingDetailVIew: Bool
    
    var body: some View {
        HStack{
            Spacer()

            Button {
                isShowingDetailVIew = false
            } label: {
                Image(systemName: "xmark")
                    .foregroundColor(Color(.label))
                    .imageScale(.large)
                    .frame(width: 44, height: 44)
            }
        }
        .padding()
    }
}

struct XDismissButton_Previews: PreviewProvider {
    static var previews: some View {
        XDismissButton(isShowingDetailVIew: .constant(false))
    }
}
