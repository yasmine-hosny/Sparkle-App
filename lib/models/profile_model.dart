import 'package:flutter/material.dart';

class ProfileModel {
  final String text;
  final IconData? preIcon;
  String? viewId;
  String? image;
  // onTap(BuildContext context, String viewId) {
  //   Navigator.pushNamed(context, viewId);
  // }

  ProfileModel({
    @required this.preIcon,
    required this.text,
    @required this.viewId,
    @required this.image,
  });
}
