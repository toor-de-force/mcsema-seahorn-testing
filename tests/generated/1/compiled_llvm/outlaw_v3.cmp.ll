; ModuleID = 'generated/1/binary/outlaw_v3.o.0.5.precodegen.bc'
source_filename = "ld-temp.o"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@global_time = internal global i64 0, align 8
@cgc_auth_token = internal global i32 0, align 4
@operations = internal global [256 x i32 (i32, i32*, i8)*] [i32 (i32, i32*, i8)* @_Z10cgc_op_addjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_subjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_muljPih, i32 (i32, i32*, i8)* @_Z10cgc_op_divjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_addjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_subjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_muljPih, i32 (i32, i32*, i8)* @_Z10cgc_op_divjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_addjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_subjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_muljPih, i32 (i32, i32*, i8)* @_Z10cgc_op_divjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_addjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_subjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_muljPih, i32 (i32, i32*, i8)* @_Z10cgc_op_divjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_addjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_subjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_muljPih, i32 (i32, i32*, i8)* @_Z10cgc_op_divjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_addjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_subjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_muljPih, i32 (i32, i32*, i8)* @_Z10cgc_op_divjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_addjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_subjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_muljPih, i32 (i32, i32*, i8)* @_Z10cgc_op_divjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_addjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_subjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_muljPih, i32 (i32, i32*, i8)* @_Z10cgc_op_divjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_addjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_subjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_muljPih, i32 (i32, i32*, i8)* @_Z10cgc_op_divjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_addjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_subjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_muljPih, i32 (i32, i32*, i8)* @_Z10cgc_op_divjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_addjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_subjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_muljPih, i32 (i32, i32*, i8)* @_Z10cgc_op_divjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_addjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_subjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_muljPih, i32 (i32, i32*, i8)* @_Z10cgc_op_divjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_addjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_subjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_muljPih, i32 (i32, i32*, i8)* @_Z10cgc_op_divjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_addjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_subjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_muljPih, i32 (i32, i32*, i8)* @_Z10cgc_op_divjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_addjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_subjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_muljPih, i32 (i32, i32*, i8)* @_Z10cgc_op_divjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_addjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_modjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_muljPih, i32 (i32, i32*, i8)* @_Z10cgc_op_divjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_addjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_subjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_muljPih, i32 (i32, i32*, i8)* @_Z10cgc_op_divjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_addjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_subjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_muljPih, i32 (i32, i32*, i8)* @_Z10cgc_op_divjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_addjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_subjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_muljPih, i32 (i32, i32*, i8)* @_Z10cgc_op_divjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_addjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_subjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_muljPih, i32 (i32, i32*, i8)* @_Z10cgc_op_divjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_addjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_subjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_muljPih, i32 (i32, i32*, i8)* @_Z10cgc_op_divjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_addjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_subjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_muljPih, i32 (i32, i32*, i8)* @_Z10cgc_op_divjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_addjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_subjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_muljPih, i32 (i32, i32*, i8)* @_Z10cgc_op_divjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_addjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_subjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_muljPih, i32 (i32, i32*, i8)* @_Z10cgc_op_divjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_addjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_subjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_muljPih, i32 (i32, i32*, i8)* @_Z10cgc_op_divjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_addjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_subjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_muljPih, i32 (i32, i32*, i8)* @_Z10cgc_op_divjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_addjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_subjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_muljPih, i32 (i32, i32*, i8)* @_Z10cgc_op_divjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_addjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_subjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_muljPih, i32 (i32, i32*, i8)* @_Z10cgc_op_divjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_addjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_subjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_muljPih, i32 (i32, i32*, i8)* @_Z10cgc_op_divjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_addjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_subjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_muljPih, i32 (i32, i32*, i8)* @_Z10cgc_op_divjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_addjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_subjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_muljPih, i32 (i32, i32*, i8)* @_Z10cgc_op_divjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_addjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_subjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_muljPih, i32 (i32, i32*, i8)* @_Z10cgc_op_divjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_addjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_subjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_muljPih, i32 (i32, i32*, i8)* @_Z10cgc_op_divjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_addjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_subjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_muljPih, i32 (i32, i32*, i8)* @_Z10cgc_op_divjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_addjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_subjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_muljPih, i32 (i32, i32*, i8)* @_Z10cgc_op_divjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_addjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_subjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_muljPih, i32 (i32, i32*, i8)* @_Z10cgc_op_divjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_addjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_subjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_muljPih, i32 (i32, i32*, i8)* @_Z10cgc_op_divjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_addjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_subjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_muljPih, i32 (i32, i32*, i8)* @_Z10cgc_op_divjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_addjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_subjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_muljPih, i32 (i32, i32*, i8)* @_Z10cgc_op_divjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_addjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_subjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_muljPih, i32 (i32, i32*, i8)* @_Z10cgc_op_divjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_addjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_subjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_muljPih, i32 (i32, i32*, i8)* @_Z10cgc_op_divjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_addjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_subjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_muljPih, i32 (i32, i32*, i8)* @_Z10cgc_op_divjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_addjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_subjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_muljPih, i32 (i32, i32*, i8)* @_Z10cgc_op_divjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_addjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_subjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_muljPih, i32 (i32, i32*, i8)* @_Z10cgc_op_divjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_addjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_subjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_muljPih, i32 (i32, i32*, i8)* @_Z10cgc_op_divjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_addjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_subjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_muljPih, i32 (i32, i32*, i8)* @_Z10cgc_op_divjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_addjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_subjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_muljPih, i32 (i32, i32*, i8)* @_Z10cgc_op_divjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_addjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_subjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_muljPih, i32 (i32, i32*, i8)* @_Z10cgc_op_divjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_addjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_subjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_muljPih, i32 (i32, i32*, i8)* @_Z10cgc_op_divjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_addjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_subjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_muljPih, i32 (i32, i32*, i8)* @_Z10cgc_op_divjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_addjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_subjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_muljPih, i32 (i32, i32*, i8)* @_Z10cgc_op_divjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_addjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_subjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_muljPih, i32 (i32, i32*, i8)* @_Z10cgc_op_divjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_addjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_subjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_muljPih, i32 (i32, i32*, i8)* @_Z10cgc_op_divjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_addjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_subjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_muljPih, i32 (i32, i32*, i8)* @_Z10cgc_op_divjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_addjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_subjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_muljPih, i32 (i32, i32*, i8)* @_Z10cgc_op_divjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_addjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_subjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_muljPih, i32 (i32, i32*, i8)* @_Z10cgc_op_divjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_addjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_subjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_muljPih, i32 (i32, i32*, i8)* @_Z10cgc_op_divjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_addjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_subjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_muljPih, i32 (i32, i32*, i8)* @_Z10cgc_op_divjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_addjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_subjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_muljPih, i32 (i32, i32*, i8)* @_Z10cgc_op_divjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_addjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_subjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_muljPih, i32 (i32, i32*, i8)* @_Z10cgc_op_divjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_addjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_subjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_muljPih, i32 (i32, i32*, i8)* @_Z10cgc_op_divjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_addjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_subjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_muljPih, i32 (i32, i32*, i8)* @_Z10cgc_op_divjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_addjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_subjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_muljPih, i32 (i32, i32*, i8)* @_Z10cgc_op_divjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_addjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_subjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_muljPih, i32 (i32, i32*, i8)* @_Z10cgc_op_divjPih], align 16

