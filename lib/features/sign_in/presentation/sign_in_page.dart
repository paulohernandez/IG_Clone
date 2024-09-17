import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:ig_clone/app/routing/app_routing.dart';
import 'package:ig_clone/features/sign_in/domain/entities/utils.dart';
import 'package:ig_clone/features/sign_in/presentation/bloc/sign_in_bloc.dart';
import 'package:ig_clone/features/sign_in/presentation/components/sign_in_form.dart';
import 'package:ig_clone/features/sign_in/presentation/components/social_card.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
      ),
      body: BlocConsumer<SignInBloc, SignInState>(
        builder: _onChangeStateBuilder,
        listener: _onStateChangeListener,
      ),
    );
  }

  Widget _onChangeStateBuilder(BuildContext context, SignInState state) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(height: 16),
                const Text(
                  'Welcome Back',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 8),
                const Text(
                  'Sign in with your email and password  \nor continue '
                  'with social media',
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Color(0xFF757575)),
                ),
                // const SizedBox(height: 16),
                SizedBox(height: MediaQuery.of(context).size.height * 0.05),
                const SignInForm(),
                SizedBox(height: MediaQuery.of(context).size.height * 0.2),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SocialCard(
                      icon: SvgPicture.string(googleIcon),
                      press: () {},
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: SocialCard(
                        icon: SvgPicture.string(facebookIcon),
                        press: () {},
                      ),
                    ),
                    SocialCard(
                      icon: SvgPicture.string(twitterIcon),
                      press: () {},
                    ),
                  ],
                ),
                const SizedBox(height: 16),
                const NoAccountText(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Future<void> _onStateChangeListener(
    BuildContext context,
    SignInState state,
  ) async {
    if (state is SignInLoaded) {
      context.goNamed('home');
    } else if (state is SignInError) {
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text(state.message)));
    }
  }
}
