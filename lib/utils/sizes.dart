import 'package:flutter/material.dart';

class DSizes {
  static double screenWidth(BuildContext context) =>
      MediaQuery.of(context).size.width;
  static double screenHeight(BuildContext context) =>
      MediaQuery.of(context).size.height;

  //bottom bar
  static double bottomBarHeight(BuildContext context) =>
      screenHeight(context) * 0.08;

  // Padding and Margin Sizes
  static double xs(BuildContext context) => screenWidth(context) * 0.01;
  static double sm(BuildContext context) => screenWidth(context) * 0.02;
  static double md(BuildContext context) => screenWidth(context) * 0.04;
  static double sfont(BuildContext context) => screenWidth(context) * 0.027;
  static double lg(BuildContext context) => screenWidth(context) * 0.06;
  static double xl(BuildContext context) => screenWidth(context) * 0.08;
  static double xxl(BuildContext context) => screenWidth(context) * 0.11;
  static double xxxl(BuildContext context) => screenWidth(context) * 0.13;

  // Icon Sizes
  static double iconXs(BuildContext context) => screenWidth(context) * 0.03;
  static double iconSm(BuildContext context) => screenWidth(context) * 0.05;
  static double iconMd(BuildContext context) => screenWidth(context) * 0.07;
  static double iconLg(BuildContext context) => screenWidth(context) * 0.09;

  // Font Sizes
  static double fontSizeSm(BuildContext context) =>
      screenWidth(context) * 0.035;
  static double fontSizeMd(BuildContext context) => screenWidth(context) * 0.04;
  static double fontSizeLg(BuildContext context) =>
      screenWidth(context) * 0.055;
  static double fontSizeXLg(BuildContext context) =>
      screenWidth(context) * 0.065;

  // Text feild height and width
  static double textFieldWidth(BuildContext context) =>
      screenWidth(context) * 0.5;
  static double textFieldHeight(BuildContext context) =>
      screenWidth(context) * 0.15;

  // Container height and width
  static double smallContainerWidth(BuildContext context) =>
      screenWidth(context) * 0.38;
  static double smallContainerHeight(BuildContext context) =>
      screenWidth(context) * 0.14;
  static double largeContainerWidth(BuildContext context) =>
      screenWidth(context) * 0.38;
  static double largeContainerHeight(BuildContext context) =>
      screenHeight(context) * 0.38;


  // Button Sizes
  static double buttonHeight(BuildContext context) =>
      screenHeight(context) * 0.06;
  static double buttonRadius(BuildContext context) =>
      screenWidth(context) * 0.03;
  static double buttonWidth(BuildContext context) => screenWidth(context) * 0.3;
  static double buttonElevation(BuildContext context) =>
      screenWidth(context) * 0.01;

  // Image Sizes
  static double imageThumbSize(BuildContext context) =>
      screenWidth(context) * 0.2;
  static double appLogo(BuildContext context) => screenWidth(context) * 0.15;

  //Onboarding Image height
  static double largeImage(BuildContext context) => screenHeight(context) * 0.4;

  // Default Spacing Between Sections
  static double defaultSpace(BuildContext context) =>
      screenWidth(context) * 0.06;
  static double spaceBtwItems(BuildContext context) =>
      screenWidth(context) * 0.04;
  static double smallSizedBoxWidth(BuildContext context) =>
      screenWidth(context) * 0.035;
  static double smallSizedBoxHeight(BuildContext context) =>
      screenHeight(context) * 0.01;
  static double spaceBtwSections(BuildContext context) =>
      screenWidth(context) * 0.08;

  // Border Radius
  static double borderRadiusSm(BuildContext context) =>
      screenWidth(context) * 0.01;
  static double borderRadiusMd(BuildContext context) =>
      screenWidth(context) * 0.02;
  static double borderRadiusLg(BuildContext context) =>
      screenWidth(context) * 0.03;
  static double borderRadiusCircular(BuildContext context) =>
      screenWidth(context) * 0.09;

  // Divider Height
  static double dividerHeight(BuildContext context) =>
      screenWidth(context) * 0.0025;

  // Profile Image Dimensions
  static double profileImageSize(BuildContext context) =>
      screenWidth(context) * 0.3;
  static double profileImageRadius(BuildContext context) =>
      screenWidth(context) * 0.04;
  static double profileImageHeight(BuildContext context) =>
      screenHeight(context) * 0.4;

  // Input Field
  static double inputFieldRadius(BuildContext context) =>
      screenWidth(context) * 0.03;
  static double spaceBtwInputFields(BuildContext context) =>
      screenWidth(context) * 0.04;

  // Card Sizes
  static double cardRadiusLg(BuildContext context) =>
      screenWidth(context) * 0.04;
  static double cardRadiusMd(BuildContext context) =>
      screenWidth(context) * 0.03;
  static double cardRadiusSm(BuildContext context) =>
      screenWidth(context) * 0.025;
  static double cardRadiusXm(BuildContext context) =>
      screenWidth(context) * 0.015;
  static double cardElevation(BuildContext context) =>
      screenWidth(context) * 0.005;

  // Image Carousel Height
  static double imageCarouselHeight(BuildContext context) =>
      screenHeight(context) * 0.52;

  // Loading Indicator Size
  static double loadingIndicatorSize(BuildContext context) =>
      screenWidth(context) * 0.09;

  // Grid View Spacing
  static double gridViewSpacing(BuildContext context) =>
      screenWidth(context) * 0.04;

  // Padding and Margin
  static double smallPadding(BuildContext context) =>
      screenWidth(context) * 0.02;
  static double xsmallPadding(BuildContext context) =>
      screenWidth(context) * 0.012;
  static double mediumPadding(BuildContext context) =>
      screenWidth(context) * 0.04;
  static double largePadding(BuildContext context) =>
      screenWidth(context) * 0.06;
}
