//
//  RecipeModel.swift
//  Recipe Searcher
//
//  Created by Patrick Morkert on 12/24/20.
//

import Foundation

struct Hits: Codable {
    var hits:Data
}

struct Recipe: Codable {
    var recipe:Data
}

struct RecipeData: Codable {
    var label:String
    var source:String
    var url:URL
}
