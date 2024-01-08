.class abstract Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgViewBoxContainer;
.super Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgPreserveAspectRatioContainer;
.source "SVG.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "SvgViewBoxContainer"
.end annotation


# instance fields
.field viewBox:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Box;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1627
    invoke-direct {p0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgPreserveAspectRatioContainer;-><init>()V

    return-void
.end method
