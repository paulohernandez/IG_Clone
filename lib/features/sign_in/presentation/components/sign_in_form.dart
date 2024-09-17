import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ig_clone/features/sign_in/domain/entities/utils.dart';
import 'package:ig_clone/features/sign_in/presentation/bloc/sign_in_bloc.dart';

class SignInForm extends StatelessWidget {
  const SignInForm({super.key});

  @override
  Widget build(BuildContext context) {
    final emailController = TextEditingController();
    final passwordController = TextEditingController();

    return Form(
      child: Column(
        children: [
          TextFormField(
            keyboardType: TextInputType.emailAddress,
            controller: emailController,
            onChanged: (email) {},
            textInputAction: TextInputAction.next,
            decoration: InputDecoration(
              hintText: 'Enter your email',
              labelText: 'Email',
              floatingLabelBehavior: FloatingLabelBehavior.always,
              hintStyle: const TextStyle(color: Color(0xFF757575)),
              contentPadding: const EdgeInsets.symmetric(
                horizontal: 24,
                vertical: 16,
              ),
              suffix: SvgPicture.string(
                mailIcon,
              ),
              border: authOutlineInputBorder,
              enabledBorder: authOutlineInputBorder,
              focusedBorder: authOutlineInputBorder.copyWith(
                borderSide: const BorderSide(color: Color(0xFFFF7643)),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 24),
            child: TextFormField(
              controller: passwordController,
              onChanged: (password) {},
              obscureText: true,
              decoration: InputDecoration(
                hintText: 'Enter your password',
                labelText: 'Password',
                floatingLabelBehavior: FloatingLabelBehavior.always,
                hintStyle: const TextStyle(color: Color(0xFF757575)),
                contentPadding: const EdgeInsets.symmetric(
                  horizontal: 24,
                  vertical: 16,
                ),
                suffix: SvgPicture.string(
                  lockIcon,
                ),
                border: authOutlineInputBorder,
                enabledBorder: authOutlineInputBorder,
                focusedBorder: authOutlineInputBorder.copyWith(
                  borderSide: const BorderSide(color: Color(0xFFFF7643)),
                ),
              ),
            ),
          ),
          const SizedBox(height: 8),
          ElevatedButton(
            onPressed: () => context.read<SignInBloc>().add(
                  SignInButtonTappedEvent(
                    email: emailController.text,
                    password: passwordController.text,
                  ),
                ),
            style: ElevatedButton.styleFrom(
              elevation: 0,
              backgroundColor: const Color(0xFFFF7643),
              foregroundColor: Colors.white,
              minimumSize: const Size(double.infinity, 48),
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(16)),
              ),
            ),
            child: const Text('Continue'),
          ),
        ],
      ),
    );
  }
}
