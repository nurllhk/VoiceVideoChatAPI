import 'dart:math';

import 'package:flutter/material.dart';
import 'package:voicevideochat/default.dart';
import 'package:zego_uikit_prebuilt_call/zego_uikit_prebuilt_call.dart';

class CallPage extends StatelessWidget {
  const CallPage({super.key, this.callID = "str"});

  final String callID;

  @override
  Widget build(BuildContext context) {
    String uid = Random().nextInt(1000).toString();
    return Scaffold(
      body: SafeArea(
          child: ZegoUIKitPrebuiltCall(
              appID: DefaultKey.AppId,
              appSign: DefaultKey.Api,
              callID: callid(),
              userID: uid,
              userName: "user_$uid",
              config: ZegoUIKitPrebuiltCallConfig.oneOnOneVideoCall()
                ..onOnlySelfInRoom = (context) => Navigator.pop(context))),
    );
  }

  String callid() {
    return callID;
  }
}
