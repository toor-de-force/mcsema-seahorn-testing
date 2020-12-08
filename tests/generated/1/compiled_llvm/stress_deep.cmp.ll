; ModuleID = 'generated/1/binary/stress_deep.o.0.5.precodegen.bc'
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
  %2 = bitcast i32* %1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2)
  store volatile i32 0, i32* %1, align 4
  tail call void @_Z10path_startv()
  %3 = tail call i32 @rand() #4
  %4 = and i32 %3, 1
  %5 = icmp eq i32 %4, 0
  %6 = and i32 %3, 4
  %7 = icmp eq i32 %6, 0
  %8 = and i32 %3, 8
  %9 = icmp eq i32 %8, 0
  br i1 %5, label %10, label %11

10:                                               ; preds = %0
  store volatile i32 %3, i32* %1, align 4
  br label %32

11:                                               ; preds = %0
  %12 = and i32 %3, 2
  %13 = icmp eq i32 %12, 0
  %14 = and i32 %3, 16
  %15 = icmp eq i32 %14, 0
  br i1 %13, label %31, label %16

16:                                               ; preds = %11
  br i1 %7, label %30, label %17

17:                                               ; preds = %16
  %18 = and i32 %3, 32
  %19 = icmp eq i32 %18, 0
  br i1 %9, label %29, label %20

20:                                               ; preds = %17
  br i1 %15, label %28, label %21

21:                                               ; preds = %20
  br i1 %19, label %27, label %22

22:                                               ; preds = %21
  %23 = and i32 %3, 64
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %22
  store volatile i32 0, i32* %1, align 4
  br label %32

26:                                               ; preds = %22
  store volatile i32 %3, i32* %1, align 4
  br label %32

27:                                               ; preds = %21
  store volatile i32 %3, i32* %1, align 4
  br label %32

28:                                               ; preds = %20
  store volatile i32 %3, i32* %1, align 4
  br label %32

29:                                               ; preds = %17
  store volatile i32 %3, i32* %1, align 4
  br label %32

30:                                               ; preds = %16
  store volatile i32 %3, i32* %1, align 4
  br label %32

31:                                               ; preds = %11
  store volatile i32 %3, i32* %1, align 4
  br label %32

32:                                               ; preds = %31, %30, %29, %28, %27, %26, %25, %10
  %33 = load volatile i32, i32* %1, align 4
  %34 = icmp eq i32 %33, 42
  br i1 %34, label %35, label %36

35:                                               ; preds = %32
  tail call void @_Z9path_goalv()
  br label %36

36:                                               ; preds = %35, %32
  %37 = load volatile i32, i32* %1, align 4
  %38 = icmp eq i32 %37, 255
  br i1 %38, label %39, label %40

39:                                               ; preds = %36
  tail call void @_Z12path_nongoalv()
  br label %40

40:                                               ; preds = %39, %36
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2)
  ret i32 0
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #3

; Function Attrs: nounwind
declare i32 @rand() local_unnamed_addr #1

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
