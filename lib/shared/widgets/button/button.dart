import 'package:flutter/material.dart';
import 'package:ta_tudo_caro_app/shared/theme/app_theme.dart';

enum ButtonType { fill, outline, none }

class Button extends StatelessWidget {
  final String label;
  final ButtonType type;
  final Function() onTap;
  const Button({
    required this.label,
    required this.onTap,
    this.type = ButtonType.fill,
    Key? key,
  }) : super(key: key);

  BoxDecoration get boxDecoration {
    switch (type) {
      case ButtonType.fill:
        return BoxDecoration(
            color: AppTheme.colors.primary,
            borderRadius: BorderRadius.circular(10));
      case ButtonType.outline:
        return BoxDecoration(
            color: Colors.transparent,
            border: Border.fromBorderSide(
                BorderSide(color: AppTheme.colors.primary, width: 1.5)),
            borderRadius: BorderRadius.circular(10));
      case ButtonType.none:
        return BoxDecoration(
          color: Colors.transparent,
        );
      default:
        throw "INVALID BUTTON TYPE";
    }
  }

  TextStyle get textStyle {
    switch (type) {
      case ButtonType.fill:
        return AppTheme.textStyles.buttonBackgroundColor;
      case ButtonType.outline:
        return AppTheme.textStyles.buttonBoldTextColor;
      case ButtonType.none:
        return AppTheme.textStyles.buttonTextColor;
      default:
        throw "INVALID BUTTON TYPE";
    }
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 60,
        width: double.maxFinite,
        decoration: boxDecoration,
        child: Center(
          child: Text(
            label,
            style: textStyle,
          ),
        ),
      ),
    );
  }
}
