; ModuleID = 'generated/0/binary/stress_wide.o.0.5.precodegen.bc'
source_filename = "ld-temp.o"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@global_time = internal global i64 0, align 8

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

; Function Attrs: noinline norecurse nounwind optnone uwtable
define dso_local i32 @main() #3 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  store volatile i32 0, i32* %2, align 4
  store volatile i32 0, i32* %3, align 4
  store volatile i32 0, i32* %4, align 4
  store volatile i32 0, i32* %5, align 4
  store volatile i32 0, i32* %6, align 4
  store volatile i32 0, i32* %7, align 4
  store volatile i32 0, i32* %8, align 4
  call void @_Z10path_startv()
  %10 = call i32 @rand() #4
  store i32 %10, i32* %9, align 4
  %11 = load i32, i32* %9, align 4
  %12 = and i32 %11, 1
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %24

14:                                               ; preds = %0
  %15 = load i32, i32* %9, align 4
  %16 = ashr i32 %15, 0
  %17 = and i32 %16, 1
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %14
  %20 = load i32, i32* %9, align 4
  store volatile i32 %20, i32* %2, align 4
  br label %23

21:                                               ; preds = %14
  %22 = load i32, i32* %9, align 4
  store volatile i32 %22, i32* %2, align 4
  br label %23

23:                                               ; preds = %21, %19
  br label %33

24:                                               ; preds = %0
  %25 = load i32, i32* %9, align 4
  %26 = ashr i32 %25, 0
  %27 = and i32 %26, 1
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %24
  store volatile i32 0, i32* %2, align 4
  br label %32

30:                                               ; preds = %24
  %31 = load i32, i32* %9, align 4
  store volatile i32 %31, i32* %2, align 4
  br label %32

32:                                               ; preds = %30, %29
  br label %33

33:                                               ; preds = %32, %23
  %34 = load i32, i32* %9, align 4
  %35 = and i32 %34, 1
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %47

37:                                               ; preds = %33
  %38 = load i32, i32* %9, align 4
  %39 = ashr i32 %38, 0
  %40 = and i32 %39, 1
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %37
  %43 = load i32, i32* %9, align 4
  store volatile i32 %43, i32* %3, align 4
  br label %46

44:                                               ; preds = %37
  %45 = load i32, i32* %9, align 4
  store volatile i32 %45, i32* %3, align 4
  br label %46

46:                                               ; preds = %44, %42
  br label %57

47:                                               ; preds = %33
  %48 = load i32, i32* %9, align 4
  %49 = ashr i32 %48, 0
  %50 = and i32 %49, 1
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %47
  %53 = load i32, i32* %9, align 4
  store volatile i32 %53, i32* %3, align 4
  br label %56

54:                                               ; preds = %47
  %55 = load i32, i32* %9, align 4
  store volatile i32 %55, i32* %3, align 4
  br label %56

56:                                               ; preds = %54, %52
  br label %57

57:                                               ; preds = %56, %46
  %58 = load i32, i32* %9, align 4
  %59 = and i32 %58, 1
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %71

61:                                               ; preds = %57
  %62 = load i32, i32* %9, align 4
  %63 = ashr i32 %62, 0
  %64 = and i32 %63, 1
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %61
  %67 = load i32, i32* %9, align 4
  store volatile i32 %67, i32* %4, align 4
  br label %70

68:                                               ; preds = %61
  %69 = load i32, i32* %9, align 4
  store volatile i32 %69, i32* %4, align 4
  br label %70

70:                                               ; preds = %68, %66
  br label %81

71:                                               ; preds = %57
  %72 = load i32, i32* %9, align 4
  %73 = ashr i32 %72, 0
  %74 = and i32 %73, 1
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %71
  %77 = load i32, i32* %9, align 4
  store volatile i32 %77, i32* %4, align 4
  br label %80

78:                                               ; preds = %71
  %79 = load i32, i32* %9, align 4
  store volatile i32 %79, i32* %4, align 4
  br label %80

