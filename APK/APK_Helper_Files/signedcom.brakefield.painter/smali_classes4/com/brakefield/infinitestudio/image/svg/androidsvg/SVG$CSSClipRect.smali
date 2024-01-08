.class Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$CSSClipRect;
.super Ljava/lang/Object;
.source "SVG.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CSSClipRect"
.end annotation


# instance fields
.field bottom:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;

.field left:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;

.field right:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;

.field top:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;


# direct methods
.method constructor <init>(Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;)V
    .locals 0

    .line 1474
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1475
    iput-object p1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$CSSClipRect;->top:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;

    .line 1476
    iput-object p2, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$CSSClipRect;->right:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;

    .line 1477
    iput-object p3, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$CSSClipRect;->bottom:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;

    .line 1478
    iput-object p4, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$CSSClipRect;->left:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;

    return-void
.end method
