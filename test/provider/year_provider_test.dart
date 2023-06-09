import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_todaily/provider/year_provider.dart';
import 'package:flutter_todaily/util/const_value.dart';
import 'package:mockito/mockito.dart';

import '../test_util/listener.dart';

void main() {
  group('[Provider] YearProvider 테스트 :', () {
    test('생성시, 최초 연도는 올해 연도이다.', () {
      final container = ProviderContainer();
      addTearDown(container.dispose);
      final listener = Listener<int>();

      container.listen<int>(yearProvider, listener, fireImmediately: true);

      final nowYear = DateTime.now().year;

      expect(container.read(yearProvider), nowYear);
    });

    test('beforeYear() 실행시, 연도가 1 감소한다.', () {
      final container = ProviderContainer();
      addTearDown(container.dispose);
      final listener = Listener();

      container.listen<int>(yearProvider, listener, fireImmediately: true);

      final nowYear = DateTime.now().year;

      verify(listener(null, nowYear)).called(1);
      verifyNoMoreInteractions(listener);

      container.read(yearProvider.notifier).beforeYear();

      verify(listener(nowYear, nowYear - 1)).called(1);
      verifyNoMoreInteractions(listener);
    });

    test('nextYear() 실행시, 연도가 1 증가한다.', () {
      final container = ProviderContainer();
      addTearDown(container.dispose);
      final listener = Listener();

      container.listen<int>(yearProvider, listener, fireImmediately: true);

      final nowYear = DateTime.now().year;

      verify(listener(null, nowYear)).called(1);
      verifyNoMoreInteractions(listener);

      container.read(yearProvider.notifier).nextYear();

      verify(listener(nowYear, nowYear + 1)).called(1);
      verifyNoMoreInteractions(listener);
    });

    test('최소 연도는 2022년이다.', () {
      final container = ProviderContainer();
      addTearDown(container.dispose);
      final listener = Listener();

      container.listen<int>(yearProvider, listener, fireImmediately: true);

      for (int i = 0; i < 100; i++) {
        container.read(yearProvider.notifier).beforeYear();
      }

      final afterYear = container.read(yearProvider);

      expect(afterYear, firstYear);
    });

    test('최대 연도는 올해 + 5 이다.', () {
      final container = ProviderContainer();
      addTearDown(container.dispose);
      final listener = Listener();

      container.listen<int>(yearProvider, listener, fireImmediately: true);

      for (int i = 0; i < 100; i++) {
        container.read(yearProvider.notifier).nextYear();
      }

      final afterYear = container.read(yearProvider);

      expect(afterYear, DateTime.now().year + maxYearTerm);
    });
  });
}