80:                                               ; preds = %78, %76
  br label %81

81:                                               ; preds = %80, %70
  %82 = load i32, i32* %9, align 4
  %83 = and i32 %82, 1
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %85, label %95

85:                                               ; preds = %81
  %86 = load i32, i32* %9, align 4
  %87 = ashr i32 %86, 0
  %88 = and i32 %87, 1
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %92

90:                                               ; preds = %85
  %91 = load i32, i32* %9, align 4
  store volatile i32 %91, i32* %5, align 4
  br label %94

92:                                               ; preds = %85
  %93 = load i32, i32* %9, align 4
  store volatile i32 %93, i32* %5, align 4
  br label %94

94:                                               ; preds = %92, %90
  br label %105

95:                                               ; preds = %81
  %96 = load i32, i32* %9, align 4
  %97 = ashr i32 %96, 0
  %98 = and i32 %97, 1
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %102

100:                                              ; preds = %95
  %101 = load i32, i32* %9, align 4
  store volatile i32 %101, i32* %5, align 4
  br label %104

102:                                              ; preds = %95
  %103 = load i32, i32* %9, align 4
  store volatile i32 %103, i32* %5, align 4
  br label %104

104:                                              ; preds = %102, %100
  br label %105

105:                                              ; preds = %104, %94
  %106 = load i32, i32* %9, align 4
  %107 = and i32 %106, 1
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %109, label %119

109:                                              ; preds = %105
  %110 = load i32, i32* %9, align 4
  %111 = ashr i32 %110, 0
  %112 = and i32 %111, 1
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %116

114:                                              ; preds = %109
  %115 = load i32, i32* %9, align 4
  store volatile i32 %115, i32* %6, align 4
  br label %118

116:                                              ; preds = %109
  %117 = load i32, i32* %9, align 4
  store volatile i32 %117, i32* %6, align 4
  br label %118

118:                                              ; preds = %116, %114
  br label %129

119:                                              ; preds = %105
  %120 = load i32, i32* %9, align 4
  %121 = ashr i32 %120, 0
  %122 = and i32 %121, 1
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %126

124:                                              ; preds = %119
  %125 = load i32, i32* %9, align 4
  store volatile i32 %125, i32* %6, align 4
  br label %128

126:                                              ; preds = %119
  %127 = load i32, i32* %9, align 4
  store volatile i32 %127, i32* %6, align 4
  br label %128

128:                                              ; preds = %126, %124
  br label %129

129:                                              ; preds = %128, %118
  %130 = load i32, i32* %9, align 4
  %131 = and i32 %130, 1
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %133, label %143

133:                                              ; preds = %129
  %134 = load i32, i32* %9, align 4
  %135 = ashr i32 %134, 0
  %136 = and i32 %135, 1
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %140

138:                                              ; preds = %133
  %139 = load i32, i32* %9, align 4
  store volatile i32 %139, i32* %7, align 4
  br label %142

140:                                              ; preds = %133
  %141 = load i32, i32* %9, align 4
  store volatile i32 %141, i32* %7, align 4
  br label %142

142:                                              ; preds = %140, %138
  br label %153

143:                                              ; preds = %129
  %144 = load i32, i32* %9, align 4
  %145 = ashr i32 %144, 0
  %146 = and i32 %145, 1
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %150

148:                                              ; preds = %143
  %149 = load i32, i32* %9, align 4
  store volatile i32 %149, i32* %7, align 4
  br label %152

150:                                              ; preds = %143
  %151 = load i32, i32* %9, align 4
  store volatile i32 %151, i32* %7, align 4
  br label %152

152:                                              ; preds = %150, %148
  br label %153

153:                                              ; preds = %152, %142
  %154 = load i32, i32* %9, align 4
  %155 = and i32 %154, 1
  %156 = icmp eq i32 %155, 0
  br i1 %156, label %157, label %167

