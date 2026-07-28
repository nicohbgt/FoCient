import 'package:flutter/material.dart';

import '../app_date_picker_state.dart';
import '../helpers/date_picker_constants.dart';
import '../helpers/date_picker_style.dart';

class DatePickerFieldWidget extends StatelessWidget {
  const DatePickerFieldWidget({
    super.key,
    required this.text,
    required this.hintText,
    required this.state,
    required this.onTap,
  });

  final String? text;

  final String hintText;

  final AppDatePickerState state;

  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final bool hasValue = text != null && text!.trim().isNotEmpty;

    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(
          DatePickerConstants.radius,
        ),
        child: Container(
          width: DatePickerConstants.width,
          height: DatePickerConstants.height,
          padding: DatePickerConstants.padding,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(
              DatePickerConstants.radius,
            ),
            border: Border.all(
              color: DatePickerStyle.borderColor(
                state,
              ),
              width: DatePickerConstants.borderWidth,
            ),
          ),
          child: Row(
            children: [
              Expanded(
                child: Text(
                  hasValue ? text! : hintText,
                  style: hasValue
                      ? DatePickerStyle.textStyle
                      : DatePickerStyle.hintStyle,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              Icon(
                Icons.calendar_today_outlined,
                size: DatePickerConstants.iconSize,
                color: DatePickerStyle.iconColor(
                  state,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
