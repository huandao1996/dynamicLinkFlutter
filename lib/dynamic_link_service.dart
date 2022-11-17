import 'package:firebase_dynamic_links/firebase_dynamic_links.dart';

// class DynamicLinkService {
//
//   Future<Uri?> createDynamicLink() async {
//     final DynamicLinkParameters parameters = DynamicLinkParameters(
//       uriPrefix: 'https://testhuan.page.link',
//       link: Uri.parse('https://huandemo.com/welcome'),
//       androidParameters: AndroidParameters(
//         packageName: 'com.teamA.huandemo',
//         minimumVersion: 1,
//       ),
//       // iosParameters: IosParameters(
//       //   bundleId: 'your_ios_bundle_identifier',
//       //   minimumVersion: '1',
//       //   appStoreId: 'your_app_store_id',
//       // ),
//     );
//     // var dynamicUrl = await parameters.buildShortLink();
//     // final Uri shortUrl = shortDynamicLink.shortUrl;
//     var dynamicUrl = await FirebaseDynamicLinks.instance.buildLink(parameters);
//     final shortUrl = await FirebaseDynamicLinks.instance.buildShortLink(parameters);
//   }
//
// }

void initDynamicLinks() async {
  PendingDynamicLinkData? data =
  await FirebaseDynamicLinks.instance.getInitialLink();
  final Uri? deepLink = data?.link;

  if (deepLink != null) {
    handleDynamicLink(deepLink);
  }
  FirebaseDynamicLinks.instance.onLink.listen((event) {
    final Uri deepLink = event.link;
    print(event);
    handleDynamicLink(deepLink);
  });
}

void handleDynamicLink(Uri url) {
  print(url);
  // if (url.path == '/testpage') {
  //   print(url.queryParameters);
  //   String name = url.queryParameters['name'] ?? '';
  //   int age = int.tryParse(url.queryParameters['age'] ?? '') ?? 0;
  //   Navigator.push(
  //     navigatorKey.currentContext!,
  //     MaterialPageRoute(builder: (context) => NewPage(name: name, age: age)),
  //   );
  // }
}