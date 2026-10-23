import 'package:flutter_test/flutter_test.dart';
import 'package:flower_shop/main.dart';

void main() {
  testWidgets('shows the shop title', (WidgetTester tester) async {
    await tester.pumpWidget(const FlowerShopApp());

    expect(find.text('Ailin Flower Shop'), findsOneWidget);
  });
}
