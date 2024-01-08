.class Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$CurrentColor;
.super Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgPaint;
.source "SVG.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CurrentColor"
.end annotation


# static fields
.field private static instance:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$CurrentColor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1296
    new-instance v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$CurrentColor;

    invoke-direct {v0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$CurrentColor;-><init>()V

    sput-object v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$CurrentColor;->instance:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$CurrentColor;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1299
    invoke-direct {p0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgPaint;-><init>()V

    return-void
.end method

.method static getInstance()Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$CurrentColor;
    .locals 1

    .line 1304
    sget-object v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$CurrentColor;->instance:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$CurrentColor;

    return-object v0
.end method
