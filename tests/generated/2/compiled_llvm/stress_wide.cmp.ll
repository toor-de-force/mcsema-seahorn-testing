; ModuleID = 'generated/2/binary/stress_wide.o.0.5.precodegen.bc'
source_filename = "ld-temp.o"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

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
define dso_local i32 @main() local_unnamed_addr #2 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %.0.sroa_cast25 = bitcast i32* %1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %.0.sroa_cast25)
  store volatile i32 0, i32* %1, align 4
  %.0.sroa_cast21 = bitcast i32* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %.0.sroa_cast21)
  store volatile i32 0, i32* %2, align 4
  %.0.sroa_cast17 = bitcast i32* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %.0.sroa_cast17)
  store volatile i32 0, i32* %3, align 4
  %.0.sroa_cast13 = bitcast i32* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %.0.sroa_cast13)
  store volatile i32 0, i32* %4, align 4
  %.0.sroa_cast9 = bitcast i32* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %.0.sroa_cast9)
  store volatile i32 0, i32* %5, align 4
  %.0.sroa_cast5 = bitcast i32* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %.0.sroa_cast5)
  store volatile i32 0, i32* %6, align 4
  %.0.sroa_cast = bitcast i32* %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %.0.sroa_cast)
  store volatile i32 0, i32* %7, align 4
  tail call fastcc void @_Z10path_startv()
  %8 = tail call i32 @rand() #4
  %9 = and i32 %8, 1
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %0
  store volatile i32 %8, i32* %1, align 4
  br label %13

12:                                               ; preds = %0
  store volatile i32 0, i32* %1, align 4
  br label %13

13:                                               ; preds = %12, %11
  store volatile i32 %8, i32* %2, align 4
  store volatile i32 %8, i32* %3, align 4
  store volatile i32 %8, i32* %4, align 4
  store volatile i32 %8, i32* %5, align 4
  store volatile i32 %8, i32* %6, align 4
  store volatile i32 %8, i32* %7, align 4
  %.0.23 = load volatile i32, i32* %1, align 4
  %14 = icmp eq i32 %.0.23, 42
  br i1 %14, label %15, label %28

15:                                               ; preds = %13
  %.0.19 = load volatile i32, i32* %2, align 4
  %16 = icmp eq i32 %.0.19, 42
  br i1 %16, label %17, label %28

17:                                               ; preds = %15
  %.0.15 = load volatile i32, i32* %3, align 4
  %18 = icmp eq i32 %.0.15, 42
  br i1 %18, label %19, label %28

19:                                               ; preds = %17
  %.0.11 = load volatile i32, i32* %4, align 4
  %20 = icmp eq i32 %.0.11, 42
  br i1 %20, label %21, label %28

21:                                               ; preds = %19
  %.0.7 = load volatile i32, i32* %5, align 4
  %22 = icmp eq i32 %.0.7, 42
  br i1 %22, label %23, label %28

23:                                               ; preds = %21
  %.0.3 = load volatile i32, i32* %6, align 4
  %24 = icmp eq i32 %.0.3, 42
  br i1 %24, label %25, label %28

25:                                               ; preds = %23
  %.0. = load volatile i32, i32* %7, align 4
  %26 = icmp eq i32 %.0., 42
  br i1 %26, label %27, label %28

27:                                               ; preds = %25
  tail call fastcc void @_Z9path_goalv()
  br label %28

28:                                               ; preds = %27, %25, %23, %21, %19, %17, %15, %13
  %.0.24 = load volatile i32, i32* %1, align 4
  %29 = icmp eq i32 %.0.24, 255
  br i1 %29, label %30, label %43

30:                                               ; preds = %28
  %.0.20 = load volatile i32, i32* %2, align 4
  %31 = icmp eq i32 %.0.20, 255
  br i1 %31, label %32, label %43

32:                                               ; preds = %30
  %.0.16 = load volatile i32, i32* %3, align 4
  %33 = icmp eq i32 %.0.16, 255
  br i1 %33, label %34, label %43

34:                                               ; preds = %32
  %.0.12 = load volatile i32, i32* %4, align 4
  %35 = icmp eq i32 %.0.12, 255
  br i1 %35, label %36, label %43

36:                                               ; preds = %34
  %.0.8 = load volatile i32, i32* %5, align 4
  %37 = icmp eq i32 %.0.8, 255
  br i1 %37, label %38, label %43

38:                                               ; preds = %36
  %.0.4 = load volatile i32, i32* %6, align 4
  %39 = icmp eq i32 %.0.4, 255
  br i1 %39, label %40, label %43

40:                                               ; preds = %38
  %.0.1 = load volatile i32, i32* %7, align 4
  %41 = icmp eq i32 %.0.1, 255
  br i1 %41, label %42, label %43

42:                                               ; preds = %40
  tail call fastcc void @_Z12path_nongoalv()
  br label %43

43:                                               ; preds = %42, %40, %38, %36, %34, %32, %30, %28
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %.0.sroa_cast)
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %.0.sroa_cast5)
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %.0.sroa_cast9)
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %.0.sroa_cast13)
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %.0.sroa_cast17)
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %.0.sroa_cast21)
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %.0.sroa_cast25)
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
