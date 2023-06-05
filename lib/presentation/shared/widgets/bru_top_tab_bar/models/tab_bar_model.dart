import 'package:flutter/material.dart';

class TabBarModel {
  const TabBarModel({
    required this.title,
    required this.page,
  });
  final String title;
  final Widget page;
}
