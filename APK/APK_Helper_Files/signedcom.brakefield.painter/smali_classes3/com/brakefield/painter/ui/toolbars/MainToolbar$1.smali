.class Lcom/brakefield/painter/ui/toolbars/MainToolbar$1;
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

.field final synthetic val$cornerSweepSize:I


# direct methods
.method constructor <init>(Lcom/brakefield/painter/ui/toolbars/MainToolbar;ILandroid/app/Activity;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 250
    iput-object p1, p0, Lcom/brakefield/painter/ui/toolbars/MainToolbar$1;->this$0:Lcom/brakefield/painter/ui/toolbars/MainToolbar;

    iput p2, p0, Lcom/brakefield/painter/ui/toolbars/MainToolbar$1;->val$cornerSweepSize:I

    iput-object p3, p0, Lcom/brakefield/painter/ui/toolbars/MainToolbar$1;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 4

    .line 255
    iget-object v0, p0, Lcom/brakefield/painter/ui/toolbars/MainToolbar$1;->this$0:Lcom/brakefield/painter/ui/toolbars/MainToolbar;

    invoke-static {v0}, Lcom/brakefield/painter/ui/toolbars/MainToolbar;->access$000(Lcom/brakefield/painter/ui/toolbars/MainToolbar;)I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 256
    iget-object v0, p0, Lcom/brakefield/painter/ui/toolbars/MainToolbar$1;->this$0:Lcom/brakefield/painter/ui/toolbars/MainToolbar;

    invoke-static {v0}, Lcom/brakefield/painter/ui/toolbars/MainToolbar;->access$100(Lcom/brakefield/painter/ui/toolbars/MainToolbar;)Lcom/brakefield/painter/databinding/MainToolbarBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/brakefield/painter/databinding/MainToolbarBinding;->sizeSweepView:Lcom/brakefield/infinitestudio/ui/SizeSweepView;

    int-to-float v1, p2

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getMax()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/brakefield/infinitestudio/ui/SizeSweepView;->setValue(F)V

    .line 257
    iget-object v0, p0, Lcom/brakefield/painter/ui/toolbars/MainToolbar$1;->this$0:Lcom/brakefield/painter/ui/toolbars/MainToolbar;

    invoke-static {v0}, Lcom/brakefield/painter/ui/toolbars/MainToolbar;->access$100(Lcom/brakefield/painter/ui/toolbars/MainToolbar;)Lcom/brakefield/painter/databinding/MainToolbarBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/brakefield/painter/databinding/MainToolbarBinding;->sizeSweepView:Lcom/brakefield/infinitestudio/ui/SizeSweepView;

    iget-object v1, p0, Lcom/brakefield/painter/ui/toolbars/MainToolbar$1;->this$0:Lcom/brakefield/painter/ui/toolbars/MainToolbar;

    invoke-static {v1}, Lcom/brakefield/painter/ui/toolbars/MainToolbar;->access$100(Lcom/brakefield/painter/ui/toolbars/MainToolbar;)Lcom/brakefield/painter/databinding/MainToolbarBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/brakefield/painter/databinding/MainToolbarBinding;->sizeSlider:Lcom/brakefield/infinitestudio/ui/SizePullButton;

    iget v1, v1, Lcom/brakefield/infinitestudio/ui/SizePullButton;->previousX:I

    iget-object v2, p0, Lcom/brakefield/painter/ui/toolbars/MainToolbar$1;->this$0:Lcom/brakefield/painter/ui/toolbars/MainToolbar;

    invoke-static {v2}, Lcom/brakefield/painter/ui/toolbars/MainToolbar;->access$100(Lcom/brakefield/painter/ui/toolbars/MainToolbar;)Lcom/brakefield/painter/databinding/MainToolbarBinding;

    move-result-object v2

    iget-object v2, v2, Lcom/brakefield/painter/databinding/MainToolbarBinding;->sizeSlider:Lcom/brakefield/infinitestudio/ui/SizePullButton;

    iget v2, v2, Lcom/brakefield/infinitestudio/ui/SizePullButton;->previousY:I

    invoke-virtual {v0, v1, v2}, Lcom/brakefield/infinitestudio/ui/SizeSweepView;->update(II)V

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 260
    iget-object v1, p0, Lcom/brakefield/painter/ui/toolbars/MainToolbar$1;->this$0:Lcom/brakefield/painter/ui/toolbars/MainToolbar;

    invoke-static {v1}, Lcom/brakefield/painter/ui/toolbars/MainToolbar;->access$100(Lcom/brakefield/painter/ui/toolbars/MainToolbar;)Lcom/brakefield/painter/databinding/MainToolbarBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/brakefield/painter/databinding/MainToolbarBinding;->sizeSweepView:Lcom/brakefield/infinitestudio/ui/SizeSweepView;

    invoke-virtual {v1, v0}, Lcom/brakefield/infinitestudio/ui/SizeSweepView;->getLocationInWindow([I)V

    .line 262
    invoke-static {p3}, Lcom/brakefield/painter/PainterLib;->setChangingValue(Z)V

    .line 265
    :cond_0
    invoke-static {p3}, Lcom/brakefield/painter/PainterLib;->setChangingValue(Z)V

    int-to-float v0, p2

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    float-to-double v0, v0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    .line 266
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    mul-double/2addr v0, v2

    double-to-float v0, v0

    invoke-static {v0}, Lcom/brakefield/painter/PainterLib;->setBrushSize(F)V

    .line 268
    iget-object v0, p0, Lcom/brakefield/painter/ui/toolbars/MainToolbar$1;->this$0:Lcom/brakefield/painter/ui/toolbars/MainToolbar;

    invoke-static {v0}, Lcom/brakefield/painter/ui/toolbars/MainToolbar;->access$200(Lcom/brakefield/painter/ui/toolbars/MainToolbar;)Lcom/brakefield/painter/ui/SimpleUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/brakefield/painter/ui/SimpleUI;->requestRender()V

    .line 270
    iget-object v0, p0, Lcom/brakefield/painter/ui/toolbars/MainToolbar$1;->this$0:Lcom/brakefield/painter/ui/toolbars/MainToolbar;

    invoke-static {v0}, Lcom/brakefield/painter/ui/toolbars/MainToolbar;->access$100(Lcom/brakefield/painter/ui/toolbars/MainToolbar;)Lcom/brakefield/painter/databinding/MainToolbarBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/brakefield/painter/databinding/MainToolbarBinding;->sizeSlider:Lcom/brakefield/infinitestudio/ui/SizePullButton;

    if-eq p1, v0, :cond_1

    .line 271
    iget-object p1, p0, Lcom/brakefield/painter/ui/toolbars/MainToolbar$1;->this$0:Lcom/brakefield/painter/ui/toolbars/MainToolbar;

    invoke-static {p1}, Lcom/brakefield/painter/ui/toolbars/MainToolbar;->access$100(Lcom/brakefield/painter/ui/toolbars/MainToolbar;)Lcom/brakefield/painter/databinding/MainToolbarBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/brakefield/painter/databinding/MainToolbarBinding;->sizeSlider:Lcom/brakefield/infinitestudio/ui/SizePullButton;

    invoke-virtual {p1, p2}, Lcom/brakefield/infinitestudio/ui/SizePullButton;->setProgress(I)V

    :cond_1
    if-eqz p3, :cond_3

    .line 275
    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getBrushPixelSize()F

    move-result p1

    const/high16 p2, 0x41200000    # 10.0f

    cmpg-float p2, p1, p2

    if-gez p2, :cond_2

    .line 276
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "%.1f"

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_2
    float-to-int p1, p1

    .line 277
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "%d"

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 278
    :goto_0
    iget-object p2, p0, Lcom/brakefield/painter/ui/toolbars/MainToolbar$1;->this$0:Lcom/brakefield/painter/ui/toolbars/MainToolbar;

    invoke-static {p2}, Lcom/brakefield/painter/ui/toolbars/MainToolbar;->access$200(Lcom/brakefield/painter/ui/toolbars/MainToolbar;)Lcom/brakefield/painter/ui/SimpleUI;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const v0, 0x7f120a9e

    invoke-static {v0}, Lcom/brakefield/infinitestudio/Strings;->get(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string v0, ": "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p3, " px"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/brakefield/painter/ui/SimpleUI;->showMessage(Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 9

    .line 285
    iget-object p1, p0, Lcom/brakefield/painter/ui/toolbars/MainToolbar$1;->this$0:Lcom/brakefield/painter/ui/toolbars/MainToolbar;

    invoke-static {p1}, Lcom/brakefield/painter/ui/toolbars/MainToolbar;->access$100(Lcom/brakefield/painter/ui/toolbars/MainToolbar;)Lcom/brakefield/painter/databinding/MainToolbarBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/brakefield/painter/databinding/MainToolbarBinding;->sizeSlider:Lcom/brakefield/infinitestudio/ui/SizePullButton;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Lcom/brakefield/infinitestudio/ui/SizePullButton;->setScaleValue(F)V

    .line 287
    iget-object p1, p0, Lcom/brakefield/painter/ui/toolbars/MainToolbar$1;->this$0:Lcom/brakefield/painter/ui/toolbars/MainToolbar;

    invoke-static {p1}, Lcom/brakefield/painter/ui/toolbars/MainToolbar;->access$000(Lcom/brakefield/painter/ui/toolbars/MainToolbar;)I

    move-result p1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 289
    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getBrushSize()F

    move-result p1

    const/high16 v0, 0x42c80000    # 100.0f

    div-float/2addr p1, v0

    float-to-double v0, p1

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    mul-double/2addr v0, v2

    double-to-float p1, v0

    .line 291
    iget-object v0, p0, Lcom/brakefield/painter/ui/toolbars/MainToolbar$1;->this$0:Lcom/brakefield/painter/ui/toolbars/MainToolbar;

    invoke-static {v0}, Lcom/brakefield/painter/ui/toolbars/MainToolbar;->access$100(Lcom/brakefield/painter/ui/toolbars/MainToolbar;)Lcom/brakefield/painter/databinding/MainToolbarBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/brakefield/painter/databinding/MainToolbarBinding;->sizeSweepView:Lcom/brakefield/infinitestudio/ui/SizeSweepView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/brakefield/infinitestudio/ui/SizeSweepView;->setVisibility(I)V

    .line 292
    iget-object v0, p0, Lcom/brakefield/painter/ui/toolbars/MainToolbar$1;->this$0:Lcom/brakefield/painter/ui/toolbars/MainToolbar;

    invoke-static {v0}, Lcom/brakefield/painter/ui/toolbars/MainToolbar;->access$100(Lcom/brakefield/painter/ui/toolbars/MainToolbar;)Lcom/brakefield/painter/databinding/MainToolbarBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/brakefield/painter/databinding/MainToolbarBinding;->sizeSweepView:Lcom/brakefield/infinitestudio/ui/SizeSweepView;

    invoke-virtual {v0, p1}, Lcom/brakefield/infinitestudio/ui/SizeSweepView;->setPreviousValue(F)V

    .line 293
    iget-object v0, p0, Lcom/brakefield/painter/ui/toolbars/MainToolbar$1;->this$0:Lcom/brakefield/painter/ui/toolbars/MainToolbar;

    invoke-static {v0}, Lcom/brakefield/painter/ui/toolbars/MainToolbar;->access$100(Lcom/brakefield/painter/ui/toolbars/MainToolbar;)Lcom/brakefield/painter/databinding/MainToolbarBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/brakefield/painter/databinding/MainToolbarBinding;->sizeSweepView:Lcom/brakefield/infinitestudio/ui/SizeSweepView;

    invoke-virtual {v0, p1}, Lcom/brakefield/infinitestudio/ui/SizeSweepView;->setValue(F)V

    const/4 p1, 0x2

    new-array v0, p1, [I

    .line 296
    iget-object v1, p0, Lcom/brakefield/painter/ui/toolbars/MainToolbar$1;->this$0:Lcom/brakefield/painter/ui/toolbars/MainToolbar;

    invoke-static {v1}, Lcom/brakefield/painter/ui/toolbars/MainToolbar;->access$100(Lcom/brakefield/painter/ui/toolbars/MainToolbar;)Lcom/brakefield/painter/databinding/MainToolbarBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/brakefield/painter/databinding/MainToolbarBinding;->sizeSlider:Lcom/brakefield/infinitestudio/ui/SizePullButton;

    invoke-virtual {v1, v0}, Lcom/brakefield/infinitestudio/ui/SizePullButton;->getLocationInWindow([I)V

    .line 298
    iget v0, p0, Lcom/brakefield/painter/ui/toolbars/MainToolbar$1;->val$cornerSweepSize:I

    iget-object v1, p0, Lcom/brakefield/painter/ui/toolbars/MainToolbar$1;->this$0:Lcom/brakefield/painter/ui/toolbars/MainToolbar;

    invoke-static {v1}, Lcom/brakefield/painter/ui/toolbars/MainToolbar;->access$100(Lcom/brakefield/painter/ui/toolbars/MainToolbar;)Lcom/brakefield/painter/databinding/MainToolbarBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/brakefield/painter/databinding/MainToolbarBinding;->sizeSlider:Lcom/brakefield/infinitestudio/ui/SizePullButton;

    invoke-virtual {v1}, Lcom/brakefield/infinitestudio/ui/SizePullButton;->getWidth()I

    move-result v1

    div-int/2addr v1, p1

    sub-int/2addr v0, v1

    .line 299
    iget v1, p0, Lcom/brakefield/painter/ui/toolbars/MainToolbar$1;->val$cornerSweepSize:I

    iget-object v2, p0, Lcom/brakefield/painter/ui/toolbars/MainToolbar$1;->this$0:Lcom/brakefield/painter/ui/toolbars/MainToolbar;

    invoke-static {v2}, Lcom/brakefield/painter/ui/toolbars/MainToolbar;->access$100(Lcom/brakefield/painter/ui/toolbars/MainToolbar;)Lcom/brakefield/painter/databinding/MainToolbarBinding;

    move-result-object v2

    iget-object v2, v2, Lcom/brakefield/painter/databinding/MainToolbarBinding;->sizeSlider:Lcom/brakefield/infinitestudio/ui/SizePullButton;

    invoke-virtual {v2}, Lcom/brakefield/infinitestudio/ui/SizePullButton;->getHeight()I

    move-result v2

    div-int/2addr v2, p1

    sub-int/2addr v1, v2

    .line 301
    new-instance p1, Landroid/view/animation/ScaleAnimation;

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    int-to-float v7, v0

    int-to-float v8, v1

    move-object v2, p1

    invoke-direct/range {v2 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    .line 302
    invoke-static {}, Lcom/brakefield/infinitestudio/ui/animation/Easing;->In()Landroid/view/animation/Interpolator;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/animation/ScaleAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    const-wide/16 v0, 0x28

    .line 303
    invoke-virtual {p1, v0, v1}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 305
    iget-object v0, p0, Lcom/brakefield/painter/ui/toolbars/MainToolbar$1;->this$0:Lcom/brakefield/painter/ui/toolbars/MainToolbar;

    invoke-static {v0}, Lcom/brakefield/painter/ui/toolbars/MainToolbar;->access$100(Lcom/brakefield/painter/ui/toolbars/MainToolbar;)Lcom/brakefield/painter/databinding/MainToolbarBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/brakefield/painter/databinding/MainToolbarBinding;->sizeSweepView:Lcom/brakefield/infinitestudio/ui/SizeSweepView;

    invoke-virtual {v0, p1}, Lcom/brakefield/infinitestudio/ui/SizeSweepView;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_0
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1

    const/4 p1, 0x1

    .line 311
    sput-boolean p1, Lcom/brakefield/painter/PainterGraphicsRenderer;->saveBrushPreview:Z

    .line 312
    iget-object p1, p0, Lcom/brakefield/painter/ui/toolbars/MainToolbar$1;->this$0:Lcom/brakefield/painter/ui/toolbars/MainToolbar;

    invoke-static {p1}, Lcom/brakefield/painter/ui/toolbars/MainToolbar;->access$100(Lcom/brakefield/painter/ui/toolbars/MainToolbar;)Lcom/brakefield/painter/databinding/MainToolbarBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/brakefield/painter/databinding/MainToolbarBinding;->sizeSlider:Lcom/brakefield/infinitestudio/ui/SizePullButton;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/brakefield/infinitestudio/ui/SizePullButton;->setScaleValue(F)V

    .line 313
    iget-object p1, p0, Lcom/brakefield/painter/ui/toolbars/MainToolbar$1;->this$0:Lcom/brakefield/painter/ui/toolbars/MainToolbar;

    invoke-static {p1}, Lcom/brakefield/painter/ui/toolbars/MainToolbar;->access$000(Lcom/brakefield/painter/ui/toolbars/MainToolbar;)I

    move-result p1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 314
    iget-object p1, p0, Lcom/brakefield/painter/ui/toolbars/MainToolbar$1;->this$0:Lcom/brakefield/painter/ui/toolbars/MainToolbar;

    invoke-static {p1}, Lcom/brakefield/painter/ui/toolbars/MainToolbar;->access$100(Lcom/brakefield/painter/ui/toolbars/MainToolbar;)Lcom/brakefield/painter/databinding/MainToolbarBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/brakefield/painter/databinding/MainToolbarBinding;->sizeSweepView:Lcom/brakefield/infinitestudio/ui/SizeSweepView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/brakefield/infinitestudio/ui/SizeSweepView;->setVisibility(I)V

    :cond_0
    const/4 p1, 0x0

    .line 316
    invoke-static {p1}, Lcom/brakefield/painter/PainterLib;->setChangingValue(Z)V

    .line 317
    iget-object p1, p0, Lcom/brakefield/painter/ui/toolbars/MainToolbar$1;->this$0:Lcom/brakefield/painter/ui/toolbars/MainToolbar;

    invoke-static {p1}, Lcom/brakefield/painter/ui/toolbars/MainToolbar;->access$200(Lcom/brakefield/painter/ui/toolbars/MainToolbar;)Lcom/brakefield/painter/ui/SimpleUI;

    move-result-object p1

    iget-object v0, p0, Lcom/brakefield/painter/ui/toolbars/MainToolbar$1;->val$activity:Landroid/app/Activity;

    invoke-virtual {p1, v0}, Lcom/brakefield/painter/ui/SimpleUI;->update(Landroid/app/Activity;)V

    return-void
.end method
