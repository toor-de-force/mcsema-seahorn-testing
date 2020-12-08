; ModuleID = 'generated/2/binary/outlaw_v4.o.0.5.precodegen.bc'
source_filename = "ld-temp.o"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@global_time = internal global i64 0, align 8
@operations = internal unnamed_addr global [256 x i32 (i32, i32*, i8)*] [i32 (i32, i32*, i8)* @_Z10cgc_op_addjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_subjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_muljPih, i32 (i32, i32*, i8)* @_Z10cgc_op_divjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_addjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_subjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_muljPih, i32 (i32, i32*, i8)* @_Z10cgc_op_divjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_addjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_subjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_muljPih, i32 (i32, i32*, i8)* @_Z10cgc_op_divjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_addjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_subjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_muljPih, i32 (i32, i32*, i8)* @_Z10cgc_op_divjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_addjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_subjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_muljPih, i32 (i32, i32*, i8)* @_Z10cgc_op_divjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_addjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_subjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_muljPih, i32 (i32, i32*, i8)* @_Z10cgc_op_divjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_addjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_subjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_muljPih, i32 (i32, i32*, i8)* @_Z10cgc_op_divjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_addjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_subjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_muljPih, i32 (i32, i32*, i8)* @_Z10cgc_op_divjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_addjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_subjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_muljPih, i32 (i32, i32*, i8)* @_Z10cgc_op_divjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_addjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_subjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_muljPih, i32 (i32, i32*, i8)* @_Z10cgc_op_divjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_addjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_subjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_muljPih, i32 (i32, i32*, i8)* @_Z10cgc_op_divjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_addjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_subjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_muljPih, i32 (i32, i32*, i8)* @_Z10cgc_op_divjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_addjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_subjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_muljPih, i32 (i32, i32*, i8)* @_Z10cgc_op_divjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_addjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_subjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_muljPih, i32 (i32, i32*, i8)* @_Z10cgc_op_divjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_addjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_subjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_muljPih, i32 (i32, i32*, i8)* @_Z10cgc_op_divjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_addjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_modjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_muljPih, i32 (i32, i32*, i8)* @_Z10cgc_op_divjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_addjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_subjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_muljPih, i32 (i32, i32*, i8)* @_Z10cgc_op_divjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_addjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_subjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_muljPih, i32 (i32, i32*, i8)* @_Z10cgc_op_divjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_addjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_subjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_muljPih, i32 (i32, i32*, i8)* @_Z10cgc_op_divjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_addjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_subjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_muljPih, i32 (i32, i32*, i8)* @_Z10cgc_op_divjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_addjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_subjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_muljPih, i32 (i32, i32*, i8)* @_Z10cgc_op_divjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_addjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_subjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_muljPih, i32 (i32, i32*, i8)* @_Z10cgc_op_divjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_addjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_subjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_muljPih, i32 (i32, i32*, i8)* @_Z10cgc_op_divjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_addjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_subjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_muljPih, i32 (i32, i32*, i8)* @_Z10cgc_op_divjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_addjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_subjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_muljPih, i32 (i32, i32*, i8)* @_Z10cgc_op_divjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_addjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_subjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_muljPih, i32 (i32, i32*, i8)* @_Z10cgc_op_divjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_addjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_subjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_muljPih, i32 (i32, i32*, i8)* @_Z10cgc_op_divjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_addjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_subjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_muljPih, i32 (i32, i32*, i8)* @_Z10cgc_op_divjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_addjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_subjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_muljPih, i32 (i32, i32*, i8)* @_Z10cgc_op_divjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_addjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_subjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_muljPih, i32 (i32, i32*, i8)* @_Z10cgc_op_divjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_addjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_subjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_muljPih, i32 (i32, i32*, i8)* @_Z10cgc_op_divjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_addjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_subjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_muljPih, i32 (i32, i32*, i8)* @_Z10cgc_op_divjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_addjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_subjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_muljPih, i32 (i32, i32*, i8)* @_Z10cgc_op_divjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_addjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_subjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_muljPih, i32 (i32, i32*, i8)* @_Z10cgc_op_divjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_addjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_subjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_muljPih, i32 (i32, i32*, i8)* @_Z10cgc_op_divjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_addjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_subjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_muljPih, i32 (i32, i32*, i8)* @_Z10cgc_op_divjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_addjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_subjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_muljPih, i32 (i32, i32*, i8)* @_Z10cgc_op_divjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_addjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_subjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_muljPih, i32 (i32, i32*, i8)* @_Z10cgc_op_divjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_addjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_subjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_muljPih, i32 (i32, i32*, i8)* @_Z10cgc_op_divjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_addjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_subjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_muljPih, i32 (i32, i32*, i8)* @_Z10cgc_op_divjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_addjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_subjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_muljPih, i32 (i32, i32*, i8)* @_Z10cgc_op_divjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_addjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_subjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_muljPih, i32 (i32, i32*, i8)* @_Z10cgc_op_divjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_addjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_subjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_muljPih, i32 (i32, i32*, i8)* @_Z10cgc_op_divjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_addjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_subjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_muljPih, i32 (i32, i32*, i8)* @_Z10cgc_op_divjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_addjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_subjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_muljPih, i32 (i32, i32*, i8)* @_Z10cgc_op_divjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_addjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_subjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_muljPih, i32 (i32, i32*, i8)* @_Z10cgc_op_divjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_addjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_subjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_muljPih, i32 (i32, i32*, i8)* @_Z10cgc_op_divjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_addjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_subjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_muljPih, i32 (i32, i32*, i8)* @_Z10cgc_op_divjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_addjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_subjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_muljPih, i32 (i32, i32*, i8)* @_Z10cgc_op_divjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_addjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_subjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_muljPih, i32 (i32, i32*, i8)* @_Z10cgc_op_divjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_addjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_subjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_muljPih, i32 (i32, i32*, i8)* @_Z10cgc_op_divjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_addjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_subjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_muljPih, i32 (i32, i32*, i8)* @_Z10cgc_op_divjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_addjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_subjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_muljPih, i32 (i32, i32*, i8)* @_Z10cgc_op_divjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_addjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_subjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_muljPih, i32 (i32, i32*, i8)* @_Z10cgc_op_divjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_addjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_subjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_muljPih, i32 (i32, i32*, i8)* @_Z10cgc_op_divjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_addjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_subjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_muljPih, i32 (i32, i32*, i8)* @_Z10cgc_op_divjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_addjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_subjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_muljPih, i32 (i32, i32*, i8)* @_Z10cgc_op_divjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_addjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_subjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_muljPih, i32 (i32, i32*, i8)* @_Z10cgc_op_divjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_addjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_subjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_muljPih, i32 (i32, i32*, i8)* @_Z10cgc_op_divjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_addjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_subjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_muljPih, i32 (i32, i32*, i8)* @_Z10cgc_op_divjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_addjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_subjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_muljPih, i32 (i32, i32*, i8)* @_Z10cgc_op_divjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_addjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_subjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_muljPih, i32 (i32, i32*, i8)* @_Z10cgc_op_divjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_addjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_subjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_muljPih, i32 (i32, i32*, i8)* @_Z10cgc_op_divjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_addjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_subjPih, i32 (i32, i32*, i8)* @_Z10cgc_op_muljPih, i32 (i32, i32*, i8)* @_Z10cgc_op_divjPih], align 16

