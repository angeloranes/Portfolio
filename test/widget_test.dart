import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:testing/student_profile_app.dart';

void main() {
  testWidgets('Student profile renders the key information', (tester) async {
    // Build the app and trigger a frame.
    await tester.pumpWidget(const StudentProfileApp());

    // The app bar, name, and student number are visible.
    expect(find.text('Student Profile'), findsOneWidget);
    expect(find.text('Angelo Ranes'), findsOneWidget);
    expect(find.text('2026-534229'), findsOneWidget);

    // The avatar and the three hobby chips are present.
    expect(find.byType(CircleAvatar), findsOneWidget);
    expect(find.byType(Chip), findsNWidgets(4));
  });
}
