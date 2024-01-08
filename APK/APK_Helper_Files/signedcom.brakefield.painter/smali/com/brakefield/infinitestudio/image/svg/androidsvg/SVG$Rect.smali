.class Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Rect;
.super Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$GraphicsElement;
.source "SVG.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Rect"
.end annotation


# instance fields
.field height:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;

.field rx:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;

.field ry:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;

.field width:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;

.field x:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;

.field y:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1704
    invoke-direct {p0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$GraphicsElement;-><init>()V

    return-void
.end method


# virtual methods
.method getNodeName()Ljava/lang/String;
    .locals 1

    const-string v0, "rect"

    return-object v0
.end method
