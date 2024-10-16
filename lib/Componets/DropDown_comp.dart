import 'package:flutter/material.dart';


class DropdownComp extends StatefulWidget {
  const DropdownComp({super.key, required this.hinttext, required this.isExpanded, required this.iconData});

  final String hinttext;
  final bool isExpanded;
  final IconData iconData;

  @override
  State<DropdownComp> createState() => _DropdownCompState();
}

class _DropdownCompState extends State<DropdownComp> {
  String? selectedValue;

  @override
  Widget build(BuildContext context) {
    return DropdownButton(
            borderRadius: BorderRadius.circular(20),
            hint: Text(widget.hinttext),
            isExpanded: widget.isExpanded,
            icon: Icon(widget.iconData),
            underline: Container(),
            value: selectedValue,
            
            
              items: [
              DropdownMenuItem(
                value: 'MALE',
                child: Text('MALE')),
               DropdownMenuItem(
                value: 'FEMALE',
                child: Text('FEMALE')),
                ], 
                onChanged: (value){
                  setState(() {
                    selectedValue = value;
                  });
}
          );
  }
}