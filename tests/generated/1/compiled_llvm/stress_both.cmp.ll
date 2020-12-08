; ModuleID = 'generated/1/binary/stress_both.o.0.5.precodegen.bc'
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
  store volatile i32 %15, i32* %1, align 4
  store volatile i32 %15, i32* %2, align 4
  store volatile i32 %15, i32* %3, align 4
  store volatile i32 %15, i32* %4, align 4
  store volatile i32 %15, i32* %5, align 4
  store volatile i32 %15, i32* %6, align 4
  store volatile i32 %15, i32* %7, align 4
  %16 = load volatile i32, i32* %1, align 4
  %17 = icmp eq i32 %16, 42
  br i1 %17, label %18, label %37

18:                                               ; preds = %0
  %19 = load volatile i32, i32* %2, align 4
  %20 = icmp eq i32 %19, 42
  br i1 %20, label %21, label %37

21:                                               ; preds = %18
  %22 = load volatile i32, i32* %3, align 4
  %23 = icmp eq i32 %22, 42
  br i1 %23, label %24, label %37

24:                                               ; preds = %21
  %25 = load volatile i32, i32* %4, align 4
  %26 = icmp eq i32 %25, 42
  br i1 %26, label %27, label %37

27:                                               ; preds = %24
  %28 = load volatile i32, i32* %5, align 4
  %29 = icmp eq i32 %28, 42
  br i1 %29, label %30, label %37

30:                                               ; preds = %27
  %31 = load volatile i32, i32* %6, align 4
  %32 = icmp eq i32 %31, 42
  br i1 %32, label %33, label %37

33:                                               ; preds = %30
  %34 = load volatile i32, i32* %7, align 4
  %35 = icmp eq i32 %34, 42
  br i1 %35, label %36, label %37

36:                                               ; preds = %33
  tail call void @_Z9path_goalv()
  br label %37

37:                                               ; preds = %36, %33, %30, %27, %24, %21, %18, %0
  %38 = load volatile i32, i32* %1, align 4
  %39 = icmp eq i32 %38, 255
  br i1 %39, label %40, label %50

40:                                               ; preds = %37
  %41 = load volatile i32, i32* %2, align 4
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %50

43:                                               ; preds = %40
  %44 = load volatile i32, i32* %3, align 4
  %45 = icmp eq i32 %44, 42
  br i1 %45, label %46, label %50

46:                                               ; preds = %43
  %47 = load volatile i32, i32* %4, align 4
  %48 = icmp eq i32 %47, 51
  br i1 %48, label %49, label %50

49:                                               ; preds = %46
  tail call void @_Z12path_nongoalv()
  br label %50

50:                                               ; preds = %49, %46, %43, %40, %37
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
