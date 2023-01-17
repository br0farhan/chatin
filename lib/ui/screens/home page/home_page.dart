import 'package:chatin/ui/screens/widgets/popup_menu.dart';
import 'package:flutter/material.dart';
import 'package:zego_zimkit/zego_zimkit.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [PopupMenu()],
      ),
      body:  ZIMKitConversationListView(
        onPressed: (context, convesation, defaultAction) {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return ZIMKitMessageListPage(
              conversationID: convesation.id,
              conversationType: convesation.type,
            );
          }));
        },
      ),
    );
  }
}
