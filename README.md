# DevTools

A ecosystem for custom tools.

Clone this repo and run:

```
devtools/run
```

Then it will describe the commands.

Each command should run when autocalled or show its suboptions.

## Extending

The coding can be in any language, and each language dependencies must be
under `lib` directory.

The `lib/run` have all the shellscripts, one per command. Each shellscript
can have multiple subcommands, one per function started where function name
must be prefixed with `RunMethod_` and use onlu alphanumeric and underscore in
its name. To be called, each underscore is converted to hyphen.

So:

`devtools/run server update-files`

will trigger the function `RunMethod_update_files` under the `lib/run/server.sh`
