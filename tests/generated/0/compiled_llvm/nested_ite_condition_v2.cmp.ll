; ModuleID = 'generated/0/binary/nested_ite_condition_v2.o.0.5.precodegen.bc'
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
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @_Z10path_startv()
  store volatile i32 0, i32* %2, align 4
  %4 = call i32 @rand() #4
  store i32 %4, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = icmp sge i32 %5, 1
  br i1 %6, label %7, label %28

7:                                                ; preds = %0
  store volatile i32 1, i32* %2, align 4
  %8 = load i32, i32* %3, align 4
  %9 = icmp sge i32 %8, 10
  br i1 %9, label %10, label %26

10:                                               ; preds = %7
  store volatile i32 10, i32* %2, align 4
  %11 = load i32, i32* %3, align 4
  %12 = icmp sge i32 %11, 50
  br i1 %12, label %13, label %24

13:                                               ; preds = %10
  store volatile i32 50, i32* %2, align 4
  %14 = load i32, i32* %3, align 4
  %15 = icmp sge i32 %14, 75
  br i1 %15, label %16, label %22

16:                                               ; preds = %13
  store volatile i32 75, i32* %2, align 4
  %17 = load i32, i32* %3, align 4
  %18 = icmp sgt i32 %17, 100
  br i1 %18, label %19, label %20

19:                                               ; preds = %16
  store volatile i32 100, i32* %2, align 4
  br label %21

20:                                               ; preds = %16
  store volatile i32 -100, i32* %2, align 4
  br label %21

21:                                               ; preds = %20, %19
  br label %23

22:                                               ; preds = %13
  store volatile i32 -75, i32* %2, align 4
  br label %23

23:                                               ; preds = %22, %21
  br label %25

24:                                               ; preds = %10
  call void @_Z9path_goalv()
  br label %25

25:                                               ; preds = %24, %23
  br label %27

26:                                               ; preds = %7
  store volatile i32 -10, i32* %2, align 4
  br label %27

27:                                               ; preds = %26, %25
  br label %28

28:                                               ; preds = %27, %0
  %29 = load volatile i32, i32* %2, align 4
  %30 = icmp eq i32 %29, 33
  br i1 %30, label %31, label %32

31:                                               ; preds = %28
  call void @_Z12path_nongoalv()
  br label %32

32:                                               ; preds = %31, %28
  %33 = load volatile i32, i32* %2, align 4
  ret i32 %33
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
