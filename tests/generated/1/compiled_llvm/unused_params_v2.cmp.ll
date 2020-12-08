; ModuleID = 'generated/1/binary/unused_params_v2.o.0.5.precodegen.bc'
source_filename = "ld-temp.o"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@global_time = internal global i64 0, align 8

; Function Attrs: noinline norecurse nounwind uwtable
define internal void @_Z10path_startv() #0 {
  %1 = tail call i64 @time(i64* nonnull @global_time) #5
  ret void
}

; Function Attrs: nounwind
declare i64 @time(i64*) local_unnamed_addr #1

; Function Attrs: noinline norecurse nounwind uwtable
define internal void @_Z9path_goalv() #0 {
  %1 = tail call i64 @time(i64* nonnull @global_time) #5
  ret void
}

; Function Attrs: noinline norecurse nounwind uwtable
define internal void @_Z12path_nongoalv() #0 {
  %1 = tail call i64 @time(i64* nonnull @global_time) #5
  ret void
}

; Function Attrs: norecurse nounwind readnone uwtable
define internal i32 @_Z5func3ii(i32 %0, i32 %1) #2 {
  %3 = icmp sgt i32 %1, 0
  %4 = select i1 %3, i32 %1, i32 0
  ret i32 %4
}

; Function Attrs: norecurse nounwind uwtable
define internal i32 @_Z5func2iii(i32 %0, i32 %1, i32 %2) #3 {
  %4 = alloca i32, align 4
  %5 = bitcast i32* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %5)
  store volatile i32 2, i32* %4, align 4
  %6 = icmp eq i32 %2, 1
  %7 = load volatile i32, i32* %4, align 4
  br i1 %6, label %8, label %10

8:                                                ; preds = %3
  %9 = tail call i32 @_Z5func3ii(i32 undef, i32 %7)
  br label %14

10:                                               ; preds = %3
  %11 = add nsw i32 %7, 1
  %12 = tail call i32 @_Z5func3ii(i32 undef, i32 %11)
  %13 = add nsw i32 %12, 1
  br label %14

14:                                               ; preds = %10, %8
  %15 = phi i32 [ %9, %8 ], [ %13, %10 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %5)
  ret i32 %15
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #4

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #4

; Function Attrs: norecurse nounwind uwtable
define internal zeroext i1 @_Z5func1iii(i32 %0, i32 %1, i32 %2) #3 {
  %4 = alloca i32, align 4
  %5 = bitcast i32* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %5)
  store volatile i32 1, i32* %4, align 4
  %6 = load volatile i32, i32* %4, align 4
  %7 = tail call i32 @_Z5func2iii(i32 undef, i32 undef, i32 %6)
  %8 = icmp sgt i32 %7, 1
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %5)
  ret i1 %8
}

; Function Attrs: norecurse nounwind uwtable
define dso_local i32 @main() #3 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  tail call void @_Z10path_startv()
  %4 = bitcast i32* %1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %4)
  store volatile i32 3, i32* %1, align 4
  %5 = bitcast i32* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %5)
  store volatile i32 4, i32* %2, align 4
  %6 = bitcast i32* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6)
  store volatile i32 5, i32* %3, align 4
  %7 = load volatile i32, i32* %1, align 4
  %8 = load volatile i32, i32* %2, align 4
  %9 = load volatile i32, i32* %3, align 4
  %10 = tail call zeroext i1 @_Z5func1iii(i32 undef, i32 undef, i32 undef)
  br i1 %10, label %11, label %12

11:                                               ; preds = %0
  tail call void @_Z9path_goalv()
  br label %13

12:                                               ; preds = %0
  tail call void @_Z12path_nongoalv()
  br label %13

13:                                               ; preds = %12, %11
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6)
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %5)
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %4)
  ret i32 0
}

attributes #0 = { noinline norecurse nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { norecurse nounwind readnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { norecurse nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { argmemonly nounwind willreturn }
attributes #5 = { nounwind }

!llvm.ident = !{!0}
!llvm.module.flags = !{!1}

!0 = !{!"clang version 6.0.0-1ubuntu2 (tags/RELEASE_600/final)"}
!1 = !{i32 1, !"wchar_size", i32 4}
