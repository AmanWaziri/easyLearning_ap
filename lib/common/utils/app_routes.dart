import 'package:easylearn/pages/auth/signin/sing_in.dart';
import 'package:easylearn/pages/splashscreen/views/splashscreen_screen.dart';
import 'package:easylearn/pages/welcome/welcome.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();
//
//
final GoRouter _router = GoRouter(
  navigatorKey: navigatorKey,
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const SplashScreen(),
    ),
    GoRoute(
      path: '/welcome',
      builder: (context, state) =>  Welcome(),//our entrypoint is our home page
    ),
    GoRoute(
      path: '/signIn',
      builder: (context, state) => const SignIn(),
    ),
//     // GoRoute(
//     //   path: '/review',
//     //   builder: (context, state) => const ReviewsPage(),
//     // ),
//     GoRoute(
//       path: '/policy',
//       builder: (context, state) => const PolicyPage(),
//     ),
//
//     GoRoute(
//       path: '/theme',
//       builder: (context, state) => const ThemePage(),
//     ),
//     // GoRoute(
//     //   path: '/verification',
//     //   builder: (context, state) => const VerificationPage(),
//     // ),
//     GoRoute(
//       path: '/search',
//       builder: (context, state) => const SearchPage(),
//     ),
//     // GoRoute(
//     //   path: '/help',
//     //   builder: (context, state) => const HelpCenterPage(),
//     // ),
//     GoRoute(
//       path: '/orders',
//       builder: (context, state) => const OrdersPage(),
//     ),
//     GoRoute(
//       path: '/login',
//       builder: (context, state) => const LoginPage(),
//     ),
//     GoRoute(
//       path: '/register',
//       builder: (context, state) => const RegistrationPage(),
//     ),
//     GoRoute(
//       path: '/categories',
//       builder: (context, state) => const CategoriesPage(),
//     ),
//      GoRoute(
//       path: '/category',
//       builder: (context, state) => const CategoryPage(),
//     ),
//
//     GoRoute(
//       path: '/addaddress',
//       builder: (context, state) => const AddAddress(),
//     ),
//     // //
//     GoRoute(
//       path: '/addresses',
//       builder: (context, state) => const ShippingAddress(),
//     ),
//      GoRoute(
//       path: '/notifications',
//       builder: (context, state) => const NotificationsPage(),
//     ),
//
//     //  GoRoute(
//     //   path: '/tracking',
//     //   builder: (context, state) => const TrackOrderPage(),
//     // ),
//
//     GoRoute(
//       path: '/checkout',
//       builder: (context, state) =>  CheckoutPage(),
//     ),
//
//     //   GoRoute(
//     //   path: '/successful',
//     //   builder: (context, state) => const SuccessfulPayment(),
//     // ),
//
//     //   GoRoute(
//     //   path: '/failed',
//     //   builder: (context, state) => const FailedPayment(),
//     // ),
//
//     GoRoute(
//       path: '/product/:id',
//       builder: (BuildContext context, GoRouterState state) {
//         final productId = state.pathParameters['id'];
//         return ProductPage(productId: productId.toString());
//       },
//     ),
  ],
);
//
GoRouter get router => _router;
