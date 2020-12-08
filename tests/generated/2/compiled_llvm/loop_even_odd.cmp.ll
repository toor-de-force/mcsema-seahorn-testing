; ModuleID = 'generated/2/binary/loop_even_odd.o.0.5.precodegen.bc'
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
  tail call fastcc void @_Z10path_startv()
  %.0.sroa_cast = bitcast i32* %1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %.0.sroa_cast)
  %2 = tail call i32 @rand() #4
  store volatile i32 %2, i32* %1, align 4
  %3 = tail call i32 @rand() #4
  %4 = and i32 %3, 15
  %.0.8 = load volatile i32, i32* %1, align 4
  %5 = add nuw nsw i32 %4, 1
  %6 = and i32 %5, 3
  %7 = icmp ult i32 %4, 3
  br i1 %7, label %.loopexit10, label %8

8:                                                ; preds = %0
  %9 = sub nsw i32 %5, %6
  br label %22

.loopexit10:                                      ; preds = %22, %0
  %10 = phi i32 [ undef, %0 ], [ %.0.3, %22 ]
  %11 = phi i32 [ %.0.8, %0 ], [ %.0.3, %22 ]
  %12 = icmp eq i32 %6, 0
  br i1 %12, label %.loopexit, label %13

13:                                               ; preds = %.loopexit10
  br label %14

14:                                               ; preds = %14, %13
  %15 = phi i32 [ %11, %13 ], [ %.0.7, %14 ]
  %16 = phi i32 [ %6, %13 ], [ %18, %14 ]
  %17 = shl nsw i32 %15, 1
  store volatile i32 %17, i32* %1, align 4
  %.0.7 = load volatile i32, i32* %1, align 4
  %18 = add nsw i32 %16, -1
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %.loopexit, label %14, !llvm.loop !2

.loopexit:                                        ; preds = %14, %.loopexit10
  %20 = phi i32 [ %10, %.loopexit10 ], [ %.0.7, %14 ]
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %35, label %31

22:                                               ; preds = %22, %8
  %23 = phi i32 [ %.0.8, %8 ], [ %.0.3, %22 ]
  %24 = phi i32 [ %9, %8 ], [ %29, %22 ]
  %25 = shl nsw i32 %23, 1
  store volatile i32 %25, i32* %1, align 4
  %.0.6 = load volatile i32, i32* %1, align 4
  %26 = shl nsw i32 %.0.6, 1
  store volatile i32 %26, i32* %1, align 4
  %.0.5 = load volatile i32, i32* %1, align 4
  %27 = shl nsw i32 %.0.5, 1
  store volatile i32 %27, i32* %1, align 4
  %.0.4 = load volatile i32, i32* %1, align 4
  %28 = shl nsw i32 %.0.4, 1
  store volatile i32 %28, i32* %1, align 4
  %.0.3 = load volatile i32, i32* %1, align 4
  %29 = add i32 %24, -4
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %.loopexit10, label %22

31:                                               ; preds = %.loopexit
  %.0.2 = load volatile i32, i32* %1, align 4
  %32 = and i32 %.0.2, 1
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %31
  tail call fastcc void @_Z9path_goalv()
  br label %35

35:                                               ; preds = %34, %31, %.loopexit
  %.0.1 = load volatile i32, i32* %1, align 4
  %36 = icmp eq i32 %.0.1, 0
  br i1 %36, label %41, label %37

37:                                               ; preds = %35
  %.0. = load volatile i32, i32* %1, align 4
  %38 = srem i32 %.0., 2
  %39 = icmp eq i32 %38, 1
  br i1 %39, label %40, label %41

40:                                               ; preds = %37
  tail call fastcc void @_Z12path_nongoalv()
  br label %41

41:                                               ; preds = %40, %37, %35
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
!2 = distinct !{!2, !3}
!3 = !{!"llvm.loop.unroll.disable"}
