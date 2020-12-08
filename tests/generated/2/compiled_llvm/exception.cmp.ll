; ModuleID = 'generated/2/binary/exception.o.0.5.precodegen.bc'
source_filename = "ld-temp.o"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::runtime_error" = type { %"class.std::exception", %"struct.std::__cow_string" }
%"class.std::exception" = type { i32 (...)** }
%"struct.std::__cow_string" = type { %union.anon }
%union.anon = type { i8* }

@global_time = internal global i64 0, align 8
@.str = private unnamed_addr constant [18 x i8] c"exception thrown!\00", align 1
@_ZTISt13runtime_error = external constant i8*

; Function Attrs: noinline norecurse nounwind uwtable
define internal fastcc void @_Z10path_startv() unnamed_addr #0 {
  %1 = tail call i64 @time(i64* nonnull @global_time) #6
  ret void
}

; Function Attrs: nounwind
declare i64 @time(i64*) local_unnamed_addr #1

; Function Attrs: noinline norecurse nounwind uwtable
define internal fastcc void @_Z9path_goalv() unnamed_addr #0 {
  %1 = tail call i64 @time(i64* nonnull @global_time) #6
  ret void
}

; Function Attrs: noinline norecurse nounwind uwtable
define internal fastcc void @_Z12path_nongoalv() unnamed_addr #0 {
  %1 = tail call i64 @time(i64* nonnull @global_time) #6
  ret void
}

declare i32 @__gxx_personality_v0(...)

declare i8* @__cxa_allocate_exception(i64) local_unnamed_addr

declare void @_ZNSt13runtime_errorC1EPKc(%"class.std::runtime_error"*, i8*) unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZNSt13runtime_errorD1Ev(%"class.std::runtime_error"*) unnamed_addr #1

declare void @__cxa_throw(i8*, i8*, i8*) local_unnamed_addr

declare void @__cxa_free_exception(i8*) local_unnamed_addr

; Function Attrs: norecurse uwtable
define dso_local i32 @main() local_unnamed_addr #3 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  tail call fastcc void @_Z10path_startv()
  %.0.sroa_cast5 = bitcast i32* %1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %.0.sroa_cast5)
  store volatile i32 3, i32* %1, align 4
  %.0.sroa_cast = bitcast i32* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %.0.sroa_cast)
  store volatile i32 7, i32* %2, align 4
  %.0.4 = load volatile i32, i32* %1, align 4
  %3 = and i32 %.0.4, 1
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %12, label %5

5:                                                ; preds = %0
  %6 = tail call i8* @__cxa_allocate_exception(i64 16) #6
  %7 = bitcast i8* %6 to %"class.std::runtime_error"*
  invoke void @_ZNSt13runtime_errorC1EPKc(%"class.std::runtime_error"* %7, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
          to label %8 unwind label %10

8:                                                ; preds = %5
  invoke void @__cxa_throw(i8* %6, i8* bitcast (i8** @_ZTISt13runtime_error to i8*), i8* bitcast (void (%"class.std::runtime_error"*)* @_ZNSt13runtime_errorD1Ev to i8*)) #7
          to label %9 unwind label %13

9:                                                ; preds = %8
  unreachable

10:                                               ; preds = %5
  %11 = landingpad { i8*, i32 }
          cleanup
          catch i8* bitcast (i8** @_ZTISt13runtime_error to i8*)
  tail call void @__cxa_free_exception(i8* %6) #6
  br label %15

12:                                               ; preds = %0
  store volatile i32 5, i32* %2, align 4
  br label %23

13:                                               ; preds = %8
  %14 = landingpad { i8*, i32 }
          cleanup
          catch i8* bitcast (i8** @_ZTISt13runtime_error to i8*)
  br label %15

15:                                               ; preds = %13, %10
  %16 = phi { i8*, i32 } [ %14, %13 ], [ %11, %10 ]
  %17 = extractvalue { i8*, i32 } %16, 1
  %18 = tail call i32 @llvm.eh.typeid.for(i8* bitcast (i8** @_ZTISt13runtime_error to i8*)) #6
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %20, label %31

20:                                               ; preds = %15
  %21 = extractvalue { i8*, i32 } %16, 0
  %22 = tail call i8* @__cxa_begin_catch(i8* %21) #6
  store volatile i32 4, i32* %2, align 4
  tail call void @__cxa_end_catch()
  br label %23

23:                                               ; preds = %20, %12
  %.0. = load volatile i32, i32* %2, align 4
  %24 = and i32 %.0., 1
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %23
  tail call fastcc void @_Z9path_goalv()
  br label %30

27:                                               ; preds = %23
  %.0.1 = load volatile i32, i32* %2, align 4
  %28 = icmp eq i32 %.0.1, 1
  br i1 %28, label %29, label %30

29:                                               ; preds = %27
  tail call fastcc void @_Z12path_nongoalv()
  br label %30

30:                                               ; preds = %29, %27, %26
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %.0.sroa_cast)
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %.0.sroa_cast5)
  ret i32 0

31:                                               ; preds = %15
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %.0.sroa_cast)
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %.0.sroa_cast5)
  resume { i8*, i32 } %16
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #4

; Function Attrs: nounwind readnone
declare i32 @llvm.eh.typeid.for(i8*) #5

declare i8* @__cxa_begin_catch(i8*) local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #4

attributes #0 = { noinline norecurse nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { norecurse uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { argmemonly nounwind willreturn }
attributes #5 = { nounwind readnone }
attributes #6 = { nounwind }
attributes #7 = { noreturn }

!llvm.ident = !{!0}
!llvm.module.flags = !{!1}

!0 = !{!"clang version 6.0.0-1ubuntu2 (tags/RELEASE_600/final)"}
!1 = !{i32 1, !"wchar_size", i32 4}
