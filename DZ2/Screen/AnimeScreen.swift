//
//  AnimeScreen.swift
//  DZ2
//
//  Created by Alish Aidarkhan on 24.09.2022.
//

import SwiftUI

struct AnimeScreen: View {
    @StateObject private var viewModel: AnimeVM = .init()
    
    var body: some View {
        VStack {
            Picker("Choose Anime", selection: $viewModel.selectedAnime) {
                ForEach(viewModel.animes, id: \.self) {
                    Text($0)
                }
            }
            .onChange(of: viewModel.selectedAnime) { _ in
                viewModel.fetchQuotes()
            }
            .pickerStyle(.segmented)
            
            List {
                ForEach(viewModel.quotes, id: \.self) { quote in
                    Text(quote.character)
                    Text(quote.quote)
                }
            }
        }
        .onAppear {
            viewModel.fetchQuotes()
        }
    }
}
