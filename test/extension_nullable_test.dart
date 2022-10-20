import 'package:extension_nullable/extension_nullable.dart';
import 'package:test/test.dart';

void main() {
  group('nullable', () {
    String louder(String s) {
      return "$s !!";
    }

    test('map', () {
      final String? s1 = "hoge";
      final String? s2 = null;

      final res1 = s1.map(louder);
      final res2 = s2.map(louder);

      expect(res1, equals("hoge !!"));
      expect(res2, equals(null));
    });
    test('fold', () {
      final String? s1 = "hoge";
      final String? s2 = null;

      final res1 = s1.fold("unexpect", louder);
      final res2 = s2.fold("expect", louder);

      expect(res1, equals("hoge !!"));
      expect(res2, equals("expect"));
    });
  });
}
