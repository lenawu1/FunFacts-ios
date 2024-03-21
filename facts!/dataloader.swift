//
//  dataloader.swift
//  facts!
//
//  Created by Lena Wu on 3/21/24.
//

import Foundation

func loadFacts() -> [Fact] {
    guard let url = Bundle.main.url(forResource: "fact_db", withExtension: "json"),
              let data = try? Data(contentsOf: url) else {
            fatalError("Failed to load fact_db.json from bundle.")
        }
        do {
            return try JSONDecoder().decode([Fact].self, from: data)
        } catch {
            fatalError("Failed to decode fact_db.json: \(error)")
        }
}
