import 'package:flutter/widgets.dart';

double screenWidth(BuildContext context) {
  return MediaQuery.sizeOf(context).width;
}

double screenHeight(BuildContext context) {
  return MediaQuery.sizeOf(context).height;
}

extension Margin on num {
  SizedBox get sh => SizedBox(
        height: toDouble(),
      );
  SizedBox get sw => SizedBox(
        width: toDouble(),
      );
}
