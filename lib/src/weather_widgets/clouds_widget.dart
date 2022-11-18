import 'package:flutter/material.dart';

import '../model/configs.dart';

class CloudWidget extends StatefulWidget {
  const CloudWidget({Key? key, this.cloudConfig = const CloudConfig()})
      : super(key: key);

  final CloudConfig cloudConfig;

  @override
  State<CloudWidget> createState() => _CloudWidgetState();
}

class _CloudWidgetState extends State<CloudWidget>
    with TickerProviderStateMixin {
  late final AnimationController controller;
  late Animation<double> scaleAnimation;
  late Animation<Offset> slideAnimation;

  late CloudConfig _config;

  @override
  void initState() {
    super.initState();

    controller = AnimationController(vsync: this);
    _initAnimation();
  }

  void _initAnimation() {
    _config = widget.cloudConfig;

    controller.duration = Duration(milliseconds: _config.slideDurMill);
    scaleAnimation =
        Tween(begin: _config.scaleBegin, end: _config.scaleEnd).animate(
      CurvedAnimation(parent: controller, curve: _config.scaleCurve),
    );
    slideAnimation = Tween(
      begin: Offset.zero,
      end: Offset(_config.slideX / _config.size, _config.slideY / _config.size),
    ).animate(CurvedAnimation(parent: controller, curve: _config.slideCurve));
    controller.repeat(reverse: true);
  }

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: _config.x,
      top: _config.y,
      child: SizedBox.shrink(
        child: SlideTransition(
          position: slideAnimation,
          child: ScaleTransition(
            scale: scaleAnimation,
            child: _config.widgetCloud ?? // todo correct size widget
                Icon(
                  _config.icon,
                  color: _config.color,
                  size: _config.size,
                ),
          ),
        ),
      ),
    );
  }

  @override
  void didUpdateWidget(covariant CloudWidget oldWidget) {
    super.didUpdateWidget(oldWidget);

    final oldConfig = oldWidget.cloudConfig;
    final nowConfig = widget.cloudConfig;

    // rebuild only what is used in the `build` method
    if (oldConfig.x != nowConfig.x ||
        oldConfig.y != nowConfig.y ||
        oldConfig.icon != nowConfig.icon ||
        oldConfig.color != nowConfig.color) {
      _config = nowConfig;
      return;
    }

    // rebuild all
    if (oldConfig != nowConfig) {
      _initAnimation();
    }
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }
}

class CloudsTwoWidget extends StatelessWidget {
  const CloudsTwoWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: const [
        CloudWidget(
          cloudConfig: CloudConfig(
            size: 250,
            scaleBegin: 1.0,
            scaleEnd: 1.08,
            slideDurMill: 3000,
            slideX: 12.5,
          ),
        ),
        CloudWidget(
          cloudConfig: CloudConfig(
            // transform: Matrix4.rotationX(0.6),
            y: 150.0,
            size: 160,
            scaleBegin: 1.0,
            scaleEnd: 1.1,
            slideDurMill: 2000,
            slideX: 25,
          ),
        ),
      ],
    );
  }
}
