import 'package:flutter/material.dart';
import 'package:ta_tudo_caro_app/shared/theme/app_text.dart';
import 'package:ta_tudo_caro_app/shared/theme/app_theme.dart';

class InputTexts extends StatelessWidget {
  final String label;
  final String hint;
  const InputTexts({
    Key? key,
    required this.label,
    required this.hint,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label).label,
        SizedBox(height: 13),
        TextFormField(
          decoration: InputDecoration(
            hintText: hint,
            hintStyle: AppTheme.textStyles.hint,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(color: AppTheme.colors.border),
            ),
          ),
        ),
      ],
    );
  }
}
