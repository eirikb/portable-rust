# Portable Rust!

![hello.png](hello.png)
<!-- Yes i know "shutterstock" is visible. Hopefully this is more legal =D -->

Not actually portable. It's just a hack, but it makes it possible to create a single binary which will run on many
systems.

Systems include anything you like (Windows, Mac, Linux, ARM...), all it requires is a shell to run. For Windows this
means MinGW (git bash) or similar.

### How

* Self-extracting shell script
* Includes one build of your Rust app for every target
* Tries to run each app one by one until one hopefully works

### Dependencies

* Shell (sh, bash, fish, zsh, etc.)
* tar
* gunzip
* chmod
* tail
* mktemp

### Release of "hello"

If you like to test the output, here is the "hello" example executable.  
Run on your own responsibility!

[Download from releases](../../releases/latest/download/hello)

Run like this:

```bash
sh hello
```

This build supports:

* Windows x86_64
* Mac x86_64
* Linux x86_64
* Linux ARMv7 (added to prove it can support other architecture targets)

### Why

For glory!  
Nice for distributing a single file without installer. Say a simple web server.

> This hack isn't strictly related to Rust!

True, it would work on any binaries built for multiple platforms.  
However, building might be a requirement, especially when dealing with directories.

### Windows

> I want to doubleclick in Windows!

No idea how to achieve this. I know [Cosmopolitan](https://github.com/jart/cosmopolitan) have a hack for it, something
about Windows seeing an executable, while on other systems it becomes a script?  
To do something like that custom-built versions of tar+gunzip+tail+mktemp/mkdir would have to be made, or use built in
programs in Windows as much as possible.