import 'package:flutter/material.dart';

class KeyboardUnfocusWidget extends StatefulWidget {
  final Widget? child;
  final BuildContext? context;
  const KeyboardUnfocusWidget({Key? key, this.child, this.context})
      : super(key: key);

  @override
  State<KeyboardUnfocusWidget> createState() => _KeyboardUnfocusWidgetState();
}

class _KeyboardUnfocusWidgetState extends State<KeyboardUnfocusWidget> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          if (widget.context != null) {
            FocusScopeNode currentFocus = FocusScope.of(widget.context!);
            if (!currentFocus.hasPrimaryFocus) {
              currentFocus.unfocus();
            }
          }
        },
        child: widget.child);
  }
}
