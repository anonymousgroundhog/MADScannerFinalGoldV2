.class public Landroidx/input/motionprediction/kalman/BatchedMotionEvent;
.super Ljava/lang/Object;
.source "BatchedMotionEvent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/input/motionprediction/kalman/BatchedMotionEvent$IterableMotionEvent;
    }
.end annotation


# instance fields
.field public final coords:[Landroid/view/MotionEvent$PointerCoords;

.field public timeMs:J


# direct methods
.method public constructor <init>(I)V
    .locals 3

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-array v0, p1, [Landroid/view/MotionEvent$PointerCoords;

    iput-object v0, p0, Landroidx/input/motionprediction/kalman/BatchedMotionEvent;->coords:[Landroid/view/MotionEvent$PointerCoords;

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    .line 48
    iget-object v1, p0, Landroidx/input/motionprediction/kalman/BatchedMotionEvent;->coords:[Landroid/view/MotionEvent$PointerCoords;

    new-instance v2, Landroid/view/MotionEvent$PointerCoords;

    invoke-direct {v2}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static iterate(Landroid/view/MotionEvent;)Landroidx/input/motionprediction/kalman/BatchedMotionEvent$IterableMotionEvent;
    .locals 1

    .line 57
    new-instance v0, Landroidx/input/motionprediction/kalman/BatchedMotionEvent$IterableMotionEvent;

    invoke-direct {v0, p0}, Landroidx/input/motionprediction/kalman/BatchedMotionEvent$IterableMotionEvent;-><init>(Landroid/view/MotionEvent;)V

    return-object v0
.end method
