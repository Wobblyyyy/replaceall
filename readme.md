# replaceall
Very small application for replacing all instances of a certain string with
another string.

## Dependencies
The only dependency is a working installation of the v language.

## Building
It's not very challenging, to be honest:
```
$ v replaceall.v
```

## Usage
There's only a single command.
```
$ ./replaceall {{{search text}}} {{{replace text}}} {{{path}}}
```

### Examples
```
$ ./replaceall "hello there!" "here's some cool text" .
```
Replace all instances of "hello there" with "here's some cool text". Using
a dot as the path will use the current directory.

```
$ ./replaceall "123" "xyz" "./folder_1" "./folder_2" "./folder_3"
```
Replace all instances of "123" with "xyz" in the directories "folder_1",
"folder_2", and "folder_3".

## License
This project uses the MIT license. I could care less what you do with all
30 lines of code here.
