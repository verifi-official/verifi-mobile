import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:verifi/core/theme/theme_export.dart';
import 'package:verifi/general_widgets/custom_app_bar.dart';
import 'package:verifi/general_widgets/custom_button.dart';
import 'package:verifi/utils/spacing.dart';

class ScanDetailsView extends ConsumerStatefulWidget {
  const ScanDetailsView({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _ScanDetailsViewState();
}

class _ScanDetailsViewState extends ConsumerState<ScanDetailsView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: 'Scan Details',
        hasbackIcon: true,
      ),
      body: SafeArea(
          child: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 10,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              'assets/images/scan_details_image.png',
            ),
            VerticalSpacing(25),
            Text(
              'Organic Honey',
              style: AppTextStyles.kBoldStyle,
            ),
            VerticalSpacing(20),
            Text(
              'Manufacturer: Nature\'s Best',
              style: AppTextStyles.kBody,
            ),
            VerticalSpacing(15),
            Text(
              'Expiry date: 2024-12-31',
              style: AppTextStyles.kBody,
            ),
            VerticalSpacing(15),
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              Text(
                'Authenticity Status',
                style: AppTextStyles.kBody,
              ),
              Container(
                padding: EdgeInsets.all(8),
                decoration: BoxDecoration(
                    color: AppColor.kInactiveColor,
                    borderRadius: BorderRadius.circular(8)),
                child: Text(
                  'Genuine',
                  style: AppTextStyles.kBody,
                ),
              )
            ]),
            VerticalSpacing(15),
            Text(
              'This product has been verified as genuine by the manufacturer. You can trust its authenticity.',
              style: AppTextStyles.kBody,
            ),
            VerticalSpacing(45),
            CustomButton(
              isEnabled: true,
              title: 'Continue',
              onTap: () {
                context.push(
                  '/product_purchase_option',
                );
              },
            )
          ],
        ),
      )),
    );
  }
}
