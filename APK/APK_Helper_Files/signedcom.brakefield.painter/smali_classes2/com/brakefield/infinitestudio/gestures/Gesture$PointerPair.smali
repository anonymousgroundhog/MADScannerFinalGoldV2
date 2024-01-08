.class public Lcom/brakefield/infinitestudio/gestures/Gesture$PointerPair;
.super Ljava/lang/Object;
.source "Gesture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/brakefield/infinitestudio/gestures/Gesture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "PointerPair"
.end annotation


# instance fields
.field public final currentPointer:Lcom/brakefield/infinitestudio/sketchbook/Pointer;

.field public final downPointer:Lcom/brakefield/infinitestudio/sketchbook/Pointer;


# direct methods
.method public constructor <init>(Lcom/brakefield/infinitestudio/sketchbook/Pointer;)V
    .locals 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    invoke-virtual {p1}, Lcom/brakefield/infinitestudio/sketchbook/Pointer;->copy()Lcom/brakefield/infinitestudio/sketchbook/Pointer;

    move-result-object v0

    iput-object v0, p0, Lcom/brakefield/infinitestudio/gestures/Gesture$PointerPair;->downPointer:Lcom/brakefield/infinitestudio/sketchbook/Pointer;

    .line 21
    iput-object p1, p0, Lcom/brakefield/infinitestudio/gestures/Gesture$PointerPair;->currentPointer:Lcom/brakefield/infinitestudio/sketchbook/Pointer;

    return-void
.end method
