.class public Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;
.super Ljava/lang/Object;
.source "SVG.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "Style"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$FillRule;,
        Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$LineCap;,
        Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$LineJoin;,
        Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$FontStyle;,
        Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$TextDecoration;,
        Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$TextDirection;,
        Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$TextAnchor;,
        Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$VectorEffect;,
        Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$RenderQuality;
    }
.end annotation


# static fields
.field static final FONT_WEIGHT_BOLD:I = 0x2bc

.field static final FONT_WEIGHT_BOLDER:I = 0x1

.field static final FONT_WEIGHT_LIGHTER:I = -0x1

.field static final FONT_WEIGHT_NORMAL:I = 0x190


# instance fields
.field clip:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$CSSClipRect;

.field clipPath:Ljava/lang/String;

.field clipRule:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$FillRule;

.field color:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Colour;

.field direction:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$TextDirection;

.field display:Ljava/lang/Boolean;

.field fill:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgPaint;

.field fillOpacity:Ljava/lang/Float;

.field fillRule:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$FillRule;

.field fontFamily:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field fontSize:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;

.field fontStyle:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$FontStyle;

.field fontWeight:Ljava/lang/Integer;

.field imageRendering:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$RenderQuality;

.field markerEnd:Ljava/lang/String;

.field markerMid:Ljava/lang/String;

.field markerStart:Ljava/lang/String;

.field mask:Ljava/lang/String;

.field opacity:Ljava/lang/Float;

.field overflow:Ljava/lang/Boolean;

.field solidColor:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgPaint;

.field solidOpacity:Ljava/lang/Float;

.field specifiedFlags:J

.field stopColor:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgPaint;

.field stopOpacity:Ljava/lang/Float;

.field stroke:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgPaint;

