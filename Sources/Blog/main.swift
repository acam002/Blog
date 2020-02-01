import Foundation
import Publish
import Plot

// This type acts as the configuration for your website.
struct Blog: Website {
    enum SectionID: String, WebsiteSectionID {
        // Add the sections that you want your website to contain here:
        case posts
    }

    struct ItemMetadata: WebsiteItemMetadata {
        // Add any site-specific metadata that you want to use here.
    }

    // Update these properties to configure your website:
    var url = URL(string: "https://acam002.github.io")!
    var name = "Blog"
    var description = "A description of Blog"
    var language: Language { .english }
    var imagePath: Path? { nil }
}

// This will generate your website using the built-in Foundation theme:
try Blog().publish(using:
    [.generateHTML(withTheme: .foundation),
    .deploy(using: .gitHub("acam002/acam002.github.io"))
])
