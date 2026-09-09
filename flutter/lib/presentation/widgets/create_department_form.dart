import 'package:enterprise_management/infrastructure/assets/gen/assets.gen.dart';
import 'package:enterprise_management/presentation/widgets/solid_button.dart';
import 'package:flutter/material.dart';

class CreateDepartmentForm extends StatelessWidget {
  const CreateDepartmentForm({
    super.key,
    required this.title,
    this.icon,
    this.onTap,
  });

  final String title;
  final SvgGenImage? icon;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: Colors.transparent,
      child: Container(
        width: 500,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          border: Border.all(width: 1),
          color: Colors.white,
        ),
        child: Column(
          mainAxisSize: .min,
          children: [
            Container(
              width: .infinity,
              decoration: BoxDecoration(
                color: Color(0xffF8F9FF),
                border: Border(
                  bottom: BorderSide(width: 1, color: Color(0xffC3C6D1)),
                ),
                borderRadius: BorderRadius.circular(8),
              ),
              padding: .symmetric(vertical: 20, horizontal: 20),
              child: Row(
                mainAxisSize: .min,
                mainAxisAlignment: .spaceBetween,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                      color: Color(0xff0B1C30),
                      fontWeight: .w600,
                      fontSize: 18,
                    ),
                  ),
                  InkWell(
                    onTap: onTap,
                    child: Container(child: icon?.svg(width: 16, height: 16)),
                  ),
                ],
              ),
            ),
            TextField(),
            SolidButton(title: 'Create', onTap: () {}),
          ],
        ),
      ),
    );
  }
}
