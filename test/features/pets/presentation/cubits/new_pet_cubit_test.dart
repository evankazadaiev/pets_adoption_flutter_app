import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:pets_adoption/features/pets/presentation/cubits/new_pet_cubit.dart';

void main() {
  late NewPetCubit cubit;

  setUp(() {
    cubit = NewPetCubit();
  });

  test('initial state is initial', () {
    expect(cubit.state, const NewPetState());
  });

  blocTest<NewPetCubit, NewPetState>(
    "submitBriefDetails should specify name and breed",
    build: () {
      return cubit;
    },
    act: (cubit) => cubit.submitBriefDetails(petBreed: "test", petName: "test"),
    expect: () => <NewPetState>[
      const NewPetState(petName: "test", petBreed: "test"),
    ],
  );

  blocTest<NewPetCubit, NewPetState>(
    "submitAnthropometry should specify age, weight, and description",
    build: () {
      return cubit;
    },
    act: (cubit) =>
        cubit.submitAnthropometry(age: 12, weight: 12, description: "test"),
    expect: () => <NewPetState>[
      const NewPetState(age: 12, weight: 12, description: "test"),
    ],
  );
}
