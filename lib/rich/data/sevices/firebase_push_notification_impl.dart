import 'package:flutter/material.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
//import 'package:flutter_local_notifications/flutter_local_notifications.dart';



// Called when the app is in the background or terminated.
@pragma('vm:entry-point')
Future<void> firebaseMessagingBackgroundHandler(RemoteMessage message) async {
  debugPrint("Handling a background message: ${message.messageId}");
}

//todo create abstract class
class PushNotificationService {
  final FirebaseMessaging _fcm = FirebaseMessaging.instance;
  final ValueNotifier<String?> _title = ValueNotifier(null);
  final ValueNotifier<String?> _body = ValueNotifier(null);

  ValueNotifier<String?> get getTitle => _title;
  ValueNotifier<String?> get getBody => _body;

  set setTitle(titleText) {
    _title.value = titleText;
  }

  set setBody(bodyText) {
    _body.value = bodyText;
  }

  Future initialise() async {
    // Requesting the permission from the user to show the notification
    NotificationSettings settings = await _fcm.requestPermission(
      alert: true,
      announcement: false,
      badge: true,
      carPlay: false,
      criticalAlert: false,
      provisional: false,
      sound: true,
    );

    // Continuosaly Listening to notification using [onMessage] stream
    if (settings.authorizationStatus == AuthorizationStatus.authorized) {
      FirebaseMessaging.onMessage.listen((RemoteMessage message) {
        // Updating the local values
        if (message.notification != null) {
          setTitle = message.notification!.title;
          setBody = message.notification!.body;
        }
      });
    } else if (settings.authorizationStatus ==
        AuthorizationStatus.provisional) {
      debugPrint('User granted provisional permission');
    } else {
      debugPrint('User declined or has not accepted permission');
    }
  }

  Future<void> setupInteractedMessage(context) async {
    // Handle any interaction when the app is in the background via a
    // Stream listener
    FirebaseMessaging.onMessageOpenedApp.listen((RemoteMessage message) {
      _handleMessage(message, context);
    });
  }

  //todo on tap, factory screen
  void _handleMessage(RemoteMessage message, BuildContext context) {
    // Updating local values with the values received from the Notification
    if (message.notification != null) {
      setTitle = message.notification!.title;
      setBody = message.notification!.body;
    }

    // Navigating to specific screen
    if (message.data['type'] == 'offer') {
      // Navigator.push(
      //   context,
      //   MaterialPageRoute(
      //     builder: (_) => OfferPage(offerData: message.data),
      //   ),
      // );
    }
  }
}

///todo this local shower notification think about it
// class LocalNotificationService {
//   static final FlutterLocalNotificationsPlugin _notificationsPlugin =
//   FlutterLocalNotificationsPlugin();
//
//   static void initialize(BuildContext context) {
//     // initializationSettings for Android
//     const InitializationSettings initializationSettings =
//     InitializationSettings(
//       android: AndroidInitializationSettings("@mipmap/ic_launcher"),
//     );
//
//     /// TODO initialize method
//     _notificationsPlugin.initialize(initializationSettings,
//         onSelectNotification: (String route) async {
//           print("onSelectNotification");
//           if (route.isNotEmpty) {
//             Navigator.of(context).pushNamed(route);
//
//             print("Router Value: $route");
//
//             //////// DemoScreen in case of Foreground Message ///////////////////
//             // Navigator.of(context).push(
//             //   MaterialPageRoute(builder: (context) => DemoScreen(id: id)),
//             // );
//             ////////////////////////////////////////////////////////////////////
//           }
//         });
//   }
//
//   static void createAndDisplayNotification(RemoteMessage message) async {
//     try {
//       final id = DateTime.now().millisecondsSinceEpoch ~/ 1000;
//
//       const NotificationDetails notificationDetails = NotificationDetails(
//         android: AndroidNotificationDetails(
//           // "com.example.flutter_push_notification_app",
//           "flutter_push_notification_app",
//           "flutter_push_notification_app",
//           importance: Importance.max,
//           priority: Priority.high,
//         ),
//       );
//
//       /// pop up show
//       await _notificationsPlugin.show(
//         id,
//         message.notification.title,
//         message.notification.body,
//         notificationDetails,
//         payload: message.data["route"],
//
//         //////// In case of DemoScreen //////////////////////////////////////
//         // this "id" key and "id" key of passing firebase's data must same
//         // payload: message.data["_id"],
//         ////////////////////////////////////////////////////////////////////
//       );
//     } on Exception catch (e) {
//       print(e);
//     }
//   }
// }