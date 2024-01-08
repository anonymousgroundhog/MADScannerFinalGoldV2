.class Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Colour;
.super Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgPaint;
.source "SVG.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Colour"
.end annotation


# static fields
.field static final BLACK:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Colour;

.field static final TRANSPARENT:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Colour;


# instance fields
.field colour:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1278
    new-instance v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Colour;

    const/high16 v1, -0x1000000

    invoke-direct {v0, v1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Colour;-><init>(I)V

    sput-object v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Colour;->BLACK:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Colour;

    .line 1279
    new-instance v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Colour;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Colour;-><init>(I)V

    sput-object v0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Colour;->TRANSPARENT:Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Colour;

    return-void
.end method

.method constructor <init>(I)V
    .locals 0

    .line 1282
    invoke-direct {p0}, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$SvgPaint;-><init>()V

    .line 1283
    iput p1, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Colour;->colour:I

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 1288
    iget v0, p0, Lcom/brakefield/infinitestudio/image/svg/androidsvg/SVG$Colour;->colour:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "#%08x"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
