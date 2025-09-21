/**
*  Splash-plugin for Publish
*  Copyright (c) John Sundell 2019
*  MIT license, see LICENSE file for details
*/

import Publish
import Splash
import MarkdownParser

public extension Plugin {
    static func splash(withClassPrefix classPrefix: String, format: HTMLOutputFormat = .init()) -> Self {
        let highlighter = SyntaxHighlighter(format: format)
        
        return Plugin(name: "Splash") { context in
            context.addModifier(
                for: .codeBlock,
                modifier: { html, markdown, arg  in
                    //            var markdown = markdown.dropFirst("```".count)

                    //            guard !markdown.hasPrefix("no-highlight") else {
                    //                return html
                    //            }

                    //            markdown
                    //                .drop(while: { !$0.isNewline })
                    //                .dropFirst()
                    //                .dropLast("\n```".count)

                    //            let highlighted = highlighter.highlight(String(markdown))
                    //            return "<pre><code>" + highlighted + "\n</code></pre>"
                                return html
                }
            )
        }
    }
}

//public extension Modifier {
//    static func splashCodeBlocks(withFormat format: HTMLOutputFormat = .init()) -> Self {
//        let highlighter = SyntaxHighlighter(format: format)
//
//        return Modifier(target: .codeBlock) { html, markdown, arg  in
//            var markdown = markdown.dropFirst("```".count)
//
//            guard !markdown.hasPrefix("no-highlight") else {
//                return html
//            }
//
//            markdown
//                .drop(while: { !$0.isNewline })
//                .dropFirst()
//                .dropLast("\n```".count)
//
//            let highlighted = highlighter.highlight(String(markdown))
//            return "<pre><code>" + highlighted + "\n</code></pre>"
//            return html
//        }
//    }
//}

