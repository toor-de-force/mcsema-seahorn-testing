; ModuleID = 'generated/0/binary/explosive_conditions_v1.o.0.5.precodegen.bc'
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

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_Z4funciii(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  call void @_Z10path_startv()
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %10 = load i32, i32* %4, align 4
  %11 = icmp eq i32 %10, 3
  br i1 %11, label %12, label %19

12:                                               ; preds = %3
  %13 = load i32, i32* %5, align 4
  %14 = icmp eq i32 %13, 4
  br i1 %14, label %15, label %19

15:                                               ; preds = %12
  %16 = load i32, i32* %6, align 4
  %17 = icmp eq i32 %16, 5
  br i1 %17, label %18, label %19

18:                                               ; preds = %15
  store i32 1, i32* %8, align 4
  br label %30

19:                                               ; preds = %15, %12, %3
  %20 = load i32, i32* %4, align 4
  %21 = icmp eq i32 %20, 6
  br i1 %21, label %22, label %29

22:                                               ; preds = %19
  %23 = load i32, i32* %5, align 4
  %24 = icmp eq i32 %23, 7
  br i1 %24, label %25, label %29

25:                                               ; preds = %22
  %26 = load i32, i32* %6, align 4
  %27 = icmp eq i32 %26, 8
  br i1 %27, label %28, label %29

28:                                               ; preds = %25
  store i32 2, i32* %8, align 4
  br label %29

29:                                               ; preds = %28, %25, %22, %19
  br label %30

30:                                               ; preds = %29, %18
  %31 = load i32, i32* %8, align 4
  %32 = icmp eq i32 %31, 2
  br i1 %32, label %33, label %34

33:                                               ; preds = %30
  store i32 42, i32* %7, align 4
  br label %35

34:                                               ; preds = %30
  store i32 43, i32* %7, align 4
  br label %35

35:                                               ; preds = %34, %33
  %36 = load i32, i32* %7, align 4
  %37 = icmp eq i32 %36, 42
  br i1 %37, label %38, label %39

38:                                               ; preds = %35
  call void @_Z9path_goalv()
  br label %39

39:                                               ; preds = %38, %35
  %40 = load i32, i32* %7, align 4
  store volatile i32 %40, i32* %9, align 4
  %41 = load volatile i32, i32* %9, align 4
  %42 = icmp eq i32 %41, 44
  br i1 %42, label %43, label %44

43:                                               ; preds = %39
  call void @_Z12path_nongoalv()
  br label %44

44:                                               ; preds = %43, %39
  ret void
}

; Function Attrs: noinline norecurse nounwind optnone uwtable
define dso_local i32 @main() #3 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %2 = call i32 @rand() #4
  %3 = call i32 @rand() #4
  %4 = call i32 @rand() #4
  call void @_Z4funciii(i32 %2, i32 %3, i32 %4)
  ret i32 0
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
