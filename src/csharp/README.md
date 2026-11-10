# C# pass-by-result example

Run the example with the .NET 10 SDK:

```bash
dotnet run --project Assignment3.csproj
```

Because C# has no native pass-by-result parameter mode, `ProduceResults`
returns a tuple that the caller copies into its output variables after the call.
