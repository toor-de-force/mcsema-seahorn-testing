; ModuleID = 'generated/2/binary/stress_both.o.0.5.precodegen.bc'
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
  %.0.sroa_cast22 = bitcast i32* %1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %.0.sroa_cast22)
  store volatile i32 0, i32* %1, align 4
  %.0.sroa_cast18 = bitcast i32* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %.0.sroa_cast18)
  store volatile i32 0, i32* %2, align 4
  %.0.sroa_cast14 = bitcast i32* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %.0.sroa_cast14)
  store volatile i32 0, i32* %3, align 4
  %.0.sroa_cast10 = bitcast i32* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %.0.sroa_cast10)
  store volatile i32 0, i32* %4, align 4
  %.0.sroa_cast6 = bitcast i32* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %.0.sroa_cast6)
  store volatile i32 0, i32* %5, align 4
  %.0.sroa_cast3 = bitcast i32* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %.0.sroa_cast3)
  store volatile i32 0, i32* %6, align 4
  %.0.sroa_cast = bitcast i32* %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %.0.sroa_cast)
  store volatile i32 0, i32* %7, align 4
  tail call fastcc void @_Z10path_startv()
  %8 = tail call i32 @rand() #4
  store volatile i32 %8, i32* %1, align 4
  store volatile i32 %8, i32* %2, align 4
  store volatile i32 %8, i32* %3, align 4
  store volatile i32 %8, i32* %4, align 4
  store volatile i32 %8, i32* %5, align 4
  store volatile i32 %8, i32* %6, align 4
  store volatile i32 %8, i32* %7, align 4
  %.0.20 = load volatile i32, i32* %1, align 4
  %9 = icmp eq i32 %.0.20, 42
  br i1 %9, label %10, label %23

10:                                               ; preds = %0
  %.0.16 = load volatile i32, i32* %2, align 4
  %11 = icmp eq i32 %.0.16, 42
  br i1 %11, label %12, label %23

12:                                               ; preds = %10
  %.0.12 = load volatile i32, i32* %3, align 4
  %13 = icmp eq i32 %.0.12, 42
  br i1 %13, label %14, label %23

14:                                               ; preds = %12
  %.0.8 = load volatile i32, i32* %4, align 4
  %15 = icmp eq i32 %.0.8, 42
  br i1 %15, label %16, label %23

16:                                               ; preds = %14
  %.0.5 = load volatile i32, i32* %5, align 4
  %17 = icmp eq i32 %.0.5, 42
  br i1 %17, label %18, label %23

18:                                               ; preds = %16
  %.0.2 = load volatile i32, i32* %6, align 4
  %19 = icmp eq i32 %.0.2, 42
  br i1 %19, label %20, label %23

20:                                               ; preds = %18
  %.0. = load volatile i32, i32* %7, align 4
  %21 = icmp eq i32 %.0., 42
  br i1 %21, label %22, label %23

22:                                               ; preds = %20
  tail call fastcc void @_Z9path_goalv()
  br label %23

23:                                               ; preds = %22, %20, %18, %16, %14, %12, %10, %0
  %.0.21 = load volatile i32, i32* %1, align 4
  %24 = icmp eq i32 %.0.21, 255
  br i1 %24, label %25, label %32

25:                                               ; preds = %23
  %.0.17 = load volatile i32, i32* %2, align 4
  %26 = icmp eq i32 %.0.17, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %25
  %.0.13 = load volatile i32, i32* %3, align 4
  %28 = icmp eq i32 %.0.13, 42
  br i1 %28, label %29, label %32

29:                                               ; preds = %27
  %.0.9 = load volatile i32, i32* %4, align 4
  %30 = icmp eq i32 %.0.9, 51
  br i1 %30, label %31, label %32

31:                                               ; preds = %29
  tail call fastcc void @_Z12path_nongoalv()
  br label %32

32:                                               ; preds = %31, %29, %27, %25, %23
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %.0.sroa_cast)
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %.0.sroa_cast3)
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %.0.sroa_cast6)
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %.0.sroa_cast10)
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %.0.sroa_cast14)
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %.0.sroa_cast18)
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %.0.sroa_cast22)
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
