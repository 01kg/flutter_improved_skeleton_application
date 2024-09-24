import 'dart:async';

import 'package:flutter/widgets.dart';
import 'package:flutter_skeleton_application_improved/models/jsend.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

part 'supabase_auth.g.dart';

final supabase = Supabase.instance.client;


@riverpod
class SupabaseAuth extends _$SupabaseAuth {
  @override
  User? build() {
    return supabase.auth.currentUser;
  }

  Future<void> signUp({required String email, required String password}) async {
    await supabase.auth.signUp(
      email: email,
      password: password,
    );
    ref.invalidateSelf();
  }

  Future<Jsend> signIn(
      {required String email, required String password}) async {
    try {
      final res = await supabase.auth
          .signInWithPassword(
        email: email,
        password: password,
      )
          .timeout(const Duration(seconds: 20), onTimeout: () {
        throw TimeoutException(
            "The connection has timed out, Please try again!");
      });

      // If sign-in is successful, invalidate the provider and return success
      ref.invalidateSelf();

      final userEmail = res.user?.email;
      return Jsend<User?>.success(data: res.user, message: "Welcome back, $userEmail!");
    } on TimeoutException catch (e) {
      return Jsend.error("Sign in request timeout! Error: $e");
    } catch (e) {
      return Jsend.error("An error occurred: ${e.toString()}");
    }
  }

  Future<Jsend> signOut() async {
    try {
      // Retrieve the user's email before signing out
      final userEmail = supabase.auth.currentUser?.email;

      // Perform the sign-out operation
      await supabase.auth.signOut();

      // Invalidate the provider
      ref.invalidateSelf();

      // Return a Jsend object with the goodbye message
      return Jsend.success(message: "Goodbye, $userEmail!");
    } catch (e) {
      return Jsend.error("An error occurred during sign out: ${e.toString()}");
    }
  }
}
