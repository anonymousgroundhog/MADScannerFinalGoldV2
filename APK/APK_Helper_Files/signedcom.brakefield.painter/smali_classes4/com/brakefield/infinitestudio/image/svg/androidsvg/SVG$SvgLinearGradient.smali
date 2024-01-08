.class Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgLinearGradient;
.super Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$GradientElement;
.source "SVG.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SvgLinearGradient"
.end annotation


# instance fields
.field x1:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;

.field x2:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;

.field y1:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;

.field y2:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1950
    invoke-direct {p0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$GradientElement;-><init>()V

    return-void
.end method


# virtual methods
.method getNodeName()Ljava/lang/String;
    .locals 1

    const-string v0, "linearGradient"

    return-object v0
.end method
