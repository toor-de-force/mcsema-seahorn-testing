; ModuleID = 'generated/2/binary/fishyxml_v1.o.0.5.precodegen.bc'
source_filename = "ld-temp.o"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@global_time = internal global i64 0, align 8
@.str = private unnamed_addr constant [8 x i8] c"Testing\00", align 1

; Function Attrs: noinline norecurse nounwind uwtable
define internal fastcc void @_Z10path_startv() unnamed_addr #0 {
  %1 = tail call i64 @time(i64* nonnull @global_time) #3
  ret void
}

; Function Attrs: nounwind
declare i64 @time(i64*) local_unnamed_addr #1

; Function Attrs: noinline norecurse nounwind uwtable
define internal fastcc void @_Z9path_goalv() unnamed_addr #0 {
  %1 = tail call i64 @time(i64* nonnull @global_time) #3
  ret void
}

; Function Attrs: norecurse nounwind uwtable
define dso_local i32 @main() local_unnamed_addr #2 {
  tail call fastcc void @_Z10path_startv()
  %1 = tail call i32 @rand() #3
  %2 = and i32 %1, 65535
  br label %3

3:                                                ; preds = %._crit_edge, %0
  %4 = phi i8 [ 84, %0 ], [ %.pre, %._crit_edge ]
  %5 = phi i8* [ getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), %0 ], [ %12, %._crit_edge ]
  %6 = phi i32 [ 0, %0 ], [ %13, %._crit_edge ]
  %7 = icmp ult i32 %6, %2
  br i1 %7, label %9, label %8

8:                                                ; preds = %3
  tail call fastcc void @_Z9path_goalv() #3
  br label %.loopexit

9:                                                ; preds = %3
  switch i8 %4, label %._crit_edge [
    i8 120, label %10
    i8 33, label %.loopexit
  ]

10:                                               ; preds = %9
  br label %._crit_edge

._crit_edge:                                      ; preds = %10, %9
  %11 = phi i64 [ 2, %10 ], [ 1, %9 ]
  %12 = getelementptr inbounds i8, i8* %5, i64 %11
  %13 = add nuw nsw i32 %6, 1
  %.pre = load i8, i8* %12, align 1, !tbaa !2
  %14 = icmp eq i8 %.pre, 0
  br i1 %14, label %.loopexit, label %3

.loopexit:                                        ; preds = %._crit_edge, %9, %8
  ret i32 0
}

; Function Attrs: nounwind
declare i32 @rand() local_unnamed_addr #1

attributes #0 = { noinline norecurse nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { norecurse nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.ident = !{!0}
!llvm.module.flags = !{!1}

!0 = !{!"clang version 6.0.0-1ubuntu2 (tags/RELEASE_600/final)"}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{!3, !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C++ TBAA"}
