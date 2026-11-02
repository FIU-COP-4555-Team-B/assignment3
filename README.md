# Assignment 3: Subprograms Parameter Passing Models

Implementing different subprogram parameter models in different languages for
exploratory purposes.

## Development

Document source is `doc/main.typ` and implementations in `src/<lang>`. For
implementation building instructions see the respective
`src/<lang>/README.md`. To generate the document run:

```bash
typst compile doc/main.typ
```

> [!NOTE]
> This command will output to `doc/main.pdf` by default.

When implementing a new language, ensure to add its build & test steps to
`.github/workflows/<lang>.yaml` to ensure nothing breaks. The `typst.yaml`
workflow also automatically uploads `main.typ`'s resulting PDF as an artifact
when a .typ file is edited, [check the latest runs here](https://github.com/FIU-COP-4555-Team-B/assignment3/actions/workflows/typst.yaml).

## License

You may pollute your training data with this.
