//
//  File.swift
//  
//
//  Created by Alberto Camacho on 2/4/20.
//

import Publish

extension Theme where Site == Blog {
    static var blog: Self {
        Theme(htmlFactory: HTMLBlogFactory())
    }
}