157:                                              ; preds = %153
  %158 = load i32, i32* %9, align 4
  %159 = ashr i32 %158, 0
  %160 = and i32 %159, 1
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %164

162:                                              ; preds = %157
  %163 = load i32, i32* %9, align 4
  store volatile i32 %163, i32* %8, align 4
  br label %166

164:                                              ; preds = %157
  %165 = load i32, i32* %9, align 4
  store volatile i32 %165, i32* %8, align 4
  br label %166

166:                                              ; preds = %164, %162
  br label %177

167:                                              ; preds = %153
  %168 = load i32, i32* %9, align 4
  %169 = ashr i32 %168, 0
  %170 = and i32 %169, 1
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %174

172:                                              ; preds = %167
  %173 = load i32, i32* %9, align 4
  store volatile i32 %173, i32* %8, align 4
  br label %176

174:                                              ; preds = %167
  %175 = load i32, i32* %9, align 4
  store volatile i32 %175, i32* %8, align 4
  br label %176

176:                                              ; preds = %174, %172
  br label %177

177:                                              ; preds = %176, %166
  %178 = load volatile i32, i32* %2, align 4
  %179 = icmp eq i32 %178, 42
  br i1 %179, label %180, label %199

180:                                              ; preds = %177
  %181 = load volatile i32, i32* %3, align 4
  %182 = icmp eq i32 %181, 42
  br i1 %182, label %183, label %199

183:                                              ; preds = %180
  %184 = load volatile i32, i32* %4, align 4
  %185 = icmp eq i32 %184, 42
  br i1 %185, label %186, label %199

186:                                              ; preds = %183
  %187 = load volatile i32, i32* %5, align 4
  %188 = icmp eq i32 %187, 42
  br i1 %188, label %189, label %199

189:                                              ; preds = %186
  %190 = load volatile i32, i32* %6, align 4
  %191 = icmp eq i32 %190, 42
  br i1 %191, label %192, label %199

192:                                              ; preds = %189
  %193 = load volatile i32, i32* %7, align 4
  %194 = icmp eq i32 %193, 42
  br i1 %194, label %195, label %199

195:                                              ; preds = %192
  %196 = load volatile i32, i32* %8, align 4
  %197 = icmp eq i32 %196, 42
  br i1 %197, label %198, label %199

198:                                              ; preds = %195
  call void @_Z9path_goalv()
  br label %199

199:                                              ; preds = %198, %195, %192, %189, %186, %183, %180, %177
  %200 = load volatile i32, i32* %2, align 4
  %201 = icmp eq i32 %200, 255
  br i1 %201, label %202, label %221

202:                                              ; preds = %199
  %203 = load volatile i32, i32* %3, align 4
  %204 = icmp eq i32 %203, 255
  br i1 %204, label %205, label %221

205:                                              ; preds = %202
  %206 = load volatile i32, i32* %4, align 4
  %207 = icmp eq i32 %206, 255
  br i1 %207, label %208, label %221

208:                                              ; preds = %205
  %209 = load volatile i32, i32* %5, align 4
  %210 = icmp eq i32 %209, 255
  br i1 %210, label %211, label %221

211:                                              ; preds = %208
  %212 = load volatile i32, i32* %6, align 4
  %213 = icmp eq i32 %212, 255
  br i1 %213, label %214, label %221

214:                                              ; preds = %211
  %215 = load volatile i32, i32* %7, align 4
  %216 = icmp eq i32 %215, 255
  br i1 %216, label %217, label %221

217:                                              ; preds = %214
  %218 = load volatile i32, i32* %8, align 4
  %219 = icmp eq i32 %218, 255
  br i1 %219, label %220, label %221

220:                                              ; preds = %217
  call void @_Z12path_nongoalv()
  br label %221

221:                                              ; preds = %220, %217, %214, %211, %208, %205, %202, %199
  %222 = load i32, i32* %1, align 4
  ret i32 %222
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
