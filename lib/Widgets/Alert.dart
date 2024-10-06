import 'package:flutter/material.dart';
import 'package:flutter_application_2/Widgets/Dismissible.dart';


class AlertWidget extends StatelessWidget {
  const AlertWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Alert Dialog'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            showDialog(
                context: context,
                builder: (context) {return AlertDialog(
                    title: const Text('Are You Sure'),
                    actions: [
                      TextButton(onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => const DismissibleWidget()));
                          },
                          child: const Text('Yes')),
                      TextButton(
                          onPressed: () {
                            Navigator.pop(context);
                            ScaffoldMessenger.of(context)
                                .showSnackBar(const SnackBar(content: Text('Hello')));
                          },
                          child: const Text('Cancel'))
                    ],
                  );
                });
          },
          child: const Text('Press for AlertDialog'),
        ),
      ),
    );
  }
}