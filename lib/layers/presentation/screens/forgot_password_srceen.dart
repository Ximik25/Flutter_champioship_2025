import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:matule/core/helpers/brand_colors.dart';

class ForgotPasswordsrceen extends StatelessWidget {
  const ForgotPasswordsrceen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(top: 40, left: 20, right: 20, bottom: 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Stack(
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: BrandColors.background,
                    borderRadius: BorderRadius.circular(100),
                  ),
                  child: IconButton(
                    onPressed: () => context.go('/signin'),
                    icon: Icon(CupertinoIcons.back),
                  ),
                ),
              ],
            ),
            SizedBox(height: 15),
            Text(
              context.tr('forgot_password'),
              textAlign: TextAlign.center,
              style: TextStyle(color: BrandColors.text, fontSize: 40, fontWeight: FontWeight.bold),
            ),
            Text(
              context.tr('enter_your_email_to_recovery'),
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 18,
                color: BrandColors.subTextDark,
              ),
            ),
            SizedBox(height: 20),
            Container(
              height: 48.0,
              decoration: BoxDecoration(
                color: BrandColors.background,
                borderRadius: BorderRadius.circular(100),
              ),
              child: TextField(
                autofocus: true,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: BrandColors.background,
                  disabledBorder: InputBorder.none,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(100),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            CupertinoButton(
              borderRadius: BorderRadius.circular(14),
              color: BrandColors.accent,
              onPressed: () {},
              child: Text(
                context.tr('send'),
                style: TextStyle(color: BrandColors.TextLight),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
