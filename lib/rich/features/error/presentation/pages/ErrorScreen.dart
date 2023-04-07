import 'package:flutter/material.dart';

import '../../../../core/constants/images.dart';


class ErrorScreen extends StatelessWidget {
  const ErrorScreen({
    super.key,
    required this.onTryAgainPressed,
  });

  final Function() onTryAgainPressed;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme
        .of(context)
        .textTheme;
    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 12),
            child: Images.error,
          ),
          const ErrorText(),
          const SizedBox(height: 14),
          ElevatedButton(
            onPressed: onTryAgainPressed,
            style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
            ),
            child: Text(
              'AppStrings.tryAgain',
              style: textTheme.bodyMedium,
            ),
          ),
        ],
      ),
    );
  }
}


class ErrorText extends StatelessWidget {
  const ErrorText({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme
        .of(context)
        .textTheme;
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'AppStrings.oops',
          style: textTheme.titleMedium,
        ),
        Text(
          'AppStrings.errorMessage',
          style: textTheme.bodyLarge,
        ),
        Text(
          'AppStrings.tryAgainLater',
          style: textTheme.bodyLarge,
        ),
      ],
    );
  }
}

