//
//  ExampleView3.swift
//  Moonshot
//
//  Created by Justin Hold on 3/14/23.
//

// MARK: Pushing new views onto the stack using NavigationLink

import SwiftUI

struct ExampleView3: View {
    var body: some View {
		NavigationStack {
			List(0..<100) { row in
				NavigationLink {
					Text("Detail \(row)")
				} label: {
					Text("Row \(row)")
				}
			}
			.navigationTitle("SwiftUI")
		}
    }
}

struct ExampleView3_Previews: PreviewProvider {
    static var previews: some View {
        ExampleView3()
    }
}
