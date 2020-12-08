; ModuleID = 'generated/0/binary/switch_v5.o.0.5.precodegen.bc'
source_filename = "ld-temp.o"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@global_time = internal global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_Z10path_startv() #0 {
  %1 = call i64 @time(i64* @global_time) #4
  ret void
}

; Function Attrs: nounwind
declare i64 @time(i64*) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_Z9path_goalv() #0 {
  %1 = call i64 @time(i64* @global_time) #4
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_Z12path_nongoalv() #0 {
  %1 = call i64 @time(i64* @global_time) #4
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_Z21example_constrain_argii(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %5 = call i64 @time(i64* @global_time) #4
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_Z21example_constrain_reti(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = call i64 @time(i64* @global_time) #4
  call void @llvm.trap()
  unreachable

5:                                                ; No predecessors!
  %6 = load i32, i32* %2, align 4
  ret i32 %6
}

; Function Attrs: cold noreturn nounwind
declare void @llvm.trap() #2

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_Z15example_counterv() #0 {
  %1 = alloca i32, align 4
  %2 = call i64 @time(i64* @global_time) #4
  call void @llvm.trap()
  unreachable

3:                                                ; No predecessors!
  %4 = load i32, i32* %1, align 4
  ret i32 %4
}

; Function Attrs: noinline norecurse nounwind optnone uwtable
define dso_local i32 @main() #3 {
  %1 = alloca i32, align 4
  %2 = alloca i8, align 1
  %3 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @_Z10path_startv()
  %4 = call i32 @rand() #4
  %5 = trunc i32 %4 to i8
  store i8 %5, i8* %2, align 1
  store volatile i32 1, i32* %3, align 4
  %6 = load i8, i8* %2, align 1
  %7 = sext i8 %6 to i32
  switch i32 %7, label %15 [
    i32 98, label %8
    i32 100, label %8
    i32 104, label %8
    i32 107, label %8
    i32 115, label %8
    i32 119, label %8
    i32 66, label %8
    i32 68, label %8
    i32 72, label %8
    i32 75, label %8
    i32 83, label %8
    i32 87, label %8
    i32 49, label %8
    i32 51, label %8
    i32 37, label %8
    i32 46, label %8
    i32 44, label %8
    i32 99, label %9
    i32 101, label %9
    i32 103, label %9
    i32 105, label %9
    i32 116, label %9
    i32 67, label %9
    i32 69, label %9
    i32 71, label %9
    i32 73, label %9
    i32 84, label %9
    i32 50, label %9
    i32 52, label %9
    i32 64, label %9
    i32 126, label %9
    i32 58, label %9
    i32 97, label %10
    i32 108, label %10
    i32 110, label %10
    i32 112, label %10
    i32 117, label %10
    i32 122, label %10
    i32 65, label %10
    i32 76, label %10
    i32 78, label %10
    i32 80, label %10
    i32 85, label %10
    i32 90, label %10
    i32 53, label %10
    i32 56, label %10
    i32 42, label %10
    i32 94, label %10
    i32 91, label %10
    i32 40, label %10
    i32 123, label %10
    i32 102, label %13
    i32 120, label %13
    i32 109, label %13
    i32 111, label %13
    i32 114, label %13
    i32 70, label %13
    i32 88, label %13
    i32 77, label %13
    i32 79, label %13
    i32 54, label %13
    i32 48, label %13
    i32 35, label %13
    i32 41, label %13
    i32 93, label %13
    i32 125, label %13
    i32 106, label %14
    i32 113, label %14
    i32 121, label %14
    i32 118, label %14
    i32 74, label %14
    i32 81, label %14
    i32 89, label %14
    i32 86, label %14
    i32 55, label %14
    i32 57, label %14
    i32 59, label %14
    i32 36, label %14
  ]

8:                                                ; preds = %0, %0, %0, %0, %0, %0, %0, %0, %0, %0, %0, %0, %0, %0, %0, %0, %0
  store volatile i32 5, i32* %3, align 4
  br label %16

9:                                                ; preds = %0, %0, %0, %0, %0, %0, %0, %0, %0, %0, %0, %0, %0, %0, %0
  store volatile i32 3, i32* %3, align 4
  br label %10

10:                                               ; preds = %9, %0, %0, %0, %0, %0, %0, %0, %0, %0, %0, %0, %0, %0, %0, %0, %0, %0, %0, %0
  %11 = load volatile i32, i32* %3, align 4
  %12 = add nsw i32 %11, 2
  store volatile i32 %12, i32* %3, align 4
  br label %16

13:                                               ; preds = %0, %0, %0, %0, %0, %0, %0, %0, %0, %0, %0, %0, %0, %0, %0
  store volatile i32 7, i32* %3, align 4
  br label %16

14:                                               ; preds = %0, %0, %0, %0, %0, %0, %0, %0, %0, %0, %0, %0
  store volatile i32 9, i32* %3, align 4
  br label %16

15:                                               ; preds = %0
  store volatile i32 13, i32* %3, align 4
  br label %16

16:                                               ; preds = %15, %14, %13, %10, %8
  %17 = load volatile i32, i32* %3, align 4
  %18 = icmp eq i32 %17, 7
  br i1 %18, label %19, label %20

19:                                               ; preds = %16
  call void @_Z9path_goalv()
  br label %25

20:                                               ; preds = %16
  %21 = load volatile i32, i32* %3, align 4
  %22 = icmp eq i32 %21, 4
  br i1 %22, label %23, label %24

23:                                               ; preds = %20
  call void @_Z12path_nongoalv()
  br label %24

24:                                               ; preds = %23, %20
  br label %25

25:                                               ; preds = %24, %19
  %26 = load i32, i32* %1, align 4
  ret i32 %26
}

; Function Attrs: nounwind
declare i32 @rand() #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { cold noreturn nounwind }
attributes #3 = { noinline norecurse nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }

!llvm.ident = !{!0}
!llvm.module.flags = !{!1}

!0 = !{!"clang version 6.0.0-1ubuntu2 (tags/RELEASE_600/final)"}
!1 = !{i32 1, !"wchar_size", i32 4}
