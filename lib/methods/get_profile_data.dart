import 'package:flutter/material.dart';
import 'package:graduation_project/models/profile_model.dart';
import 'package:graduation_project/widgets/profile_container_widget.dart';

List<Widget> getProfileData(List<ProfileModel> items) {
  List<Widget> itemsList = [];
  for (int i = 0; i < items.length; i++) {
    itemsList.add(ProfileContainerWidget(profileModel: items[i]));
  }
  return itemsList;
}
