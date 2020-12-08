; ModuleID = 'generated/1/binary/fishyxml_v3.o.0.5.precodegen.bc'
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
define internal i32 @_Z5func2Pc(i8* nocapture %0) #2 {
  %2 = load i8, i8* %0, align 1, !tbaa !2
  %3 = icmp eq i8 %2, 120
  br i1 %3, label %4, label %5

4:                                                ; preds = %1
  store i8 121, i8* %0, align 1, !tbaa !2
  br label %5

5:                                                ; preds = %4, %1
  ret i32 1
}

; Function Attrs: norecurse nounwind uwtable
define internal void @_Z4funcPcj(i8* nocapture %0, i32 %1) #2 {
  %3 = load i8, i8* %0, align 1, !tbaa !2
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %20, label %5

5:                                                ; preds = %2
  br label %6

6:                                                ; preds = %17, %5
  %7 = phi i8* [ %13, %17 ], [ %0, %5 ]
  %8 = phi i32 [ %14, %17 ], [ 0, %5 ]
  %9 = icmp ult i32 %8, %1
  br i1 %9, label %11, label %10

10:                                               ; preds = %6
  tail call void @_Z9path_goalv()
  br label %20

11:                                               ; preds = %6
  %12 = tail call i32 @_Z5func2Pc(i8* nonnull %7)
  %13 = getelementptr inbounds i8, i8* %7, i64 1
  %14 = add i32 %8, 1
  %15 = icmp ugt i32 %14, %1
  br i1 %15, label %16, label %17

16:                                               ; preds = %11
  tail call void @_Z12path_nongoalv()
  br label %17

17:                                               ; preds = %16, %11
  %18 = load i8, i8* %13, align 1, !tbaa !2
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %20, label %6

20:                                               ; preds = %17, %10, %2
  ret void
}

; Function Attrs: norecurse nounwind uwtable
define dso_local i32 @main() #2 {
  %1 = alloca [20 x i8], align 16
  tail call void @_Z10path_startv()
  %2 = getelementptr inbounds [20 x i8], [20 x i8]* %1, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 20, i8* nonnull %2) #4
  %3 = tail call i32 @rand() #4
  %4 = and i32 %3, 65535
  call void @_Z4funcPcj(i8* nonnull %2, i32 %4)
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
