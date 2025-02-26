import 'package:flutter/cupertino.dart';

import '../../../../utils/constants/colors.dart';
import '../curved_edges/curved_edges_widget.dart';
import 'circular_container.dart';

class TPrimaryHeaderContainer extends StatelessWidget {
  const TPrimaryHeaderContainer({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return TCurvedEdgeWidget(
      child: SizedBox(
        height: 400,
        child: Container(
          color: TColors.primary,

          /// -- If [size.isFinite: is not true.in Stack] error occurred -> Read README.md file
          child: Stack(
            children: [
              /// -- Background Custom Shapes
              Positioned(top: -150, right: -250, child: TCircularContainer(backgroundColor: TColors.textWhite.withValues(alpha: 0.1))),
              Positioned(top: 100, right: -300, child: TCircularContainer(backgroundColor: TColors.textWhite.withValues(alpha: 0.1))),
              child,
            ],
          ),
        ),
      ),
    );
  }
}