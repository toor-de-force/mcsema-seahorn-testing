; ModuleID = 'generated/2/binary/compound_condition_param_v1.o.0.5.precodegen.bc'
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

; Function Attrs: noinline norecurse nounwind uwtable
define internal fastcc void @_Z12path_nongoalv() unnamed_addr #0 {
  %1 = tail call i64 @time(i64* nonnull @global_time) #4
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: norecurse nounwind uwtable
define dso_local i32 @main() local_unnamed_addr #3 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = tail call i32 @rand() #4
  %.0.sroa_cast7 = bitcast i32* %1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %.0.sroa_cast7)
  store volatile i32 %3, i32* %1, align 4
  tail call fastcc void @_Z10path_startv() #4
  %.0.2 = load volatile i32, i32* %1, align 4
  %4 = icmp sgt i32 %.0.2, 2
  br i1 %4, label %5, label %9

5:                                                ; preds = %0
  %.0.3 = load volatile i32, i32* %1, align 4
  %6 = icmp slt i32 %.0.3, 10
  br i1 %6, label %7, label %9

7:                                                ; preds = %5
  tail call fastcc void @_Z9path_goalv() #4
  %.0.4 = load volatile i32, i32* %1, align 4
  %8 = add nsw i32 %.0.4, 1
  store volatile i32 %8, i32* %1, align 4
  br label %9

9:                                                ; preds = %7, %5, %0
  %.0.sroa_cast = bitcast i32* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %.0.sroa_cast)
  %.0.5 = load volatile i32, i32* %1, align 4
  store volatile i32 %.0.5, i32* %2, align 4
  %.0. = load volatile i32, i32* %2, align 4
  %.0.6 = load volatile i32, i32* %1, align 4
  %10 = icmp sgt i32 %.0., %.0.6
  br i1 %10, label %11, label %12

11:                                               ; preds = %9
  tail call fastcc void @_Z12path_nongoalv() #4
  br label %12

12:                                               ; preds = %11, %9
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %.0.sroa_cast)
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %.0.sroa_cast7)
  ret i32 0
}

; Function Attrs: nounwind
declare i32 @rand() local_unnamed_addr #1

attributes #0 = { noinline norecurse nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }
attributes #3 = { norecurse nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }

!llvm.ident = !{!0}
!llvm.module.flags = !{!1}

!0 = !{!"clang version 6.0.0-1ubuntu2 (tags/RELEASE_600/final)"}
!1 = !{i32 1, !"wchar_size", i32 4}
