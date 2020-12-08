; ModuleID = 'generated/2/binary/switch_v5.o.0.5.precodegen.bc'
source_filename = "ld-temp.o"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@global_time = internal global i64 0, align 8

; Function Attrs: noinline norecurse nounwind uwtable
define internal fastcc void @_Z10path_startv() unnamed_addr #0 {
  %1 = tail call i64 @time(i64* nonnull @global_time) #4
  ret void
}

; Function Attrs: nounwind
declare i64 @time(i64*) local_unnamed_addr #1

; Function Attrs: noinline norecurse nounwind uwtable
define internal fastcc void @_Z9path_goalv() unnamed_addr #0 {
  %1 = tail call i64 @time(i64* nonnull @global_time) #4
  ret void
}

; Function Attrs: noinline norecurse nounwind uwtable
define internal fastcc void @_Z12path_nongoalv() unnamed_addr #0 {
  %1 = tail call i64 @time(i64* nonnull @global_time) #4
  ret void
}

; Function Attrs: norecurse nounwind uwtable
define dso_local i32 @main() local_unnamed_addr #2 {
  %1 = alloca i32, align 4
  tail call fastcc void @_Z10path_startv()
  %2 = tail call i32 @rand() #4
  %.0.sroa_cast = bitcast i32* %1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %.0.sroa_cast)
  store volatile i32 1, i32* %1, align 4
  %3 = shl i32 %2, 24
  %4 = ashr exact i32 %3, 24
  switch i32 %4, label %11 [
    i32 98, label %5
    i32 100, label %5
    i32 104, label %5
    i32 107, label %5
    i32 115, label %5
    i32 119, label %5
    i32 66, label %5
    i32 68, label %5
    i32 72, label %5
    i32 75, label %5
    i32 83, label %5
    i32 87, label %5
    i32 49, label %5
    i32 51, label %5
    i32 37, label %5
    i32 46, label %5
    i32 44, label %5
    i32 99, label %6
    i32 101, label %6
    i32 103, label %6
    i32 105, label %6
    i32 116, label %6
    i32 67, label %6
    i32 69, label %6
    i32 71, label %6
    i32 73, label %6
    i32 84, label %6
    i32 50, label %6
    i32 52, label %6
    i32 64, label %6
    i32 126, label %6
    i32 58, label %6
    i32 97, label %7
    i32 108, label %7
    i32 110, label %7
    i32 112, label %7
    i32 117, label %7
    i32 122, label %7
    i32 65, label %7
    i32 76, label %7
    i32 78, label %7
    i32 80, label %7
    i32 85, label %7
    i32 90, label %7
    i32 53, label %7
    i32 56, label %7
    i32 42, label %7
    i32 94, label %7
    i32 91, label %7
    i32 40, label %7
    i32 123, label %7
    i32 102, label %9
    i32 120, label %9
    i32 109, label %9
    i32 111, label %9
    i32 114, label %9
    i32 70, label %9
    i32 88, label %9
    i32 77, label %9
    i32 79, label %9
    i32 54, label %9
    i32 48, label %9
    i32 35, label %9
    i32 41, label %9
    i32 93, label %9
    i32 125, label %9
    i32 106, label %10
    i32 113, label %10
    i32 121, label %10
    i32 118, label %10
    i32 74, label %10
    i32 81, label %10
    i32 89, label %10
    i32 86, label %10
    i32 55, label %10
    i32 57, label %10
    i32 59, label %10
    i32 36, label %10
  ]

5:                                                ; preds = %0, %0, %0, %0, %0, %0, %0, %0, %0, %0, %0, %0, %0, %0, %0, %0, %0
  store volatile i32 5, i32* %1, align 4
  br label %12

6:                                                ; preds = %0, %0, %0, %0, %0, %0, %0, %0, %0, %0, %0, %0, %0, %0, %0
  store volatile i32 3, i32* %1, align 4
  br label %7

7:                                                ; preds = %6, %0, %0, %0, %0, %0, %0, %0, %0, %0, %0, %0, %0, %0, %0, %0, %0, %0, %0, %0
  %.0. = load volatile i32, i32* %1, align 4
  %8 = add nsw i32 %.0., 2
  store volatile i32 %8, i32* %1, align 4
  br label %12

9:                                                ; preds = %0, %0, %0, %0, %0, %0, %0, %0, %0, %0, %0, %0, %0, %0, %0
  store volatile i32 7, i32* %1, align 4
  br label %12

10:                                               ; preds = %0, %0, %0, %0, %0, %0, %0, %0, %0, %0, %0, %0
  store volatile i32 9, i32* %1, align 4
  br label %12

11:                                               ; preds = %0
  store volatile i32 13, i32* %1, align 4
  br label %12

12:                                               ; preds = %11, %10, %9, %7, %5
  %.0.1 = load volatile i32, i32* %1, align 4
  %13 = icmp eq i32 %.0.1, 7
  br i1 %13, label %14, label %15

14:                                               ; preds = %12
  tail call fastcc void @_Z9path_goalv()
  br label %18

15:                                               ; preds = %12
  %.0.2 = load volatile i32, i32* %1, align 4
  %16 = icmp eq i32 %.0.2, 4
  br i1 %16, label %17, label %18

17:                                               ; preds = %15
  tail call fastcc void @_Z12path_nongoalv()
  br label %18

18:                                               ; preds = %17, %15, %14
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %.0.sroa_cast)
  ret i32 0
}

; Function Attrs: nounwind
declare i32 @rand() local_unnamed_addr #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #3

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #3

attributes #0 = { noinline norecurse nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { norecurse nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind willreturn }
attributes #4 = { nounwind }

!llvm.ident = !{!0}
!llvm.module.flags = !{!1}

!0 = !{!"clang version 6.0.0-1ubuntu2 (tags/RELEASE_600/final)"}
!1 = !{i32 1, !"wchar_size", i32 4}
