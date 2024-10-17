import 'package:flutter/material.dart';

class DropDown extends StatefulWidget {
  const DropDown(
      {super.key,
      required this.hint,
      required this.isExpanded,
      required this.icon});

  final Widget hint;
  final bool isExpanded;
  final IconData icon;

  @override
  State<DropDown> createState() => _DropDownState();
}

class _DropDownState extends State<DropDown> {
  String? selectedValue;

  final List genders = ['Male', 'Female'];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          border: Border.all(
            color: Color.fromARGB(255, 135, 128, 128),
          )),
      child: DropdownButton(
        borderRadius: BorderRadius.zero,
        hint: widget.hint,
        padding: EdgeInsets.all(8),
        isExpanded: widget.isExpanded,
        underline: Container(),
        value: selectedValue,
        icon: Icon(widget.icon),
        onChanged: (String? value) {
          setState(() {
            selectedValue = value;
          });
          print(selectedValue);
        },
        items: genders.map((gender) {
          return DropdownMenuItem<String>(child: Text(gender), value: gender);
        }).toList(),
      ),
    );
  }
}