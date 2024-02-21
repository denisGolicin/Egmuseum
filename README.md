# Интерактивный музей
#### Описание и техническое задание для приложений Desktop и Android

##### Описание проекта от заказчика
> [!NOTE]
> По карте ВОВ - у нас будет проекция карты на стекло витрины с картой основных военных действий. При нажатии на точку на карте транслируется хроника военных событий, затем появляется фотография егорьевского героя - участника этого сражения (или нескольких), документы. Звуковое сопровождение:шум боя, песни военных лет. Короткий рассказ, кот. дублируется текстом. Кнопка возврата на карту, при бездействии через 1 мин.? возвращение на карту. В наличии ультра короткофокусный проектор, медиаплеер с выводом на общий сервер, кот. диммирует свет в витринах при включении проектора. Нет стекла под проекцию (обратную?)


[Видео](https://www.youtube.com/watch?v=Ojqm1y1D1ck), [Сайт музея](https://egmuseum.ru/), [Figma]()

<br>

## Desktop App
<div align="center">
  
  | Задача                 |      Язык      |  Среда       |   Фреймворк   |   Источник
  |------------------------|:--------------:|-------------:|---------------:|--------------:|
  |  Обёртка               |  C#            |  MVS         | .NET Framework | [webview2](https://learn.microsoft.com/ru-ru/microsoft-edge/webview2/get-started/winforms) |
  |  Обёртка               |  Python        |  -           | -              | [pywebview](https://pypi.org/project/pywebview/)                                           |
  |  Сервер(host)          |  PHP           |  -           | -              | -
  |  Сервер(local)         |  Python        |  -           | Flask          | [pypi](https://pypi.org/project/Flask/)     |
  |  Сборка                |  Python        |  -           | cx-Freeze      | [pypi](https://pypi.org/project/cx-Freeze/) |

  
</div>

## Android App
<div align="center">

  | Задача                 |      Язык      |  Фреймворк/пакет       |   Источник    |
  |------------------------|:--------------:|-----------------------:|--------------:|
  |  Исполняемый .apk      |  Dart          |  flutter               | [Get Started](https://docs.flutter.dev/get-started/install) |
  |  Браузер               |  Dart          |  webview_flutter       | [package](https://pub.dev/packages/webview_flutter)         |
  
</div>

## Web App
<div align="center">

  | Задача                 |      Язык      |  Фреймворк/пакет       |   Источник    |
  |------------------------|:--------------:|-----------------------:|--------------:|
  |  Интерфейс             |  JavaScript    |  React                 | [Get Started](https://legacy.reactjs.org/docs/getting-started.html?url=https%3A%2F%2Freactjs.org%2Fdocs%2Fgetting-started.html) |
  
</div>
<br>
