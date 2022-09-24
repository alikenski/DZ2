//
//  ThirdScreen.swift
//  DZ2
//
//  Created by Alish Aidarkhan on 24.09.2022.
//

import SwiftUI
import StackNavigation

struct ThirdScreen: View {
    @EnvironmentObject var navModel: StackNavigationVM
    
    var body: some View {
        VStack {
            Spacer()
            Text("Third screen")
            Button("Root Screen") {
                navModel.pop(destination: .root)
            }
            Button("Prev Screen") {
                navModel.pop(destination: .prev)
            }
            Spacer()
        }
    }
}
