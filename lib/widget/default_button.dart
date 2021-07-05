import 'package:flutter/material.dart';

class DafaultButton extends StatelessWidget {
  final String title;
  final Function onTab;

  const DafaultButton({required this.title, required this.onTab});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: InkWell(
        onTap: () => onTab.call(),
        child: Container(
          padding: EdgeInsets.all(15.0),
          decoration: BoxDecoration(
              color: Colors.orange[600],
              borderRadius: BorderRadius.all(Radius.circular(10.0))),
          child: Center(
            child: Text(
              title,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
            ),
          ),
        ),
      ),
    );
  }
}
