// ignore_for_file: avoid_print
import 'dart:convert';
import 'dart:io';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:flutter/services.dart' ;
import 'package:path/path.dart';
import 'package:async/async.dart';
import 'package:http/http.dart' as http;

void main()  { 
  runApp(const MaterialApp(home: WebViewPage())); 
  
}
    

class WebViewPage extends StatefulWidget {
  const WebViewPage({super.key});
  @override
  State<WebViewPage> createState() => _WebViewPageState();
}

class _WebViewPageState extends State<WebViewPage> {

  final GlobalKey<ScaffoldMessengerState> scaffoldMessengerKey = GlobalKey<ScaffoldMessengerState>();

  
  late WebViewController controller;
  
  @override
  void initState() {
    
  
  controller = WebViewController()
    
    ..setJavaScriptMode(JavaScriptMode.unrestricted)
    ..setBackgroundColor(const Color(0x00000000))
    ..addJavaScriptChannel(
        'LoadMedia',
        onMessageReceived: (JavaScriptMessage message) {}
    )
      
    ..setNavigationDelegate(
      NavigationDelegate(

        onProgress: (int progress) {},
        onPageStarted: (String url) {},
        onPageFinished: (String url) {},
        
        onWebResourceError: (WebResourceError error) {},

        onNavigationRequest: (NavigationRequest request) async {
          
          if (request.url.startsWith('')) return NavigationDecision.navigate;

          return NavigationDecision.prevent;
        },
      ),
    )
    ..loadRequest(Uri.parse(''));
    super.initState();
  }

  @override
  
  Widget build(BuildContext context) {
  
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);

    return Scaffold(
      
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 12, 64, 119),
        toolbarHeight: _visible ? kToolbarHeight : 0,
        leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
              
              controller.loadRequest(Uri.parse(''));
              setState(() {});
            },
          ),
        ),
       
      body: SafeArea(
        child: WebViewWidget(controller: controller),
      ),
      
      
    );
  }
}



