.class Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgRadialGradient;
.super Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$GradientElement;
.source "SVG.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SvgRadialGradient"
.end annotation


# instance fields
.field cx:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;

.field cy:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;

.field fx:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;

.field fy:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;

.field r:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1962
    invoke-direct {p0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$GradientElement;-><init>()V

    return-void
.end method


# virtual methods
.method getNodeName()Ljava/lang/String;
    .locals 1

    const-string v0, "radialGradient"

    return-object v0
.end method
