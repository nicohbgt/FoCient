import 'package:flutter/material.dart';

import '../app_time_picker_state.dart';
import '../helpers/time_picker_constants.dart';
import '../helpers/time_picker_style.dart';

class TimePickerFieldWidget extends StatelessWidget {
  const TimePickerFieldWidget({
    super.key,
    required this.text,
    required this.hintText,
    required this.state,
    required this.onTap,
  });

  final String? text;
  final String hintText;
  final AppTimePickerState state;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final bool hasValue = text != null && text!.trim().isNotEmpty;

    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(
          TimePickerConstants.radius,
        ),
        child: Container(
          width: TimePickerConstants.width,
          height: TimePickerConstants.height,
          padding: TimePickerConstants.padding,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(
              TimePickerConstants.radius,
            ),
            border: Border.all(
              color: TimePickerStyle.borderColor(
                state,
              ),
              width: TimePickerConstants.borderWidth,
            ),
          ),
          child: Row(
            children: [
              Expanded(
                child: Text(
                  hasValue ? text! : hintText,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: hasValue
                      ? TimePickerStyle.textStyle
                      : TimePickerStyle.hintStyle,
                ),
              ),
              Icon(
                Icons.access_time_outlined,
                size: TimePickerConstants.iconSize,
                color: TimePickerStyle.iconColor(
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
