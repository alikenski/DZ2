//
//  FirstScreen.swift
//  DZ2
//
//  Created by Alish Aidarkhan on 24.09.2022.
//

import SwiftUI
import StackNavigation

struct FirstScreen: View {
    @EnvironmentObject var navModel: StackNavigationVM
    
    var body: some View {
        VStack {
            Spacer()
            Text("FirstScreen")
            Button("Next Screen") {
                navModel.push(view: SecondScreen())
            }
            Spacer()
            Button("Anime Screen") {
                navModel.push(view: AnimeScreen())
            }
            Spacer()
        }
    }
}

//struct FirstScreen_Previews: PreviewProvider {
//    static var previews: some View {
//        FirstScreen()
//    }
//}
