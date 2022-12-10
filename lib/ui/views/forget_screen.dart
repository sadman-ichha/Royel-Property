import 'package:flutter/material.dart';
import 'package:royal_property/ui/widgets/white_appbar.dart';

class ForgetPasswordScreen extends StatelessWidget {
  const ForgetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: WhiteAppBar("Skip", (){}),);
  }
}