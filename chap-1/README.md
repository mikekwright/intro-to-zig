Chapter 1 - Introducing Zig
==============================================

Zig Philosophy (from website)

> “Focus on debugging your application rather than debugging your
> programming language knowledge”.

## Main

* `main()` should live in the `src/main.zig` for applications.
* libraries should delete `src/main.zig` and focus on `src/root.zig`.

`build.zig` is the build script (a zig application for building).
`build.zig.zon` is json that outlines project setup (with dependencies)

## Building

`zig build` is the process to build when in the folder and will use
the `build.zig` file.

## Extern (export)

The `export` keyboard is like the `extern` from C for its use.

