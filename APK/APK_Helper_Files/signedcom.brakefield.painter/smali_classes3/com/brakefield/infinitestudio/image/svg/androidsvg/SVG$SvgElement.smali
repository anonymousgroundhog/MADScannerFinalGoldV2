.class abstract Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgElement;
.super Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgElementBase;
.source "SVG.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "SvgElement"
.end annotation


# instance fields
.field boundingBox:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Box;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 1516
    invoke-direct {p0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgElementBase;-><init>()V

    const/4 v0, 0x0

    .line 1518
    iput-object v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgElement;->boundingBox:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Box;

    return-void
.end method
