import 'package:flutter/material.dart';

class FadedAnimationWidget extends StatefulWidget {
  final Widget child;

  const FadedAnimationWidget({super.key, required this.child});

  @override
  State<FadedAnimationWidget> createState() => _FadedAnimationWidgetState();
}

/// [AnimationController]s can be created with `vsync: this` because of
/// [TickerProviderStateMixin].
class _FadedAnimationWidgetState extends State<FadedAnimationWidget>
    with TickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(
    duration: const Duration(milliseconds: 1400),
    vsync: this,
  )..repeat(reverse: true);
  late final Animation<double> _animation = CurvedAnimation(
    parent: _controller,
    curve: Curves.slowMiddle,
  );

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FadeTransition(
      opacity: _animation,
      child: widget.child,
    );
  }
}