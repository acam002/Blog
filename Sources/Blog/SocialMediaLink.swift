//
//  SocialMediaLink.swift
//
//
//  Created by Povilas Staskus on 1/26/20.
//

import Foundation

struct SocialMediaLink {
    let title: String
    let url: String
    let icon: String
}

extension SocialMediaLink {
    static var location: SocialMediaLink {
        return SocialMediaLink(
            title: "Miami, Florida",
            url: "https://en.wikipedia.org/wiki/Miami",
            icon: "fas fa-map-marker-alt"
        )
    }
    
    static var linkedIn: SocialMediaLink {
        return SocialMediaLink(
            title: "LinkedIn",
            url: "https://www.linkedin.com/in/acam386/",
            icon: "fab fa-linkedin"
        )
    }
    
    static var email: SocialMediaLink {
        return SocialMediaLink(
            title: "Email",
            url: "mailto:acam386@gmail.com",
            icon: "fas fa-envelope-open-text"
        )
    }
    
    static var github: SocialMediaLink {
        return SocialMediaLink(
            title: "GitHub",
            url: "https://github.com/acam002",
            icon: "fab fa-github-square"
        )
    }
    
    static var twitter: SocialMediaLink {
        return SocialMediaLink(
            title: "Twitter",
            url: "https://twitter.com/alcam02",
            icon: "fab fa-twitter-square"
        )
    }
}
