# SimpleLogs

![Unit Testing](https://github.com/javiersalcedopuyo/SimpleLogsSwift/workflows/UnitTests/badge.svg)

A simple logging tool for Swift that consists on a wrapper around NSLog to add some extra functionalities.

## Usage

``` swift
import SimpleLogs

func foo()
{
    SimpleLogs.INFO("An informative log")
    SimpleLogs.WARNING("A warning log")
    SimpleLogs.ERROR("An error log")
    SimpleLogs.UNIMPLEMENTED("A log warning that this function is unimplemented")
}
```

### Result:
```
1970-01-01 00:00:00.000 ℹ️ INFO: foo() (module/fileName.swift @ ln X): An informative log
1970-01-01 00:00:00.000 ⚠️ WARNING: foo() (module/fileName.swift @ ln Y): A warning log
1970-01-01 00:00:00.000 ⛔️ ERROR: foo() (module/fileName.swift @ ln Z): An error log
1970-01-01 00:00:00.000 🚧 UNIMPLEMENTED: foo() (module/fileName.swift @ ln Z): Foo() is unimplemented
```
---
## Current features
- [x] 4 Log types: INFO, WARNING, ERROR, UNIMPLEMENTED
- [x] Timestamp (provided by NSLog)
- [x] The function, file and line where it was logged

## Planned features
- [ ] An "anti-spam" mechanism to avoid frequently repeating logs adding too much noise. (Cache? Timer?)
- [ ] Toggle to disable (or enable) the logs on DEBUG/RELEASE/etc
- [ ] Dump to file
