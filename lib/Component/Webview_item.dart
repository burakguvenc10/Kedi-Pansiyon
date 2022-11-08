import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class Webview_item extends StatefulWidget {
  @override
  State<Webview_item> createState() => _Webview_item();
}

class _Webview_item extends  State<Webview_item>{

  bool isLoading = true;
  String url = 'https://www.instagram.com/vizyonveteriner/';

  @override
  Widget build(BuildContext context){
    return Stack(
      children: [
        WebView(
            initialUrl: url,
            allowsInlineMediaPlayback: true,
            debuggingEnabled: false,
            initialMediaPlaybackPolicy: AutoMediaPlaybackPolicy.always_allow,
            javascriptMode: JavascriptMode.unrestricted,
            onPageFinished: (finish) {
              setState(() {
                isLoading = false;
              });
            },
        ),

        Visibility(
          visible: isLoading,
          child: const Center(
            child: CircularProgressIndicator(),
          ),
        ),
      ],

    );


  }
}