; Function Attrs: noinline norecurse nounwind uwtable
define internal void @_Z10path_startv() #0 {
  %1 = tail call i64 @time(i64* nonnull @global_time) #7
  ret void
}

; Function Attrs: nounwind
declare i64 @time(i64*) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal void @_Z9path_goalv() #2 {
  %1 = tail call i64 @time(i64* nonnull @global_time) #7
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @_Z12path_nongoalv() #2 {
  %1 = tail call i64 @time(i64* nonnull @global_time) #7
  ret void
}

; Function Attrs: norecurse nounwind readnone uwtable
define internal i32 @_Z10cgc_op_addjPih(i32 %0, i32* nocapture readnone %1, i8 zeroext %2) #3 {
  ret i32 1
}

; Function Attrs: norecurse nounwind readnone uwtable
define internal i32 @_Z10cgc_op_subjPih(i32 %0, i32* nocapture readnone %1, i8 zeroext %2) #3 {
  ret i32 1
}

; Function Attrs: norecurse nounwind readnone uwtable
define internal i32 @_Z10cgc_op_muljPih(i32 %0, i32* nocapture readnone %1, i8 zeroext %2) #3 {
  ret i32 1
}

; Function Attrs: norecurse nounwind readnone uwtable
define internal i32 @_Z10cgc_op_divjPih(i32 %0, i32* nocapture readnone %1, i8 zeroext %2) #3 {
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal i32 @_Z10cgc_op_modjPih(i32 %0, i32* %1, i8 zeroext %2) #4 {
  %4 = bitcast i32* %1 to i32 (i32, i32*, i8)*
  %5 = load i32, i32* @cgc_auth_token, align 4, !tbaa !2
  %6 = icmp eq i32 %5, %0
  br i1 %6, label %7, label %27

7:                                                ; preds = %3
  %8 = load i32 (i32, i32*, i8)*, i32 (i32, i32*, i8)** getelementptr inbounds ([256 x i32 (i32, i32*, i8)*], [256 x i32 (i32, i32*, i8)*]* @operations, i64 0, i64 0), align 16, !tbaa !6
  %9 = icmp eq i32 (i32, i32*, i8)* %8, %4
  %10 = load i32 (i32, i32*, i8)*, i32 (i32, i32*, i8)** getelementptr inbounds ([256 x i32 (i32, i32*, i8)*], [256 x i32 (i32, i32*, i8)*]* @operations, i64 0, i64 1), align 8
  %11 = icmp eq i32 (i32, i32*, i8)* %10, %4
  %12 = or i1 %9, %11
  %13 = load i32 (i32, i32*, i8)*, i32 (i32, i32*, i8)** getelementptr inbounds ([256 x i32 (i32, i32*, i8)*], [256 x i32 (i32, i32*, i8)*]* @operations, i64 0, i64 2), align 16
  %14 = icmp eq i32 (i32, i32*, i8)* %13, %4
  %15 = or i1 %12, %14
  %16 = load i32 (i32, i32*, i8)*, i32 (i32, i32*, i8)** getelementptr inbounds ([256 x i32 (i32, i32*, i8)*], [256 x i32 (i32, i32*, i8)*]* @operations, i64 0, i64 3), align 8
  %17 = icmp eq i32 (i32, i32*, i8)* %16, %4
  %18 = or i1 %15, %17
  br i1 %18, label %19, label %23

