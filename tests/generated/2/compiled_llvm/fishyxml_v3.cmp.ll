; ModuleID = 'generated/2/binary/fishyxml_v3.o.0.5.precodegen.bc'
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

; Function Attrs: norecurse nounwind uwtable
define dso_local i32 @main() local_unnamed_addr #2 {
  %1 = alloca [20 x i8], align 16
  tail call fastcc void @_Z10path_startv()
  %2 = getelementptr inbounds [20 x i8], [20 x i8]* %1, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 20, i8* nonnull %2) #4
  %3 = tail call i32 @rand() #4
  %4 = and i32 %3, 65535
  br label %5

5:                                                ; preds = %._crit_edge, %0
  %6 = phi i8 [ undef, %0 ], [ %.pre, %._crit_edge ]
  %7 = phi i8* [ %2, %0 ], [ %14, %._crit_edge ]
  %8 = phi i32 [ 0, %0 ], [ %15, %._crit_edge ]
  %9 = icmp ult i32 %8, %4
  br i1 %9, label %11, label %10

10:                                               ; preds = %5
  tail call fastcc void @_Z9path_goalv() #4
  br label %.loopexit

11:                                               ; preds = %5
  %12 = icmp eq i8 %6, 120
  br i1 %12, label %13, label %._crit_edge

13:                                               ; preds = %11
  store i8 121, i8* %7, align 1, !tbaa !2
  br label %._crit_edge

._crit_edge:                                      ; preds = %13, %11
  %14 = getelementptr inbounds i8, i8* %7, i64 1
  %15 = add nuw nsw i32 %8, 1
  %.pre = load i8, i8* %14, align 1, !tbaa !2
  %16 = icmp eq i8 %.pre, 0
  br i1 %16, label %.loopexit, label %5

.loopexit:                                        ; preds = %._crit_edge, %10
  call void @llvm.lifetime.end.p0i8(i64 20, i8* nonnull %2) #4
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
!2 = !{!3, !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C++ TBAA"}
