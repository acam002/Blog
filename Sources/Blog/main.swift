import Foundation
import Publish


// This will generate your website using the built-in Foundation theme:
try Blog().publish(
    using: [
    .addMarkdownFiles(),
    .copyResources(),
    .generateHTML(withTheme: .blog),
    .generateSiteMap(),
    .deploy(using: .gitHub("acam002/acam002.github.io"))
])
