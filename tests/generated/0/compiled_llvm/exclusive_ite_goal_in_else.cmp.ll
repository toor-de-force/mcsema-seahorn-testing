; ModuleID = 'generated/0/binary/exclusive_ite_goal_in_else.o.0.5.precodegen.bc'
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
  %4 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @_Z10path_startv()
  store i32 0, i32* %2, align 4
  %5 = call i32 @rand() #4
  store i32 %5, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = icmp sge i32 %6, 100
  br i1 %7, label %8, label %9

8:                                                ; preds = %0
  store i32 100, i32* %2, align 4
  br label %30

9:                                                ; preds = %0
  %10 = load i32, i32* %3, align 4
  %11 = icmp sgt i32 %10, 75
  br i1 %11, label %12, label %13

12:                                               ; preds = %9
  store i32 75, i32* %2, align 4
  br label %29

13:                                               ; preds = %9
  %14 = load i32, i32* %3, align 4
  %15 = icmp sgt i32 %14, 50
  br i1 %15, label %16, label %17

16:                                               ; preds = %13
  store i32 50, i32* %2, align 4
  br label %28

17:                                               ; preds = %13
  %18 = load i32, i32* %3, align 4
  %19 = icmp sgt i32 %18, 25
  br i1 %19, label %20, label %21

20:                                               ; preds = %17
  store i32 25, i32* %2, align 4
  br label %27

21:                                               ; preds = %17
  %22 = load i32, i32* %3, align 4
  %23 = icmp sgt i32 %22, 10
  br i1 %23, label %24, label %25

24:                                               ; preds = %21
  store i32 10, i32* %2, align 4
  br label %26

25:                                               ; preds = %21
  call void @_Z9path_goalv()
  br label %26

26:                                               ; preds = %25, %24
  br label %27

27:                                               ; preds = %26, %20
  br label %28

28:                                               ; preds = %27, %16
  br label %29

29:                                               ; preds = %28, %12
  br label %30

30:                                               ; preds = %29, %8
  %31 = load i32, i32* %2, align 4
  store volatile i32 %31, i32* %4, align 4
  %32 = load volatile i32, i32* %4, align 4
  %33 = icmp eq i32 %32, 1
  br i1 %33, label %34, label %35

34:                                               ; preds = %30
  call void @_Z12path_nongoalv()
  br label %35

35:                                               ; preds = %34, %30
  %36 = load i32, i32* %2, align 4
  ret i32 %36
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
