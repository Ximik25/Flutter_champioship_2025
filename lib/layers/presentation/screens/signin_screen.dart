import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:matule/core/helpers/brand_colors.dart';
import 'package:matule/layers/presentation/shared/ui/password_field.dart';
import 'package:matule/layers/presentation/shared/ui/email_field.dart';

class SigninScreen extends StatelessWidget {
  const SigninScreen({super.key});

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
                    onPressed: () {
                      if (context.locale.languageCode == 'en') {
                        context.setLocale(Locale('ru'));
                      } else {
                        context.setLocale(Locale('en'));
                      }
                    },
                    icon: Icon(Icons.g_translate),
                  ),
                ),
              ],
            ),
            SizedBox(height: 15),
            Text(
              context.tr('wellcome'),
              textAlign: TextAlign.center,
              style: GoogleFonts.roboto(fontSize: 40),
            ),
            Text(
              context.tr('fill_your_details'),
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 18, color: BrandColors.subTextDark),
            ),
            SizedBox(height: 60),
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
              child: EmailField(),
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
                borderRadius: BorderRadius.circular(100),
              ),
              child: PasswordField(),
            ),
            GestureDetector(
              onTap: () => context.go('/pass'),
              child: Text(
                context.tr('forgot_password'),
                style: TextStyle(fontSize: 15, color: BrandColors.subTextDark),
                textAlign: TextAlign.right,
              ),
            ),
            SizedBox(height: 20),
            CupertinoButton(
              borderRadius: BorderRadius.circular(100),
              color: BrandColors.accent,
              onPressed: () => context.go('/home'),
              child: Text(
                context.tr('sign_in'),
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
                        context.tr('new_user'),
                        style: TextStyle(color: BrandColors.text),
                      ),
                      SizedBox(width: 10),
                      GestureDetector(
                        onTap: () => context.push('/create'),
                        child: Text(
                          context.tr('create_account'),
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
