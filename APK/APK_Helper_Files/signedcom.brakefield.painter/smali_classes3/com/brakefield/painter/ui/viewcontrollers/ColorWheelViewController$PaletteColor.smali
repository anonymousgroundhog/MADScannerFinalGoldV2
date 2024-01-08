.class Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$PaletteColor;
.super Ljava/lang/Object;
.source "ColorWheelViewController.java"

# interfaces
.implements Lcom/brakefield/infinitestudio/ui/collections/Diffable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PaletteColor"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/brakefield/infinitestudio/ui/collections/Diffable<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field public final pointer:J

.field public final rgba:I


# direct methods
.method constructor <init>(JI)V
    .locals 0

    .line 1485
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1486
    iput-wide p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$PaletteColor;->pointer:J

    .line 1487
    iput p3, p0, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$PaletteColor;->rgba:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6

    .line 1496
    instance-of v0, p1, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$PaletteColor;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1497
    check-cast p1, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$PaletteColor;

    .line 1498
    iget-wide v2, p0, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$PaletteColor;->pointer:J

    iget-wide v4, p1, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$PaletteColor;->pointer:J

    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    iget v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$PaletteColor;->rgba:I

    iget p1, p1, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$PaletteColor;->rgba:I

    if-ne v0, p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public id()Ljava/lang/Long;
    .locals 2

    .line 1492
    iget-wide v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$PaletteColor;->pointer:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic id()Ljava/lang/Object;
    .locals 1

    .line 1480
    invoke-virtual {p0}, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$PaletteColor;->id()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method
