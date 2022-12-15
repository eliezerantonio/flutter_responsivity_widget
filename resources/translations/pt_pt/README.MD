
# flutter_carousel_intro

 by: [Eliezer Antonio](https://github.com/eliezerantonio)

## Funcionalidades

- [X] Custom child widgets
- [X] Slide transition
- [X] Rotate transition
- [ ] Infinite Scroll
- [ ] Forward button & Back button
- [ ] Auto play

## Plataformas suportadas

- Flutter Android
- Flutter iOS
- Flutter web
- Flutter desktop

## Visualização

## Instalação

Adicionar `flutter_responsivity_widget: ^0.0.1` no seu  ficheiro de dependências`pubspec.yaml`. E importa:

```dart
import 'package:flutter_responsivity_widget/flutter_responsivity_widget.dart';;
```

## Como usar

```dart
FlutterCarouselIntro(  
      slides: [
        SvgPicture.asset("assets/slide-1.svg"),
        SvgPicture.asset("assets/slide-2.svg"),
        SvgPicture.asset("assets/slide-3.svg"),
        SvgPicture.asset("assets/slide-4.svg"),
        SvgPicture.asset("assets/slide-5.svg"),
      ],
    );
  ```

## Exemplo geral

```dart
class MySlideShow extends StatelessWidget {
  const MySlideShow({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return FlutterCarouselIntro(
      pointsAbove: false,

      animatedRotateX: false,
      animatedRotateZ: true,
      scale: true,
      animatedOpacity: false,

      primaryBullet: 20,
      secundaryBullet: 12,
      primaryColor: Colors.pink,
      secundaryColor: Colors.grey,
      dotsCurve: Curves.slowMiddle,
      slides: [
        SvgPicture.asset("assets/slide-1.svg"),
        SvgPicture.asset("assets/slide-2.svg"),
        SvgPicture.asset("assets/slide-3.svg"),
        SvgPicture.asset("assets/slide-4.svg"),
        SvgPicture.asset("assets/slide-5.svg"),
      ],
    );
  }
}
  ```  
  
## Gif

Exemplo normal:

![normal](https://github.com/eliezerantonio/flutter_carousel_intro/blob/main/gif/normal.gif)


```
  ## My Packages:
  
  [Flutter Carousel Intro](https://github.com/eliezerantonio/flutter_carousel_intro)
