//
//  AppRootView.swift
//  DZ2
//
//  Created by Alish Aidarkhan on 24.09.2022.
//

import SwiftUI
import StackNavigation

struct AppRootView: View {
    var body: some View {
        StackNavigation(transition: .custom(AnyTransition.asymmetric(
            insertion: .move(edge: .trailing),
            removal: .move(edge: .leading)), .slide)) {
            FirstScreen()
        }
    }
}

//struct AppRootView_Previews: PreviewProvider {
//    static var previews: some View {
//        AppRootView()
//    }
//}
