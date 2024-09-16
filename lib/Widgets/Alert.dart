import 'package:flutter/material.dart';
import 'package:flutter_application_2/Widgets/Dismissible.dart';


class AlertWidget extends StatelessWidget {
  const AlertWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Alert Dialog'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            showDialog(
                context: context,
                builder: (context) {return AlertDialog(
                    title: Text('Are You Sure'),
                    actions: [
                      TextButton(onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => DismissibleWidget()));
                          },
                          child: Text('Yes')),
                      TextButton(
                          onPressed: () {
                            Navigator.pop(context);
                            ScaffoldMessenger.of(context)
                                .showSnackBar(SnackBar(content: Text('Hello')));
                          },
                          child: Text('Cancel'))
                    ],
                  );
                });
          },
          child: Text('Press for AlertDialog'),
        ),
      ),
    );
  }
}