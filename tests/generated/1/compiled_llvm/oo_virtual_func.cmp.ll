; ModuleID = 'generated/1/binary/oo_virtual_func.o.0.5.precodegen.bc'
source_filename = "ld-temp.o"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%class.Cls = type <{ i32 (...)**, i32, [4 x i8] }>

$_ZN3ClsC2Ev = comdat any

$_ZN3Cls10get_memberEv = comdat any

$_ZTV3Cls = comdat any

$_ZTI3Cls = comdat any

$_ZTS3Cls = comdat any

@global_time = internal global i64 0, align 8
@_ZTV3Cls = internal unnamed_addr constant { [3 x i8*] } { [3 x i8*] [i8* null, i8* bitcast ({ i8*, i8* }* @_ZTI3Cls to i8*), i8* bitcast (i32 (%class.Cls*)* @_ZN3Cls10get_memberEv to i8*)] }, comdat, align 8, !type !0
@_ZTI3Cls = internal constant { i8*, i8* } { i8* bitcast (i8** getelementptr inbounds (i8*, i8** @_ZTVN10__cxxabiv117__class_type_infoE, i64 2) to i8*), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @_ZTS3Cls, i32 0, i32 0) }, comdat
@_ZTVN10__cxxabiv117__class_type_infoE = external global i8*
@_ZTS3Cls = internal constant [5 x i8] c"3Cls\00", comdat

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
  %1 = tail call i8* @_Znwm(i64 16) #6
  %2 = bitcast i8* %1 to %class.Cls*
  tail call void @_ZN3ClsC2Ev(%class.Cls* nonnull %2)
  %3 = bitcast i8* %1 to i32 (%class.Cls*)***
  %4 = load i32 (%class.Cls*)**, i32 (%class.Cls*)*** %3, align 8, !tbaa !3
  %5 = load i32 (%class.Cls*)*, i32 (%class.Cls*)** %4, align 8
  %6 = tail call i32 %5(%class.Cls* nonnull %2)
  %7 = icmp eq i32 %6, 4
  br i1 %7, label %8, label %9

8:                                                ; preds = %0
  tail call void @_Z9path_goalv()
  br label %10

9:                                                ; preds = %0
  tail call void @_Z12path_nongoalv()
  br label %10

10:                                               ; preds = %9, %8
  ret i32 0
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nobuiltin
declare noalias nonnull i8* @_Znwm(i64) local_unnamed_addr #3

; Function Attrs: norecurse nounwind uwtable
define internal void @_ZN3ClsC2Ev(%class.Cls* %0) unnamed_addr #4 comdat align 2 {
  %2 = getelementptr inbounds %class.Cls, %class.Cls* %0, i64 0, i32 0
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [3 x i8*] }, { [3 x i8*] }* @_ZTV3Cls, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %2, align 8, !tbaa !3
  %3 = getelementptr inbounds %class.Cls, %class.Cls* %0, i64 0, i32 1
  store volatile i32 3, i32* %3, align 8, !tbaa !6
  store volatile i32 4, i32* %3, align 8, !tbaa !6
  ret void
}

; Function Attrs: norecurse nounwind uwtable
define internal i32 @_ZN3Cls10get_memberEv(%class.Cls* %0) unnamed_addr #4 comdat align 2 {
  %2 = getelementptr inbounds %class.Cls, %class.Cls* %0, i64 0, i32 1
  %3 = load volatile i32, i32* %2, align 8, !tbaa !6
  ret i32 %3
}

attributes #0 = { noinline norecurse nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { norecurse uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nobuiltin "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { norecurse nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { builtin }

!llvm.ident = !{!1}
!llvm.module.flags = !{!2}

!0 = !{i64 16, !"_ZTS3Cls"}
!1 = !{!"clang version 6.0.0-1ubuntu2 (tags/RELEASE_600/final)"}
!2 = !{i32 1, !"wchar_size", i32 4}
!3 = !{!4, !4, i64 0}
!4 = !{!"vtable pointer", !5, i64 0}
!5 = !{!"Simple C++ TBAA"}
!6 = !{!7, !8, i64 8}
!7 = !{!"_ZTS3Cls", !8, i64 8}
!8 = !{!"int", !9, i64 0}
!9 = !{!"omnipotent char", !5, i64 0}
