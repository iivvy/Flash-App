import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  final Color color;
  final String name ;
  final String route;
  const RoundedButton({Key? key,required this.color , required this.name,required this.route}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      child: Material(
        elevation: 5.0,
        color: color,
        borderRadius: BorderRadius.circular(30.0),
        child: MaterialButton(
          onPressed: () {
            Navigator.pushNamed(context, route);
            //Go to login screen.
          },
          minWidth: 200.0,
          height: 42.0,
          child: Text(
            name,
            style: const TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
