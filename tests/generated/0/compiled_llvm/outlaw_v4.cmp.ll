; ModuleID = 'generated/0/binary/outlaw_v4.o.0.5.precodegen.bc'
source_filename = "ld-temp.o"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.msg = type <{ i32, i32, i32 (i32, i32*, i8)*, i8, i8, [2 x i8], i64 }>

@global_time = internal global i64 0, align 8
@cgc_auth_token = internal global i32 0, align 4
@operations = internal global [256 x i32 (i32, i32*, i8)*] [i32 (i32, i32*, i8)* @_Z10cgc_op_addjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_subjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_muljPih, i32 (i32, i32*, i8)* @_Z10cgc_op_divjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_addjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_subjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_muljPih, i32 (i32, i32*, i8)* @_Z10cgc_op_divjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_addjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_subjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_muljPih, i32 (i32, i32*, i8)* @_Z10cgc_op_divjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_addjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_subjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_muljPih, i32 (i32, i32*, i8)* @_Z10cgc_op_divjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_addjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_subjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_muljPih, i32 (i32, i32*, i8)* @_Z10cgc_op_divjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_addjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_subjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_muljPih, i32 (i32, i32*, i8)* @_Z10cgc_op_divjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_addjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_subjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_muljPih, i32 (i32, i32*, i8)* @_Z10cgc_op_divjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_addjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_subjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_muljPih, i32 (i32, i32*, i8)* @_Z10cgc_op_divjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_addjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_subjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_muljPih, i32 (i32, i32*, i8)* @_Z10cgc_op_divjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_addjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_subjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_muljPih, i32 (i32, i32*, i8)* @_Z10cgc_op_divjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_addjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_subjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_muljPih, i32 (i32, i32*, i8)* @_Z10cgc_op_divjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_addjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_subjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_muljPih, i32 (i32, i32*, i8)* @_Z10cgc_op_divjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_addjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_subjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_muljPih, i32 (i32, i32*, i8)* @_Z10cgc_op_divjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_addjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_subjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_muljPih, i32 (i32, i32*, i8)* @_Z10cgc_op_divjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_addjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_subjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_muljPih, i32 (i32, i32*, i8)* @_Z10cgc_op_divjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_addjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_modjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_muljPih, i32 (i32, i32*, i8)* @_Z10cgc_op_divjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_addjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_subjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_muljPih, i32 (i32, i32*, i8)* @_Z10cgc_op_divjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_addjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_subjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_muljPih, i32 (i32, i32*, i8)* @_Z10cgc_op_divjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_addjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_subjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_muljPih, i32 (i32, i32*, i8)* @_Z10cgc_op_divjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_addjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_subjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_muljPih, i32 (i32, i32*, i8)* @_Z10cgc_op_divjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_addjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_subjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_muljPih, i32 (i32, i32*, i8)* @_Z10cgc_op_divjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_addjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_subjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_muljPih, i32 (i32, i32*, i8)* @_Z10cgc_op_divjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_addjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_subjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_muljPih, i32 (i32, i32*, i8)* @_Z10cgc_op_divjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_addjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_subjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_muljPih, i32 (i32, i32*, i8)* @_Z10cgc_op_divjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_addjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_subjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_muljPih, i32 (i32, i32*, i8)* @_Z10cgc_op_divjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_addjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_subjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_muljPih, i32 (i32, i32*, i8)* @_Z10cgc_op_divjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_addjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_subjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_muljPih, i32 (i32, i32*, i8)* @_Z10cgc_op_divjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_addjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_subjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_muljPih, i32 (i32, i32*, i8)* @_Z10cgc_op_divjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_addjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_subjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_muljPih, i32 (i32, i32*, i8)* @_Z10cgc_op_divjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_addjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_subjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_muljPih, i32 (i32, i32*, i8)* @_Z10cgc_op_divjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_addjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_subjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_muljPih, i32 (i32, i32*, i8)* @_Z10cgc_op_divjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_addjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_subjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_muljPih, i32 (i32, i32*, i8)* @_Z10cgc_op_divjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_addjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_subjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_muljPih, i32 (i32, i32*, i8)* @_Z10cgc_op_divjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_addjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_subjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_muljPih, i32 (i32, i32*, i8)* @_Z10cgc_op_divjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_addjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_subjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_muljPih, i32 (i32, i32*, i8)* @_Z10cgc_op_divjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_addjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_subjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_muljPih, i32 (i32, i32*, i8)* @_Z10cgc_op_divjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_addjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_subjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_muljPih, i32 (i32, i32*, i8)* @_Z10cgc_op_divjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_addjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_subjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_muljPih, i32 (i32, i32*, i8)* @_Z10cgc_op_divjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_addjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_subjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_muljPih, i32 (i32, i32*, i8)* @_Z10cgc_op_divjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_addjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_subjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_muljPih, i32 (i32, i32*, i8)* @_Z10cgc_op_divjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_addjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_subjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_muljPih, i32 (i32, i32*, i8)* @_Z10cgc_op_divjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_addjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_subjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_muljPih, i32 (i32, i32*, i8)* @_Z10cgc_op_divjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_addjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_subjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_muljPih, i32 (i32, i32*, i8)* @_Z10cgc_op_divjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_addjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_subjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_muljPih, i32 (i32, i32*, i8)* @_Z10cgc_op_divjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_addjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_subjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_muljPih, i32 (i32, i32*, i8)* @_Z10cgc_op_divjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_addjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_subjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_muljPih, i32 (i32, i32*, i8)* @_Z10cgc_op_divjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_addjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_subjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_muljPih, i32 (i32, i32*, i8)* @_Z10cgc_op_divjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_addjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_subjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_muljPih, i32 (i32, i32*, i8)* @_Z10cgc_op_divjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_addjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_subjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_muljPih, i32 (i32, i32*, i8)* @_Z10cgc_op_divjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_addjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_subjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_muljPih, i32 (i32, i32*, i8)* @_Z10cgc_op_divjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_addjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_subjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_muljPih, i32 (i32, i32*, i8)* @_Z10cgc_op_divjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_addjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_subjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_muljPih, i32 (i32, i32*, i8)* @_Z10cgc_op_divjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_addjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_subjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_muljPih, i32 (i32, i32*, i8)* @_Z10cgc_op_divjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_addjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_subjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_muljPih, i32 (i32, i32*, i8)* @_Z10cgc_op_divjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_addjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_subjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_muljPih, i32 (i32, i32*, i8)* @_Z10cgc_op_divjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_addjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_subjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_muljPih, i32 (i32, i32*, i8)* @_Z10cgc_op_divjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_addjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_subjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_muljPih, i32 (i32, i32*, i8)* @_Z10cgc_op_divjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_addjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_subjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_muljPih, i32 (i32, i32*, i8)* @_Z10cgc_op_divjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_addjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_subjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_muljPih, i32 (i32, i32*, i8)* @_Z10cgc_op_divjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_addjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_subjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_muljPih, i32 (i32, i32*, i8)* @_Z10cgc_op_divjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_addjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_subjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_muljPih, i32 (i32, i32*, i8)* @_Z10cgc_op_divjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_addjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_subjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_muljPih, i32 (i32, i32*, i8)* @_Z10cgc_op_divjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_addjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_subjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_muljPih, i32 (i32, i32*, i8)* @_Z10cgc_op_divjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_addjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_subjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_muljPih, i32 (i32, i32*, i8)* @_Z10cgc_op_divjPih], align 16
@cgc_enckey = internal global [4 x i32] zeroinitializer, align 16

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_Z10path_startv() #0 {
  %1 = call i64 @time(i64* @global_time) #4
  ret void
}

