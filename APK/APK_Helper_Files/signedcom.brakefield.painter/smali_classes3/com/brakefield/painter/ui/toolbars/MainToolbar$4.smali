.class Lcom/brakefield/painter/ui/toolbars/MainToolbar$4;
.super Ljava/lang/Object;
.source "MainToolbar.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/brakefield/painter/ui/toolbars/MainToolbar;->setupToolbar(Landroid/app/Activity;Lcom/brakefield/infinitestudio/gestures/GestureLayout;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/brakefield/painter/ui/toolbars/MainToolbar;

.field final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/brakefield/painter/ui/toolbars/MainToolbar;Landroid/app/Activity;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 566
    iput-object p1, p0, Lcom/brakefield/painter/ui/toolbars/MainToolbar$4;->this$0:Lcom/brakefield/painter/ui/toolbars/MainToolbar;

    iput-object p2, p0, Lcom/brakefield/painter/ui/toolbars/MainToolbar$4;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 2

    .line 569
    iget-object v0, p0, Lcom/brakefield/painter/ui/toolbars/MainToolbar$4;->this$0:Lcom/brakefield/painter/ui/toolbars/MainToolbar;

    invoke-static {v0}, Lcom/brakefield/painter/ui/toolbars/MainToolbar;->access$600(Lcom/brakefield/painter/ui/toolbars/MainToolbar;)Lcom/brakefield/painter/OpacityControl;

    move-result-object v0

    int-to-float v1, p2

    invoke-virtual {v0, v1}, Lcom/brakefield/painter/OpacityControl;->setAffectedValue(F)V

    .line 570
    invoke-static {p3}, Lcom/brakefield/painter/PainterLib;->setChangingValue(Z)V

    .line 571
    iget-object v0, p0, Lcom/brakefield/painter/ui/toolbars/MainToolbar$4;->this$0:Lcom/brakefield/painter/ui/toolbars/MainToolbar;

    invoke-static {v0}, Lcom/brakefield/painter/ui/toolbars/MainToolbar;->access$200(Lcom/brakefield/painter/ui/toolbars/MainToolbar;)Lcom/brakefield/painter/ui/SimpleUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/brakefield/painter/ui/SimpleUI;->requestRender()V

    .line 572
    iget-object v0, p0, Lcom/brakefield/painter/ui/toolbars/MainToolbar$4;->this$0:Lcom/brakefield/painter/ui/toolbars/MainToolbar;

    invoke-static {v0}, Lcom/brakefield/painter/ui/toolbars/MainToolbar;->access$100(Lcom/brakefield/painter/ui/toolbars/MainToolbar;)Lcom/brakefield/painter/databinding/MainToolbarBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/brakefield/painter/databinding/MainToolbarBinding;->opacitySlider:Lcom/brakefield/infinitestudio/ui/OpacityPullButton;

    if-eq p1, v0, :cond_0

    iget-object p1, p0, Lcom/brakefield/painter/ui/toolbars/MainToolbar$4;->this$0:Lcom/brakefield/painter/ui/toolbars/MainToolbar;

    invoke-static {p1}, Lcom/brakefield/painter/ui/toolbars/MainToolbar;->access$100(Lcom/brakefield/painter/ui/toolbars/MainToolbar;)Lcom/brakefield/painter/databinding/MainToolbarBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/brakefield/painter/databinding/MainToolbarBinding;->opacitySlider:Lcom/brakefield/infinitestudio/ui/OpacityPullButton;

    invoke-virtual {p1, p2}, Lcom/brakefield/infinitestudio/ui/OpacityPullButton;->setProgress(I)V

    :cond_0
    if-eqz p3, :cond_1

    .line 574
    iget-object p1, p0, Lcom/brakefield/painter/ui/toolbars/MainToolbar$4;->this$0:Lcom/brakefield/painter/ui/toolbars/MainToolbar;

    invoke-static {p1}, Lcom/brakefield/painter/ui/toolbars/MainToolbar;->access$600(Lcom/brakefield/painter/ui/toolbars/MainToolbar;)Lcom/brakefield/painter/OpacityControl;

    move-result-object p1

    invoke-virtual {p1}, Lcom/brakefield/painter/OpacityControl;->getAffectedLabel()Ljava/lang/String;

    move-result-object p1

    .line 575
    iget-object p2, p0, Lcom/brakefield/painter/ui/toolbars/MainToolbar$4;->this$0:Lcom/brakefield/painter/ui/toolbars/MainToolbar;

    invoke-static {p2}, Lcom/brakefield/painter/ui/toolbars/MainToolbar;->access$600(Lcom/brakefield/painter/ui/toolbars/MainToolbar;)Lcom/brakefield/painter/OpacityControl;

    move-result-object p2

    invoke-virtual {p2}, Lcom/brakefield/painter/OpacityControl;->getAffectedValue()F

    move-result p2

    float-to-int p2, p2

    .line 576
    iget-object p3, p0, Lcom/brakefield/painter/ui/toolbars/MainToolbar$4;->this$0:Lcom/brakefield/painter/ui/toolbars/MainToolbar;

    invoke-static {p3}, Lcom/brakefield/painter/ui/toolbars/MainToolbar;->access$200(Lcom/brakefield/painter/ui/toolbars/MainToolbar;)Lcom/brakefield/painter/ui/SimpleUI;

    move-result-object p3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ": "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "%"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/brakefield/painter/ui/SimpleUI;->showMessage(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1

    .line 581
    iget-object p1, p0, Lcom/brakefield/painter/ui/toolbars/MainToolbar$4;->this$0:Lcom/brakefield/painter/ui/toolbars/MainToolbar;

    invoke-static {p1}, Lcom/brakefield/painter/ui/toolbars/MainToolbar;->access$100(Lcom/brakefield/painter/ui/toolbars/MainToolbar;)Lcom/brakefield/painter/databinding/MainToolbarBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/brakefield/painter/databinding/MainToolbarBinding;->opacitySlider:Lcom/brakefield/infinitestudio/ui/OpacityPullButton;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Lcom/brakefield/infinitestudio/ui/OpacityPullButton;->setScaleValue(F)V

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1

    const/4 p1, 0x1

    .line 585
    sput-boolean p1, Lcom/brakefield/painter/PainterGraphicsRenderer;->saveBrushPreview:Z

    .line 586
    iget-object p1, p0, Lcom/brakefield/painter/ui/toolbars/MainToolbar$4;->this$0:Lcom/brakefield/painter/ui/toolbars/MainToolbar;

    invoke-static {p1}, Lcom/brakefield/painter/ui/toolbars/MainToolbar;->access$100(Lcom/brakefield/painter/ui/toolbars/MainToolbar;)Lcom/brakefield/painter/databinding/MainToolbarBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/brakefield/painter/databinding/MainToolbarBinding;->opacitySlider:Lcom/brakefield/infinitestudio/ui/OpacityPullButton;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/brakefield/infinitestudio/ui/OpacityPullButton;->setScaleValue(F)V

    const/4 p1, 0x0

    .line 587
    invoke-static {p1}, Lcom/brakefield/painter/PainterLib;->setChangingValue(Z)V

    .line 588
    iget-object p1, p0, Lcom/brakefield/painter/ui/toolbars/MainToolbar$4;->this$0:Lcom/brakefield/painter/ui/toolbars/MainToolbar;

    invoke-static {p1}, Lcom/brakefield/painter/ui/toolbars/MainToolbar;->access$200(Lcom/brakefield/painter/ui/toolbars/MainToolbar;)Lcom/brakefield/painter/ui/SimpleUI;

    move-result-object p1

    iget-object v0, p0, Lcom/brakefield/painter/ui/toolbars/MainToolbar$4;->val$activity:Landroid/app/Activity;

    invoke-virtual {p1, v0}, Lcom/brakefield/painter/ui/SimpleUI;->update(Landroid/app/Activity;)V

    return-void
.end method
