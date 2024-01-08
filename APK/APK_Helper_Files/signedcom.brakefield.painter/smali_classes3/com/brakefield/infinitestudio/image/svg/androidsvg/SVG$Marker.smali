.class Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Marker;
.super Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgViewBoxContainer;
.source "SVG.java"

# interfaces
.implements Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$NotDirectlyRendered;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Marker"
.end annotation


# instance fields
.field markerHeight:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;

.field markerUnitsAreUser:Z

.field markerWidth:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;

.field orient:Ljava/lang/Float;

.field refX:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;

.field refY:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Length;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1895
    invoke-direct {p0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgViewBoxContainer;-><init>()V

    return-void
.end method


# virtual methods
.method getNodeName()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    sget-object v0, Lcom/fasterxml/jackson/core/base/wdxk/XdOzfHnSj;->HOpfe:Ljava/lang/String;

    return-object v0
.end method
