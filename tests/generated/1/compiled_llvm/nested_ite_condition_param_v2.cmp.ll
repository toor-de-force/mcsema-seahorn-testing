; ModuleID = 'generated/1/binary/nested_ite_condition_param_v2.o.0.5.precodegen.bc'
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
define internal i32 @_Z4funci(i32 %0) #2 {
  %2 = alloca i32, align 4
  tail call void @_Z10path_startv()
  %3 = bitcast i32* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %3)
  store volatile i32 %0, i32* %2, align 4
  %4 = icmp sgt i32 %0, 0
  br i1 %4, label %5, label %18

5:                                                ; preds = %1
  %6 = icmp sgt i32 %0, 9
  br i1 %6, label %7, label %18

7:                                                ; preds = %5
  %8 = icmp sgt i32 %0, 49
  br i1 %8, label %9, label %17

9:                                                ; preds = %7
  %10 = icmp sgt i32 %0, 74
  br i1 %10, label %11, label %18

11:                                               ; preds = %9
  %12 = icmp sgt i32 %0, 100
  br i1 %12, label %18, label %13

13:                                               ; preds = %11
  %14 = load volatile i32, i32* %2, align 4
  %15 = icmp slt i32 %14, 30
  br i1 %15, label %16, label %18

16:                                               ; preds = %13
  tail call void @_Z12path_nongoalv()
  br label %18

17:                                               ; preds = %7
  tail call void @_Z9path_goalv()
  br label %18

18:                                               ; preds = %17, %16, %13, %11, %9, %5, %1
  %19 = phi i32 [ 10, %17 ], [ 0, %1 ], [ 100, %11 ], [ -100, %16 ], [ -100, %13 ], [ -75, %9 ], [ -10, %5 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %3)
  ret i32 %19
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #3

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #3

; Function Attrs: norecurse nounwind uwtable
define dso_local i32 @main() #2 {
  %1 = tail call i32 @rand() #4
  %2 = tail call i32 @_Z4funci(i32 %1)
  ret i32 0
}

; Function Attrs: nounwind
declare i32 @rand() local_unnamed_addr #1

attributes #0 = { noinline norecurse nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { norecurse nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind willreturn }
attributes #4 = { nounwind }

!llvm.ident = !{!0}
!llvm.module.flags = !{!1}

!0 = !{!"clang version 6.0.0-1ubuntu2 (tags/RELEASE_600/final)"}
!1 = !{i32 1, !"wchar_size", i32 4}
