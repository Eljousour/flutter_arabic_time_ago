# Flutter Arabic Time Ago

[![pub package](https://img.shields.io/pub/v/arabic_time_ago_flutter.svg)](https://pub.dev/packages/flutter_arabic_time_ago)

Flutter Arabic Time Ago is a package that provides a simple and convenient way to display time intervals in Arabic, indicating how much time has passed since a given moment. It's particularly useful for Flutter applications targeting Arabic-speaking audiences.

## Features

- Format time intervals in a user-friendly Arabic format, such as "منذ بضع ثوانٍ" (a few seconds ago), "منذ 5 دقائق" (5 minutes ago), and more.
- Easily integrate time ago functionality into your Flutter apps.
- Customize the output format to match your app's design and style.

## Installation

To use this package, add `arabic_time_ago_flutter` as a dependency in your `pubspec.yaml` file.

```yaml
dependencies:
  flutter:
    sdk: flutter
  arabic_time_ago_flutter: ^1.0.0
```

## Usage

Import the package:

```dart
import 'package:flutter_arabic_time_ago/arabic_time_ago.dart';
```

Use the provided methods to format time intervals:

```dart
int timestamp = DateTime.now().microsecondsSinceEpoch;
String timeAgo = ArabicTimeAgo.getTimeAgo(timestamp);
print('Time ago: $timeAgo');
```

For more examples and customization options, check the documentation.

## Changelog

See the Changelog for details about each release.

## License

This package is open-source and available under the [MIT License](https://github.com/Eljousour/flutter_arabic_time_ago/blob/main/LICENSE.txt).

Found a bug or want to contribute? Feel free to [create an issue](https://github.com/Eljousour/flutter_arabic_time_ago/issues/new) or submit a pull request!
