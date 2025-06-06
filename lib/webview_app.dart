import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class MyWebViewApp extends StatefulWidget {
  //final WebViewController webViewController;
  const MyWebViewApp({super.key,
    //required this.webViewController
  });

  @override
  State<MyWebViewApp> createState() => MyWebViewAppState();
}

class MyWebViewAppState extends State<MyWebViewApp> {

  WebViewController webViewController = WebViewController();

  @override
  void initState(){
    super.initState();
     webViewController = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..setBackgroundColor(const Color(0x00000000))
      ..setNavigationDelegate(
        NavigationDelegate(
          onProgress: (int progress) {
            // Update loading bar.
          },
          onPageStarted: (String url) {},
          onPageFinished: (String url) {},
          onWebResourceError: (WebResourceError error) {},
        ),
      )
      ..loadRequest(Uri.parse('https://docs.flutter.dev/'));
  }


//  var loadingPercentage = 0;


  // @override
  // void initState(){
  //   super.initState();
  //   widget.webViewController.setNavigationDelegate(NavigationDelegate(
  //     onPageStarted: (url){
  //       setState(() {
  //
  //       });
  //     },
  //     onProgress: (progress){
  //       loadingPercentage = progress;
  //     },
  //     onPageFinished: (url){
  //       setState(() {
  //         loadingPercentage = 100;
  //       });
  //   }
  //   )
  //   )..setJavaScriptMode(JavaScriptMode.unrestricted)..addJavaScriptChanne
  // }

  @override
  Widget build(BuildContext context) {
    return WebViewWidget(controller: webViewController);
  }
}
