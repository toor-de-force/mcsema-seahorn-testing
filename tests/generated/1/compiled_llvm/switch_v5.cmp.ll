; ModuleID = 'generated/1/binary/switch_v5.o.0.5.precodegen.bc'
source_filename = "ld-temp.o"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@global_time = internal global i64 0, align 8

; Function Attrs: noinline norecurse nounwind uwtable
define internal void @_Z10path_startv() #0 {
  %1 = tail call i64 @time(i64* nonnull @global_time) #4
  ret void
}

; Function Attrs: nounwind
declare i64 @time(i64*) local_unnamed_addr #1

; Function Attrs: noinline norecurse nounwind uwtable
define internal void @_Z9path_goalv() #0 {
  %1 = tail call i64 @time(i64* nonnull @global_time) #4
  ret void
}

; Function Attrs: noinline norecurse nounwind uwtable
define internal void @_Z12path_nongoalv() #0 {
  %1 = tail call i64 @time(i64* nonnull @global_time) #4
  ret void
}

; Function Attrs: norecurse nounwind uwtable
define dso_local i32 @main() #2 {
  %1 = alloca i32, align 4
  tail call void @_Z10path_startv()
  %2 = tail call i32 @rand() #4
  %3 = bitcast i32* %1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %3)
  store volatile i32 1, i32* %1, align 4
  %4 = shl i32 %2, 24
  %5 = ashr exact i32 %4, 24
  switch i32 %5, label %13 [
    i32 98, label %6
    i32 100, label %6
    i32 104, label %6
    i32 107, label %6
    i32 115, label %6
    i32 119, label %6
    i32 66, label %6
    i32 68, label %6
    i32 72, label %6
    i32 75, label %6
    i32 83, label %6
    i32 87, label %6
    i32 49, label %6
    i32 51, label %6
    i32 37, label %6
    i32 46, label %6
    i32 44, label %6
    i32 99, label %7
    i32 101, label %7
    i32 103, label %7
    i32 105, label %7
    i32 116, label %7
    i32 67, label %7
    i32 69, label %7
    i32 71, label %7
    i32 73, label %7
    i32 84, label %7
    i32 50, label %7
    i32 52, label %7
    i32 64, label %7
    i32 126, label %7
    i32 58, label %7
    i32 97, label %8
    i32 108, label %8
    i32 110, label %8
    i32 112, label %8
    i32 117, label %8
    i32 122, label %8
    i32 65, label %8
    i32 76, label %8
    i32 78, label %8
    i32 80, label %8
    i32 85, label %8
    i32 90, label %8
    i32 53, label %8
    i32 56, label %8
    i32 42, label %8
    i32 94, label %8
    i32 91, label %8
    i32 40, label %8
    i32 123, label %8
    i32 102, label %11
    i32 120, label %11
    i32 109, label %11
    i32 111, label %11
    i32 114, label %11
    i32 70, label %11
    i32 88, label %11
    i32 77, label %11
    i32 79, label %11
    i32 54, label %11
    i32 48, label %11
    i32 35, label %11
    i32 41, label %11
    i32 93, label %11
    i32 125, label %11
    i32 106, label %12
    i32 113, label %12
    i32 121, label %12
    i32 118, label %12
    i32 74, label %12
    i32 81, label %12
    i32 89, label %12
    i32 86, label %12
    i32 55, label %12
    i32 57, label %12
    i32 59, label %12
    i32 36, label %12
  ]

6:                                                ; preds = %0, %0, %0, %0, %0, %0, %0, %0, %0, %0, %0, %0, %0, %0, %0, %0, %0
  store volatile i32 5, i32* %1, align 4
  br label %14

7:                                                ; preds = %0, %0, %0, %0, %0, %0, %0, %0, %0, %0, %0, %0, %0, %0, %0
  store volatile i32 3, i32* %1, align 4
  br label %8

8:                                                ; preds = %7, %0, %0, %0, %0, %0, %0, %0, %0, %0, %0, %0, %0, %0, %0, %0, %0, %0, %0, %0
  %9 = load volatile i32, i32* %1, align 4
  %10 = add nsw i32 %9, 2
  store volatile i32 %10, i32* %1, align 4
  br label %14

11:                                               ; preds = %0, %0, %0, %0, %0, %0, %0, %0, %0, %0, %0, %0, %0, %0, %0
  store volatile i32 7, i32* %1, align 4
  br label %14

12:                                               ; preds = %0, %0, %0, %0, %0, %0, %0, %0, %0, %0, %0, %0
  store volatile i32 9, i32* %1, align 4
  br label %14

13:                                               ; preds = %0
  store volatile i32 13, i32* %1, align 4
  br label %14

14:                                               ; preds = %13, %12, %11, %8, %6
  %15 = load volatile i32, i32* %1, align 4
  %16 = icmp eq i32 %15, 7
  br i1 %16, label %17, label %18

17:                                               ; preds = %14
  tail call void @_Z9path_goalv()
  br label %22

18:                                               ; preds = %14
  %19 = load volatile i32, i32* %1, align 4
  %20 = icmp eq i32 %19, 4
  br i1 %20, label %21, label %22

21:                                               ; preds = %18
  tail call void @_Z12path_nongoalv()
  br label %22

22:                                               ; preds = %21, %18, %17
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %3)
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
