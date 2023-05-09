import 'package:flutter/material.dart';

import '../../common/localization.dart';

class ErrorDialog extends StatelessWidget {
  final String error;
  final Function() onPressed;

  const ErrorDialog({Key? key, required this.error, required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(error),
          TextButton(
            onPressed: () => onPressed(),
            child: const Text(L10n.tryAgain),
          )
        ],
      ),
    );
  }
}
