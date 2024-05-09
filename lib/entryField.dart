import 'package:flutter/material.dart';

class EntryField extends StatefulWidget {
  final String? hintText;

  const EntryField({this.hintText});

  @override
  _EntryFieldState createState() => _EntryFieldState();
}

class _EntryFieldState extends State<EntryField> {
  String? inputData;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 350, 
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(
          color: Colors.grey,
          width: 0.5,
        ),
      ),
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: TextField(
        decoration: InputDecoration(
          hintText: widget.hintText ?? 'Enter data',
          border: InputBorder.none,
        ),
        onChanged: (value) {
          setState(() {
            inputData = value;
          });
        },
      ),
    );
  }
}

class PasswordEntryField extends StatefulWidget {
  final String? hintText;
  const PasswordEntryField({this.hintText});
  @override
  _PasswordEntryFieldState createState() => _PasswordEntryFieldState();
}

class _PasswordEntryFieldState extends State<PasswordEntryField> {
  String? inputData;
  bool obscureText = true;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 350,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(
          color: Colors.grey,
          width: 1,
        ),
      ),
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: TextField(
        decoration: InputDecoration(
          hintText: widget.hintText ?? 'Enter password',
          border: InputBorder.none,
          suffixIcon: IconButton(
            icon: Icon(
              obscureText ? Icons.visibility_off : Icons.visibility,
              color: Colors.grey,
            ),
            onPressed: () {
              setState(() {
                obscureText = !obscureText;
              });
            },
          ),
        ),
        obscureText: obscureText,
        onChanged: (value) {
          setState(() {
            inputData = value;
          });
        },
      ),
    );
  }
}



class ObscurePasswordEntryField extends StatefulWidget {
  final String? hintText;
  const ObscurePasswordEntryField({this.hintText});
  @override
  _ObscurePasswordEntryFieldState createState() => _ObscurePasswordEntryFieldState();
}

class _ObscurePasswordEntryFieldState extends State<ObscurePasswordEntryField> {
  String? inputData;


  @override
  Widget build(BuildContext context) {
    return Container(
      width: 350,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(
          color: Colors.grey,
          width: 1,
        ),
      ),
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: TextField(
        decoration: InputDecoration(
          hintText: widget.hintText ?? 'Enter password',
          border: InputBorder.none,
        ),
        onChanged: (value) {
          setState(() {
            inputData = value;
          });
        },
      ),
    );
  }
}