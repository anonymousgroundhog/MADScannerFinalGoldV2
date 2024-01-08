.class public Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Text;
.super Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$TextPositionedContainer;
.source "SVG.java"

# interfaces
.implements Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$TextRoot;
.implements Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$HasTransform;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "Text"
.end annotation


# instance fields
.field transform:Landroid/graphics/Matrix;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 1804
    invoke-direct {p0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$TextPositionedContainer;-><init>()V

    return-void
.end method


# virtual methods
.method getNodeName()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "text"

    return-object v0
.end method

.method public setTransform(Landroid/graphics/Matrix;)V
    .locals 0

    .line 1809
    iput-object p1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Text;->transform:Landroid/graphics/Matrix;

    return-void
.end method
