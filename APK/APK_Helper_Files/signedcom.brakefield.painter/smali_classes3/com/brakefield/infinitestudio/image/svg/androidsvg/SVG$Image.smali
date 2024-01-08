.class public Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Image;
.super Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgPreserveAspectRatioContainer;
.source "SVG.java"

# interfaces
.implements Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$HasTransform;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "Image"
.end annotation


# instance fields
.field height:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;

.field href:Ljava/lang/String;

.field transform:Landroid/graphics/Matrix;

.field width:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;

.field x:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;

.field y:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 2000
    invoke-direct {p0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgPreserveAspectRatioContainer;-><init>()V

    return-void
.end method


# virtual methods
.method getNodeName()Ljava/lang/String;
    .locals 1

    const-string v0, "image"

    return-object v0
.end method

.method public setTransform(Landroid/graphics/Matrix;)V
    .locals 0

    .line 2010
    iput-object p1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Image;->transform:Landroid/graphics/Matrix;

    return-void
.end method
