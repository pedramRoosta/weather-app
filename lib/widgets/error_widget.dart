import 'package:flutter/material.dart';

class ErrorRetryWidget extends StatelessWidget {
  const ErrorRetryWidget({
    required this.errorText,
    this.onPressed,
    super.key,
  });
  final String errorText;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(errorText),
          IconButton(
            onPressed: onPressed,
            icon: const Icon(
              Icons.refresh,
              size: 40,
            ),
          ),
        ],
      ),
    );
  }
}
