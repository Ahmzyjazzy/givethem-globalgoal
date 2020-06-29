import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';

final Set<JavascriptChannel> jsChannels = [
  JavascriptChannel(
      name: 'WebInterface',
      onMessageReceived: (JavascriptMessage message) {
        print(message.message);
      }),
].toSet();

class GoalDetailWebview extends StatefulWidget {
  static String title = 'Global Goals';
  final String url;

  GoalDetailWebview(this.url);

  @override
  _GoalDetailWebviewState createState() => _GoalDetailWebviewState();
}

class _GoalDetailWebviewState extends State<GoalDetailWebview> {
  final flutterWebViewPlugin = FlutterWebviewPlugin();

  @override
  Widget build(BuildContext context) {
    return WebviewScaffold(
      appBar: AppBar(
        title: Text(GoalDetailWebview.title),
      ),
      url: widget.url,
      javascriptChannels: jsChannels,
      withZoom: true,
      withLocalStorage: true,
      hidden: true,
      initialChild: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircularProgressIndicator(),
            SizedBox(
              width: 15,
            ),
            Text(
              "Please Wait....",
              style: TextStyle(color: Color(0xFF634075)),
            )
          ],
        ),
      ),
    );
  }
}
