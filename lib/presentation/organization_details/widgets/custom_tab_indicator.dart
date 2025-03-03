import 'package:flutter/material.dart';

class CustomTabIndicator extends Decoration {
  final TabController tabController;

  const CustomTabIndicator({required this.tabController});

  @override
  BoxPainter createBoxPainter([VoidCallback? onChanged]) {
    return _CustomBoxPainter(tabController);
  }
}

class _CustomBoxPainter extends BoxPainter {
  final TabController tabController;

  _CustomBoxPainter(this.tabController);

  @override
  void paint(Canvas canvas, Offset offset, ImageConfiguration configuration) {
    final Paint paint = Paint()
      ..color = Colors.white // Change to your preferred color
      ..style = PaintingStyle.fill;

    final double width = configuration.size!.width;
    final double height = configuration.size!.height;
    final double radius = 30.0; // Adjust for more or less curve

    Path path = Path();

    if (tabController.index == 0) {
      // First Tab: Curve on Left
      path.addRRect(RRect.fromRectAndCorners(
        Rect.fromLTWH(offset.dx, offset.dy, width, height),
        topLeft: Radius.circular(radius),
        bottomLeft: Radius.circular(radius),
      ));
    } else if (tabController.index == tabController.length - 1) {
      // Last Tab: Curve on Right
      path.addRRect(RRect.fromRectAndCorners(
        Rect.fromLTWH(offset.dx, offset.dy, width, height),
        topRight: Radius.circular(radius),
        bottomRight: Radius.circular(radius),
      ));
    } else {
      // Middle Tabs: Fully Rounded
      path.addRRect(RRect.fromRectAndCorners(
        Rect.fromLTWH(offset.dx, offset.dy, width, height),
        topLeft: Radius.circular(radius),
        topRight: Radius.circular(radius),
        bottomLeft: Radius.circular(radius),
        bottomRight: Radius.circular(radius),
      ));
    }

    canvas.drawPath(path, paint);
  }
}
