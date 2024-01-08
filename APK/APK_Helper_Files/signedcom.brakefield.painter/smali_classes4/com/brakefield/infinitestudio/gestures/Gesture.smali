.class public abstract Lcom/brakefield/infinitestudio/gestures/Gesture;
.super Ljava/lang/Object;
.source "Gesture.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/brakefield/infinitestudio/gestures/Gesture$State;,
        Lcom/brakefield/infinitestudio/gestures/Gesture$PointerPair;
    }
.end annotation


# instance fields
.field protected cancelsOtherGestures:Z

.field private endedListener:Ljava/lang/Runnable;

.field protected final moveDistance:F

.field private final pointers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/brakefield/infinitestudio/gestures/Gesture$PointerPair;",
            ">;"
        }
    .end annotation
.end field

.field private startedListener:Ljava/lang/Runnable;

.field private state:Lcom/brakefield/infinitestudio/gestures/Gesture$State;


# direct methods
.method protected constructor <init>(Landroid/content/res/Resources;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/brakefield/infinitestudio/gestures/Gesture;->pointers:Ljava/util/List;

    const/4 p1, 0x0

    .line 37
    iput-boolean p1, p0, Lcom/brakefield/infinitestudio/gestures/Gesture;->cancelsOtherGestures:Z

    const/high16 p1, 0x41200000    # 10.0f

    .line 40
    invoke-static {p1}, Lcom/brakefield/infinitestudio/ResourceHelper;->dp(F)F

    move-result p1

    iput p1, p0, Lcom/brakefield/infinitestudio/gestures/Gesture;->moveDistance:F

    return-void
.end method

.method private addPointer(Lcom/brakefield/infinitestudio/sketchbook/Pointer;)V
    .locals 2

    .line 108
    iget-object v0, p0, Lcom/brakefield/infinitestudio/gestures/Gesture;->pointers:Ljava/util/List;

    new-instance v1, Lcom/brakefield/infinitestudio/gestures/Gesture$PointerPair;

    invoke-direct {v1, p1}, Lcom/brakefield/infinitestudio/gestures/Gesture$PointerPair;-><init>(Lcom/brakefield/infinitestudio/sketchbook/Pointer;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private containsPointer(Lcom/brakefield/infinitestudio/sketchbook/Pointer;)Z
    .locals 2

    .line 102
    iget-object v0, p0, Lcom/brakefield/infinitestudio/gestures/Gesture;->pointers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/brakefield/infinitestudio/gestures/Gesture$PointerPair;

    .line 103
    iget-object v1, v1, Lcom/brakefield/infinitestudio/gestures/Gesture$PointerPair;->currentPointer:Lcom/brakefield/infinitestudio/sketchbook/Pointer;

    invoke-virtual {p1, v1}, Lcom/brakefield/infinitestudio/sketchbook/Pointer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public active()Z
    .locals 2

    .line 71
    iget-object v0, p0, Lcom/brakefield/infinitestudio/gestures/Gesture;->state:Lcom/brakefield/infinitestudio/gestures/Gesture$State;

    sget-object v1, Lcom/brakefield/infinitestudio/gestures/Gesture$State;->ACTIVE:Lcom/brakefield/infinitestudio/gestures/Gesture$State;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public cancel()V
    .locals 1

    .line 67
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/gestures/Gesture;->onCancelled()V

    .line 68
    sget-object v0, Lcom/brakefield/infinitestudio/gestures/Gesture$State;->IGNORE:Lcom/brakefield/infinitestudio/gestures/Gesture$State;

    iput-object v0, p0, Lcom/brakefield/infinitestudio/gestures/Gesture;->state:Lcom/brakefield/infinitestudio/gestures/Gesture$State;

    return-void
.end method

.method public complete()V
    .locals 2

    .line 63
    iget-object v0, p0, Lcom/brakefield/infinitestudio/gestures/Gesture;->state:Lcom/brakefield/infinitestudio/gestures/Gesture$State;

    sget-object v1, Lcom/brakefield/infinitestudio/gestures/Gesture$State;->ACTIVE:Lcom/brakefield/infinitestudio/gestures/Gesture$State;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/gestures/Gesture;->onCompleted()V

    .line 64
    :cond_0
    sget-object v0, Lcom/brakefield/infinitestudio/gestures/Gesture$State;->COMPLETE:Lcom/brakefield/infinitestudio/gestures/Gesture$State;

    iput-object v0, p0, Lcom/brakefield/infinitestudio/gestures/Gesture;->state:Lcom/brakefield/infinitestudio/gestures/Gesture$State;

    return-void
.end method

.method protected getCenter([Lcom/brakefield/infinitestudio/sketchbook/Pointer;)Landroid/graphics/PointF;
    .locals 6

    .line 131
    new-instance v0, Landroid/graphics/PointF;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Landroid/graphics/PointF;-><init>(FF)V

    .line 132
    array-length v1, p1

    if-nez v1, :cond_0

    return-object v0

    .line 133
    :cond_0
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p1, v2

    .line 134
    iget v4, v0, Landroid/graphics/PointF;->x:F

    iget v5, v3, Lcom/brakefield/infinitestudio/sketchbook/Pointer;->x:F

    add-float/2addr v4, v5

    iput v4, v0, Landroid/graphics/PointF;->x:F

    .line 135
    iget v4, v0, Landroid/graphics/PointF;->y:F

    iget v3, v3, Lcom/brakefield/infinitestudio/sketchbook/Pointer;->y:F

    add-float/2addr v4, v3

    iput v4, v0, Landroid/graphics/PointF;->y:F

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 137
    :cond_1
    iget v1, v0, Landroid/graphics/PointF;->x:F

    array-length v2, p1

    int-to-float v2, v2

    div-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/PointF;->x:F

    .line 138
    iget v1, v0, Landroid/graphics/PointF;->y:F

    array-length p1, p1

    int-to-float p1, p1

    div-float/2addr v1, p1

    iput v1, v0, Landroid/graphics/PointF;->y:F

    return-object v0
.end method

.method protected getCoordinates([Lcom/brakefield/infinitestudio/sketchbook/Pointer;)[F
    .locals 7

    .line 143
    array-length v0, p1

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [F

    .line 145
    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v4, p1, v2

    add-int/lit8 v5, v3, 0x1

    .line 146
    iget v6, v4, Lcom/brakefield/infinitestudio/sketchbook/Pointer;->x:F

    aput v6, v0, v3

    add-int/lit8 v3, v5, 0x1

    .line 147
    iget v4, v4, Lcom/brakefield/infinitestudio/sketchbook/Pointer;->y:F

    aput v4, v0, v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method protected getCurrentPointers()[Lcom/brakefield/infinitestudio/sketchbook/Pointer;
    .locals 4

    .line 125
    iget-object v0, p0, Lcom/brakefield/infinitestudio/gestures/Gesture;->pointers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v1, v0, [Lcom/brakefield/infinitestudio/sketchbook/Pointer;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 126
    iget-object v3, p0, Lcom/brakefield/infinitestudio/gestures/Gesture;->pointers:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/brakefield/infinitestudio/gestures/Gesture$PointerPair;

    iget-object v3, v3, Lcom/brakefield/infinitestudio/gestures/Gesture$PointerPair;->currentPointer:Lcom/brakefield/infinitestudio/sketchbook/Pointer;

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method protected getCurrentPointersCenter()Landroid/graphics/PointF;
    .locals 1

    .line 116
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/gestures/Gesture;->getCurrentPointers()[Lcom/brakefield/infinitestudio/sketchbook/Pointer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/brakefield/infinitestudio/gestures/Gesture;->getCenter([Lcom/brakefield/infinitestudio/sketchbook/Pointer;)Landroid/graphics/PointF;

    move-result-object v0

    return-object v0
.end method

.method protected getDownPointers()[Lcom/brakefield/infinitestudio/sketchbook/Pointer;
    .locals 4

    .line 120
    iget-object v0, p0, Lcom/brakefield/infinitestudio/gestures/Gesture;->pointers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v1, v0, [Lcom/brakefield/infinitestudio/sketchbook/Pointer;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 121
    iget-object v3, p0, Lcom/brakefield/infinitestudio/gestures/Gesture;->pointers:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/brakefield/infinitestudio/gestures/Gesture$PointerPair;

    iget-object v3, v3, Lcom/brakefield/infinitestudio/gestures/Gesture$PointerPair;->downPointer:Lcom/brakefield/infinitestudio/sketchbook/Pointer;

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method protected getDownPointersCenter()Landroid/graphics/PointF;
    .locals 1

    .line 112
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/gestures/Gesture;->getDownPointers()[Lcom/brakefield/infinitestudio/sketchbook/Pointer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/brakefield/infinitestudio/gestures/Gesture;->getCenter([Lcom/brakefield/infinitestudio/sketchbook/Pointer;)Landroid/graphics/PointF;

    move-result-object v0

    return-object v0
.end method

.method public ignore()Z
    .locals 2

    .line 74
    iget-object v0, p0, Lcom/brakefield/infinitestudio/gestures/Gesture;->state:Lcom/brakefield/infinitestudio/gestures/Gesture$State;

    sget-object v1, Lcom/brakefield/infinitestudio/gestures/Gesture$State;->IGNORE:Lcom/brakefield/infinitestudio/gestures/Gesture$State;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/brakefield/infinitestudio/gestures/Gesture;->state:Lcom/brakefield/infinitestudio/gestures/Gesture$State;

    sget-object v1, Lcom/brakefield/infinitestudio/gestures/Gesture$State;->COMPLETE:Lcom/brakefield/infinitestudio/gestures/Gesture$State;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method protected abstract makeActive(Ljava/util/List;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/brakefield/infinitestudio/gestures/Gesture$PointerPair;",
            ">;)Z"
        }
    .end annotation
.end method

.method protected onActivated()V
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/brakefield/infinitestudio/gestures/Gesture;->startedListener:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method protected onCancelled()V
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/brakefield/infinitestudio/gestures/Gesture;->endedListener:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method protected onCompleted()V
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/brakefield/infinitestudio/gestures/Gesture;->endedListener:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method protected onUpdated()V
    .locals 0

    return-void
.end method

.method public prepare()V
    .locals 1

    .line 48
    sget-object v0, Lcom/brakefield/infinitestudio/gestures/Gesture$State;->POSSIBLE:Lcom/brakefield/infinitestudio/gestures/Gesture$State;

    iput-object v0, p0, Lcom/brakefield/infinitestudio/gestures/Gesture;->state:Lcom/brakefield/infinitestudio/gestures/Gesture$State;

    .line 49
    iget-object v0, p0, Lcom/brakefield/infinitestudio/gestures/Gesture;->pointers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public setCancelsOtherGestures(Z)V
    .locals 0

    .line 44
    iput-boolean p1, p0, Lcom/brakefield/infinitestudio/gestures/Gesture;->cancelsOtherGestures:Z

    return-void
.end method

.method public setOnEndedListener(Ljava/lang/Runnable;)V
    .locals 0

    .line 98
    iput-object p1, p0, Lcom/brakefield/infinitestudio/gestures/Gesture;->endedListener:Ljava/lang/Runnable;

    return-void
.end method

.method public setOnStartedListener(Ljava/lang/Runnable;)V
    .locals 0

    .line 95
    iput-object p1, p0, Lcom/brakefield/infinitestudio/gestures/Gesture;->startedListener:Ljava/lang/Runnable;

    return-void
.end method

.method public shouldIntercept()Z
    .locals 2

    .line 77
    iget-object v0, p0, Lcom/brakefield/infinitestudio/gestures/Gesture;->state:Lcom/brakefield/infinitestudio/gestures/Gesture$State;

    sget-object v1, Lcom/brakefield/infinitestudio/gestures/Gesture$State;->ACTIVE:Lcom/brakefield/infinitestudio/gestures/Gesture$State;

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/brakefield/infinitestudio/gestures/Gesture;->cancelsOtherGestures:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public update(Lcom/brakefield/infinitestudio/sketchbook/Pointer;)V
    .locals 1

    .line 52
    invoke-direct {p0, p1}, Lcom/brakefield/infinitestudio/gestures/Gesture;->containsPointer(Lcom/brakefield/infinitestudio/sketchbook/Pointer;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/brakefield/infinitestudio/gestures/Gesture;->addPointer(Lcom/brakefield/infinitestudio/sketchbook/Pointer;)V

    .line 53
    :cond_0
    iget-object p1, p0, Lcom/brakefield/infinitestudio/gestures/Gesture;->state:Lcom/brakefield/infinitestudio/gestures/Gesture$State;

    sget-object v0, Lcom/brakefield/infinitestudio/gestures/Gesture$State;->POSSIBLE:Lcom/brakefield/infinitestudio/gestures/Gesture$State;

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/brakefield/infinitestudio/gestures/Gesture;->pointers:Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/brakefield/infinitestudio/gestures/Gesture;->makeActive(Ljava/util/List;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 54
    sget-object p1, Lcom/brakefield/infinitestudio/gestures/Gesture$State;->ACTIVE:Lcom/brakefield/infinitestudio/gestures/Gesture$State;

    iput-object p1, p0, Lcom/brakefield/infinitestudio/gestures/Gesture;->state:Lcom/brakefield/infinitestudio/gestures/Gesture$State;

    .line 55
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/gestures/Gesture;->onActivated()V

    .line 57
    :cond_1
    iget-object p1, p0, Lcom/brakefield/infinitestudio/gestures/Gesture;->state:Lcom/brakefield/infinitestudio/gestures/Gesture$State;

    sget-object v0, Lcom/brakefield/infinitestudio/gestures/Gesture$State;->ACTIVE:Lcom/brakefield/infinitestudio/gestures/Gesture$State;

    if-ne p1, v0, :cond_2

    .line 58
    iget-object p1, p0, Lcom/brakefield/infinitestudio/gestures/Gesture;->pointers:Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/brakefield/infinitestudio/gestures/Gesture;->update(Ljava/util/List;)V

    .line 59
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/gestures/Gesture;->onUpdated()V

    :cond_2
    return-void
.end method

.method public abstract update(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/brakefield/infinitestudio/gestures/Gesture$PointerPair;",
            ">;)V"
        }
    .end annotation
.end method
