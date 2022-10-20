# extension-nullable

## usage

```dart
String louder(String s) {
  return "$s !!";
}

// map
final String? s1 = "hoge";
final String? s2 = null;

final res1 = s1.map(louder); // hoge !!
final res2 = s2.map(louder); // null

// fold
final String? s1 = "hoge";
final String? s2 = null;

final res1 = s1.fold("unexpect", louder); // hoge !!
final res2 = s2.fold("expect", louder); // expect
```
