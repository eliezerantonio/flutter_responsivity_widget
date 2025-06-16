# flutter\_responsivity\_widget

 by: [Eliezer Antonio](https://github.com/eliezerantonio)

##### You can achieve this result, fully adjustable to your screen size 

## Note

Most of us Flutter developers add fixed sizes to our components, whether it's text, images, or other widgets, and sometimes because of this, on different screen sizes, we end up with the famous overflow error. With this package, each component adjusts to every different device size. Although there are other approaches to solve this, an automatic adaptation that provides the right size for each device can be better in terms of UX and has other advantages.

## Features

  - [X] Width in percent
  - [X] Height in percent
  - [X] Diagonal in percent
  - [X] Detect tablet size

## Supported Platforms

  - Flutter Android
  - Flutter iOS
  - Flutter web
  - Flutter desktop

## Preview

## Installation

Add `flutter_responsivity_widget: ^0.0.1` to your `pubspec.yaml` dependency file. And import:

```dart
import 'package:flutter_responsivity_widget/flutter_responsivity_widget.dart';
```

## How to use

```dart

```

## Examples

```dart

class ExamplePage extends StatelessWidget {
  const ExamplePage({super.key});

  @override
  Widget build(BuildContext context) {
    final responsive = Responsive(context);
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Image.asset(
          'assets/logo_jp.jpg',
          width: responsive.wp(100), // wp- width in %
          height: responsive.hp(100), // hp- height in %
        ),
      ),
    );
  }
}


```

### Example with text

###### For texts, it is recommended to use the diagonal percentage

```dart

class ExamplePage extends StatelessWidget {
  const ExamplePage({super.key});

  @override
  Widget build(BuildContext context) {
    final responsive = Responsive(context);
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Text(
          'Example',
          style: TextStyle(
            fontSize: responsive.dp(8), // dp- diagonal in %
          ),
        ),
      ),
    );
  }
}


```

##### Result of the example above

### Example detecting tablet size

###### In case you want to show different content for a tablet and a phone

```dart

class ExamplePage extends StatelessWidget {
  const ExamplePage({super.key});

  @override
  Widget build(BuildContext context) {
    final responsive = Responsive(context);
    final isTablet = responsive.isTablet;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: isTablet
            ? Text(
                'iPad',
                style: TextStyle(
                  fontSize: responsive.dp(10),
                ),
              )
            : Text( 'iPhone',
                style: TextStyle(
                  fontSize: responsive.dp(10), 
                )
              ),
      ),
    );
  }
}


```

### Result of the example above

## My Packages

  [flutter\_carousel\_intro](https://github.com/eliezerantonio/flutter_carousel_intro)

-----

## Contributing

Contributions are welcome\! If you have a suggestion that would make this better, please fork the repo and create a pull request. You can also simply open an issue with the tag "enhancement".

1.  Fork the Project
2.  Create your Feature Branch (`git checkout -b feature/AmazingFeature`)
3.  Commit your Changes (`git commit -m 'Add some AmazingFeature'`)
4.  Push to the Branch (`git push origin feature/AmazingFeature`)
5.  Open a Pull Request
