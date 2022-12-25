import 'package:flutter/material.dart';

class AvatarImageArea extends StatelessWidget {
  const AvatarImageArea({
    Key? key,
    required this.avaterUrl,
  }) : super(key: key);

  final String avaterUrl;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: Colors.transparent,
      child: avaterUrl.isEmpty ? const FlutterLogo() : Image.network(avaterUrl),
    );
  }
}
