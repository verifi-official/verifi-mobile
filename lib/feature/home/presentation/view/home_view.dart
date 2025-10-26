import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:verifi/core/theme/textstyles.dart';
import 'package:verifi/general_widgets/custom_app_bar.dart';
import 'package:verifi/general_widgets/custom_button.dart';
import 'package:verifi/utils/spacing.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: 'Verifi'),
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 16.0,
          vertical: 20,
        ),
        child: Column(
          children: [
            Text(
              'Scan to verify',
              style: AppTextStyles.kHeader1.copyWith(
                fontSize: 24,
              ),
            ),
            VerticalSpacing(20),
            Text(
              'Ensure the authenticity of your products with a simple scan.',
              style: AppTextStyles.kBody.copyWith(
                fontSize: 16,
              ),
              textAlign: TextAlign.center,
            ),
            VerticalSpacing(20),
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.asset(
                'assets/images/scan_image.png',
                height: 200,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
            VerticalSpacing(50),
            CustomButton(
              title: 'Scan Now',
              onTap: () {
                context.push('/scan-qr-code');
              },
              isEnabled: true,
            )
          ],
        ),
      )),
    );
  }
}
