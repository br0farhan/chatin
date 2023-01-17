import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
 
import 'package:zego_zimkit/zego_zimkit.dart';

class PopupMenu extends StatelessWidget {
  PopupMenu({super.key});
  final userIDController = TextEditingController();
  final groupNameController = TextEditingController();
  final groupUserController = TextEditingController();
  final groupIDController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(15),
        ),
      ),
      position: PopupMenuPosition.under,
      itemBuilder: (context) {
        return [
          PopupMenuItem(
            value: "New Chat",
            child: ListTile(
              leading: const Icon(CupertinoIcons.chat_bubble),
              title: const Text(
                "New Chat",
                maxLines: 1,
              ),
              onTap: () {
                ZIMKit().showDefaultNewPeerChatDialog(context);
              },
            ),
          ),
          PopupMenuItem(
            value: "New Group",
            child: ListTile(
              leading: const Icon(CupertinoIcons.chat_bubble),
              title: const Text(
                "New Group",
                maxLines: 1,
              ),
              onTap: () {
                ZIMKit().showDefaultNewGroupChatDialog(context);
              },
            ),
          ),
          PopupMenuItem(
            value: "Join Group",
            child: ListTile(
              leading: const Icon(CupertinoIcons.chat_bubble),
              title: const Text(
                "Join Group",
                maxLines: 1,
              ),
              onTap: () {
                ZIMKit().showDefaultJoinGroupDialog(context);
              },
            ),
          ),
        ];
      },
    );
  }
}
