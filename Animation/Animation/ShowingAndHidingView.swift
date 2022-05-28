//
//  ShowingAndHidingView.swift
//  Animation
//
//  Created by Manoel Leal on 28/05/22.
//

import SwiftUI

struct ShowingAndHidingView: View {
    
    @State private var isShowingRed = false
    
    var body: some View {
        VStack{
            Button("Tap Me"){
                withAnimation{
                    isShowingRed.toggle()
                }
            }
            
            if isShowingRed {
                Rectangle()
                    .fill(.red)
                    .frame(width: 200, height: 200)
                    .transition(.asymmetric(insertion: .scale, removal: .opacity))
            }
        }
    }
}

struct ShowingAndHidingView_Previews: PreviewProvider {
    static var previews: some View {
        ShowingAndHidingView()
    }
}
