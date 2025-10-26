import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:verifi/core/theme/theme_export.dart';
import 'package:verifi/general_widgets/custom_app_bar.dart';
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
          child: Padding(
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
            VerticalSpacing(10),
            Text(
              'Manufacturer: Nature\'s Best',
              style: AppTextStyles.kBody,
            )
          ],
        ),
      )),
    );
  }
}
