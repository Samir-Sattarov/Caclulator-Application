import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  final Color? backgound;
  final Color txtColor;
  final String? txt;
  final IconData icon;
  final Function onPressed;

  const ButtonWidget({
    Key? key,
    required this.txtColor,
    required this.onPressed,
    this.backgound,
    this.txt,
    this.icon = Icons.close,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: FloatingActionButton(
        foregroundColor: txtColor,
        splashColor: Colors.blueGrey.shade600,
        elevation: 0.3,
        backgroundColor: backgound,
        child: txt != null
            ? Text(
                txt!.toUpperCase(),
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                  fontFamily: 'Roboto',
                ),
              )
            : Icon(icon),
        onPressed: () {
          onPressed(txt);
        },
      ),
      // child: ElevatedButton(
      //   onPressed: onPresed,
      //   child: txt != null
      //       ? Text(
      //           txt!.toUpperCase(),
      //           style: const TextStyle(
      //             fontWeight: FontWeight.bold,
      //             fontSize: 16,
      //             fontFamily: 'Roboto',
      //           ),
      //         )
      //       : Icon(icon),
      //   style: ElevatedButton.styleFrom(
      //     splashFactory: NoSplash.splashFactory,
      //     elevation: 0,
      //     onPrimary: txtColor,
      //     primary: backgound,
      //     side: BorderSide.none,
      //     shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
      //   ),
      // ),
    );
  }
}
