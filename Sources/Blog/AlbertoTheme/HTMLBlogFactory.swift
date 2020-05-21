//
//  File.swift
//  
//
//  Created by Alberto Camacho on 2/2/20.
//

import Publish
import Plot

struct HTMLBlogFactory: HTMLFactory {
    
    // This is the homepage HTML
    func makeIndexHTML(for index: Index, context: PublishingContext<Blog>) throws -> HTML {
        HTML(
            .lang(context.site.language),
            .head(for: context.site),
            .body(
                .grid(
                    .header(for: context),
                    .sidebar(for: context.site),
                    .posts(
                        for: context.allItems (
                            sortedBy: \.date,
                            order: .descending
                        ),
                        on: context.site,
                        title: "Recent posts"
                    ),
                    .footer(for: context.site)
                )
            )
        )
    }
    
    // This is the HTML for a section
    func makeSectionHTML(for section: Section<Blog>, context: PublishingContext<Blog>) throws -> HTML {
        HTML(
            .lang(context.site.language),
            .head(for: context.site),
            .body(
                .grid(
                    .header(for: context),
                    .sidebar(for: context.site),
                    .pageContent(.h1(.text(section.title))),
                    .footer(for: context.site)
                )
            )
        )
    }
    
    // This is for the HTML of a single post
    func makeItemHTML(for item: Item<Blog>, context: PublishingContext<Blog>) throws -> HTML {
        HTML(
            .lang(context.site.language),
            .head(for: context.site),
            .body(
                .grid(
                    .header(for: context),
                    .sidebar(for: context.site),
                    .post(for: item, on: context.site),
                    .footer(for: context.site)
                )
                
            )
        )
    }
    // This is the HTML for the about page
    func makePageHTML(for page: Page, context: PublishingContext<Blog>) throws -> HTML {
        HTML(
           .lang(context.site.language),
           .head(for: context.site),
           .body(
               .grid(
                   .header(for: context),
                   .sidebar(for: context.site),
                   .page(for: page, on: context.site),
                   .footer(for: context.site)
               )
           )
       )
    }
    
    // This HTML provides a list of all tags in the website
    func makeTagListHTML(for page: TagListPage, context: PublishingContext<Blog>) throws -> HTML? {
        HTML(
            .lang(context.site.language),
            .head(for :context.site),
            .body(
                .grid(
                    .header(for: context),
                    .sidebar(for: context.site),
                    .pageContent(
                        .tagList(for: page, on: context.site)
                    ),
                     .footer(for: context.site)
                )
            )
        )
    }
    
    // The HTML to provide list of blog posts for a tag you click on
    func makeTagDetailsHTML(for page: TagDetailsPage, context: PublishingContext<Blog>) throws -> HTML? {
        HTML(
            .lang(context.site.language),
            .head(for: context.site),
            .body(
                .grid(
                    .header(for: context),
                    .sidebar(for: context.site),
                    .pageContent(
                        .a(.href(context.site.tagListPath),
                           .text("For a list of tags on this site, click here!")
                        )
                    ),
                    .posts(
                        for: context.items(
                            taggedWith: page.tag,
                            sortedBy: \.date,
                            order: .descending
                        ),
                        on: context.site,
                        title: "\(page.tag.string.capitalized) posts"
                    ),
                    .footer(for: context.site)
                )
            )
        )
    }
    
    
}
