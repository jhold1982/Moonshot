//
//  ExampleView1.swift
//  Moonshot
//
//  Created by Justin Hold on 3/14/23.
//

// MARK: Resizing images to fit the screen using GeometryReader

import SwiftUI

struct ExampleView1: View {
    var body: some View {
		GeometryReader { geo in
			Image("example")
				.resizable()
				.scaledToFit()
				.frame(width: geo.size.width * 0.8)
				.frame(width: geo.size.width, height: geo.size.height)
		}
    }
}

struct ExampleView1_Previews: PreviewProvider {
    static var previews: some View {
        ExampleView1()
    }
}
