; ModuleID = 'generated/0/binary/independent_ite.o.0.5.precodegen.bc'
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
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @_Z10path_startv()
  %7 = call i32 @rand() #4
  store i32 %7, i32* %2, align 4
  %8 = call i32 @rand() #4
  store i32 %8, i32* %3, align 4
  %9 = call i32 @rand() #4
  store i32 %9, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %10 = load i32, i32* %2, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %0
  %13 = load i32, i32* %5, align 4
  %14 = add nsw i32 %13, 1
  store i32 %14, i32* %5, align 4
  br label %15

15:                                               ; preds = %12, %0
  %16 = load i32, i32* %3, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %15
  %19 = load i32, i32* %5, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* %5, align 4
  br label %21

21:                                               ; preds = %18, %15
  %22 = load i32, i32* %4, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %21
  %25 = load i32, i32* %5, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %5, align 4
  br label %27

27:                                               ; preds = %24, %21
  %28 = load i32, i32* %5, align 4
  %29 = icmp eq i32 %28, 3
  br i1 %29, label %30, label %31

30:                                               ; preds = %27
  call void @_Z9path_goalv()
  br label %31

31:                                               ; preds = %30, %27
  %32 = load i32, i32* %5, align 4
  store volatile i32 %32, i32* %6, align 4
  %33 = load volatile i32, i32* %6, align 4
  %34 = icmp eq i32 %33, 4
  br i1 %34, label %35, label %36

35:                                               ; preds = %31
  call void @_Z12path_nongoalv()
  br label %36

36:                                               ; preds = %35, %31
  %37 = load i32, i32* %1, align 4
  ret i32 %37
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
