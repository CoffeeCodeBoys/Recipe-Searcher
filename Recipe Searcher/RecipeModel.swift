// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let root = try? newJSONDecoder().decode(Root.self, from: jsonData)

import Foundation

// MARK: - Root
struct Root: Codable {
    let q: String
    let from, to: Int
    let more: Bool
    let count: Int
    let hits: [Hit]
}

// MARK: - Hit
struct Hit: Codable {
    let recipe: Recipe
    let bookmarked, bought: Bool
}

// MARK: - Recipe
struct Recipe: Codable {
    let uri: String
    let label: String
    let image: String
    let source: String
    let url: String
    let shareAs: String
    let yield: Int
    let dietLabels: [String]
    let healthLabels: [HealthLabel]
    let cautions: [Caution]
    let ingredientLines: [String]
    let ingredients: [Ingredient]
    let calories, totalWeight: Double
    let totalTime: Int
    let totalNutrients, totalDaily: [String: Total]
    let digest: [Digest]
}

extension Recipe: Identifiable {
    var id : String {
        return uri
    }
}

enum Caution: String, Codable {
    case fodmap = "FODMAP"
    case sulfites = "Sulfites"
}

// MARK: - Digest
struct Digest: Codable {
    let label, tag: String
    let schemaOrgTag: SchemaOrgTag?
    let total: Double
    let hasRDI: Bool
    let daily: Double
    let unit: Unit
    let sub: [Digest]?
}

enum SchemaOrgTag: String, Codable {
    case carbohydrateContent = "carbohydrateContent"
    case cholesterolContent = "cholesterolContent"
    case fatContent = "fatContent"
    case fiberContent = "fiberContent"
    case proteinContent = "proteinContent"
    case saturatedFatContent = "saturatedFatContent"
    case sodiumContent = "sodiumContent"
    case sugarContent = "sugarContent"
    case transFatContent = "transFatContent"
}

enum Unit: String, Codable {
    case empty = "%"
    case g = "g"
    case kcal = "kcal"
    case mg = "mg"
    case µg = "µg"
}

enum HealthLabel: String, Codable {
    case alcoholFree = "Alcohol-Free"
    case immunoSupportive = "Immuno-Supportive"
    case peanutFree = "Peanut-Free"
    case sugarConscious = "Sugar-Conscious"
    case treeNutFree = "Tree-Nut-Free"
}

// MARK: - Ingredient
struct Ingredient: Codable {
    let text: String
    let weight: Double
    let image: String?
}

// MARK: - Total
struct Total: Codable {
    let label: String
    let quantity: Double
    let unit: Unit
}

////
////  RecipeModel.swift
////  Recipe Searcher
////
////  Created by Patrick Morkert on 12/24/20.
////
//
//import Foundation
//
//// MARK: - Root
//struct Root: Codable {
//    let q: String
//    let from, to: Int
//    let more: Bool
//    let count: Int
//    let hits: [Hit]
//}
//
//// MARK: - Hit
//struct Hit: Codable {
//    let recipe: Recipe
//    let bookmarked, bought: Bool
//}
//
//// MARK: - Recipe
//struct Recipe {
////    let id = String
//    let uri: String
//    let label: String
//    let image: String
//    let source: String
//    let url: String
//    let shareAs: String
//    let yield: Int
//    let dietLabels: [String]
//    let healthLabels: [HealthLabel]
//    let cautions: [Caution]
//    let ingredientLines: [String]
//    let ingredients: [Ingredient]
//    let calories, totalWeight: Double
//    let totalTime: Int
//    let totalNutrients, totalDaily: [String: Total]
//    let digest: [Digest]
//}
//
//extension Recipe:  Identifiable {
//    let id = String {
//        return uri
//    }
////    enum CodingKeys: String, CodingKey {
////        case id = "uri"
////    }
////    init(from decoder: Decoder) throws {
////        let container = try decoder.container(keyedBy: CodingKeys.self)
////        id = try container.decode(String.self, forKey: .id)
////    }
//}
//
//enum Caution: String, Codable {
//    case fodmap = "FODMAP"
//    case sulfites = "Sulfites"
//}
//
//// MARK: - Digest
//struct Digest: Codable {
//    let label, tag: String
//    let schemaOrgTag: SchemaOrgTag?
//    let total: Double
//    let hasRDI: Bool
//    let daily: Double
//    let unit: Unit
//    let sub: [Digest]?
//}
//
//enum SchemaOrgTag: String, Codable {
//    case carbohydrateContent = "carbohydrateContent"
//    case cholesterolContent = "cholesterolContent"
//    case fatContent = "fatContent"
//    case fiberContent = "fiberContent"
//    case proteinContent = "proteinContent"
//    case saturatedFatContent = "saturatedFatContent"
//    case sodiumContent = "sodiumContent"
//    case sugarContent = "sugarContent"
//    case transFatContent = "transFatContent"
//}
//
//enum Unit: String, Codable {
//    case empty = "%"
//    case g = "g"
//    case kcal = "kcal"
//    case mg = "mg"
//    case µg = "µg"
//}
//
//enum HealthLabel: String, Codable {
//    case alcoholFree = "Alcohol-Free"
//    case immunoSupportive = "Immuno-Supportive"
//    case peanutFree = "Peanut-Free"
//    case sugarConscious = "Sugar-Conscious"
//    case treeNutFree = "Tree-Nut-Free"
//}
//
//// MARK: - Ingredient
//struct Ingredient: Codable {
//    let text: String
//    let weight: Double
//    let image: String?
//}
//
//// MARK: - Total
//struct Total: Codable {
//    let label: String
//    let quantity: Double
//    let unit: Unit
//}
