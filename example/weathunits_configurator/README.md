
## Weathunits configurator

![](assets/weather_configurator_screen.png)

## What's that?

Weathunits configurator is an application for creating a variety of weather conditions through an interface.

Try the link right now on the web: [Weathunits configurator](https://packruble.github.io/weather_animation/)

### Features

* create weather scenes using `Weathunit' weather elements. The following weather elements are supported:

  `enum TypeWeather { sun, rain, thunder, snow, cloud, wind }`

* adjusting item settings, including color, logical variables and fractions
* adjusting canvas sizes
* adjusting background colors (transparency is supported!) as well as gradient. Drag and drop included
* conveniently add/locate/delete `Weathunit' weather elements
* copy the resulting code with one button. It is also possible to copy some parameters
* full screen view of the resulting weather picture
* emergency button :)
* customizable interface, light/dark application theme

### How to use

Build your project on whatever you like. Tested the builds on: windows, web, android.

```shell
flutter build windows
```
```shell
flutter build apk 
```

**_NOTE!_** 

Due to the fact that some of the application logic is tied to `runtimeType` it is recommended to use the application NOT on the web, because `int` and `double` types are handled differently on native and web platforms. Good material on this subject can be found here:
[Numbers in Dart](https://dart.dev/guides/language/numbers)
