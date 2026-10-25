import 'package:flutter_test/flutter_test.dart';

import 'package:shopease/main.dart';

void main() {
  testWidgets('ShopEase app loads splash screen', (tester) async {
    await tester.pumpWidget(const ShopEaseApp());

    expect(find.text('ShopEase'), findsOneWidget);
  });
}
