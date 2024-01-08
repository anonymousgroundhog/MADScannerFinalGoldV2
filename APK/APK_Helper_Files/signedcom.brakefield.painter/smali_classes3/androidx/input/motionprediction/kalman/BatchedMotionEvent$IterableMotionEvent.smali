.class public Landroidx/input/motionprediction/kalman/BatchedMotionEvent$IterableMotionEvent;
.super Ljava/lang/Object;
.source "BatchedMotionEvent.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/input/motionprediction/kalman/BatchedMotionEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IterableMotionEvent"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "Landroidx/input/motionprediction/kalman/BatchedMotionEvent;",
        ">;"
    }
.end annotation


# instance fields
.field private final mMotionEvent:Landroid/view/MotionEvent;

.field private final mPointerCount:I


# direct methods
.method constructor <init>(Landroid/view/MotionEvent;)V
    .locals 0

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object p1, p0, Landroidx/input/motionprediction/kalman/BatchedMotionEvent$IterableMotionEvent;->mMotionEvent:Landroid/view/MotionEvent;

    .line 67
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result p1

    iput p1, p0, Landroidx/input/motionprediction/kalman/BatchedMotionEvent$IterableMotionEvent;->mPointerCount:I

    return-void
.end method


# virtual methods
.method public getMotionEvent()Landroid/view/MotionEvent;
    .locals 1

    .line 71
    iget-object v0, p0, Landroidx/input/motionprediction/kalman/BatchedMotionEvent$IterableMotionEvent;->mMotionEvent:Landroid/view/MotionEvent;

    return-object v0
.end method

.method public getPointerCount()I
    .locals 1

    .line 75
    iget v0, p0, Landroidx/input/motionprediction/kalman/BatchedMotionEvent$IterableMotionEvent;->mPointerCount:I

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Landroidx/input/motionprediction/kalman/BatchedMotionEvent;",
            ">;"
        }
    .end annotation

    .line 81
    new-instance v0, Landroidx/input/motionprediction/kalman/BatchedMotionEvent$IterableMotionEvent$1;

    invoke-direct {v0, p0}, Landroidx/input/motionprediction/kalman/BatchedMotionEvent$IterableMotionEvent$1;-><init>(Landroidx/input/motionprediction/kalman/BatchedMotionEvent$IterableMotionEvent;)V

    return-object v0
.end method
