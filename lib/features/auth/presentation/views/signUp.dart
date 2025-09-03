import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:training_app/core/service/getIt.dart';
import 'package:training_app/core/widgets/SnackBarBuild.dart';
import 'package:training_app/features/auth/Domin/repo/auth_repo.dart';
import 'package:training_app/features/auth/presentation/cubit/signup/signup_cubit.dart';
import 'package:training_app/generated/l10n.dart';

import 'widgets/CustomAppBar.dart';
import 'widgets/signUpViewBody.dart';

class Signup extends StatelessWidget {
  const Signup({super.key});

  @override
  Widget build(BuildContext context) {
    //provide cubit to this root
    return BlocProvider(
      create: (context) => SignupCubit(getIt<AuthRepo>()),
      child: Scaffold(
        appBar: customAppBar(S.of(context).titleSignUp, () {
          context.go('/signIn');
        }),
        body: const SignUpViewBodyConsumer(),
      ),
    );
  }
}

class SignUpViewBodyConsumer extends StatelessWidget {
  const SignUpViewBodyConsumer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SignupCubit, SignupState>(
      //هنا بنفذ اكواد ملهاش دعوه بالبناء
      listener: (context, state) {
        if (state is SignupSuccess) {
          snackBarbuild(context, 'تم عمل حساب بنجاح ');
          context.go('/signIn');
        }
        if (state is SignupFailure) {
          snackBarbuild(context, state.errMessage);
        }
      },
      //UI هنا ده المسؤل عن بناء
      builder: (context, state) {
        return ModalProgressHUD(
            inAsyncCall: state is SignupLoading, child: const Signupviewbody());
      },
    );
  }
}
