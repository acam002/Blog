//
//  File.swift
//  
//
//  Created by Alberto Camacho on 2/4/20.
//

import Foundation
import Publish
import Plot


// This type acts as the configuration for your website.
struct Blog: Website {
    enum SectionID: String, WebsiteSectionID {
        // Add the sections that you want your website to contain here:
        case posts
        case about
    }

    struct ItemMetadata: WebsiteItemMetadata {
        // Add any site-specific metadata that you want to use here.
    var excerpt: String
    }

    // Update these properties to configure your website:
    var url = URL(string: "https://www.acamacho.dev")!
    var name = "Alberto Camacho"
    var description = "Software Engineer"
    var language: Language { .english }
    var imagePath: Path? { nil }
    var socialMediaLinks: [SocialMediaLink] = [.location, .email, .linkedIn, .github, .twitter]
}
