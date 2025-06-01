import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:matule/core/helpers/brand_colors.dart';
import 'package:go_router/go_router.dart';
import 'package:matule/layers/presentation/shared/ui/check_box.dart';
import 'package:matule/layers/presentation/shared/ui/password_field.dart';

class CreateUser extends StatefulWidget {
CreateUser({super.key});
bool _isChecked = false;
  @override
  State<CreateUser> createState() => _CreateUserState();
}

class _CreateUserState extends State<CreateUser> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(top: 40, left: 20, right: 20, bottom: 30),
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
              context.tr('registration'),
              textAlign: TextAlign.center,
              style: TextStyle(
                color: BrandColors.text,
                fontSize: 40,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              context.tr('fill_your_details'),
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 18, color: BrandColors.subTextDark),
            ),
            SizedBox(height: 20),
            Text(
              context.tr('your_name'),
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 18.0,
                color: BrandColors.text,
              ),
              textAlign: TextAlign.left,
            ),
            SizedBox(height: 12.0),
            Container(
              height: 48.0,
              decoration: BoxDecoration(
                color: BrandColors.background,
                borderRadius: BorderRadius.circular(14.0),
              ),
              child: TextField(
                autofocus: true,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.transparent,
                  disabledBorder: InputBorder.none,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(100),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            Text(
              context.tr('email'),
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 18.0,
                color: BrandColors.text,
              ),
              textAlign: TextAlign.left,
            ),
            SizedBox(height: 12.0),
            Container(
              height: 48.0,
              decoration: BoxDecoration(
                color: BrandColors.background,
                borderRadius: BorderRadius.circular(14.0),
              ),
              child: TextField(
                autofocus: true,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.transparent,
                  disabledBorder: InputBorder.none,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(100),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            Text(
              context.tr('password'),
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 18.0,
                color: BrandColors.text,
              ),
              textAlign: TextAlign.left,
            ),
            SizedBox(height: 12.0),
            Container(
              height: 48.0,
              decoration: BoxDecoration(
                color: BrandColors.background,
                borderRadius: BorderRadius.circular(14.0),
              ),
              child: PasswordField(),
            ),
            SizedBox(height: 20),
            CheckBox(),
            SizedBox(height: 20),
            CupertinoButton(
              borderRadius: BorderRadius.circular(14),
              color: BrandColors.accent,
              onPressed: () {},
              child: Text(
                context.tr('sign_up'),
                style: TextStyle(color: BrandColors.TextLight),
              ),
            ),
            Expanded(
              child: Container(
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        context.tr('already_have_account'),
                        style: TextStyle(color: BrandColors.text),
                      ),
                      SizedBox(width: 10),
                      GestureDetector(
                        onTap: () => context.push('/signin'),
                        child: Text(
                          context.tr('sign_in'),
                          style: TextStyle(color: BrandColors.subTextDark),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
