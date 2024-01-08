.class public Lcom/brakefield/infinitestudio/gestures/GestureLayout;
.super Landroidx/constraintlayout/widget/ConstraintLayout;
.source "GestureLayout.java"


# instance fields
.field private final gestures:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/brakefield/infinitestudio/gestures/Gesture;",
            ">;"
        }
    .end annotation
.end field

.field private final pastMotionEvents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/MotionEvent;",
            ">;"
        }
    .end annotation
.end field

.field private final pointers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/brakefield/infinitestudio/sketchbook/Pointer;",
            ">;"
        }
    .end annotation
.end field

.field private sendingPastMotionEvents:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;)V

    .line 18
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/brakefield/infinitestudio/gestures/GestureLayout;->gestures:Ljava/util/List;

    .line 19
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/brakefield/infinitestudio/gestures/GestureLayout;->pointers:Ljava/util/List;

    .line 21
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/brakefield/infinitestudio/gestures/GestureLayout;->pastMotionEvents:Ljava/util/List;

    const/4 p1, 0x0

    .line 22
    iput-boolean p1, p0, Lcom/brakefield/infinitestudio/gestures/GestureLayout;->sendingPastMotionEvents:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 18
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/brakefield/infinitestudio/gestures/GestureLayout;->gestures:Ljava/util/List;

    .line 19
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/brakefield/infinitestudio/gestures/GestureLayout;->pointers:Ljava/util/List;

    .line 21
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/brakefield/infinitestudio/gestures/GestureLayout;->pastMotionEvents:Ljava/util/List;

    const/4 p1, 0x0

    .line 22
    iput-boolean p1, p0, Lcom/brakefield/infinitestudio/gestures/GestureLayout;->sendingPastMotionEvents:Z

    return-void
.end method

