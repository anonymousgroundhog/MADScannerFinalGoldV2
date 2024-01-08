.class Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$PaletteSpan;
.super Lcom/brakefield/infinitestudio/ui/layout/Span;
.source "ColorWheelViewController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PaletteSpan"
.end annotation


# instance fields
.field private final palette:Lcom/brakefield/painter/nativeobjs/color/PaletteNative;


# direct methods
.method public constructor <init>(Lcom/brakefield/painter/nativeobjs/color/PaletteNative;)V
    .locals 0

    .line 1568
    invoke-direct {p0}, Lcom/brakefield/infinitestudio/ui/layout/Span;-><init>()V

    .line 1569
    iput-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$PaletteSpan;->palette:Lcom/brakefield/painter/nativeobjs/color/PaletteNative;

    return-void
.end method


# virtual methods
.method public totalSpan(I)I
    .locals 2

    .line 1573
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$PaletteSpan;->palette:Lcom/brakefield/painter/nativeobjs/color/PaletteNative;

    invoke-virtual {p1}, Lcom/brakefield/painter/nativeobjs/color/PaletteNative;->size()I

    move-result p1

    int-to-float p1, p1

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p1, v0

    float-to-double v0, p1

    .line 1574
    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int p1, v0

    const/4 v0, 0x5

    if-ge p1, v0, :cond_0

    move p1, v0

    :cond_0
    const/16 v0, 0xa

    if-le p1, v0, :cond_1

    move p1, v0

    :cond_1
    return p1
.end method
