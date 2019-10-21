import 'main.dart';
import 'package:test/test.dart';

void main() {
  test("test case 1", () {
    expect(posNegSort([6, 3, -2, 5, -8, 2, -2]), [2, 3, -2, 5, -8, 6, -2]);
  });
  test("test case 2", () {
    expect(karacasEncryption('apple'), '1lpp0aca');
  });
}
