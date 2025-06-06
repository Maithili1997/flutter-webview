import 'package:flutter/material.dart';
import 'package:flutter_webview/webview_app.dart';
import 'package:webview_flutter/webview_flutter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
     // home: const MyHomePage(title: 'Flutter Demo Home Page'),
      home: const MyWebViewApp(),
    );
  }
}

// class MyHomePage extends StatefulWidget {
//   const MyHomePage({super.key, required this.title});
//
//
//
//   final String title;
//
//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }
//
// class _MyHomePageState extends State<MyHomePage> {
//
//   WebViewController webViewController = WebViewController();
//
//   @override
//   void initState(){
//     super.initState();
//     webViewController = WebViewController()..loadRequest(Uri.parse('https://www.flipkart.com/'));
//   }
//
//   @override
//   Widget build(BuildContext context) {
//
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("WebView"),
//         actions: [
//           Row(
//             children: [
//               IconButton(onPressed: ()async{
//                 if(await webViewController.canGoBack()){
//                   await webViewController.goBack();
//                 }else{
//                   ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("No Back History Found")));
//                   return;
//                 }
//               },
//                   icon: Icon(Icons.arrow_back_rounded)),
//
//               IconButton(onPressed: ()async{
//                 if(await webViewController.canGoForward()){
//                   await webViewController.goForward();
//                 }else{
//                   ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("No Back History Found")));
//                   return;
//                 }
//               },
//                   icon: Icon(Icons.arrow_forward_rounded)),
//
//
//               IconButton(onPressed: ()async{
//             webViewController.reload();
//               },
//                   icon: Icon(Icons.replay))
//             ],
//           )
//         ],
//       ),
//       body: MyWebViewApp(controller: webViewController),
//     );
//   }
// }
