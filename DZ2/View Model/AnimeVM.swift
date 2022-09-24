//
//  AnimeVM.swift
//  DZ2
//
//  Created by Alish Aidarkhan on 24.09.2022.
//

import Foundation
import Alamofire

class AnimeVM: ObservableObject {
    let animes = ["Naruto", "Hyouka", "Charlotte"]
    
    @Published var selectedAnime = "Naruto"
    @Published var quotes: [QuoteModel] = []
    
    func fetchQuotes() {
        AF.request("https://animechan.vercel.app/api/quotes/anime?title=\(selectedAnime)")
          .responseDecodable(of: [QuoteModel].self) { [weak self] response in
            self?.quotes = response.value ?? []
        }
    }
}
