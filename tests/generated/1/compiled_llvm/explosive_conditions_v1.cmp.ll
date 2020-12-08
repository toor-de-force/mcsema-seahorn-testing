; ModuleID = 'generated/1/binary/explosive_conditions_v1.o.0.5.precodegen.bc'
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
define internal void @_Z4funciii(i32 %0, i32 %1, i32 %2) #2 {
  %4 = alloca i32, align 4
  tail call void @_Z10path_startv()
  %5 = icmp eq i32 %0, 3
  %6 = icmp eq i32 %1, 4
  %7 = and i1 %5, %6
  %8 = icmp eq i32 %2, 5
  %9 = and i1 %7, %8
  br i1 %9, label %17, label %10

10:                                               ; preds = %3
  %11 = icmp eq i32 %0, 6
  %12 = icmp eq i32 %1, 7
  %13 = and i1 %11, %12
  %14 = icmp eq i32 %2, 8
  %15 = and i1 %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %10
  tail call void @_Z9path_goalv()
  br label %17

17:                                               ; preds = %16, %10, %3
  %18 = phi i32 [ 42, %16 ], [ 43, %10 ], [ 43, %3 ]
  %19 = bitcast i32* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %19)
  store volatile i32 %18, i32* %4, align 4
  %20 = load volatile i32, i32* %4, align 4
  %21 = icmp eq i32 %20, 44
  br i1 %21, label %22, label %23

22:                                               ; preds = %17
  tail call void @_Z12path_nongoalv()
  br label %23

23:                                               ; preds = %22, %17
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %19)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #3

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #3

; Function Attrs: norecurse nounwind uwtable
define dso_local i32 @main() #2 {
  %1 = tail call i32 @rand() #4
  %2 = tail call i32 @rand() #4
  %3 = tail call i32 @rand() #4
  tail call void @_Z4funciii(i32 %1, i32 %2, i32 %3)
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
