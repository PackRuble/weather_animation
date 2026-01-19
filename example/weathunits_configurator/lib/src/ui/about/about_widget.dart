import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class AboutButton extends StatelessWidget {
  const AboutButton({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        showAboutDialog(
          context: context,
          applicationName: 'Weather Configurator',
          applicationVersion: 'stable version',
          applicationLegalese: 'Copyright 2022-2025 PackRuble',
          children: [const AboutWidget()],
        );
      },
      icon: const Icon(Icons.favorite_rounded),
    );
  }
}

class AboutWidget extends StatelessWidget {
  const AboutWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return ConstrainedBox(
      constraints: const BoxConstraints(
        maxWidth: 400,
      ),
      child: Column(
        children: [
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Label(
                  url: 'https://t.me/+AkGV73kZi_Q1YTMy',
                  textForWeb: 'Telegram group',
                  imageLink:
                      'https://raster.shields.io/badge/telegram-❤️-252850?style=plastic&logo=telegram',
                ),
                Label(
                  url: 'https://pub.dev/packages/weather_animation',
                  textForWeb: 'pub.dev',
                  imageLink:
                      'https://raster.shields.io/pub/v/weather_animation.svg?style=plastic',
                ),
                Label(
                  url: 'https://github.com/PackRuble/weather_animation',
                  textForWeb: 'github.com',
                  imageLink:
                      'https://raster.shields.io/github/stars/PackRuble/weather_animation?style=plastic',
                ),
              ],
            ),
          ),
          SelectableText(
            '''
This application helps you to conveniently use the weather_animation package. Click on the icons above to follow the relevant links.
You can say something in the author’s Telegram group (I’m waiting for hugs)!''',
            style: textTheme.bodyMedium?.copyWith(
              fontStyle: FontStyle.italic,
            ),
          ),
          Align(
            alignment: Alignment.centerRight,
            child: Text(
              'With love, for you ❤',
              style: textTheme.labelMedium,
            ),
          ),
        ],
      ),
    );
  }
}

class Label extends StatelessWidget {
  const Label({
    super.key,
    required this.url,
    required this.imageLink,
    required this.textForWeb,
  });

  final String url;
  final String imageLink;
  final String textForWeb;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;

    return Tooltip(
      message: url,
      child: InkWell(
        onTap: () => launchUrl(
          Uri.parse(url),
          mode: LaunchMode.externalNonBrowserApplication,
        ),
        child: kIsWeb
            ? Text(
                textForWeb,
                semanticsLabel: url,
                style:
                    textTheme.titleSmall?.copyWith(color: theme.primaryColor),
              )
            : Image.network(
                imageLink,
                semanticLabel: url,
                errorBuilder: (_, __, ___) => const SizedBox.shrink(),
                filterQuality: FilterQuality.high,
                isAntiAlias: true,
              ),
      ),
    );
  }
}
