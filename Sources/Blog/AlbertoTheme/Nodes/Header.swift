//
//  File.swift
//  
//
//  Created by Alberto Camacho on 2/5/20.
//

import Plot


extension Node where Context == HTML.BodyContext {
    static func header(for site: Blog) -> Node {
        return .div(
            .class("pure-menu pure-menu-horizontal pure-u-1-1 top-header"),
            .a(
                .class("pure-menu-heading"),
                .text(site.name),
                .href(site.url)
            )
        )
    }
}
