import 'package:flutter/material.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

class ModalprogessHUD extends StatelessWidget {
  final bool isLoading;
  final Widget child;
  const ModalprogessHUD({super.key, required this.isLoading, required this.child});

  @override
  Widget build(BuildContext context) {
   return ModalProgressHUD(inAsyncCall:isLoading, child:child);
  }
}