; Function Attrs: noinline norecurse nounwind uwtable
define internal fastcc void @_Z10path_startv() unnamed_addr #0 {
  %1 = tail call i64 @time(i64* nonnull @global_time) #6
  ret void
}

; Function Attrs: nounwind
declare i64 @time(i64*) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @_Z9path_goalv() unnamed_addr #2 {
  %1 = tail call i64 @time(i64* nonnull @global_time) #6
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @_Z12path_nongoalv() unnamed_addr #2 {
  %1 = tail call i64 @time(i64* nonnull @global_time) #6
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
  %5 = icmp eq i32 %0, 0
  br i1 %5, label %6, label %26

6:                                                ; preds = %3
  %7 = load i32 (i32, i32*, i8)*, i32 (i32, i32*, i8)** getelementptr inbounds ([256 x i32 (i32, i32*, i8)*], [256 x i32 (i32, i32*, i8)*]* @operations, i64 0, i64 0), align 16, !tbaa !2
  %8 = icmp eq i32 (i32, i32*, i8)* %7, %4
  %9 = load i32 (i32, i32*, i8)*, i32 (i32, i32*, i8)** getelementptr inbounds ([256 x i32 (i32, i32*, i8)*], [256 x i32 (i32, i32*, i8)*]* @operations, i64 0, i64 1), align 8
  %10 = icmp eq i32 (i32, i32*, i8)* %9, %4
  %11 = or i1 %8, %10
  %12 = load i32 (i32, i32*, i8)*, i32 (i32, i32*, i8)** getelementptr inbounds ([256 x i32 (i32, i32*, i8)*], [256 x i32 (i32, i32*, i8)*]* @operations, i64 0, i64 2), align 16
  %13 = icmp eq i32 (i32, i32*, i8)* %12, %4
  %14 = or i1 %11, %13
  %15 = load i32 (i32, i32*, i8)*, i32 (i32, i32*, i8)** getelementptr inbounds ([256 x i32 (i32, i32*, i8)*], [256 x i32 (i32, i32*, i8)*]* @operations, i64 0, i64 3), align 8
  %16 = icmp eq i32 (i32, i32*, i8)* %15, %4
  %17 = or i1 %14, %16
  br i1 %17, label %18, label %22

