import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:verifi/feature/dashboard/presentation/dashboard_view.dart';
import 'package:verifi/feature/onboarding/view/splash_screen.dart';
import 'package:verifi/feature/reg/presentation/view/registration.dart';
import 'package:verifi/feature/scan/presentation/view/scan_details_view.dart';
import 'package:verifi/feature/scan/presentation/view/scan_qr_code_view.dart';

enum AppRoutes {
  splashScreen,

  registration,
  dashboard,
  home,
  profile,
  settings,
  scanQRCode,
  scanDetailsView,
  aboutUs,
  contactUs,
  termsAndConditions,
  privacyPolicy,
  helpAndSupport,
  feedback,
}

final goRouterProvider = Provider<GoRouter>(
  (ref) {
    return GoRouter(
      initialLocation: '/splash-screen',
      routes: [
        GoRoute(
          path: '/splash-screen',
          name: AppRoutes.splashScreen.name,
          builder: (context, state) => const SplashScreen(),
        ),
        GoRoute(
          path: '/registration',
          name: AppRoutes.registration.name,
          builder: (context, state) => const Registration(),
        ),
        GoRoute(
          path: '/dashboard',
          name: AppRoutes.dashboard.name,
          builder: (context, state) => const DashboardView(),
        ),
        GoRoute(
          path: '/scan-qr-code',
          name: AppRoutes.scanQRCode.name,
          builder: (context, state) => const ScanQrCodeView(),
        ),
        GoRoute(
          path: '/scan_detials',
          name: AppRoutes.scanDetailsView.name,
          builder: (context, state) => const ScanDetailsView(),
        ),
      ],
    );
  },
);
