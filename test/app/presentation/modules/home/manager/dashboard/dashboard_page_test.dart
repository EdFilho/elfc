import 'package:elfc/app/presentation/components/components.dart';
import 'package:elfc/app/presentation/modules/manager/dashboard/components/components.dart';
import 'package:elfc/app/presentation/modules/manager/dashboard/dashboard.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:get/get.dart';
import 'package:mockito/mockito.dart';

// Mock the controller
class MockDashboardController extends Mock implements DashboardController {}

void main() {
  group('DashboardPage Widget Test', () {
    late MockDashboardController mockController;

    setUp(() {
      mockController = MockDashboardController();
      // Initialize the controller
      Get.put<DashboardController>(mockController);
    });

    tearDown(() {
      // Remove the controller after the test is done
      Get.delete<DashboardController>();
    });

    testWidgets('should show the appbar', (WidgetTester tester) async {
      // Build the widget
      await tester.pumpWidget(const GetMaterialApp(
        home: DashboardPage(),
      ));

      // Expect to find the appbar
      expect(find.byType(AppBar), findsOneWidget);
    });

    testWidgets('should show the finance balance', (WidgetTester tester) async {
      // Mock the value of the finance balance

      // Build the widget
      await tester.pumpWidget(const GetMaterialApp(home: DashboardPage()));

      // Expect to find the finance balance with the correct value
      expect(find.byType(FinanceBalance), findsOneWidget);
      expect(find.text('5000'), findsOneWidget);
    });

    testWidgets('should show the expenses card', (WidgetTester tester) async {
      // Build the widget
      await tester.pumpWidget(const GetMaterialApp(home: DashboardPage()));

      // Expect to find the expenses card
      expect(find.byType(ExpensesCard), findsOneWidget);
    });
  });
}
