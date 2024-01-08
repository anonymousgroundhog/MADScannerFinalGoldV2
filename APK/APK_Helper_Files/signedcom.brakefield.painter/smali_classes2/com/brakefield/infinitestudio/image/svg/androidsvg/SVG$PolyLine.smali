.class Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$PolyLine;
.super Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$GraphicsElement;
.source "SVG.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PolyLine"
.end annotation


# instance fields
.field points:[F


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1753
    invoke-direct {p0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$GraphicsElement;-><init>()V

    return-void
.end method


# virtual methods
.method getNodeName()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "polyline"

    return-object v0
.end method