.method private getPointerFromPointerId(I)Lcom/brakefield/infinitestudio/sketchbook/Pointer;
    .locals 3

    .line 100
    iget-object v0, p0, Lcom/brakefield/infinitestudio/gestures/GestureLayout;->pointers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/brakefield/infinitestudio/sketchbook/Pointer;

    .line 101
    iget v2, v1, Lcom/brakefield/infinitestudio/sketchbook/Pointer;->id:I

    if-ne v2, p1, :cond_0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public addGesture(Lcom/brakefield/infinitestudio/gestures/Gesture;)V
    .locals 1

    .line 107
    iget-object v0, p0, Lcom/brakefield/infinitestudio/gestures/GestureLayout;->gestures:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 35
    invoke-virtual {p0, p1}, Lcom/brakefield/infinitestudio/gestures/GestureLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9

    .line 41
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 43
    iget-object v2, p0, Lcom/brakefield/infinitestudio/gestures/GestureLayout;->pointers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 44
    iget-object v2, p0, Lcom/brakefield/infinitestudio/gestures/GestureLayout;->pastMotionEvents:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 45
    iget-object v2, p0, Lcom/brakefield/infinitestudio/gestures/GestureLayout;->gestures:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/brakefield/infinitestudio/gestures/Gesture;

    invoke-virtual {v3}, Lcom/brakefield/infinitestudio/gestures/Gesture;->prepare()V

    goto :goto_0

    :cond_0
    if-ne v0, v1, :cond_2

    .line 47
    iget-object v2, p0, Lcom/brakefield/infinitestudio/gestures/GestureLayout;->gestures:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/brakefield/infinitestudio/gestures/Gesture;

    .line 48
    invoke-virtual {v3}, Lcom/brakefield/infinitestudio/gestures/Gesture;->ignore()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v3}, Lcom/brakefield/infinitestudio/gestures/Gesture;->complete()V

    goto :goto_1

    .line 52
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :cond_3
    if-ge v4, v2, :cond_c

    and-int/lit16 v0, v0, 0xff

    if-ne v2, v1, :cond_5

    const/4 v5, 0x5

    if-ne v0, v5, :cond_4

    move v0, v3

    goto :goto_2

    :cond_4
    const/4 v5, 0x6

    if-ne v0, v5, :cond_5

    move v0, v1

    .line 63
    :cond_5
    :goto_2
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v5

    .line 64
    invoke-direct {p0, v5}, Lcom/brakefield/infinitestudio/gestures/GestureLayout;->getPointerFromPointerId(I)Lcom/brakefield/infinitestudio/sketchbook/Pointer;

    move-result-object v6

    if-nez v6, :cond_6

    .line 66
    new-instance v6, Lcom/brakefield/infinitestudio/sketchbook/Pointer;

    invoke-direct {v6, v5}, Lcom/brakefield/infinitestudio/sketchbook/Pointer;-><init>(I)V

    .line 67
    iget-object v5, p0, Lcom/brakefield/infinitestudio/gestures/GestureLayout;->pointers:Ljava/util/List;

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 69
    :cond_6
    invoke-virtual {v6, p1, v4}, Lcom/brakefield/infinitestudio/sketchbook/Pointer;->update(Landroid/view/MotionEvent;I)V

    add-int/lit8 v4, v4, 0x1

    if-eqz v0, :cond_b

    if-eq v0, v1, :cond_9

    const/4 v5, 0x3

    if-eq v0, v5, :cond_8

    .line 87
    iget-object v5, p0, Lcom/brakefield/infinitestudio/gestures/GestureLayout;->gestures:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_7
    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/brakefield/infinitestudio/gestures/Gesture;

    .line 88
    invoke-virtual {v7}, Lcom/brakefield/infinitestudio/gestures/Gesture;->ignore()Z

    move-result v8

    if-nez v8, :cond_7

    invoke-virtual {v7, v6}, Lcom/brakefield/infinitestudio/gestures/Gesture;->update(Lcom/brakefield/infinitestudio/sketchbook/Pointer;)V

    goto :goto_3

    .line 84
    :cond_8
    iget-object v5, p0, Lcom/brakefield/infinitestudio/gestures/GestureLayout;->gestures:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/brakefield/infinitestudio/gestures/Gesture;

    invoke-virtual {v6}, Lcom/brakefield/infinitestudio/gestures/Gesture;->cancel()V

    goto :goto_4

    .line 79
    :cond_9
    iget-object v5, p0, Lcom/brakefield/infinitestudio/gestures/GestureLayout;->gestures:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_a
    :goto_5
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/brakefield/infinitestudio/gestures/Gesture;

    .line 80
    invoke-virtual {v6}, Lcom/brakefield/infinitestudio/gestures/Gesture;->ignore()Z

    move-result v7

    if-nez v7, :cond_a

    invoke-virtual {v6}, Lcom/brakefield/infinitestudio/gestures/Gesture;->complete()V

    goto :goto_5

    .line 74
    :cond_b
    iget-object v5, p0, Lcom/brakefield/infinitestudio/gestures/GestureLayout;->pointers:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 75
    iget-object v5, p0, Lcom/brakefield/infinitestudio/gestures/GestureLayout;->pastMotionEvents:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 76
    iget-object v5, p0, Lcom/brakefield/infinitestudio/gestures/GestureLayout;->gestures:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_6
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/brakefield/infinitestudio/gestures/Gesture;

    invoke-virtual {v6}, Lcom/brakefield/infinitestudio/gestures/Gesture;->prepare()V

    goto :goto_6

    .line 93
    :cond_c
    iget-object p1, p0, Lcom/brakefield/infinitestudio/gestures/GestureLayout;->gestures:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_d
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/brakefield/infinitestudio/gestures/Gesture;

    .line 94
    invoke-virtual {v0}, Lcom/brakefield/infinitestudio/gestures/Gesture;->shouldIntercept()Z

    move-result v0

    if-eqz v0, :cond_d

    return v1

    :cond_e
    return v3
.end method

.method public removeGesture(Lcom/brakefield/infinitestudio/gestures/Gesture;)V
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/brakefield/infinitestudio/gestures/GestureLayout;->gestures:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method
