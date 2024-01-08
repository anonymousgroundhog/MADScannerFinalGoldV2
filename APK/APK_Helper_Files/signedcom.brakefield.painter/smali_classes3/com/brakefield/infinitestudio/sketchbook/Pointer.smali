.class public Lcom/brakefield/infinitestudio/sketchbook/Pointer;
.super Landroid/graphics/PointF;
.source "Pointer.java"


# instance fields
.field public distance:F

.field public event:Landroid/view/MotionEvent;

.field public eventTime:J

.field public id:I

.field public pressure:F

.field public primaryPressed:Z

.field public rotation:F

.field public secondaryPressed:Z

.field public size:F

.field public tertiaryPressed:Z

.field public tilt:F

.field public tool:I

.field public toolMajor:F

.field public toolMinor:F

.field public touchMajor:F

.field public touchMinor:F


# direct methods
.method public constructor <init>(I)V
    .locals 3

    .line 25
    invoke-direct {p0}, Landroid/graphics/PointF;-><init>()V

    const/4 v0, 0x0

    .line 11
    iput v0, p0, Lcom/brakefield/infinitestudio/sketchbook/Pointer;->tool:I

    const-wide/16 v1, 0x0

    .line 18
    iput-wide v1, p0, Lcom/brakefield/infinitestudio/sketchbook/Pointer;->eventTime:J

    .line 19
    iput-boolean v0, p0, Lcom/brakefield/infinitestudio/sketchbook/Pointer;->primaryPressed:Z

    .line 20
    iput-boolean v0, p0, Lcom/brakefield/infinitestudio/sketchbook/Pointer;->secondaryPressed:Z

    .line 21
    iput-boolean v0, p0, Lcom/brakefield/infinitestudio/sketchbook/Pointer;->tertiaryPressed:Z

    .line 26
    iput p1, p0, Lcom/brakefield/infinitestudio/sketchbook/Pointer;->id:I

    return-void
.end method


# virtual methods
.method public copy()Lcom/brakefield/infinitestudio/sketchbook/Pointer;
    .locals 3

    .line 91
    new-instance v0, Lcom/brakefield/infinitestudio/sketchbook/Pointer;

    iget v1, p0, Lcom/brakefield/infinitestudio/sketchbook/Pointer;->id:I

    invoke-direct {v0, v1}, Lcom/brakefield/infinitestudio/sketchbook/Pointer;-><init>(I)V

    .line 92
    iget-object v1, p0, Lcom/brakefield/infinitestudio/sketchbook/Pointer;->event:Landroid/view/MotionEvent;

    iput-object v1, v0, Lcom/brakefield/infinitestudio/sketchbook/Pointer;->event:Landroid/view/MotionEvent;

    .line 93
    iget-wide v1, p0, Lcom/brakefield/infinitestudio/sketchbook/Pointer;->eventTime:J

    iput-wide v1, v0, Lcom/brakefield/infinitestudio/sketchbook/Pointer;->eventTime:J

    .line 94
    iget v1, p0, Lcom/brakefield/infinitestudio/sketchbook/Pointer;->x:F

    iput v1, v0, Lcom/brakefield/infinitestudio/sketchbook/Pointer;->x:F

    .line 95
    iget v1, p0, Lcom/brakefield/infinitestudio/sketchbook/Pointer;->y:F

    iput v1, v0, Lcom/brakefield/infinitestudio/sketchbook/Pointer;->y:F

    .line 96
    iget v1, p0, Lcom/brakefield/infinitestudio/sketchbook/Pointer;->pressure:F

    iput v1, v0, Lcom/brakefield/infinitestudio/sketchbook/Pointer;->pressure:F

    .line 97
    iget v1, p0, Lcom/brakefield/infinitestudio/sketchbook/Pointer;->tool:I

    iput v1, v0, Lcom/brakefield/infinitestudio/sketchbook/Pointer;->tool:I

    .line 98
    iget v1, p0, Lcom/brakefield/infinitestudio/sketchbook/Pointer;->size:F

    iput v1, v0, Lcom/brakefield/infinitestudio/sketchbook/Pointer;->size:F

    .line 99
    iget v1, p0, Lcom/brakefield/infinitestudio/sketchbook/Pointer;->touchMajor:F

    iput v1, v0, Lcom/brakefield/infinitestudio/sketchbook/Pointer;->touchMajor:F

    .line 100
    iget v1, p0, Lcom/brakefield/infinitestudio/sketchbook/Pointer;->touchMinor:F

    iput v1, v0, Lcom/brakefield/infinitestudio/sketchbook/Pointer;->touchMinor:F

    .line 101
    iget v1, p0, Lcom/brakefield/infinitestudio/sketchbook/Pointer;->toolMajor:F

    iput v1, v0, Lcom/brakefield/infinitestudio/sketchbook/Pointer;->toolMajor:F

    .line 102
    iget v1, p0, Lcom/brakefield/infinitestudio/sketchbook/Pointer;->toolMinor:F

    iput v1, v0, Lcom/brakefield/infinitestudio/sketchbook/Pointer;->toolMinor:F

    .line 103
    iget v1, p0, Lcom/brakefield/infinitestudio/sketchbook/Pointer;->rotation:F

    iput v1, v0, Lcom/brakefield/infinitestudio/sketchbook/Pointer;->rotation:F

    .line 104
    iget v1, p0, Lcom/brakefield/infinitestudio/sketchbook/Pointer;->tilt:F

    iput v1, v0, Lcom/brakefield/infinitestudio/sketchbook/Pointer;->tilt:F

    .line 105
    iget v1, p0, Lcom/brakefield/infinitestudio/sketchbook/Pointer;->distance:F

    iput v1, v0, Lcom/brakefield/infinitestudio/sketchbook/Pointer;->distance:F

    .line 106
    iget-boolean v1, p0, Lcom/brakefield/infinitestudio/sketchbook/Pointer;->primaryPressed:Z

    iput-boolean v1, v0, Lcom/brakefield/infinitestudio/sketchbook/Pointer;->primaryPressed:Z

    .line 107
    iget-boolean v1, p0, Lcom/brakefield/infinitestudio/sketchbook/Pointer;->secondaryPressed:Z

    iput-boolean v1, v0, Lcom/brakefield/infinitestudio/sketchbook/Pointer;->secondaryPressed:Z

    .line 108
    iget-boolean v1, p0, Lcom/brakefield/infinitestudio/sketchbook/Pointer;->tertiaryPressed:Z

    iput-boolean v1, v0, Lcom/brakefield/infinitestudio/sketchbook/Pointer;->tertiaryPressed:Z

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x1

    if-ne p1, p0, :cond_1

    return v1

    .line 124
    :cond_1
    instance-of v2, p1, Ljava/lang/Integer;

    if-eqz v2, :cond_3

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget v2, p0, Lcom/brakefield/infinitestudio/sketchbook/Pointer;->id:I

    if-ne p1, v2, :cond_2

    move v0, v1

    :cond_2
    return v0

    .line 125
    :cond_3
    instance-of v2, p1, Lcom/brakefield/infinitestudio/sketchbook/Pointer;

    if-eqz v2, :cond_4

    check-cast p1, Lcom/brakefield/infinitestudio/sketchbook/Pointer;

    iget p1, p1, Lcom/brakefield/infinitestudio/sketchbook/Pointer;->id:I

    iget v2, p0, Lcom/brakefield/infinitestudio/sketchbook/Pointer;->id:I

    if-ne p1, v2, :cond_4

    move v0, v1

    :cond_4
    return v0
