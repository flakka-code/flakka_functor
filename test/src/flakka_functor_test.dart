// ignore_for_file: prefer_const_constructors
import 'package:flakka_functor/flakka_functor.dart';
import 'package:meta/meta.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:test/test.dart';

import 'util.dart';

part 'flakka_functor_test.g.dart';

void main() {
  test('Some description', () {
    // Create a ProviderContainer for this test.
    // DO NOT share ProviderContainers between tests.
    final container = createContainer();
    final ref = container.read(myNotifierProvider);
    // ref.
    expect(
      ref.send('Hello world'),
      equals(12),
    );
  });
  group('FlakkaFunctor', () {
    test('can be instantiated', () {
      expect(FlakkaFunctor(), isNotNull);
    });
  });
}

@riverpod
class MyNotifier extends _$MyNotifier {
  @override
  Functor1Ref build() {
    throw UnimplementedError();
  }
}

final class Functor1Behavior extends Behavior<String, String, String> {
  @override
  String receive(String message) {
    return '$message $props';
  }
}

class Functor1Ref extends Ref<String, int> {
  @override
  Ref<MessageT, ReplyT> ref<MessageT, ReplyT, PropsT>(PropsT props) {
    throw UnimplementedError();
  }

  @override
  int send(String message) {
    throw UnimplementedError();
  }
}

///
@riverpod
String myFunction(MyFunctionRef ref) {
  // <your logic here>
  return 'Hello world';
}
