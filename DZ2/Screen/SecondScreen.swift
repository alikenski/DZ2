//
//  SecondScreen.swift
//  DZ2
//
//  Created by Alish Aidarkhan on 24.09.2022.
//

import SwiftUI
import StackNavigation

struct SecondScreen: View {
    @EnvironmentObject var navModel: StackNavigationVM
    
    var body: some View {
        VStack {
            Spacer()
            Text("Second screen")
            Button("Next Screen") {
                navModel.push(view: ThirdScreen())
            }
            Button("Prev Screen") {
                navModel.pop(destination: .prev)
            }
            Spacer()
        }
    }
}
//
//struct SecondScreen_Previews: PreviewProvider {
//    static var previews: some View {
//        SecondScreen()
//    }
//}
