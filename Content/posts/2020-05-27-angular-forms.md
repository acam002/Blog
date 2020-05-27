---
date: 2020-05-27 00:48
description: Which one should you pick?
tags: angular, web

excerpt: Which one should you pick?
---
# Angular Forms: Reactive or Template-driven

Forms are an integral part of almost any web application and in the world of angular we are given two options: reactive forms and template-driven forms. Both have their advantages and disadvantages.

Here are the advantages and disadvantages:

|| Reactive | Template-driven |
| -------- | -------- | -------- |
| Setup (form model) | Created in component class | Created by directives |
| Data model | Structured | Unstructured |
| Predictability | Synchronous | Asynchronous |
| Form validation | Functions | Directives |
| Mutability | Immutable | Mutable |
| Scalability | Low-level API access | Abstraction on top of APIs |

Reactive forms give us explicit control of our forms in a `FormGroup`. But with explicit control comes more responsbility on our side compared to template-driven forms where angular directives handle the work for us. We get a lot more custom control which is great if you want a real nice looking website with all the cool workings.

If you want something quick and dirty, then template-driven forms will be right up your alley. You don't have to worry about the inner workings on how your component is getting it done. Just create the components and use the directives in the HTML and your form will work just fine.

An important thing to note is how the `FormModel` instance is synced to what is on the rendered UI. In a reactive form, all the running parts are synchronized. So when you are accessing the information in the DOM or in the component logic itself, you will get the same information.

With a template driven form, there is a short moment where the directive is communicating with the `FormModel` instance and the rendered UI  via `Observables`. So results may vary when accessing data from the DOM or in the component logic itself. 



        
        
        
        




