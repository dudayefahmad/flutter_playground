import 'package:flutter/material.dart';
import 'package:flutter_playground/notification/notification_service.dart';

class NotificationApp extends StatelessWidget {
  const NotificationApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: NotificationPage(),
    );
  }
}

class NotificationPage extends StatelessWidget {
  const NotificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: InkWell(
            onTap: () => NotificationService.showNotification(
                  title: "This is the title of the notification",
                  body: "This is the body of the notification",
                ),
            child: const Text('Send Notification')),
      ),
    );
  }
}
