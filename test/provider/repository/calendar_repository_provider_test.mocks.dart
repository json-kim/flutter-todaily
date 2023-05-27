// Mocks generated by Mockito 5.4.0 from annotations
// in flutter_todaily/test/provider/repository/calendar_repository_provider_test.dart.
// Do not manually edit this file.

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i3;

import 'package:flutter_todaily/data/repository/calendar_repository.dart'
    as _i2;
import 'package:flutter_todaily/model/calendar_model.dart' as _i4;
import 'package:flutter_todaily/model/edit_calendar_model.dart' as _i5;
import 'package:mockito/mockito.dart' as _i1;

// ignore_for_file: type=lint
// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: camel_case_types
// ignore_for_file: subtype_of_sealed_class

/// A class which mocks [CalendarRepositoryType].
///
/// See the documentation for Mockito's code generation for more information.
class MockCalendarRepositoryType extends _i1.Mock
    implements _i2.CalendarRepositoryType {
  @override
  _i3.Future<int?> insertCalendar(_i4.CalendarModel? calendar) =>
      (super.noSuchMethod(
        Invocation.method(
          #insertCalendar,
          [calendar],
        ),
        returnValue: _i3.Future<int?>.value(),
        returnValueForMissingStub: _i3.Future<int?>.value(),
      ) as _i3.Future<int?>);
  @override
  _i3.Future<int?> insertEditCalendar(_i5.EditCalendarModel? editCalendar) =>
      (super.noSuchMethod(
        Invocation.method(
          #insertEditCalendar,
          [editCalendar],
        ),
        returnValue: _i3.Future<int?>.value(),
        returnValueForMissingStub: _i3.Future<int?>.value(),
      ) as _i3.Future<int?>);
  @override
  _i3.Future<bool> deleteCalendar(int? calendarId) => (super.noSuchMethod(
        Invocation.method(
          #deleteCalendar,
          [calendarId],
        ),
        returnValue: _i3.Future<bool>.value(false),
        returnValueForMissingStub: _i3.Future<bool>.value(false),
      ) as _i3.Future<bool>);
  @override
  _i3.Future<bool> deleteAllCalendar() => (super.noSuchMethod(
        Invocation.method(
          #deleteAllCalendar,
          [],
        ),
        returnValue: _i3.Future<bool>.value(false),
        returnValueForMissingStub: _i3.Future<bool>.value(false),
      ) as _i3.Future<bool>);
  @override
  _i3.Future<int?> updateCalendar(_i4.CalendarModel? calendar) =>
      (super.noSuchMethod(
        Invocation.method(
          #updateCalendar,
          [calendar],
        ),
        returnValue: _i3.Future<int?>.value(),
        returnValueForMissingStub: _i3.Future<int?>.value(),
      ) as _i3.Future<int?>);
  @override
  _i3.Future<List<_i4.CalendarModel>?> selectCalendarListInYear(int? year) =>
      (super.noSuchMethod(
        Invocation.method(
          #selectCalendarListInYear,
          [year],
        ),
        returnValue: _i3.Future<List<_i4.CalendarModel>?>.value(),
        returnValueForMissingStub: _i3.Future<List<_i4.CalendarModel>?>.value(),
      ) as _i3.Future<List<_i4.CalendarModel>?>);
  @override
  _i3.Future<List<_i4.CalendarModel>?> selectCalendarListInMonth(
    int? year,
    int? month,
  ) =>
      (super.noSuchMethod(
        Invocation.method(
          #selectCalendarListInMonth,
          [
            year,
            month,
          ],
        ),
        returnValue: _i3.Future<List<_i4.CalendarModel>?>.value(),
        returnValueForMissingStub: _i3.Future<List<_i4.CalendarModel>?>.value(),
      ) as _i3.Future<List<_i4.CalendarModel>?>);
  @override
  _i3.Future<_i4.CalendarModel?> selectCalendarWithDay(DateTime? date) =>
      (super.noSuchMethod(
        Invocation.method(
          #selectCalendarWithDay,
          [date],
        ),
        returnValue: _i3.Future<_i4.CalendarModel?>.value(),
        returnValueForMissingStub: _i3.Future<_i4.CalendarModel?>.value(),
      ) as _i3.Future<_i4.CalendarModel?>);
  @override
  _i3.Future<_i4.CalendarModel?> selectCalendarWithId(int? id) =>
      (super.noSuchMethod(
        Invocation.method(
          #selectCalendarWithId,
          [id],
        ),
        returnValue: _i3.Future<_i4.CalendarModel?>.value(),
        returnValueForMissingStub: _i3.Future<_i4.CalendarModel?>.value(),
      ) as _i3.Future<_i4.CalendarModel?>);
}