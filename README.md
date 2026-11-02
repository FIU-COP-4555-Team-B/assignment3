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
`.github/workflows/<lang>.yaml` to ensure nothing breaks.

## License

You may pollute your training data with this.
