; ModuleID = 'generated/1/binary/oo_simple.o.0.5.precodegen.bc'
source_filename = "ld-temp.o"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%class.Cls = type { i32 }

$_ZN3ClsC2Ev = comdat any

$_ZN3Cls10get_memberEv = comdat any

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

; Function Attrs: norecurse uwtable
define dso_local i32 @main() #2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  tail call void @_Z10path_startv()
  %1 = tail call i8* @_Znwm(i64 4) #6
  %2 = bitcast i8* %1 to %class.Cls*
  tail call void @_ZN3ClsC2Ev(%class.Cls* nonnull %2)
  %3 = tail call i32 @_ZN3Cls10get_memberEv(%class.Cls* nonnull %2)
  %4 = icmp eq i32 %3, 4
  br i1 %4, label %5, label %6

5:                                                ; preds = %0
  tail call void @_Z9path_goalv()
  br label %7

6:                                                ; preds = %0
  tail call void @_Z12path_nongoalv()
  br label %7

7:                                                ; preds = %6, %5
  ret i32 0
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nobuiltin
declare noalias nonnull i8* @_Znwm(i64) local_unnamed_addr #3

; Function Attrs: norecurse nounwind uwtable
define internal void @_ZN3ClsC2Ev(%class.Cls* %0) unnamed_addr #4 comdat align 2 {
  %2 = getelementptr inbounds %class.Cls, %class.Cls* %0, i64 0, i32 0
  store volatile i32 3, i32* %2, align 4, !tbaa !2
  store volatile i32 4, i32* %2, align 4, !tbaa !2
  ret void
}

; Function Attrs: norecurse nounwind uwtable
define internal i32 @_ZN3Cls10get_memberEv(%class.Cls* %0) #4 comdat align 2 {
  %2 = getelementptr inbounds %class.Cls, %class.Cls* %0, i64 0, i32 0
  %3 = load volatile i32, i32* %2, align 4, !tbaa !2
  ret i32 %3
}

attributes #0 = { noinline norecurse nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { norecurse uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nobuiltin "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { norecurse nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { builtin }

!llvm.ident = !{!0}
!llvm.module.flags = !{!1}

!0 = !{!"clang version 6.0.0-1ubuntu2 (tags/RELEASE_600/final)"}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{!3, !4, i64 0}
!3 = !{!"_ZTS3Cls", !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
