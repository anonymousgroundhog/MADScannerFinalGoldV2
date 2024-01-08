.class Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$6;
.super Ljava/lang/Object;
.source "ColorWheelViewController.java"

# interfaces
.implements Lcom/brakefield/infinitestudio/gestures/listeners/TwoFingerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;->getTwoFingerListener(Landroid/app/Activity;Lcom/brakefield/painter/ui/SimpleUI;Lcom/brakefield/infinitestudio/color/ColorPickerView$OnColorChangeListener;Z)Lcom/brakefield/infinitestudio/gestures/listeners/TwoFingerListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field draggable:Lcom/brakefield/painter/ui/Draggable;

.field final synthetic this$0:Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$colorListener:Lcom/brakefield/infinitestudio/color/ColorPickerView$OnColorChangeListener;

.field final synthetic val$fromPopup:Z

.field final synthetic val$ui:Lcom/brakefield/painter/ui/SimpleUI;


# direct methods
.method constructor <init>(Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;Landroid/app/Activity;Lcom/brakefield/painter/ui/SimpleUI;ZLcom/brakefield/infinitestudio/color/ColorPickerView$OnColorChangeListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 519
    iput-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$6;->this$0:Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;

    iput-object p2, p0, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$6;->val$activity:Landroid/app/Activity;

    iput-object p3, p0, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$6;->val$ui:Lcom/brakefield/painter/ui/SimpleUI;

    iput-boolean p4, p0, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$6;->val$fromPopup:Z

    iput-object p5, p0, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$6;->val$colorListener:Lcom/brakefield/infinitestudio/color/ColorPickerView$OnColorChangeListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 521
    new-instance p1, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$6$1;

    invoke-direct {p1, p0}, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$6$1;-><init>(Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$6;)V

    iput-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$6;->draggable:Lcom/brakefield/painter/ui/Draggable;

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 1

    .line 674
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$6;->draggable:Lcom/brakefield/painter/ui/Draggable;

    invoke-interface {v0}, Lcom/brakefield/painter/ui/Draggable;->dragEnded()V

    return-void
.end method

.method public onClick(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/brakefield/infinitestudio/sketchbook/Pointer;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public onDown(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/brakefield/infinitestudio/sketchbook/Pointer;",
            ">;)V"
        }
    .end annotation

    .line 657
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/brakefield/infinitestudio/sketchbook/Pointer;

    .line 658
    iget-object v1, p0, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$6;->draggable:Lcom/brakefield/painter/ui/Draggable;

    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/graphics/PointF;

    invoke-interface {v1, p1}, Lcom/brakefield/painter/ui/Draggable;->dragStarted([Landroid/graphics/PointF;)V

    return-void
.end method

.method public onMove(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/brakefield/infinitestudio/sketchbook/Pointer;",
            ">;)V"
        }
    .end annotation

    .line 663
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/brakefield/infinitestudio/sketchbook/Pointer;

    .line 664
    iget-object v1, p0, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$6;->draggable:Lcom/brakefield/painter/ui/Draggable;

    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/graphics/PointF;

    invoke-interface {v1, p1}, Lcom/brakefield/painter/ui/Draggable;->dragMoved([Landroid/graphics/PointF;)V

    return-void
.end method

.method public onUp(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/brakefield/infinitestudio/sketchbook/Pointer;",
            ">;)V"
        }
    .end annotation

    .line 669
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController$6;->draggable:Lcom/brakefield/painter/ui/Draggable;

    invoke-interface {p1}, Lcom/brakefield/painter/ui/Draggable;->dragEnded()V

    return-void
.end method
