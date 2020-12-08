; ModuleID = 'generated/1/binary/fishyxml_v1.o.0.5.precodegen.bc'
source_filename = "ld-temp.o"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@global_time = internal global i64 0, align 8
@global_thing = internal global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"Testing\00", align 1

; Function Attrs: noinline norecurse nounwind uwtable
define internal void @_Z10path_startv() #0 {
  %1 = tail call i64 @time(i64* nonnull @global_time) #3
  ret void
}

; Function Attrs: nounwind
declare i64 @time(i64*) local_unnamed_addr #1

; Function Attrs: noinline norecurse nounwind uwtable
define internal void @_Z9path_goalv() #0 {
  %1 = tail call i64 @time(i64* nonnull @global_time) #3
  ret void
}

; Function Attrs: noinline norecurse nounwind uwtable
define internal void @_Z12path_nongoalv() #0 {
  %1 = tail call i64 @time(i64* nonnull @global_time) #3
  ret void
}

; Function Attrs: norecurse nounwind uwtable
define internal i32 @_Z5func2PKc(i8* nocapture readonly %0) #2 {
  %2 = load i8, i8* %0, align 1, !tbaa !2
  switch i8 %2, label %4 [
    i8 120, label %3
    i8 33, label %5
  ]

3:                                                ; preds = %1
  store i32 1, i32* @global_thing, align 4, !tbaa !5
  br label %5

4:                                                ; preds = %1
  br label %5

5:                                                ; preds = %4, %3, %1
  %6 = phi i32 [ 2, %3 ], [ 1, %4 ], [ -1, %1 ]
  ret i32 %6
}

; Function Attrs: norecurse nounwind uwtable
define internal void @_Z4funcPKcj(i8* nocapture readonly %0, i32 %1) #2 {
  %3 = load i8, i8* %0, align 1, !tbaa !2
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %23, label %5

5:                                                ; preds = %2
  br label %6

6:                                                ; preds = %20, %5
  %7 = phi i8* [ %16, %20 ], [ %0, %5 ]
  %8 = phi i32 [ %17, %20 ], [ 0, %5 ]
  %9 = icmp ult i32 %8, %1
  br i1 %9, label %11, label %10

10:                                               ; preds = %6
  tail call void @_Z9path_goalv()
  br label %23

11:                                               ; preds = %6
  %12 = tail call i32 @_Z5func2PKc(i8* nonnull %7)
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %23, label %14

14:                                               ; preds = %11
  %15 = sext i32 %12 to i64
  %16 = getelementptr inbounds i8, i8* %7, i64 %15
  %17 = add i32 %8, 1
  %18 = icmp ugt i32 %17, %1
  br i1 %18, label %19, label %20

19:                                               ; preds = %14
  tail call void @_Z12path_nongoalv()
  br label %20

20:                                               ; preds = %19, %14
  %21 = load i8, i8* %16, align 1, !tbaa !2
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %23, label %6

23:                                               ; preds = %20, %11, %10, %2
  ret void
}

; Function Attrs: norecurse nounwind uwtable
define dso_local i32 @main() #2 {
  tail call void @_Z10path_startv()
  %1 = tail call i32 @rand() #3
  %2 = and i32 %1, 65535
  tail call void @_Z4funcPKcj(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %2)
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
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !3, i64 0}
