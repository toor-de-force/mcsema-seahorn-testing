; ModuleID = 'generated/2/binary/stress_deep.o.0.5.precodegen.bc'
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
  %.0.sroa_cast = bitcast i32* %1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %.0.sroa_cast)
  store volatile i32 0, i32* %1, align 4
  tail call fastcc void @_Z10path_startv()
  %2 = tail call i32 @rand() #4
  %3 = and i32 %2, 1
  %4 = icmp eq i32 %3, 0
  %5 = and i32 %2, 4
  %6 = icmp eq i32 %5, 0
  %7 = and i32 %2, 8
  %8 = icmp eq i32 %7, 0
  br i1 %4, label %9, label %10

9:                                                ; preds = %0
  store volatile i32 %2, i32* %1, align 4
  br label %31

10:                                               ; preds = %0
  %11 = and i32 %2, 2
  %12 = icmp eq i32 %11, 0
  %13 = and i32 %2, 16
  %14 = icmp eq i32 %13, 0
  br i1 %12, label %30, label %15

15:                                               ; preds = %10
  br i1 %6, label %29, label %16

16:                                               ; preds = %15
  %17 = and i32 %2, 32
  %18 = icmp eq i32 %17, 0
  br i1 %8, label %28, label %19

19:                                               ; preds = %16
  br i1 %14, label %27, label %20

20:                                               ; preds = %19
  br i1 %18, label %26, label %21

21:                                               ; preds = %20
  %22 = and i32 %2, 64
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %21
  store volatile i32 0, i32* %1, align 4
  br label %31

25:                                               ; preds = %21
  store volatile i32 %2, i32* %1, align 4
  br label %31

26:                                               ; preds = %20
  store volatile i32 %2, i32* %1, align 4
  br label %31

27:                                               ; preds = %19
  store volatile i32 %2, i32* %1, align 4
  br label %31

28:                                               ; preds = %16
  store volatile i32 %2, i32* %1, align 4
  br label %31

29:                                               ; preds = %15
  store volatile i32 %2, i32* %1, align 4
  br label %31

30:                                               ; preds = %10
  store volatile i32 %2, i32* %1, align 4
  br label %31

31:                                               ; preds = %30, %29, %28, %27, %26, %25, %24, %9
  %.0. = load volatile i32, i32* %1, align 4
  %32 = icmp eq i32 %.0., 42
  br i1 %32, label %33, label %34

33:                                               ; preds = %31
  tail call fastcc void @_Z9path_goalv()
  br label %34

34:                                               ; preds = %33, %31
  %.0.1 = load volatile i32, i32* %1, align 4
  %35 = icmp eq i32 %.0.1, 255
  br i1 %35, label %36, label %37

36:                                               ; preds = %34
  tail call fastcc void @_Z12path_nongoalv()
  br label %37

37:                                               ; preds = %36, %34
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %.0.sroa_cast)
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
