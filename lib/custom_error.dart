import 'package:flutter/material.dart';

class CustomError extends StatelessWidget {
  const CustomError({
    required this.errorDetails,
    Key? key,
  }) : super(key: key);

  final FlutterErrorDetails errorDetails;

  @override
  Widget build(BuildContext context) => Material(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 32),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Text('${errorDetails.exception}'),
                const SizedBox(height: 16),
                Text(
                  'Exception Runtime Type: ${errorDetails.exception.runtimeType}',
                ),
                const SizedBox(height: 16),
                errorDetails.stack != null
                    ? Text(errorDetails.toString())
                    : const SizedBox.shrink(),
              ],
            ),
          ),
        ),
      );
}
