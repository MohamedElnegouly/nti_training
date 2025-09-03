import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:training_app/core/service/getIt.dart';
import 'package:training_app/features/auth/Domin/repo/auth_repo.dart';
import 'package:training_app/features/auth/presentation/cubit/signIn/sign_in_cubit.dart';
import 'package:training_app/generated/l10n.dart';
import '../../../../core/widgets/SnackBarBuild.dart';
import 'widgets/CustomAppBar.dart';
import 'widgets/signInViewBody.dart';

class SignIn extends StatelessWidget {
  const SignIn({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SignInCubit(getIt<AuthRepo>()),
      child: Scaffold(
        appBar: customAppBar(S.of(context).title, () {}),
        body: const SignInViewBodyConsumer(),
      ),
    );
  }
}

class SignInViewBodyConsumer extends StatelessWidget {
  const SignInViewBodyConsumer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SignInCubit, SignInState>(listener: (context, state) {
      if (state is SignInSuccess) {
        snackBarbuild(context, 'تم تسجيل الدخول بنجاح');
        context.go('/home');
      }
      if (state is SignInFailure) {
        snackBarbuild(context, state.errMessage);
      }
    }, builder: (context, state) {
      return ModalProgressHUD(
          inAsyncCall: state is SignInLoading, child: const Signinviewbody());
    });
  }
}
