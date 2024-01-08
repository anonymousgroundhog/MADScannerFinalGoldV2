.class abstract Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$GraphicsElement;
.super Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgConditionalElement;
.source "SVG.java"

# interfaces
.implements Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$HasTransform;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "GraphicsElement"
.end annotation


# instance fields
.field transform:Landroid/graphics/Matrix;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1675
    invoke-direct {p0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgConditionalElement;-><init>()V

    return-void
.end method


# virtual methods
.method public setTransform(Landroid/graphics/Matrix;)V
    .locals 0

    .line 1680
    iput-object p1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$GraphicsElement;->transform:Landroid/graphics/Matrix;

    return-void
.end method
