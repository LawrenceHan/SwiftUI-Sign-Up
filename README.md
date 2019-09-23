# SwiftUI-Sign-Up

## A simple SwiftUI sign up demo:

- Observable object
- Keyboard avoiding
- Animation
- Translate Chinese characters to pinyin

## Know issues:

- The `TextField` cannot process Chinese character (Xcode GM2 bug)
- The observed object `User` doesn't passes as `@Binding` to PYTextFieldView cus it breaks animation somehow.
- The enum `PYTextFieldType`'s raw value doesn't display localized string, so I have to create a get method.

## Please feel free to change & use the code

## P.S:

~~- PY means PinYin instead of PiYan~~ 
