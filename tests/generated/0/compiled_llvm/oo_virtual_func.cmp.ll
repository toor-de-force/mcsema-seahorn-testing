; ModuleID = 'generated/0/binary/oo_virtual_func.o.0.5.precodegen.bc'
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

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_Z10path_startv() #0 {
  %1 = call i64 @time(i64* @global_time) #6
  ret void
}

; Function Attrs: nounwind
declare i64 @time(i64*) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_Z9path_goalv() #0 {
  %1 = call i64 @time(i64* @global_time) #6
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_Z12path_nongoalv() #0 {
  %1 = call i64 @time(i64* @global_time) #6
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_Z21example_constrain_argii(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %5 = call i64 @time(i64* @global_time) #6
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_Z21example_constrain_reti(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = call i64 @time(i64* @global_time) #6
  call void @llvm.trap()
  unreachable

5:                                                ; No predecessors!
  %6 = load i32, i32* %2, align 4
  ret i32 %6
}

; Function Attrs: cold noreturn nounwind
declare void @llvm.trap() #2

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_Z15example_counterv() #0 {
  %1 = alloca i32, align 4
  %2 = call i64 @time(i64* @global_time) #6
  call void @llvm.trap()
  unreachable

3:                                                ; No predecessors!
  %4 = load i32, i32* %1, align 4
  ret i32 %4
}

; Function Attrs: noinline norecurse optnone uwtable
define dso_local i32 @main() #3 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %1 = alloca i32, align 4
  %2 = alloca %class.Cls*, align 8
  %3 = alloca i8*
  %4 = alloca i32
  store i32 0, i32* %1, align 4
  call void @_Z10path_startv()
  %5 = call i8* @_Znwm(i64 16) #7
  %6 = bitcast i8* %5 to %class.Cls*
  invoke void @_ZN3ClsC2Ev(%class.Cls* %6)
          to label %7 unwind label %16

7:                                                ; preds = %0
  store %class.Cls* %6, %class.Cls** %2, align 8
  %8 = load %class.Cls*, %class.Cls** %2, align 8
  %9 = bitcast %class.Cls* %8 to i32 (%class.Cls*)***
  %10 = load i32 (%class.Cls*)**, i32 (%class.Cls*)*** %9, align 8
  %11 = getelementptr inbounds i32 (%class.Cls*)*, i32 (%class.Cls*)** %10, i64 0
  %12 = load i32 (%class.Cls*)*, i32 (%class.Cls*)** %11, align 8
  %13 = call i32 %12(%class.Cls* %8)
  %14 = icmp eq i32 %13, 4
  br i1 %14, label %15, label %20

15:                                               ; preds = %7
  call void @_Z9path_goalv()
  br label %21

16:                                               ; preds = %0
  %17 = landingpad { i8*, i32 }
          cleanup
  %18 = extractvalue { i8*, i32 } %17, 0
  store i8* %18, i8** %3, align 8
  %19 = extractvalue { i8*, i32 } %17, 1
  store i32 %19, i32* %4, align 4
  call void @_ZdlPv(i8* %5) #8
  br label %23

20:                                               ; preds = %7
  call void @_Z12path_nongoalv()
  br label %21

21:                                               ; preds = %20, %15
  %22 = load i32, i32* %1, align 4
  ret i32 %22

23:                                               ; preds = %16
  %24 = load i8*, i8** %3, align 8
  %25 = load i32, i32* %4, align 4
  %26 = insertvalue { i8*, i32 } undef, i8* %24, 0
  %27 = insertvalue { i8*, i32 } %26, i32 %25, 1
  resume { i8*, i32 } %27
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nobuiltin
declare noalias i8* @_Znwm(i64) #4

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_ZN3ClsC2Ev(%class.Cls* %0) unnamed_addr #0 comdat align 2 {
  %2 = alloca %class.Cls*, align 8
  store %class.Cls* %0, %class.Cls** %2, align 8
  %3 = load %class.Cls*, %class.Cls** %2, align 8
  %4 = bitcast %class.Cls* %3 to i32 (...)***
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [3 x i8*] }, { [3 x i8*] }* @_ZTV3Cls, i32 0, inrange i32 0, i32 2) to i32 (...)**), i32 (...)*** %4, align 8
  %5 = getelementptr inbounds %class.Cls, %class.Cls* %3, i32 0, i32 1
  store volatile i32 3, i32* %5, align 8
  %6 = getelementptr inbounds %class.Cls, %class.Cls* %3, i32 0, i32 1
  store volatile i32 4, i32* %6, align 8
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(i8*) #5

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_ZN3Cls10get_memberEv(%class.Cls* %0) unnamed_addr #0 comdat align 2 {
  %2 = alloca %class.Cls*, align 8
  store %class.Cls* %0, %class.Cls** %2, align 8
  %3 = load %class.Cls*, %class.Cls** %2, align 8
  %4 = getelementptr inbounds %class.Cls, %class.Cls* %3, i32 0, i32 1
  %5 = load volatile i32, i32* %4, align 8
  ret i32 %5
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { cold noreturn nounwind }
attributes #3 = { noinline norecurse optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nobuiltin "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nobuiltin nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind }
attributes #7 = { builtin }
attributes #8 = { builtin nounwind }

!llvm.ident = !{!1}
!llvm.module.flags = !{!2}

!0 = !{i64 16, !"_ZTS3Cls"}
!1 = !{!"clang version 6.0.0-1ubuntu2 (tags/RELEASE_600/final)"}
!2 = !{i32 1, !"wchar_size", i32 4}
