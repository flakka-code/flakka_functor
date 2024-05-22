// ignore_for_file: prefer_const_constructors
import 'package:flakka_functor/flakka_functor.dart';
// import 'package:flakka_functor/src/ref/ref.dart';
// import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:test/test.dart';

import 'util.dart';

void main() {
  //
  test('Some description', () {
    // Create a ProviderContainer for this test.
    // DO NOT share ProviderContainers between tests.
    final container = createContainer();
/*    final ref = container.read(Functor1DispatchProvider('abc'));
    // ref.
    expect(
      ref.send('Hello world'),
      equals(12),
    );*/
  });

  //
  group('FlakkaFunctor', () {
    test('can be instantiated', () {
      expect(FlakkaFunctor(), isNotNull);
    });
  });
}

// @riverpod
// class Functor1Dispatch extends _$Functor1Dispatch
//     implements FunctorProps<Functor1Ref, String> {
//   @override
//   Functor1Ref build(String props) {
//     throw UnimplementedError();
//   }
// }

//
// class Functor1Ref extends Ref<String, int> {}
//
//
// extension type Functor1._(Functor1DispatchProvider providerRef)
// implements Functor1DispatchProvider {}
//
// ///
// abstract mixin class FunctorProps<FunctorT, PropsT> {
//   ///
//   FunctorT build(PropsT props);
// }

// final class Functor1Behavior extends Behavior<String, String, String> {
//   @override
//   String receive(String message) {
//     return '$message $props';
//   }
// }
