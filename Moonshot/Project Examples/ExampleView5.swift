//
//  ExampleView5.swift
//  Moonshot
//
//  Created by Justin Hold on 3/15/23.
//

// MARK: How to lay out views in a scrolling grid

import SwiftUI

struct ExampleView5: View {
	let layout = [
		GridItem(.adaptive(minimum: 80, maximum: 120))
	]
    var body: some View {
		ScrollView {
			LazyVGrid(columns: layout) {
				ForEach(0..<1000) {
					Text("Item \($0)")
				}
			}
		}
    }
}

struct ExampleView5_Previews: PreviewProvider {
    static var previews: some View {
        ExampleView5()
    }
}
