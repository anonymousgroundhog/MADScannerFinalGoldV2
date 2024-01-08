.class abstract Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgPreserveAspectRatioContainer;
.super Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgConditionalContainer;
.source "SVG.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "SvgPreserveAspectRatioContainer"
.end annotation


# instance fields
.field preserveAspectRatio:Lcom/brakefield/infinitestudio/image/svg/androidsvg/PreserveAspectRatio;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 1621
    invoke-direct {p0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgConditionalContainer;-><init>()V

    const/4 v0, 0x0

    .line 1623
    iput-object v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgPreserveAspectRatioContainer;->preserveAspectRatio:Lcom/brakefield/infinitestudio/image/svg/androidsvg/PreserveAspectRatio;

    return-void
.end method