18:                                               ; preds = %6
  %19 = zext i8 %2 to i64
  %20 = getelementptr inbounds [256 x i32 (i32, i32*, i8)*], [256 x i32 (i32, i32*, i8)*]* @operations, i64 0, i64 %19
  %21 = bitcast i32 (i32, i32*, i8)** %20 to i32**
  store i32* %1, i32** %21, align 8, !tbaa !2
  br label %26

22:                                               ; preds = %6
  tail call fastcc void @_Z9path_goalv()
  %23 = load i32 (i32, i32*, i8)*, i32 (i32, i32*, i8)** getelementptr inbounds ([256 x i32 (i32, i32*, i8)*], [256 x i32 (i32, i32*, i8)*]* @operations, i64 0, i64 0), align 16, !tbaa !2
  %24 = icmp eq i32 (i32, i32*, i8)* %23, %4
  br i1 %24, label %25, label %26

25:                                               ; preds = %22
  tail call fastcc void @_Z12path_nongoalv()
  br label %26

26:                                               ; preds = %25, %22, %18, %3
  ret i32 1
}

; Function Attrs: norecurse nounwind uwtable
define dso_local i32 @main() local_unnamed_addr #5 {
  tail call fastcc void @_Z10path_startv()
  %1 = tail call i32 @rand() #6
  %2 = sext i32 %1 to i64
  %3 = inttoptr i64 %2 to i32 (i32, i32*, i8)*
  %4 = tail call i32 @rand() #6
  %5 = load i32 (i32, i32*, i8)*, i32 (i32, i32*, i8)** getelementptr inbounds ([256 x i32 (i32, i32*, i8)*], [256 x i32 (i32, i32*, i8)*]* @operations, i64 0, i64 0), align 16, !tbaa !2
  %6 = icmp eq i32 (i32, i32*, i8)* %5, %3
  %7 = load i32 (i32, i32*, i8)*, i32 (i32, i32*, i8)** getelementptr inbounds ([256 x i32 (i32, i32*, i8)*], [256 x i32 (i32, i32*, i8)*]* @operations, i64 0, i64 1), align 8
  %8 = icmp eq i32 (i32, i32*, i8)* %7, %3
  %9 = or i1 %6, %8
  %10 = load i32 (i32, i32*, i8)*, i32 (i32, i32*, i8)** getelementptr inbounds ([256 x i32 (i32, i32*, i8)*], [256 x i32 (i32, i32*, i8)*]* @operations, i64 0, i64 2), align 16
  %11 = icmp eq i32 (i32, i32*, i8)* %10, %3
  %12 = or i1 %9, %11
  %13 = load i32 (i32, i32*, i8)*, i32 (i32, i32*, i8)** getelementptr inbounds ([256 x i32 (i32, i32*, i8)*], [256 x i32 (i32, i32*, i8)*]* @operations, i64 0, i64 3), align 8
  %14 = icmp eq i32 (i32, i32*, i8)* %13, %3
  %15 = or i1 %12, %14
  br i1 %15, label %16, label %20

16:                                               ; preds = %0
  %17 = and i32 %4, 255
  %18 = zext i32 %17 to i64
  %19 = getelementptr inbounds [256 x i32 (i32, i32*, i8)*], [256 x i32 (i32, i32*, i8)*]* @operations, i64 0, i64 %18
  store i32 (i32, i32*, i8)* %3, i32 (i32, i32*, i8)** %19, align 8, !tbaa !2
  br label %24

20:                                               ; preds = %0
  tail call fastcc void @_Z9path_goalv() #6
  %21 = load i32 (i32, i32*, i8)*, i32 (i32, i32*, i8)** getelementptr inbounds ([256 x i32 (i32, i32*, i8)*], [256 x i32 (i32, i32*, i8)*]* @operations, i64 0, i64 0), align 16, !tbaa !2
  %22 = icmp eq i32 (i32, i32*, i8)* %21, %3
  br i1 %22, label %23, label %24

23:                                               ; preds = %20
  tail call fastcc void @_Z12path_nongoalv() #6
  br label %24

24:                                               ; preds = %23, %20, %16
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
attributes #6 = { nounwind }

!llvm.ident = !{!0}
!llvm.module.flags = !{!1}

!0 = !{!"clang version 6.0.0-1ubuntu2 (tags/RELEASE_600/final)"}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{!3, !3, i64 0}
!3 = !{!"any pointer", !4, i64 0}
!4 = !{!"omnipotent char", !5, i64 0}
!5 = !{!"Simple C++ TBAA"}