19:                                               ; preds = %7
  %20 = zext i8 %2 to i64
  %21 = getelementptr inbounds [256 x i32 (i32, i32*, i8)*], [256 x i32 (i32, i32*, i8)*]* @operations, i64 0, i64 %20
  %22 = bitcast i32 (i32, i32*, i8)** %21 to i32**
  store i32* %1, i32** %22, align 8, !tbaa !6
  br label %27

23:                                               ; preds = %7
  tail call void @_Z9path_goalv()
  %24 = load i32 (i32, i32*, i8)*, i32 (i32, i32*, i8)** getelementptr inbounds ([256 x i32 (i32, i32*, i8)*], [256 x i32 (i32, i32*, i8)*]* @operations, i64 0, i64 0), align 16, !tbaa !6
  %25 = icmp eq i32 (i32, i32*, i8)* %24, %4
  br i1 %25, label %26, label %27

26:                                               ; preds = %23
  tail call void @_Z12path_nongoalv()
  br label %27

27:                                               ; preds = %26, %23, %19, %3
  ret i32 1
}

; Function Attrs: norecurse nounwind uwtable
define internal i32 @_Z11cgc_receiveiPcmPm(i32 %0, i8* nocapture readnone %1, i64 %2, i64* nocapture %3) #5 {
  store i64 %2, i64* %3, align 8, !tbaa !8
  ret i32 1
}

; Function Attrs: norecurse nounwind uwtable
define internal i32 @_Z14cgc_recv_bytesiPcj(i32 %0, i8* nocapture readnone %1, i32 %2) #5 {
  %4 = alloca i64, align 8
  %5 = bitcast i64* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %5) #7
  store i64 0, i64* %4, align 8, !tbaa !8
  %6 = icmp eq i32 %2, 0
  br i1 %6, label %14, label %7

7:                                                ; preds = %3
  %8 = zext i32 %2 to i64
  br label %9

9:                                                ; preds = %9, %7
  %10 = phi i64 [ %8, %7 ], [ %12, %9 ]
  store i64 0, i64* %4, align 8, !tbaa !8
  %11 = call i32 @_Z11cgc_receiveiPcmPm(i32 undef, i8* undef, i64 %10, i64* nonnull %4)
  store i64 1, i64* %4, align 8, !tbaa !8
  %12 = add nsw i64 %10, -1
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %14, label %9

14:                                               ; preds = %9, %3
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %5) #7
  ret i32 1
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #6

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #6

; Function Attrs: norecurse nounwind uwtable
define internal i32 @_Z13cgc_negotiatev() #5 {
  %1 = alloca i32, align 4
  %2 = bitcast i32* %1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2) #7
  %3 = call i32 @_Z14cgc_recv_bytesiPcj(i32 undef, i8* nonnull %2, i32 4)
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2) #7
  ret i32 1
}

; Function Attrs: norecurse nounwind uwtable
define dso_local i32 @main() #5 {
  tail call void @_Z10path_startv()
  %1 = tail call i32 @rand() #7
  %2 = tail call i32 @_Z13cgc_negotiatev()
  %3 = sext i32 %1 to i64
  %4 = inttoptr i64 %3 to i32 (i32, i32*, i8)*
  %5 = load i32, i32* @cgc_auth_token, align 4, !tbaa !2
  %6 = tail call i32 @rand() #7
  %7 = trunc i32 %6 to i8
  %8 = bitcast i32 (i32, i32*, i8)* %4 to i32*
  %9 = tail call i32 @_Z10cgc_op_modjPih(i32 %5, i32* %8, i8 zeroext %7)
  ret i32 1
}

; Function Attrs: nounwind
declare i32 @rand() local_unnamed_addr #1

attributes #0 = { noinline norecurse nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { norecurse nounwind readnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { norecurse nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { argmemonly nounwind willreturn }
attributes #7 = { nounwind }

!llvm.ident = !{!0}
!llvm.module.flags = !{!1}

!0 = !{!"clang version 6.0.0-1ubuntu2 (tags/RELEASE_600/final)"}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{!3, !3, i64 0}
!3 = !{!"int", !4, i64 0}
!4 = !{!"omnipotent char", !5, i64 0}
!5 = !{!"Simple C++ TBAA"}
!6 = !{!7, !7, i64 0}
!7 = !{!"any pointer", !4, i64 0}
!8 = !{!9, !9, i64 0}
!9 = !{!"long", !4, i64 0}
