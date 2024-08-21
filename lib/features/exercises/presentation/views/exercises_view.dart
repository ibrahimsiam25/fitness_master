import 'package:fitness_master/features/exercises/presentation/manager/exercises/exercises_cubit.dart';
import 'package:fitness_master/features/exercises/presentation/views/widgets/exercises/exercises_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ExercisesView extends StatelessWidget {
  const ExercisesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
        create: (context) => ExercisesCubit(),
        child: const ExercisesViewBody(),
      ),
    );
  }
}
