import Foundation
import Publish
import SplashPublishPlugin
//import CNAMEPublishPlugin

try Blog().publish(
    withTheme: .blog,
    additionalSteps: [
        .deploy(using: .gitHub("acam002/acam002.github.io", useSSH: true))
    ],
    plugins: [.splash(withClassPrefix: "")]
)
