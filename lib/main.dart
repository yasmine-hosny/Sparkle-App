import 'package:flutter/material.dart';
import 'package:graduation_project/views/Child_report_view.dart';
import 'package:graduation_project/views/change_therapist_view.dart';
import 'package:graduation_project/views/child_edit_profile_view.dart';
import 'package:graduation_project/views/child_home_view.dart';
import 'package:graduation_project/views/child_log_in_view.dart';
import 'package:graduation_project/views/child_settings_view.dart';
import 'package:graduation_project/views/child_sign_up_view.dart';
import 'package:graduation_project/views/child_story_view.dart';
import 'package:graduation_project/views/contact_us_view.dart';
import 'package:graduation_project/views/email_forget_password_view.dart';
import 'package:graduation_project/views/new_password_view.dart';
import 'package:graduation_project/views/therapist_edit_profile_view.dart';
import 'package:graduation_project/views/therapist_home_view.dart';
import 'package:graduation_project/views/therapist_log_in_view.dart';
import 'package:graduation_project/views/therapist_profile_view.dart';
import 'package:graduation_project/views/report_screen.dart';
import 'package:graduation_project/views/requests_screen.dart';
import 'package:graduation_project/views/therapist_sign_up_view.dart';
import 'package:graduation_project/views/therapist_or_child_view.dart';
import 'package:graduation_project/views/verification_code_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        TherapistOrChildView.id: (context) => TherapistOrChildView(),
        ChildSignUpView.id: (context) => ChildSignUpView(),
        TherapistSignUpView.id: (context) => TherapistSignUpView(),
        TherapistLogInView.id: (context) => TherapistLogInView(),
        TherapistHomeView.id: (context) => TherapistHomeView(),
        ChildHomeView.id: (context) => ChildHomeView(),
        ReportScreen.id: (context) => ReportScreen(),
        RequestsScreen.id: (context) => RequestsScreen(),
        TherapistProfileView.id: (context) => TherapistProfileView(),
        TherapistEditProfileView.id: (context) => TherapistEditProfileView(),
        ChildStoryView.id: (context) => ChildStoryView(),
        ChildLogInView.id: (context) => ChildLogInView(),
        ChildSettingsView.id: (context) => ChildSettingsView(),
        ContactUsView.id: (context) => ContactUsView(),
        ChildEditProfileView.id: (context) => ChildEditProfileView(),
        ChangeTherapistView.id: (context) => ChangeTherapistView(),
        ChildReportView.id: (context) => ChildReportView(),
        // VerificationCodeView.id: (context) => VerificationCodeView.second(),
        // EmailOfForgetPasswordView.id: (context) => EmailOfForgetPasswordView(),
        // NewPasswordView.id: (context) => NewPasswordView(),
      },
      initialRoute: TherapistOrChildView.id,
    );
  }
}
