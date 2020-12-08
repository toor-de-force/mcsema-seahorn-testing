; ModuleID = 'generated/1/binary/func_array.o.0.5.precodegen.bc'
source_filename = "ld-temp.o"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@global_time = internal global i64 0, align 8
@x = internal global i32 2, align 4
@_ZZ4mainE5funcs = private unnamed_addr constant [4 x void ()*] [void ()* @_Z5func1v, void ()* @_Z5func2v, void ()* @_Z5func3v, void ()* @_Z5func4v], align 16

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
define internal void @_Z5func1v() #2 {
  store volatile i32 3, i32* @x, align 4, !tbaa !2
  ret void
}

; Function Attrs: norecurse nounwind uwtable
define internal void @_Z5func2v() #2 {
  store volatile i32 4, i32* @x, align 4, !tbaa !2
  ret void
}

; Function Attrs: norecurse nounwind uwtable
define internal void @_Z5func3v() #2 {
  store volatile i32 5, i32* @x, align 4, !tbaa !2
  ret void
}

; Function Attrs: norecurse nounwind uwtable
define internal void @_Z5func4v() #2 {
  store volatile i32 6, i32* @x, align 4, !tbaa !2
  ret void
}

; Function Attrs: norecurse uwtable
define dso_local i32 @main() #3 {
  tail call void @_Z10path_startv()
  %1 = tail call i32 @rand() #4
  %2 = srem i32 %1, 4
  %3 = icmp sgt i32 %2, 0
  br i1 %3, label %4, label %6

4:                                                ; preds = %0
  %5 = zext i32 %2 to i64
  br label %9

6:                                                ; preds = %9, %0
  %7 = load volatile i32, i32* @x, align 4, !tbaa !2
  %8 = icmp eq i32 %7, 5
  br i1 %8, label %15, label %16

9:                                                ; preds = %9, %4
  %10 = phi i64 [ 0, %4 ], [ %13, %9 ]
  %11 = getelementptr inbounds [4 x void ()*], [4 x void ()*]* @_ZZ4mainE5funcs, i64 0, i64 %10
  %12 = load void ()*, void ()** %11, align 8, !tbaa !6
  tail call void %12()
  %13 = add nuw nsw i64 %10, 1
  %14 = icmp eq i64 %13, %5
  br i1 %14, label %6, label %9

15:                                               ; preds = %6
  tail call void @_Z9path_goalv()
  br label %16

16:                                               ; preds = %15, %6
  %17 = load volatile i32, i32* @x, align 4, !tbaa !2
  %18 = icmp eq i32 %17, 7
  br i1 %18, label %19, label %20

19:                                               ; preds = %16
  tail call void @_Z12path_nongoalv()
  br label %20

20:                                               ; preds = %19, %16
  ret i32 0
}

; Function Attrs: nounwind
declare i32 @rand() local_unnamed_addr #1

attributes #0 = { noinline norecurse nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { norecurse nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { norecurse uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }

!llvm.ident = !{!0}
!llvm.module.flags = !{!1}

!0 = !{!"clang version 6.0.0-1ubuntu2 (tags/RELEASE_600/final)"}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{!3, !3, i64 0}
!3 = !{!"int", !4, i64 0}
!4 = !{!"omnipotent char", !5, i64 0}
!5 = !{!"Simple C++ TBAA"}
!6 = !{!7, !7, i64 0}
!7 = !{!"any pointer", !4, i64 0}
