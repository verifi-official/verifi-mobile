import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:verifi/core/theme/theme_export.dart';
import 'package:verifi/general_widgets/custom_app_bar.dart';
import 'package:verifi/general_widgets/custom_button.dart';
import 'package:verifi/utils/spacing.dart';

class ScanAppreciationView extends ConsumerStatefulWidget {
  const ScanAppreciationView({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _ScanDetailsViewState();
}

class _ScanDetailsViewState extends ConsumerState<ScanAppreciationView> {
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
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Thank you for scanning!',
              style: AppTextStyles.kBoldStyle,
              textAlign: TextAlign.center,
            ),
            VerticalSpacing(35),
            Text(
              'Your scan helps us improve product authenticity. We appreciate your effort in keeping our community safe.',
              style: AppTextStyles.kBody,
              textAlign: TextAlign.center,
            ),
            VerticalSpacing(65),
            CustomButton(
              isEnabled: true,
              title: 'Scan another item',
              onTap: () {
                context.go('/dashboard');
              },
            ),
          ],
        ),
      )),
    );
  }
}
