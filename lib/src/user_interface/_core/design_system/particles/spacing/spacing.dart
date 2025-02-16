import 'package:flutter/widgets.dart' show SizedBox, EdgeInsets, BorderRadius;

abstract class SpaceUnits<T extends Object> {
  T get none;
  T get one;
  T get nano;
  T get xxs;
  T get extraSmall;
  T get small;
  T get regular;
  T get large;
  T get extraLarge;
  T get xxl;
  T get xxxl;
  T get huge;
}

abstract class HorizontalSpaces implements SpaceUnits<SizedBox> {
  const HorizontalSpaces();

  double get betweenSelectorItems;
}

abstract class VerticalSpaces implements SpaceUnits<SizedBox> {
  const VerticalSpaces();

  double get betweenSelectorItems;
}

abstract class Paddings implements SpaceUnits<EdgeInsets> {
  const Paddings();
  EdgeInsets get patientListItem;
  EdgeInsets get captureExpressionlistItem;
  EdgeInsets get listItem;
  EdgeInsets get page;
  EdgeInsets get previewPage;
  EdgeInsets get dialog;
  EdgeInsets get button;
  EdgeInsets get dialogButton;
  EdgeInsets get containedButton;
  EdgeInsets get rangeSlider;
  EdgeInsets get onboardingPage;
}

abstract class HorizontalPaddings implements SpaceUnits<EdgeInsets> {
  const HorizontalPaddings();
}

abstract class VerticalPaddings implements SpaceUnits<EdgeInsets> {
  const VerticalPaddings();
}

abstract class LeftPaddings implements SpaceUnits<EdgeInsets> {
  const LeftPaddings();
}

abstract class RightPaddings implements SpaceUnits<EdgeInsets> {
  const RightPaddings();
}

abstract class TopPaddings implements SpaceUnits<EdgeInsets> {
  const TopPaddings();
}

abstract class BottomPaddings implements SpaceUnits<EdgeInsets> {
  const BottomPaddings();
}

abstract class BorderRadiusCircular implements SpaceUnits<BorderRadius> {
  const BorderRadiusCircular();

  BorderRadius get button;
  BorderRadius get buttonSmall;
  BorderRadius get buttonMedium;
}
