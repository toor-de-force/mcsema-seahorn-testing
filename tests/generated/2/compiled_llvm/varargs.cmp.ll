; ModuleID = 'generated/2/binary/varargs.o.0.5.precodegen.bc'
source_filename = "ld-temp.o"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.__va_list_tag = type { i32, i32, i8*, i8* }

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
define internal i32 @_Z4funciz(i32 %0, ...) unnamed_addr #2 {
  %2 = alloca [1 x %struct.__va_list_tag], align 16
  %3 = bitcast [1 x %struct.__va_list_tag]* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %3) #4
  call void @llvm.va_start(i8* nonnull %3)
  %4 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0, i32 0
  %5 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0, i32 3
  %6 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0, i32 2
  %7 = load i32, i32* %4, align 16
  %8 = icmp ult i32 %7, 41
  br i1 %8, label %14, label %.thread

.thread:                                          ; preds = %1
  %9 = load i8*, i8** %6, align 8
  %10 = getelementptr i8, i8* %9, i64 8
  store i8* %10, i8** %6, align 8
  %11 = bitcast i8* %9 to i32*
  %12 = load i32, i32* %11, align 4
  %13 = and i32 %12, 65534
  br label %.thread1

14:                                               ; preds = %1
  %15 = load i8*, i8** %5, align 16
  %16 = sext i32 %7 to i64
  %17 = getelementptr i8, i8* %15, i64 %16
  %18 = add i32 %7, 8
  store i32 %18, i32* %4, align 16
  %19 = bitcast i8* %17 to i32*
  %20 = load i32, i32* %19, align 4
  %21 = and i32 %20, 65534
  %22 = icmp ult i32 %18, 41
  br i1 %22, label %30, label %.thread1

.thread1:                                         ; preds = %14, %.thread
  %23 = phi i32 [ %13, %.thread ], [ %21, %14 ]
  %24 = load i8*, i8** %6, align 8
  %25 = getelementptr i8, i8* %24, i64 8
  store i8* %25, i8** %6, align 8
  %26 = bitcast i8* %24 to i32*
  %27 = load i32, i32* %26, align 4
  %28 = and i32 %27, 65534
  %29 = add nuw nsw i32 %28, %23
  br label %.thread2

30:                                               ; preds = %14
  %31 = load i8*, i8** %5, align 16
  %32 = sext i32 %18 to i64
  %33 = getelementptr i8, i8* %31, i64 %32
  %34 = add i32 %18, 8
  store i32 %34, i32* %4, align 16
  %35 = bitcast i8* %33 to i32*
  %36 = load i32, i32* %35, align 4
  %37 = and i32 %36, 65534
  %38 = add nuw nsw i32 %37, %21
  %39 = icmp ult i32 %34, 41
  br i1 %39, label %47, label %.thread2

.thread2:                                         ; preds = %30, %.thread1
  %40 = phi i32 [ %29, %.thread1 ], [ %38, %30 ]
  %41 = load i8*, i8** %6, align 8
  %42 = getelementptr i8, i8* %41, i64 8
  store i8* %42, i8** %6, align 8
  %43 = bitcast i8* %41 to i32*
  %44 = load i32, i32* %43, align 4
  %45 = and i32 %44, 65534
  %46 = add nuw nsw i32 %45, %40
  br label %.thread3

47:                                               ; preds = %30
  %48 = load i8*, i8** %5, align 16
  %49 = sext i32 %34 to i64
  %50 = getelementptr i8, i8* %48, i64 %49
  %51 = add i32 %34, 8
  store i32 %51, i32* %4, align 16
  %52 = bitcast i8* %50 to i32*
  %53 = load i32, i32* %52, align 4
  %54 = and i32 %53, 65534
  %55 = add nuw nsw i32 %54, %38
  %56 = icmp ult i32 %51, 41
  br i1 %56, label %64, label %.thread3

.thread3:                                         ; preds = %47, %.thread2
  %57 = phi i32 [ %46, %.thread2 ], [ %55, %47 ]
  %58 = load i8*, i8** %6, align 8
  %59 = getelementptr i8, i8* %58, i64 8
  store i8* %59, i8** %6, align 8
  %60 = bitcast i8* %58 to i32*
  %61 = load i32, i32* %60, align 4
  %62 = and i32 %61, 65534
  %63 = add nuw nsw i32 %62, %57
  br label %74

64:                                               ; preds = %47
  %65 = load i8*, i8** %5, align 16
  %66 = sext i32 %51 to i64
  %67 = getelementptr i8, i8* %65, i64 %66
  %68 = add i32 %51, 8
  store i32 %68, i32* %4, align 16
  %69 = bitcast i8* %67 to i32*
  %70 = load i32, i32* %69, align 4
  %71 = and i32 %70, 65534
  %72 = add nuw nsw i32 %71, %55
  %73 = icmp ult i32 %68, 41
  br i1 %73, label %78, label %74

74:                                               ; preds = %64, %.thread3
  %75 = phi i32 [ %63, %.thread3 ], [ %72, %64 ]
  %76 = load i8*, i8** %6, align 8
  %77 = getelementptr i8, i8* %76, i64 8
  store i8* %77, i8** %6, align 8
  br label %83

78:                                               ; preds = %64
  %79 = load i8*, i8** %5, align 16
  %80 = sext i32 %68 to i64
  %81 = getelementptr i8, i8* %79, i64 %80
  %82 = add i32 %68, 8
  store i32 %82, i32* %4, align 16
  br label %83

83:                                               ; preds = %78, %74
  %84 = phi i32 [ %72, %78 ], [ %75, %74 ]
  %85 = phi i8* [ %81, %78 ], [ %76, %74 ]
  %86 = bitcast i8* %85 to i32*
  %87 = load i32, i32* %86, align 4
  %88 = and i32 %87, 65534
  %89 = add nuw nsw i32 %88, %84
  call void @llvm.va_end(i8* nonnull %3)
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %3) #4
  ret i32 %89
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #3

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #4

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #4

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #3

; Function Attrs: norecurse nounwind uwtable
define dso_local i32 @main() local_unnamed_addr #2 {
  tail call fastcc void @_Z10path_startv()
  %1 = tail call i32 @rand() #4
  %2 = and i32 %1, 65535
  %3 = tail call i32 @rand() #4
  %4 = and i32 %3, 65535
  %5 = tail call i32 @rand() #4
  %6 = and i32 %5, 65535
  %7 = tail call i32 @rand() #4
  %8 = and i32 %7, 65535
  %9 = tail call i32 @rand() #4
  %10 = and i32 %9, 65535
  %11 = tail call i32 (i32, ...) @_Z4funciz(i32 undef, i32 %2, i32 %4, i32 %6, i32 %8, i32 %10)
  %12 = and i32 %11, 1
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %0
  tail call fastcc void @_Z9path_goalv()
  br label %16

15:                                               ; preds = %0
  tail call fastcc void @_Z12path_nongoalv()
  br label %16

16:                                               ; preds = %15, %14
  ret i32 0
}

; Function Attrs: nounwind
declare i32 @rand() local_unnamed_addr #1

attributes #0 = { noinline norecurse nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { norecurse nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind willreturn }
attributes #4 = { nounwind }

!llvm.ident = !{!0}
!llvm.module.flags = !{!1}

!0 = !{!"clang version 6.0.0-1ubuntu2 (tags/RELEASE_600/final)"}
!1 = !{i32 1, !"wchar_size", i32 4}
