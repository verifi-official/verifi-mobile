import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:verifi/core/theme/theme_export.dart';
import 'package:verifi/general_widgets/custom_app_bar.dart';
import 'package:verifi/general_widgets/custom_button.dart';
import 'package:verifi/utils/spacing.dart';

class ProductPurchaseOptionView extends ConsumerStatefulWidget {
  const ProductPurchaseOptionView({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _ScanDetailsViewState();
}

class _ScanDetailsViewState extends ConsumerState<ProductPurchaseOptionView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: 'Verifi',
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
            Text(
              'Did you purchase this product?',
              style: AppTextStyles.kBoldStyle,
              textAlign: TextAlign.center,
            ),
            VerticalSpacing(25),
            Text(
              'Your response helps us improve our verification accuracy and provide better insights.',
              style: AppTextStyles.kBody,
              textAlign: TextAlign.center,
            ),
            VerticalSpacing(45),
            Row(
              children: [
                Expanded(
                  child: CustomButton(
                    isEnabled: true,
                    title: 'Yes',
                    onTap: () {
                      context.push('/scan_appreciation_view');
                    },
                  ),
                ),
                HorizontalSpacing(20),
                Expanded(
                  child: CustomButton(
                    bgColor: AppColor.kNoButtonColor,
                    title: 'No',
                    onTap: () {
                      context.push('/scan_appreciation_view');
                    },
                  ),
                ),
              ],
            )
          ],
        ),
      )),
    );
  }
}
