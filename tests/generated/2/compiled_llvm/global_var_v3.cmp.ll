; ModuleID = 'generated/2/binary/global_var_v3.o.0.5.precodegen.bc'
source_filename = "ld-temp.o"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@global_time = internal global i64 0, align 8
@x = internal global i32 0, align 4

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

; Function Attrs: noinline norecurse nounwind uwtable
define internal fastcc void @_Z12path_nongoalv() unnamed_addr #0 {
  %1 = tail call i64 @time(i64* nonnull @global_time) #3
  ret void
}

; Function Attrs: nounwind
declare i32 @rand() local_unnamed_addr #1

; Function Attrs: norecurse nounwind uwtable
define dso_local i32 @main() local_unnamed_addr #2 {
  tail call fastcc void @_Z10path_startv()
  %1 = tail call i32 @rand() #3
  store volatile i32 %1, i32* @x, align 4, !tbaa !2
  %2 = load volatile i32, i32* @x, align 4, !tbaa !2
  %3 = icmp eq i32 %2, 11
  br i1 %3, label %4, label %5

4:                                                ; preds = %0
  store volatile i32 7, i32* @x, align 4, !tbaa !2
  br label %5

5:                                                ; preds = %4, %0
  %6 = load volatile i32, i32* @x, align 4, !tbaa !2
  %7 = icmp eq i32 %6, 11
  br i1 %7, label %8, label %9

8:                                                ; preds = %5
  tail call fastcc void @_Z12path_nongoalv()
  br label %9

9:                                                ; preds = %8, %5
  %10 = load volatile i32, i32* @x, align 4, !tbaa !2
  %11 = icmp eq i32 %10, 7
  br i1 %11, label %12, label %14

12:                                               ; preds = %9
  %13 = tail call i32 @rand() #3
  store volatile i32 %13, i32* @x, align 4, !tbaa !2
  br label %14

14:                                               ; preds = %12, %9
  %15 = load volatile i32, i32* @x, align 4, !tbaa !2
  %16 = icmp eq i32 %15, 4
  br i1 %16, label %17, label %18

17:                                               ; preds = %14
  tail call fastcc void @_Z9path_goalv()
  br label %18

18:                                               ; preds = %17, %14
  ret i32 0
}

attributes #0 = { noinline norecurse nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { norecurse nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.ident = !{!0}
!llvm.module.flags = !{!1}

!0 = !{!"clang version 6.0.0-1ubuntu2 (tags/RELEASE_600/final)"}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{!3, !3, i64 0}
!3 = !{!"int", !4, i64 0}
!4 = !{!"omnipotent char", !5, i64 0}
!5 = !{!"Simple C++ TBAA"}