; Function Attrs: nounwind
declare i64 @time(i64*) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_Z9path_goalv() #0 {
  %1 = call i64 @time(i64* @global_time) #4
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_Z12path_nongoalv() #0 {
  %1 = call i64 @time(i64* @global_time) #4
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_Z21example_constrain_argii(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %5 = call i64 @time(i64* @global_time) #4
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_Z21example_constrain_reti(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = call i64 @time(i64* @global_time) #4
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
  %2 = call i64 @time(i64* @global_time) #4
  call void @llvm.trap()
  unreachable

3:                                                ; No predecessors!
  %4 = load i32, i32* %1, align 4
  ret i32 %4
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_Z10cgc_op_addjPih(i32 %0, i32* %1, i8 zeroext %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i8, align 1
  store i32 %0, i32* %4, align 4
  store i32* %1, i32** %5, align 8
  store i8 %2, i8* %6, align 1
  ret i32 1
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_Z10cgc_op_subjPih(i32 %0, i32* %1, i8 zeroext %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i8, align 1
  store i32 %0, i32* %4, align 4
  store i32* %1, i32** %5, align 8
  store i8 %2, i8* %6, align 1
  ret i32 1
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_Z10cgc_op_muljPih(i32 %0, i32* %1, i8 zeroext %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i8, align 1
  store i32 %0, i32* %4, align 4
  store i32* %1, i32** %5, align 8
  store i8 %2, i8* %6, align 1
  ret i32 1
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_Z10cgc_op_divjPih(i32 %0, i32* %1, i8 zeroext %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i8, align 1
  store i32 %0, i32* %4, align 4
  store i32* %1, i32** %5, align 8
  store i8 %2, i8* %6, align 1
  ret i32 1
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_Z10cgc_op_modjPih(i32 %0, i32* %1, i8 zeroext %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i8, align 1
  %7 = alloca i32 (i32, i32*, i8)*, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32* %1, i32** %5, align 8
  store i8 %2, i8* %6, align 1
  %9 = load i32*, i32** %5, align 8
  %10 = bitcast i32* %9 to i32 (i32, i32*, i8)*
  store i32 (i32, i32*, i8)* %10, i32 (i32, i32*, i8)** %7, align 8
  store i32 1, i32* %8, align 4
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* @cgc_auth_token, align 4
  %13 = icmp ne i32 %11, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %3
  br label %44

15:                                               ; preds = %3
  br label %16

16:                                               ; preds = %15
  %17 = load i32 (i32, i32*, i8)*, i32 (i32, i32*, i8)** %7, align 8
  %18 = load i32 (i32, i32*, i8)*, i32 (i32, i32*, i8)** getelementptr inbounds ([256 x i32 (i32, i32*, i8)*], [256 x i32 (i32, i32*, i8)*]* @operations, i64 0, i64 0), align 16
  %19 = icmp eq i32 (i32, i32*, i8)* %17, %18
  br i1 %19, label %32, label %20

20:                                               ; preds = %16
  %21 = load i32 (i32, i32*, i8)*, i32 (i32, i32*, i8)** %7, align 8
  %22 = load i32 (i32, i32*, i8)*, i32 (i32, i32*, i8)** getelementptr inbounds ([256 x i32 (i32, i32*, i8)*], [256 x i32 (i32, i32*, i8)*]* @operations, i64 0, i64 1), align 8
  %23 = icmp eq i32 (i32, i32*, i8)* %21, %22
  br i1 %23, label %32, label %24

24:                                               ; preds = %20
  %25 = load i32 (i32, i32*, i8)*, i32 (i32, i32*, i8)** %7, align 8
  %26 = load i32 (i32, i32*, i8)*, i32 (i32, i32*, i8)** getelementptr inbounds ([256 x i32 (i32, i32*, i8)*], [256 x i32 (i32, i32*, i8)*]* @operations, i64 0, i64 2), align 16
  %27 = icmp eq i32 (i32, i32*, i8)* %25, %26
  br i1 %27, label %32, label %28

28:                                               ; preds = %24
  %29 = load i32 (i32, i32*, i8)*, i32 (i32, i32*, i8)** %7, align 8
  %30 = load i32 (i32, i32*, i8)*, i32 (i32, i32*, i8)** getelementptr inbounds ([256 x i32 (i32, i32*, i8)*], [256 x i32 (i32, i32*, i8)*]* @operations, i64 0, i64 3), align 8
  %31 = icmp eq i32 (i32, i32*, i8)* %29, %30
  br i1 %31, label %32, label %37

32:                                               ; preds = %28, %24, %20, %16
  %33 = load i32 (i32, i32*, i8)*, i32 (i32, i32*, i8)** %7, align 8
  %34 = load i8, i8* %6, align 1
  %35 = zext i8 %34 to i64
  %36 = getelementptr inbounds [256 x i32 (i32, i32*, i8)*], [256 x i32 (i32, i32*, i8)*]* @operations, i64 0, i64 %35
  store i32 (i32, i32*, i8)* %33, i32 (i32, i32*, i8)** %36, align 8
  br label %43

37:                                               ; preds = %28
  call void @_Z9path_goalv()
  %38 = load i32 (i32, i32*, i8)*, i32 (i32, i32*, i8)** %7, align 8
  %39 = load i32 (i32, i32*, i8)*, i32 (i32, i32*, i8)** getelementptr inbounds ([256 x i32 (i32, i32*, i8)*], [256 x i32 (i32, i32*, i8)*]* @operations, i64 0, i64 0), align 16
  %40 = icmp eq i32 (i32, i32*, i8)* %38, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %37
  call void @_Z12path_nongoalv()
  br label %42

42:                                               ; preds = %41, %37
  br label %43

43:                                               ; preds = %42, %32
  br label %44

44:                                               ; preds = %43, %14
  %45 = load i32, i32* %8, align 4
  ret i32 %45
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_Z11cgc_receiveiPcmPm(i32 %0, i8* %1, i64 %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64*, align 8
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  store i64* %3, i64** %8, align 8
  %9 = load i64, i64* %7, align 8
  %10 = load i64*, i64** %8, align 8
  store i64 %9, i64* %10, align 8
  ret i32 1
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_Z14cgc_recv_bytesiPcj(i32 %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 1, i32* %7, align 4
  %10 = load i32, i32* %6, align 4
  %11 = zext i32 %10 to i64
  store i64 %11, i64* %8, align 8
  store i64 0, i64* %9, align 8
  br label %12

12:                                               ; preds = %27, %3
  %13 = load i64, i64* %8, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %31

15:                                               ; preds = %12
  store i64 0, i64* %9, align 8
  %16 = load i32, i32* %4, align 4
  %17 = load i8*, i8** %5, align 8
  %18 = load i32, i32* %6, align 4
  %19 = zext i32 %18 to i64
  %20 = load i64, i64* %8, align 8
  %21 = sub i64 %19, %20
  %22 = getelementptr inbounds i8, i8* %17, i64 %21
  %23 = load i64, i64* %8, align 8
  %24 = call i32 @_Z11cgc_receiveiPcmPm(i32 %16, i8* %22, i64 %23, i64* %9)
  store i32 %24, i32* %7, align 4
  %25 = icmp ne i32 1, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %15
  br label %32

27:                                               ; preds = %15
  %28 = load i64, i64* %9, align 8
  %29 = load i64, i64* %8, align 8
  %30 = sub i64 %29, %28
  store i64 %30, i64* %8, align 8
  br label %12

31:                                               ; preds = %12
  br label %32

32:                                               ; preds = %31, %26
  %33 = load i32, i32* %7, align 4
  ret i32 %33
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_Z13cgc_negotiatev() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 1, i32* %1, align 4
  store i32 0, i32* %2, align 4
  %3 = bitcast i32* %2 to i8*
  %4 = call i32 @_Z14cgc_recv_bytesiPcj(i32 6, i8* %3, i32 4)
  store i32 %4, i32* %1, align 4
  %5 = icmp ne i32 1, %4
  br i1 %5, label %6, label %7

6:                                                ; preds = %0
  br label %8

7:                                                ; preds = %0
  br label %8

8:                                                ; preds = %7, %6
  %9 = load i32, i32* %1, align 4
  ret i32 %9
}

; Function Attrs: noinline norecurse nounwind optnone uwtable
define dso_local i32 @main() #3 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca %struct.msg, align 1
  %4 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @_Z10path_startv()
  store i32 1, i32* %2, align 4
  %5 = call i32 @rand() #4
  store i32 %5, i32* %4, align 4
  %6 = call i32 @_Z13cgc_negotiatev()
  store i32 %6, i32* %2, align 4
  %7 = icmp ne i32 1, %6
  br i1 %7, label %8, label %9

8:                                                ; preds = %0
  store i32 9, i32* %2, align 4
  br label %27

9:                                                ; preds = %0
  %10 = load i32, i32* %4, align 4
  %11 = sext i32 %10 to i64
  %12 = inttoptr i64 %11 to i32 (i32, i32*, i8)*
  %13 = getelementptr inbounds %struct.msg, %struct.msg* %3, i32 0, i32 2
  store i32 (i32, i32*, i8)* %12, i32 (i32, i32*, i8)** %13, align 1
  %14 = load i32, i32* @cgc_auth_token, align 4
  %15 = getelementptr inbounds %struct.msg, %struct.msg* %3, i32 0, i32 1
  store i32 %14, i32* %15, align 1
  %16 = call i32 @rand() #4
  %17 = trunc i32 %16 to i8
  %18 = getelementptr inbounds %struct.msg, %struct.msg* %3, i32 0, i32 4
  store i8 %17, i8* %18, align 1
  %19 = getelementptr inbounds %struct.msg, %struct.msg* %3, i32 0, i32 1
  %20 = load i32, i32* %19, align 1
  %21 = getelementptr inbounds %struct.msg, %struct.msg* %3, i32 0, i32 2
  %22 = load i32 (i32, i32*, i8)*, i32 (i32, i32*, i8)** %21, align 1
  %23 = bitcast i32 (i32, i32*, i8)* %22 to i32*
  %24 = getelementptr inbounds %struct.msg, %struct.msg* %3, i32 0, i32 4
  %25 = load i8, i8* %24, align 1
  %26 = call i32 @_Z10cgc_op_modjPih(i32 %20, i32* %23, i8 zeroext %25)
  br label %27

27:                                               ; preds = %9, %8
  %28 = load i32, i32* %2, align 4
  ret i32 %28
}

; Function Attrs: nounwind
declare i32 @rand() #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { cold noreturn nounwind }
attributes #3 = { noinline norecurse nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }

!llvm.ident = !{!0}
!llvm.module.flags = !{!1}

!0 = !{!"clang version 6.0.0-1ubuntu2 (tags/RELEASE_600/final)"}
!1 = !{i32 1, !"wchar_size", i32 4}
