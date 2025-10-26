import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:verifi/core/theme/theme_export.dart';
import 'package:verifi/general_widgets/custom_button.dart';
import 'package:verifi/general_widgets/custom_text_field.dart';

class Registration extends ConsumerStatefulWidget {
  const Registration({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _RegistrationState();
}

class _RegistrationState extends ConsumerState<Registration> {
  final ValueNotifier<bool> _isEnabled = ValueNotifier(false);
  late TextEditingController _nameController;

  late TextEditingController _phoneNumberController;

  @override
  void initState() {
    super.initState();
    _nameController = TextEditingController()..addListener(_validateInput);
    _phoneNumberController = TextEditingController()
      ..addListener(_validateInput);
  }

  void _validateInput() {
    _isEnabled.value = _nameController.text.isNotEmpty &&
        _phoneNumberController.text.isNotEmpty;
  }

  @override
  void dispose() {
    _nameController.dispose();
    _phoneNumberController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 38,
        ),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Welcome to Verifi!',
                style: AppTextStyles.kHeader2.copyWith(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
              SizedBox(height: 10),
              Text(
                'Please provide your details to get started.',
                style: AppTextStyles.kTitleStyle.copyWith(
                  fontWeight: FontWeight.w400,
                  color: AppColor.kBodyTextColor,
                ),
              ),
              SizedBox(height: 50),
              CustomTextField(
                controller: _nameController,
                hintText: 'Name',
              ),
              SizedBox(height: 20),
              CustomTextField(
                controller: _phoneNumberController,
                hintText: 'Phone Number',
                textInputType: TextInputType.phone,
              ),
              SizedBox(height: 370),
              ValueListenableBuilder(
                  valueListenable: _isEnabled,
                  builder: (context, r, c) {
                    return CustomButton(
                      title: 'Save',
                      isEnabled: r,
                      onTap: () {
                        context.go('/dashboard');
                      },
                    );
                  }),
            ],
          ),
        ),
      )),
    );
  }
}
