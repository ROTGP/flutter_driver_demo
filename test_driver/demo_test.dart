import 'dart:async';
import 'package:flutter_driver/flutter_driver.dart';
import 'package:test/test.dart';

void main() {
  group('calculator', () {
    FlutterDriver driver;

    setUpAll(() async {
      // Connects to the app
      driver = await FlutterDriver.connect();
    });

    tearDownAll(() async {
      if (driver != null) {
        // Closes the connection
        driver.close();
      }
    });
    
    test('calculator test', () async {
      await driver.waitFor(find.text('0'));
      await driver.tap(find.byTooltip('Increment'));
      await driver.waitFor(find.text('1'));   
    });  
  });
}