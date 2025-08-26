#set page(paper: "a4")

// Single import case
#import "@preview/example:0.0.1": *

// Multiple imports
#import "@preview/tablex:0.0.3": tablex, gridx
#import "@preview/cetz:0.4.1": canvas, plot
#import "@local/mylib:1.2.0": helper

// Different version formats
#import "@preview/pkg1:1.0.0": *
#import "@preview/pkg2:0.1.0-beta.1": *
#import "@preview/pkg3:2.1.0-alpha": *

// This is a comment
#import "@preview/example:1.0.0": *
/* Multi-line
   comment */
#import "@preview/another:2.0.0": *

// Multiple imports on same line
#import "@preview/pkg1:1.0.0": * #import "@preview/pkg2:2.0.0": *

// Invalid import formats (should be ignored)
#import "regular/path": *
import "@preview/pkg:1.0.0": *
#import @preview/pkg:1.0.0: *
#import "@preview/valid:1.0.0": *

// Non-preview namespaces (with skipReason)
#import "@preview/valid:1.0.0": *
#import "@local/local-pkg:2.0.0": *
#import "@custom/custom-pkg:3.0.0": *

// Some actual document content without imports
#set text(font: "Linux Libertine")
= Introduction
This is a document with various import patterns.

= Content
Some regular content here.

/* Block comment with fake import
#import "@preview/commented:1.0.0": *
*/

// End of test file
