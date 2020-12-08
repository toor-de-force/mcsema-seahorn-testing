; ModuleID = 'generated/0/binary/varargs.o.0.5.precodegen.bc'
source_filename = "ld-temp.o"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@global_time = internal global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_Z10path_startv() #0 {
  %1 = call i64 @time(i64* @global_time) #3
  ret void
}

; Function Attrs: nounwind
declare i64 @time(i64*) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_Z9path_goalv() #0 {
  %1 = call i64 @time(i64* @global_time) #3
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_Z12path_nongoalv() #0 {
  %1 = call i64 @time(i64* @global_time) #3
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_Z21example_constrain_argii(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %5 = call i64 @time(i64* @global_time) #3
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_Z21example_constrain_reti(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = call i64 @time(i64* @global_time) #3
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
  %2 = call i64 @time(i64* @global_time) #3
  call void @llvm.trap()
  unreachable

3:                                                ; No predecessors!
  %4 = load i32, i32* %1, align 4
  ret i32 %4
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_Z4funciz(i32 %0, ...) #0 {
  %2 = alloca i32, align 4
  %3 = alloca [1 x %struct.__va_list_tag], align 16
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %8 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i32 0, i32 0
  %9 = bitcast %struct.__va_list_tag* %8 to i8*
  call void @llvm.va_start(i8* %9)
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  br label %10

10:                                               ; preds = %38, %1
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* %2, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %41

14:                                               ; preds = %10
  %15 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i32 0, i32 0
  %16 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 16
  %18 = icmp ule i32 %17, 40
  br i1 %18, label %19, label %25

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %15, i32 0, i32 3
  %21 = load i8*, i8** %20, align 16
  %22 = getelementptr i8, i8* %21, i32 %17
  %23 = bitcast i8* %22 to i32*
  %24 = add i32 %17, 8
  store i32 %24, i32* %16, align 16
  br label %30

25:                                               ; preds = %14
  %26 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %15, i32 0, i32 2
  %27 = load i8*, i8** %26, align 8
  %28 = bitcast i8* %27 to i32*
  %29 = getelementptr i8, i8* %27, i32 8
  store i8* %29, i8** %26, align 8
  br label %30

30:                                               ; preds = %25, %19
  %31 = phi i32* [ %23, %19 ], [ %28, %25 ]
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %6, align 4
  %33 = load i32, i32* %6, align 4
  %34 = and i32 %33, 65534
  store i32 %34, i32* %7, align 4
  %35 = load i32, i32* %7, align 4
  %36 = load i32, i32* %4, align 4
  %37 = add nsw i32 %36, %35
  store i32 %37, i32* %4, align 4
  br label %38

38:                                               ; preds = %30
  %39 = load i32, i32* %5, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %5, align 4
  br label %10

41:                                               ; preds = %10
  %42 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i32 0, i32 0
  %43 = bitcast %struct.__va_list_tag* %42 to i8*
  call void @llvm.va_end(i8* %43)
  %44 = load i32, i32* %4, align 4
  ret i32 %44
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #3

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #3

; Function Attrs: noinline norecurse nounwind optnone uwtable
define dso_local i32 @main() #4 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @_Z10path_startv()
  %8 = call i32 @rand() #3
  %9 = and i32 %8, 65535
  store i32 %9, i32* %2, align 4
  %10 = call i32 @rand() #3
  %11 = and i32 %10, 65535
  store i32 %11, i32* %3, align 4
  %12 = call i32 @rand() #3
  %13 = and i32 %12, 65535
  store i32 %13, i32* %4, align 4
  %14 = call i32 @rand() #3
  %15 = and i32 %14, 65535
  store i32 %15, i32* %5, align 4
  %16 = call i32 @rand() #3
  %17 = and i32 %16, 65535
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %2, align 4
  %19 = load i32, i32* %3, align 4
  %20 = load i32, i32* %4, align 4
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* %6, align 4
  %23 = call i32 (i32, ...) @_Z4funciz(i32 5, i32 %18, i32 %19, i32 %20, i32 %21, i32 %22)
  store i32 %23, i32* %7, align 4
  %24 = load i32, i32* %7, align 4
  %25 = srem i32 %24, 2
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %0
  call void @_Z9path_goalv()
  br label %29

28:                                               ; preds = %0
  call void @_Z12path_nongoalv()
  br label %29

29:                                               ; preds = %28, %27
  %30 = load i32, i32* %1, align 4
  ret i32 %30
}

; Function Attrs: nounwind
declare i32 @rand() #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { cold noreturn nounwind }
attributes #3 = { nounwind }
attributes #4 = { noinline norecurse nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}
!llvm.module.flags = !{!1}

!0 = !{!"clang version 6.0.0-1ubuntu2 (tags/RELEASE_600/final)"}
!1 = !{i32 1, !"wchar_size", i32 4}
