//
//  File.swift
//  
//
//  Created by Alberto Camacho on 2/4/20.
//

import Plot


extension Node where Context == HTML.BodyContext {
    static func sidebar(for site: Blog) -> Node {
        return .div(
            .h1(
                .text("Hello World!")
            )
        )
    }
}
