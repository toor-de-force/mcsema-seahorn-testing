; ModuleID = 'generated/1/binary/nested_ite_condition_v2.o.0.5.precodegen.bc'
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
define dso_local i32 @main() #2 {
  %1 = alloca i32, align 4
  tail call void @_Z10path_startv()
  %2 = bitcast i32* %1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2)
  store volatile i32 0, i32* %1, align 4
  %3 = tail call i32 @rand() #4
  %4 = icmp sgt i32 %3, 0
  br i1 %4, label %5, label %18

5:                                                ; preds = %0
  store volatile i32 1, i32* %1, align 4
  %6 = icmp sgt i32 %3, 9
  br i1 %6, label %7, label %17

7:                                                ; preds = %5
  store volatile i32 10, i32* %1, align 4
  %8 = icmp sgt i32 %3, 49
  br i1 %8, label %9, label %16

9:                                                ; preds = %7
  store volatile i32 50, i32* %1, align 4
  %10 = icmp sgt i32 %3, 74
  br i1 %10, label %11, label %15

11:                                               ; preds = %9
  store volatile i32 75, i32* %1, align 4
  %12 = icmp sgt i32 %3, 100
  br i1 %12, label %13, label %14

13:                                               ; preds = %11
  store volatile i32 100, i32* %1, align 4
  br label %18

14:                                               ; preds = %11
  store volatile i32 -100, i32* %1, align 4
  br label %18

15:                                               ; preds = %9
  store volatile i32 -75, i32* %1, align 4
  br label %18

16:                                               ; preds = %7
  tail call void @_Z9path_goalv()
  br label %18

17:                                               ; preds = %5
  store volatile i32 -10, i32* %1, align 4
  br label %18

18:                                               ; preds = %17, %16, %15, %14, %13, %0
  %19 = load volatile i32, i32* %1, align 4
  %20 = icmp eq i32 %19, 33
  br i1 %20, label %21, label %22

21:                                               ; preds = %18
  tail call void @_Z12path_nongoalv()
  br label %22

22:                                               ; preds = %21, %18
  %23 = load volatile i32, i32* %1, align 4
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2)
  ret i32 %23
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
