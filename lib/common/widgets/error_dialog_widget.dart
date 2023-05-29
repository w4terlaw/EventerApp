import 'package:eventer_app/common/localization.dart';
import 'package:eventer_app/core/error/failure.dart';
import 'package:flutter/material.dart';

class ErrorDialog extends StatelessWidget {
  final Failure failure;
  final Function() onPressed;

  const ErrorDialog({Key? key, required this.failure, required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(failure.getError()),
          TextButton(
            onPressed: () => onPressed(),
            child: const Text(L10n.tryAgain),
          )
        ],
      ),
    );
  }
}
