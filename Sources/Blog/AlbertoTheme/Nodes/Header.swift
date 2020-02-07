import Plot


extension Node where Context == HTML.BodyContext {
    static func header(for site: Blog) -> Node {
        return .div(
            .div(
                .class("pure-menu pure-menu-horizontal pure-u-1-1 top-header"),
                .a(
                    .class("pure-menu-heading"),
                    .text(site.name),
                    .href("/")
                ),
                .ul(
                    .class("pure-menu-list"),
                    .li(
                        .class("pure-menu-item"),
                        .a(
                            .class("pure-menu-link"),
                            .text("About"),
                            .href(site.path(for: Blog.SectionID.about))
                        )
                    )
                )
            )
        )
    }
}
