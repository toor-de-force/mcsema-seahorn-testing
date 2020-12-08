; ModuleID = 'generated/1/binary/switch_v1.o.0.5.precodegen.bc'
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
  switch i32 %5, label %14 [
    i32 97, label %6
    i32 98, label %6
    i32 99, label %6
    i32 103, label %7
    i32 104, label %7
    i32 108, label %8
    i32 109, label %8
    i32 110, label %8
    i32 120, label %11
    i32 121, label %12
    i32 122, label %13
  ]

6:                                                ; preds = %0, %0, %0
  store volatile i32 5, i32* %1, align 4
  br label %15

7:                                                ; preds = %0, %0
  store volatile i32 3, i32* %1, align 4
  br label %8

8:                                                ; preds = %7, %0, %0, %0
  %9 = load volatile i32, i32* %1, align 4
  %10 = add nsw i32 %9, 2
  store volatile i32 %10, i32* %1, align 4
  br label %15

11:                                               ; preds = %0
  store volatile i32 7, i32* %1, align 4
  br label %15

12:                                               ; preds = %0
  store volatile i32 9, i32* %1, align 4
  br label %15

13:                                               ; preds = %0
  store volatile i32 11, i32* %1, align 4
  br label %15

14:                                               ; preds = %0
  store volatile i32 13, i32* %1, align 4
  br label %15

15:                                               ; preds = %14, %13, %12, %11, %8, %6
  %16 = load volatile i32, i32* %1, align 4
  %17 = icmp eq i32 %16, 9
  br i1 %17, label %18, label %19

18:                                               ; preds = %15
  tail call void @_Z9path_goalv()
  br label %23

19:                                               ; preds = %15
  %20 = load volatile i32, i32* %1, align 4
  %21 = icmp eq i32 %20, 4
  br i1 %21, label %22, label %23

22:                                               ; preds = %19
  tail call void @_Z12path_nongoalv()
  br label %23

23:                                               ; preds = %22, %19, %18
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
