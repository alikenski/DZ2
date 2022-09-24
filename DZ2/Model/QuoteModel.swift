//
//  QuoteModel.swift
//  DZ2
//
//  Created by Alish Aidarkhan on 24.09.2022.
//

import Foundation

struct QuoteModel: Decodable, Hashable {
    let anime: String
    let character: String
    let quote: String
}
