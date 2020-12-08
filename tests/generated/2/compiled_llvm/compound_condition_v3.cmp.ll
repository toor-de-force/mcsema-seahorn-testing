; ModuleID = 'generated/2/binary/compound_condition_v3.o.0.5.precodegen.bc'
source_filename = "ld-temp.o"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@global_time = internal global i64 0, align 8

; Function Attrs: noinline norecurse nounwind uwtable
define internal fastcc void @_Z10path_startv() unnamed_addr #0 {
  %1 = tail call i64 @time(i64* nonnull @global_time) #3
  ret void
}

; Function Attrs: nounwind
declare i64 @time(i64*) local_unnamed_addr #1

; Function Attrs: noinline norecurse nounwind uwtable
define internal fastcc void @_Z9path_goalv() unnamed_addr #0 {
  %1 = tail call i64 @time(i64* nonnull @global_time) #3
  ret void
}

; Function Attrs: noinline norecurse nounwind uwtable
define internal fastcc void @_Z12path_nongoalv() unnamed_addr #0 {
  %1 = tail call i64 @time(i64* nonnull @global_time) #3
  ret void
}

; Function Attrs: norecurse nounwind uwtable
define dso_local i32 @main() local_unnamed_addr #2 {
  tail call fastcc void @_Z10path_startv()
  %1 = tail call i32 @rand() #3
  %2 = tail call i32 @rand() #3
  %3 = tail call i32 @rand() #3
  %4 = tail call i32 @rand() #3
  %5 = icmp ne i32 %4, 0
  %6 = tail call i32 @rand() #3
  %7 = icmp sgt i32 %1, 2
  %8 = icmp slt i32 %2, 10
  %9 = and i1 %7, %8
  br i1 %9, label %10, label %12

10:                                               ; preds = %0
  %11 = and i32 %6, 255
  br label %18

12:                                               ; preds = %0
  %13 = icmp eq i32 %3, 7
  %14 = or i1 %13, %5
  %15 = and i32 %6, 255
  %16 = icmp eq i32 %15, 99
  %17 = or i1 %14, %16
  br i1 %17, label %18, label %28

18:                                               ; preds = %12, %10
  %19 = phi i32 [ %11, %10 ], [ %15, %12 ]
  tail call fastcc void @_Z9path_goalv()
  %20 = icmp ne i32 %2, 11
  %21 = icmp ne i32 %3, 8
  %22 = or i1 %20, %21
  %23 = or i1 %22, %5
  %24 = xor i1 %23, true
  %25 = icmp eq i32 %19, 100
  %26 = and i1 %25, %24
  br i1 %26, label %27, label %28

27:                                               ; preds = %18
  tail call fastcc void @_Z12path_nongoalv()
  br label %28

28:                                               ; preds = %27, %18, %12
  ret i32 0
}

; Function Attrs: nounwind
declare i32 @rand() local_unnamed_addr #1

attributes #0 = { noinline norecurse nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { norecurse nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.ident = !{!0}
!llvm.module.flags = !{!1}

!0 = !{!"clang version 6.0.0-1ubuntu2 (tags/RELEASE_600/final)"}
!1 = !{i32 1, !"wchar_size", i32 4}
