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
    private var page = 1
    
    @Published var selectedAnime = "Naruto"
    @Published var isLoading = false
    @Published var quotes: [QuoteModel] = []
    
    func fetchQuotes() {
        // Не делаем лишний запрос когда уже подгружаем новый список.
        // Хорошо когда слабый интернет или бэк долго отвечает
        guard !isLoading else {
            return
        }
        
        isLoading = true
        AF.request("https://animechan.vercel.app/api/quotes/anime?title=\(selectedAnime)&page=\(page)")
          .responseDecodable(of: [QuoteModel].self) { [weak self] response in
              if let newQuotes = response.value {
                  self?.isLoading = false
                  self?.page += 1
                  self?.quotes.append(contentsOf: newQuotes)
              }
        }
    }
    
    func resetQuotesAndPage() {
        page = 1
        quotes = []
    }
}
