import 'package:auto_route/annotations.dart';
import 'package:enterprise_management/presentation/widgets/base_page.dart';
import 'package:flutter/cupertino.dart';

@RoutePage()
class EmptyPage extends StatelessWidget {
  const EmptyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BasePage(title: '', description: '', child: Container());
  }
}