; ModuleID = 'generated/1/binary/stress_wide.o.0.5.precodegen.bc'
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
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = bitcast i32* %1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %8)
  store volatile i32 0, i32* %1, align 4
  %9 = bitcast i32* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %9)
  store volatile i32 0, i32* %2, align 4
  %10 = bitcast i32* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %10)
  store volatile i32 0, i32* %3, align 4
  %11 = bitcast i32* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %11)
  store volatile i32 0, i32* %4, align 4
  %12 = bitcast i32* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %12)
  store volatile i32 0, i32* %5, align 4
  %13 = bitcast i32* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %13)
  store volatile i32 0, i32* %6, align 4
  %14 = bitcast i32* %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %14)
  store volatile i32 0, i32* %7, align 4
  tail call void @_Z10path_startv()
  %15 = tail call i32 @rand() #4
  %16 = and i32 %15, 1
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %0
  store volatile i32 %15, i32* %1, align 4
  br label %20

19:                                               ; preds = %0
  store volatile i32 0, i32* %1, align 4
  br label %20

20:                                               ; preds = %19, %18
  store volatile i32 %15, i32* %2, align 4
  store volatile i32 %15, i32* %3, align 4
  store volatile i32 %15, i32* %4, align 4
  store volatile i32 %15, i32* %5, align 4
  store volatile i32 %15, i32* %6, align 4
  store volatile i32 %15, i32* %7, align 4
  %21 = load volatile i32, i32* %1, align 4
  %22 = icmp eq i32 %21, 42
  br i1 %22, label %23, label %42

23:                                               ; preds = %20
  %24 = load volatile i32, i32* %2, align 4
  %25 = icmp eq i32 %24, 42
  br i1 %25, label %26, label %42

26:                                               ; preds = %23
  %27 = load volatile i32, i32* %3, align 4
  %28 = icmp eq i32 %27, 42
  br i1 %28, label %29, label %42

29:                                               ; preds = %26
  %30 = load volatile i32, i32* %4, align 4
  %31 = icmp eq i32 %30, 42
  br i1 %31, label %32, label %42

32:                                               ; preds = %29
  %33 = load volatile i32, i32* %5, align 4
  %34 = icmp eq i32 %33, 42
  br i1 %34, label %35, label %42

35:                                               ; preds = %32
  %36 = load volatile i32, i32* %6, align 4
  %37 = icmp eq i32 %36, 42
  br i1 %37, label %38, label %42

38:                                               ; preds = %35
  %39 = load volatile i32, i32* %7, align 4
  %40 = icmp eq i32 %39, 42
  br i1 %40, label %41, label %42

41:                                               ; preds = %38
  tail call void @_Z9path_goalv()
  br label %42

42:                                               ; preds = %41, %38, %35, %32, %29, %26, %23, %20
  %43 = load volatile i32, i32* %1, align 4
  %44 = icmp eq i32 %43, 255
  br i1 %44, label %45, label %64

45:                                               ; preds = %42
  %46 = load volatile i32, i32* %2, align 4
  %47 = icmp eq i32 %46, 255
  br i1 %47, label %48, label %64

48:                                               ; preds = %45
  %49 = load volatile i32, i32* %3, align 4
  %50 = icmp eq i32 %49, 255
  br i1 %50, label %51, label %64

51:                                               ; preds = %48
  %52 = load volatile i32, i32* %4, align 4
  %53 = icmp eq i32 %52, 255
  br i1 %53, label %54, label %64

54:                                               ; preds = %51
  %55 = load volatile i32, i32* %5, align 4
  %56 = icmp eq i32 %55, 255
  br i1 %56, label %57, label %64

57:                                               ; preds = %54
  %58 = load volatile i32, i32* %6, align 4
  %59 = icmp eq i32 %58, 255
  br i1 %59, label %60, label %64

60:                                               ; preds = %57
  %61 = load volatile i32, i32* %7, align 4
  %62 = icmp eq i32 %61, 255
  br i1 %62, label %63, label %64

63:                                               ; preds = %60
  tail call void @_Z12path_nongoalv()
  br label %64

64:                                               ; preds = %63, %60, %57, %54, %51, %48, %45, %42
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %14)
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %13)
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %12)
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %11)
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %10)
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %9)
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %8)
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
