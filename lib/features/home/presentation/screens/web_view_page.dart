// ignore_for_file: deprecated_member_use, await_only_futures, avoid_single_cascade_in_expression_statements


import 'package:almaguide_flutter/generated/l10n.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

@RoutePage()
class WebViewScreen extends StatefulWidget {
  const WebViewScreen({super.key, required this.url});
  final String url;

  @override
  State<WebViewScreen> createState() => _WebViewScreenState();
}

class _WebViewScreenState extends State<WebViewScreen> {
  late final WebViewController controller;

  bool isLoading = false;
  // TextEditingController controller = TextEditingController();
  // TextEditingController dateController = TextEditingController();
  // TextEditingController codeController = TextEditingController();
  @override
  void initState() {
    controller = WebViewController()
      ..setNavigationDelegate(NavigationDelegate(
        onPageStarted: (url) {
          if (url != widget.url) {
           

            context.router.pop();
          }
        },
        onProgress: (progress) {
          if (progress != 100) {
            isLoading = true;
          } else {
            isLoading = false;
          }
          setState(() {});
        },
        onPageFinished: (url) {
        },
      ))
      ..loadRequest(
        Uri.parse(widget.url),
      )
      ..setJavaScriptMode(JavaScriptMode.unrestricted);
    super.initState();
    
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
       
        return true;
      },
      child: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            title: Text(S.of(context).route),
            centerTitle: true,
          ),
          body: isLoading
              ? const Center(child: CircularProgressIndicator.adaptive(),)
              : WebViewWidget(controller: controller)),
    );
  }
}
