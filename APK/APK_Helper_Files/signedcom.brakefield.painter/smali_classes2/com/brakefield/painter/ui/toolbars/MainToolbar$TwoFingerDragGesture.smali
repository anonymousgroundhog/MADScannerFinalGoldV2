.class Lcom/brakefield/painter/ui/toolbars/MainToolbar$TwoFingerDragGesture;
.super Lcom/brakefield/infinitestudio/gestures/Gesture;
.source "MainToolbar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/brakefield/painter/ui/toolbars/MainToolbar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TwoFingerDragGesture"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/brakefield/painter/ui/toolbars/MainToolbar;


# direct methods
.method public constructor <init>(Lcom/brakefield/painter/ui/toolbars/MainToolbar;Landroid/content/res/Resources;)V
    .locals 0

    .line 1511
    iput-object p1, p0, Lcom/brakefield/painter/ui/toolbars/MainToolbar$TwoFingerDragGesture;->this$0:Lcom/brakefield/painter/ui/toolbars/MainToolbar;

    .line 1512
    invoke-direct {p0, p2}, Lcom/brakefield/infinitestudio/gestures/Gesture;-><init>(Landroid/content/res/Resources;)V

    const/4 p1, 0x1

    .line 1513
    iput-boolean p1, p0, Lcom/brakefield/painter/ui/toolbars/MainToolbar$TwoFingerDragGesture;->cancelsOtherGestures:Z

    return-void
.end method


# virtual methods
.method protected makeActive(Ljava/util/List;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/brakefield/infinitestudio/gestures/Gesture$PointerPair;",
            ">;)Z"
        }
    .end annotation

    .line 1517
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    .line 1518
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v1, v0, [Lcom/brakefield/infinitestudio/sketchbook/Pointer;

    :goto_0
    if-ge v2, v0, :cond_0

    .line 1520
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/brakefield/infinitestudio/gestures/Gesture$PointerPair;

    iget-object v3, v3, Lcom/brakefield/infinitestudio/gestures/Gesture$PointerPair;->currentPointer:Lcom/brakefield/infinitestudio/sketchbook/Pointer;

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1522
    :cond_0
    iget-object p1, p0, Lcom/brakefield/painter/ui/toolbars/MainToolbar$TwoFingerDragGesture;->this$0:Lcom/brakefield/painter/ui/toolbars/MainToolbar;

    invoke-virtual {p1, v1}, Lcom/brakefield/painter/ui/toolbars/MainToolbar;->dragStarted([Landroid/graphics/PointF;)V

    const/4 p1, 0x1

    return p1

    :cond_1
    return v2
.end method

.method public update(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/brakefield/infinitestudio/gestures/Gesture$PointerPair;",
            ">;)V"
        }
    .end annotation

    .line 1529
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    return-void

    .line 1532
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v1, v0, [Lcom/brakefield/infinitestudio/sketchbook/Pointer;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 1534
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/brakefield/infinitestudio/gestures/Gesture$PointerPair;

    iget-object v3, v3, Lcom/brakefield/infinitestudio/gestures/Gesture$PointerPair;->currentPointer:Lcom/brakefield/infinitestudio/sketchbook/Pointer;

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1536
    :cond_1
    iget-object p1, p0, Lcom/brakefield/painter/ui/toolbars/MainToolbar$TwoFingerDragGesture;->this$0:Lcom/brakefield/painter/ui/toolbars/MainToolbar;

    invoke-virtual {p1, v1}, Lcom/brakefield/painter/ui/toolbars/MainToolbar;->dragMoved([Landroid/graphics/PointF;)V

    return-void
.end method
