import 'package:flutter/material.dart';

class AppButton extends StatelessWidget {
  const AppButton({
    super.key,
    required this.AppButtonText,
    required this.onAppButtonClick,
  });

  final String AppButtonText;
  final VoidCallback onAppButtonClick;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 40, vertical: 5),
      width: MediaQuery.of(context).size.width,
      height: 60,
      child: ElevatedButton(
        onPressed: onAppButtonClick,
        child: Text(
          AppButtonText,
          style:
              TextStyle(color: Theme.of(context).indicatorColor, fontSize: 24),
        ),
        style: ButtonStyle(
            backgroundColor:
                WidgetStateProperty.all<Color>(Theme.of(context).hintColor),
            shape: WidgetStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                    side: BorderSide(color: Theme.of(context).dividerColor)))),
      ),
    );
  }
}