.end method

.method public isEraser()Z
    .locals 2

    .line 87
    iget v0, p0, Lcom/brakefield/infinitestudio/sketchbook/Pointer;->tool:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isFinger()Z
    .locals 2

    .line 79
    iget v0, p0, Lcom/brakefield/infinitestudio/sketchbook/Pointer;->tool:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isStylus()Z
    .locals 2

    .line 83
    iget v0, p0, Lcom/brakefield/infinitestudio/sketchbook/Pointer;->tool:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public transform(Landroid/graphics/Matrix;)V
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 113
    iget v1, p0, Lcom/brakefield/infinitestudio/sketchbook/Pointer;->x:F

    const/4 v2, 0x0

    aput v1, v0, v2

    iget v1, p0, Lcom/brakefield/infinitestudio/sketchbook/Pointer;->y:F

    const/4 v3, 0x1

    aput v1, v0, v3

    .line 114
    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->mapPoints([F)V

    aget p1, v0, v2

    .line 115
    iput p1, p0, Lcom/brakefield/infinitestudio/sketchbook/Pointer;->x:F

    aget p1, v0, v3

    .line 116
    iput p1, p0, Lcom/brakefield/infinitestudio/sketchbook/Pointer;->y:F

    return-void
.end method

.method public update(Landroid/view/MotionEvent;I)V
    .locals 2

    .line 31
    iput-object p1, p0, Lcom/brakefield/infinitestudio/sketchbook/Pointer;->event:Landroid/view/MotionEvent;

    .line 33
    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    iput v0, p0, Lcom/brakefield/infinitestudio/sketchbook/Pointer;->x:F

    .line 34
    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    iput v0, p0, Lcom/brakefield/infinitestudio/sketchbook/Pointer;->y:F

    .line 35
    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->getPressure(I)F

    move-result v0

    iput v0, p0, Lcom/brakefield/infinitestudio/sketchbook/Pointer;->pressure:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 38
    iput v1, p0, Lcom/brakefield/infinitestudio/sketchbook/Pointer;->pressure:F

    .line 41
    :cond_0
    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->getSize(I)F

    move-result v0

    iput v0, p0, Lcom/brakefield/infinitestudio/sketchbook/Pointer;->size:F

    .line 42
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/brakefield/infinitestudio/sketchbook/Pointer;->eventTime:J

    .line 43
    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->getTouchMajor(I)F

    move-result v0

    iput v0, p0, Lcom/brakefield/infinitestudio/sketchbook/Pointer;->touchMajor:F

    .line 44
    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->getTouchMinor(I)F

    move-result v0

    iput v0, p0, Lcom/brakefield/infinitestudio/sketchbook/Pointer;->touchMinor:F

    .line 45
    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->getToolMajor(I)F

    move-result v0

    iput v0, p0, Lcom/brakefield/infinitestudio/sketchbook/Pointer;->toolMajor:F

    .line 46
    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->getToolMinor(I)F

    move-result v0

    iput v0, p0, Lcom/brakefield/infinitestudio/sketchbook/Pointer;->toolMinor:F

    .line 47
    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->getOrientation(I)F

    move-result v0

    iput v0, p0, Lcom/brakefield/infinitestudio/sketchbook/Pointer;->rotation:F

    .line 48
    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v0

    iput v0, p0, Lcom/brakefield/infinitestudio/sketchbook/Pointer;->tool:I

    const/16 v0, 0x19

    .line 49
    invoke-virtual {p1, v0, p2}, Landroid/view/MotionEvent;->getAxisValue(II)F

    move-result v0

    iput v0, p0, Lcom/brakefield/infinitestudio/sketchbook/Pointer;->tilt:F

    const/16 v0, 0x18

    .line 50
    invoke-virtual {p1, v0, p2}, Landroid/view/MotionEvent;->getAxisValue(II)F

    move-result p1

    iput p1, p0, Lcom/brakefield/infinitestudio/sketchbook/Pointer;->distance:F

    return-void
.end method

.method public updateFromHistory(Landroid/view/MotionEvent;II)V
    .locals 2

    .line 55
    iput-object p1, p0, Lcom/brakefield/infinitestudio/sketchbook/Pointer;->event:Landroid/view/MotionEvent;

    .line 57
    invoke-virtual {p1, p2, p3}, Landroid/view/MotionEvent;->getHistoricalX(II)F

    move-result v0

    iput v0, p0, Lcom/brakefield/infinitestudio/sketchbook/Pointer;->x:F

    .line 58
    invoke-virtual {p1, p2, p3}, Landroid/view/MotionEvent;->getHistoricalY(II)F

    move-result v0

    iput v0, p0, Lcom/brakefield/infinitestudio/sketchbook/Pointer;->y:F

    .line 59
    invoke-virtual {p1, p2, p3}, Landroid/view/MotionEvent;->getHistoricalPressure(II)F

    move-result v0

    iput v0, p0, Lcom/brakefield/infinitestudio/sketchbook/Pointer;->pressure:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 62
    iput v1, p0, Lcom/brakefield/infinitestudio/sketchbook/Pointer;->pressure:F

    .line 65
    :cond_0
    invoke-virtual {p1, p2, p3}, Landroid/view/MotionEvent;->getHistoricalSize(II)F

    move-result v0

    iput v0, p0, Lcom/brakefield/infinitestudio/sketchbook/Pointer;->size:F

    .line 66
    invoke-virtual {p1, p3}, Landroid/view/MotionEvent;->getHistoricalEventTime(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/brakefield/infinitestudio/sketchbook/Pointer;->eventTime:J

    .line 68
    invoke-virtual {p1, p2, p3}, Landroid/view/MotionEvent;->getHistoricalTouchMajor(II)F

    move-result v0

    iput v0, p0, Lcom/brakefield/infinitestudio/sketchbook/Pointer;->touchMajor:F

    .line 69
    invoke-virtual {p1, p2, p3}, Landroid/view/MotionEvent;->getHistoricalTouchMinor(II)F

    move-result v0

    iput v0, p0, Lcom/brakefield/infinitestudio/sketchbook/Pointer;->touchMinor:F

    .line 70
    invoke-virtual {p1, p2, p3}, Landroid/view/MotionEvent;->getHistoricalToolMajor(II)F

    move-result v0

    iput v0, p0, Lcom/brakefield/infinitestudio/sketchbook/Pointer;->toolMajor:F

    .line 71
    invoke-virtual {p1, p2, p3}, Landroid/view/MotionEvent;->getHistoricalToolMinor(II)F

    move-result v0

    iput v0, p0, Lcom/brakefield/infinitestudio/sketchbook/Pointer;->toolMinor:F

    .line 72
    invoke-virtual {p1, p2, p3}, Landroid/view/MotionEvent;->getHistoricalOrientation(II)F

    move-result v0

    iput v0, p0, Lcom/brakefield/infinitestudio/sketchbook/Pointer;->rotation:F

    const/16 v0, 0x19

    .line 74
    invoke-virtual {p1, v0, p2, p3}, Landroid/view/MotionEvent;->getHistoricalAxisValue(III)F

    move-result v0

    iput v0, p0, Lcom/brakefield/infinitestudio/sketchbook/Pointer;->tilt:F

    const/16 v0, 0x18

    .line 75
    invoke-virtual {p1, v0, p2, p3}, Landroid/view/MotionEvent;->getHistoricalAxisValue(III)F

    move-result p1

    iput p1, p0, Lcom/brakefield/infinitestudio/sketchbook/Pointer;->distance:F

    return-void
.end method
