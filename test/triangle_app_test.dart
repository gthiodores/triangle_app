import 'package:flutter_test/flutter_test.dart';
import 'package:triangle_app/triangle_app.dart';

void main() {
  group('Detect the triangle', () {
    test('Should throw error when a side has a value of less than 1', () {
      expect(() => detectTriangle(-1, 2, 2), throwsException);
      expect(() => detectTriangle(1, -2, 2), throwsException);
      expect(() => detectTriangle(1, 2, -2), throwsException);
    });

    test('Should return "Segitiga Sama Sisi" when all sides are equal', () {
      expect(detectTriangle(1, 1, 1), "Segitiga Sama Sisi");
      expect(detectTriangle(2, 2, 1), isNot("Segitiga Sama Sisi"));
    });

    test('Should return "Segitiga Sama Kaki" when only two sides are equal',
        () {
      expect(detectTriangle(2, 2, 1), "Segitiga Sama Kaki");
      expect(detectTriangle(2, 1, 2), "Segitiga Sama Kaki");
      expect(detectTriangle(1, 2, 2), "Segitiga Sama Kaki");
      expect(detectTriangle(4, 1, 4), "Segitiga Sama Kaki");
    });

    test('Should return "Segitiga Sembarang" when no sides are equal', () {
      expect(detectTriangle(2, 3, 4), "Segitiga Sembarang");
    });
  });
}
