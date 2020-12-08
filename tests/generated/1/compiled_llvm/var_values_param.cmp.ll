; ModuleID = 'generated/1/binary/var_values_param.o.0.5.precodegen.bc'
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
define internal void @_Z4funciiibc(i32 %0, i32 %1, i32 %2, i1 zeroext %3, i8 signext %4) #2 {
  %6 = alloca i32, align 4
  %7 = bitcast i32* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %7)
  store volatile i32 %2, i32* %6, align 4
  %8 = icmp eq i32 %0, 2
  %9 = add nsw i32 %0, 8
  %10 = icmp eq i32 %9, %1
  %11 = and i1 %8, %10
  br i1 %11, label %12, label %22

12:                                               ; preds = %5
  %13 = xor i1 %3, true
  %14 = icmp sgt i32 %2, 7
  %15 = and i1 %14, %13
  %16 = icmp eq i8 %4, 12
  %17 = and i1 %15, %16
  br i1 %17, label %18, label %22

18:                                               ; preds = %12
  tail call void @_Z9path_goalv()
  %19 = load volatile i32, i32* %6, align 4
  %20 = icmp slt i32 %19, %0
  br i1 %20, label %21, label %22

21:                                               ; preds = %18
  tail call void @_Z12path_nongoalv()
  br label %22

22:                                               ; preds = %21, %18, %12, %5
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %7)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #3

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #3

; Function Attrs: norecurse nounwind uwtable
define dso_local i32 @main() #2 {
  tail call void @_Z10path_startv()
  %1 = tail call i32 @rand() #4
  %2 = tail call i32 @rand() #4
  %3 = tail call i32 @rand() #4
  %4 = tail call i32 @rand() #4
  %5 = icmp ne i32 %4, 0
  %6 = tail call i32 @rand() #4
  %7 = trunc i32 %6 to i8
  tail call void @_Z4funciiibc(i32 %1, i32 %2, i32 %3, i1 zeroext %5, i8 signext %7)
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
