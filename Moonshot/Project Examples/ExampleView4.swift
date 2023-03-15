//
//  ExampleView4.swift
//  Moonshot
//
//  Created by Justin Hold on 3/15/23.
//

// MARK: Working with hierarchical Codable data

import SwiftUI

struct User: Codable {
	let name: String
	let address: Address
}

struct Address: Codable {
	let street: String
	let city: String
}

struct ExampleView4: View {
    var body: some View {
		Button("Decode JSON") {
			let input = """
			{
				"name": "Taylor Swift",
				"address": {
					"street": "555 Taylor Swift Ave",
					"city": "Nashville"
			   }
			}
			"""
			let data = Data(input.utf8)
			if let user = try? JSONDecoder().decode(User.self, from: data) {
				print(user.address.street)
			}
		}
    }
}

struct ExampleView4_Previews: PreviewProvider {
    static var previews: some View {
        ExampleView4()
    }
}