.field strokeDashArray:[Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;

.field strokeDashOffset:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;

.field strokeLineCap:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$LineCap;

.field strokeLineJoin:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$LineJoin;

.field strokeMiterLimit:Ljava/lang/Float;

.field strokeOpacity:Ljava/lang/Float;

.field strokeWidth:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;

.field textAnchor:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$TextAnchor;

.field textDecoration:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$TextDecoration;

.field vectorEffect:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$VectorEffect;

.field viewportFill:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgPaint;

.field viewportFillOpacity:Ljava/lang/Float;

.field visibility:Ljava/lang/Boolean;


# direct methods
.method protected constructor <init>()V
    .locals 2

    .line 1061
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 1064
    iput-wide v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;->specifiedFlags:J

    return-void
.end method

.method static getDefaultStyle()Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;
    .locals 6

    .line 1191
    new-instance v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;

    invoke-direct {v0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;-><init>()V

    const-wide/16 v1, -0x1

    .line 1192
    iput-wide v1, v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;->specifiedFlags:J

    .line 1194
    sget-object v1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Colour;->BLACK:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Colour;

    iput-object v1, v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;->fill:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgPaint;

    .line 1195
    sget-object v1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$FillRule;->NonZero:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$FillRule;

    iput-object v1, v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;->fillRule:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$FillRule;

    const/high16 v1, 0x3f800000    # 1.0f

    .line 1196
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iput-object v2, v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;->fillOpacity:Ljava/lang/Float;

    const/4 v3, 0x0

    .line 1197
    iput-object v3, v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;->stroke:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgPaint;

    .line 1198
    iput-object v2, v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;->strokeOpacity:Ljava/lang/Float;

    .line 1199
    new-instance v4, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;

    invoke-direct {v4, v1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;-><init>(F)V

    iput-object v4, v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;->strokeWidth:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;

    .line 1200
    sget-object v1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$LineCap;->Butt:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$LineCap;

    iput-object v1, v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;->strokeLineCap:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$LineCap;

    .line 1201
    sget-object v1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$LineJoin;->Miter:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$LineJoin;

    iput-object v1, v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;->strokeLineJoin:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$LineJoin;

    const/high16 v1, 0x40800000    # 4.0f

    .line 1202
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iput-object v1, v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;->strokeMiterLimit:Ljava/lang/Float;

    .line 1203
    iput-object v3, v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;->strokeDashArray:[Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;

    .line 1204
    new-instance v1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;

    const/4 v4, 0x0

    invoke-direct {v1, v4}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;-><init>(F)V

    iput-object v1, v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;->strokeDashOffset:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;

    .line 1205
    iput-object v2, v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;->opacity:Ljava/lang/Float;

    .line 1206
    sget-object v1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Colour;->BLACK:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Colour;

    iput-object v1, v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;->color:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Colour;

    .line 1207
    iput-object v3, v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;->fontFamily:Ljava/util/List;

    .line 1208
    new-instance v1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;

    const/high16 v4, 0x41400000    # 12.0f

    sget-object v5, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Unit;->pt:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Unit;

    invoke-direct {v1, v4, v5}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;-><init>(FLcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Unit;)V

    iput-object v1, v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;->fontSize:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;

    const/16 v1, 0x190

    .line 1209
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;->fontWeight:Ljava/lang/Integer;

    .line 1210
    sget-object v1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$FontStyle;->Normal:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$FontStyle;

    iput-object v1, v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;->fontStyle:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$FontStyle;

    .line 1211
    sget-object v1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$TextDecoration;->None:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$TextDecoration;

    iput-object v1, v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;->textDecoration:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$TextDecoration;

    .line 1212
    sget-object v1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$TextDirection;->LTR:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$TextDirection;

    iput-object v1, v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;->direction:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$TextDirection;

    .line 1213
    sget-object v1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$TextAnchor;->Start:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$TextAnchor;

    iput-object v1, v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;->textAnchor:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$TextAnchor;

    const/4 v1, 0x1

    .line 1214
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;->overflow:Ljava/lang/Boolean;

    .line 1215
    iput-object v3, v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;->clip:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$CSSClipRect;

    .line 1216
    iput-object v3, v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;->markerStart:Ljava/lang/String;

    .line 1217
    iput-object v3, v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;->markerMid:Ljava/lang/String;

    .line 1218
    iput-object v3, v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;->markerEnd:Ljava/lang/String;

    .line 1219
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v1, v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;->display:Ljava/lang/Boolean;

    .line 1220
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v1, v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;->visibility:Ljava/lang/Boolean;

    .line 1221
    sget-object v1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Colour;->BLACK:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Colour;

    iput-object v1, v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;->stopColor:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgPaint;

    .line 1222
    iput-object v2, v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;->stopOpacity:Ljava/lang/Float;

    .line 1223
    iput-object v3, v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;->clipPath:Ljava/lang/String;

    .line 1224
    sget-object v1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$FillRule;->NonZero:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$FillRule;

    iput-object v1, v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;->clipRule:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$FillRule;

    .line 1225
    iput-object v3, v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;->mask:Ljava/lang/String;

    .line 1226
    iput-object v3, v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;->solidColor:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgPaint;

    .line 1227
    iput-object v2, v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;->solidOpacity:Ljava/lang/Float;

    .line 1228
    iput-object v3, v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;->viewportFill:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgPaint;

    .line 1229
    iput-object v2, v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;->viewportFillOpacity:Ljava/lang/Float;

    .line 1230
    sget-object v1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$VectorEffect;->None:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$VectorEffect;

    iput-object v1, v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;->vectorEffect:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$VectorEffect;

    .line 1231
    sget-object v1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$RenderQuality;->auto:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$RenderQuality;

    iput-object v1, v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;->imageRendering:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$RenderQuality;

    return-object v0
.end method


# virtual methods
.method protected clone()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 1259
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;

    .line 1260
    iget-object v1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;->strokeDashArray:[Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;

    if-eqz v1, :cond_0

    .line 1261
    invoke-virtual {v1}, [Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;

    iput-object v1, v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;->strokeDashArray:[Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;

    :cond_0
    return-object v0
.end method

.method resetNonInheritingProperties(Z)V
    .locals 2

    .line 1240
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;->display:Ljava/lang/Boolean;

    if-eqz p1, :cond_0

    .line 1241
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    :cond_0
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_0
    iput-object p1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;->overflow:Ljava/lang/Boolean;

    const/4 p1, 0x0

    .line 1242
    iput-object p1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;->clip:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$CSSClipRect;

    .line 1243
    iput-object p1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;->clipPath:Ljava/lang/String;

    const/high16 v0, 0x3f800000    # 1.0f

    .line 1244
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iput-object v1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;->opacity:Ljava/lang/Float;

    .line 1245
    sget-object v1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Colour;->BLACK:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Colour;

    iput-object v1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;->stopColor:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgPaint;

    .line 1246
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iput-object v1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;->stopOpacity:Ljava/lang/Float;

    .line 1247
    iput-object p1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;->mask:Ljava/lang/String;

    .line 1248
    iput-object p1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;->solidColor:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgPaint;

    .line 1249
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iput-object v1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;->solidOpacity:Ljava/lang/Float;

    .line 1250
    iput-object p1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;->viewportFill:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgPaint;

    .line 1251
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    iput-object p1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;->viewportFillOpacity:Ljava/lang/Float;

    .line 1252
    sget-object p1, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$VectorEffect;->None:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$VectorEffect;

    iput-object p1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style;->vectorEffect:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Style$VectorEffect;

    return-void
.end method
