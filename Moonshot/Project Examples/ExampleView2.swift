//
//  ExampleView2.swift
//  Moonshot
//
//  Created by Justin Hold on 3/14/23.
//

// MARK: How ScrollView lets us work with scrolling data

import SwiftUI

struct CustomText: View {
	let text: String
	var body: some View {
		Text(text)
	}
	init(_ text: String) {
		print("Creating a new CustomText")
		self.text = text
	}
}

struct ExampleView2: View {
    var body: some View {
		ScrollView {
			LazyVStack(spacing: 10) {
				ForEach(0..<100) {
					CustomText("Item \($0)")
						.font(.title)
				}
			}
			.frame(maxWidth: .infinity)
		}
    }
}

struct ExampleView2_Previews: PreviewProvider {
    static var previews: some View {
        ExampleView2()
    }
}
