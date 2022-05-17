import 'package:flutter/material.dart';
import 'package:onesignal_flutter/onesignal_flutter.dart';

void main() {
  runApp(MyApp());
}

// //Remove this method to stop OneSignal Debugging
// OneSignal.shared.setLogLevel(OSLogLevel.verbose, OSLogLevel.none);

// OneSignal.shared.setAppId("4b0cc30c-a8a4-44dd-9c8c-8288f5a7a0de");

// // The promptForPushNotificationsWithUserResponse function will show the iOS push notification prompt. We recommend removing the following code and instead using an In-App Message to prompt for notification permission
// OneSignal.shared.promptUserForPushNotificationPermission().then((accepted) {
//      print("Accepted permission: $accepted");
// });

class MyApp extends StatefulWidget {
  @override
  _MyApp createState() => _MyApp();
}

class _MyApp extends State<MyApp> {
  @override
  void initState() {
    super.initState();
    initPlatformState();
  }

  static final String oneSignalAppId = "4b0cc30c-a8a4-44dd-9c8c-8288f5a7a0de";
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
        height: 100,

        //child: Container (child: Text('s'),) ,
        child: const Text(
          'Push Notification',
          textDirection: TextDirection.ltr,
          style: TextStyle(fontSize: 30),
        ),

        color: Color.fromARGB(255, 159, 157, 150),
      ),
    );
  }

  Future<void> initPlatformState() async {
    OneSignal.shared.setAppId(oneSignalAppId);
  //  OneSignal.shared.sendTags({"type": "main"});

//     OneSignal.shared.promptUserForPushNotificationPermission().then((accepted) {
//      print("Accepted permission: $accepted");
// });
  }
}
