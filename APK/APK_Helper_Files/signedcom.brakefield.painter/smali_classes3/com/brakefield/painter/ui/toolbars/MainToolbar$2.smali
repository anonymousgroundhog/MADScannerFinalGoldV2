.class Lcom/brakefield/painter/ui/toolbars/MainToolbar$2;
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

    .line 353
    iput-object p1, p0, Lcom/brakefield/painter/ui/toolbars/MainToolbar$2;->this$0:Lcom/brakefield/painter/ui/toolbars/MainToolbar;

    iput p2, p0, Lcom/brakefield/painter/ui/toolbars/MainToolbar$2;->val$cornerSweepSize:I

    iput-object p3, p0, Lcom/brakefield/painter/ui/toolbars/MainToolbar$2;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 5

    .line 358
    iget-object v0, p0, Lcom/brakefield/painter/ui/toolbars/MainToolbar$2;->this$0:Lcom/brakefield/painter/ui/toolbars/MainToolbar;

    invoke-static {v0}, Lcom/brakefield/painter/ui/toolbars/MainToolbar;->access$000(Lcom/brakefield/painter/ui/toolbars/MainToolbar;)I

    move-result v0

    const/high16 v1, 0x42c80000    # 100.0f

    const/4 v2, 0x4

    if-ne v0, v2, :cond_0

    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getPaintMode()I

    move-result v0

    if-eqz v0, :cond_0

    .line 359
    iget-object v0, p0, Lcom/brakefield/painter/ui/toolbars/MainToolbar$2;->this$0:Lcom/brakefield/painter/ui/toolbars/MainToolbar;

    invoke-static {v0}, Lcom/brakefield/painter/ui/toolbars/MainToolbar;->access$200(Lcom/brakefield/painter/ui/toolbars/MainToolbar;)Lcom/brakefield/painter/ui/SimpleUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/brakefield/painter/ui/SimpleUI;->requestRender()V

    .line 360
    iget-object v0, p0, Lcom/brakefield/painter/ui/toolbars/MainToolbar$2;->this$0:Lcom/brakefield/painter/ui/toolbars/MainToolbar;

    invoke-static {v0}, Lcom/brakefield/painter/ui/toolbars/MainToolbar;->access$100(Lcom/brakefield/painter/ui/toolbars/MainToolbar;)Lcom/brakefield/painter/databinding/MainToolbarBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/brakefield/painter/databinding/MainToolbarBinding;->colorSweepView:Lcom/brakefield/infinitestudio/ui/ColorSweepView;

    int-to-float v2, p2

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getMax()I

    move-result p1

    int-to-float p1, p1

    div-float p1, v2, p1

    invoke-virtual {v0, p1}, Lcom/brakefield/infinitestudio/ui/ColorSweepView;->setValue(F)V

    .line 361
    iget-object p1, p0, Lcom/brakefield/painter/ui/toolbars/MainToolbar$2;->this$0:Lcom/brakefield/painter/ui/toolbars/MainToolbar;

    invoke-static {p1}, Lcom/brakefield/painter/ui/toolbars/MainToolbar;->access$100(Lcom/brakefield/painter/ui/toolbars/MainToolbar;)Lcom/brakefield/painter/databinding/MainToolbarBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/brakefield/painter/databinding/MainToolbarBinding;->colorSweepView:Lcom/brakefield/infinitestudio/ui/ColorSweepView;

    iget-object v0, p0, Lcom/brakefield/painter/ui/toolbars/MainToolbar$2;->this$0:Lcom/brakefield/painter/ui/toolbars/MainToolbar;

    invoke-static {v0}, Lcom/brakefield/painter/ui/toolbars/MainToolbar;->access$100(Lcom/brakefield/painter/ui/toolbars/MainToolbar;)Lcom/brakefield/painter/databinding/MainToolbarBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/brakefield/painter/databinding/MainToolbarBinding;->colorButton:Lcom/brakefield/infinitestudio/ui/ColorFillButton;

    iget v0, v0, Lcom/brakefield/infinitestudio/ui/ColorFillButton;->previousX:I

    iget-object v3, p0, Lcom/brakefield/painter/ui/toolbars/MainToolbar$2;->this$0:Lcom/brakefield/painter/ui/toolbars/MainToolbar;

    invoke-static {v3}, Lcom/brakefield/painter/ui/toolbars/MainToolbar;->access$100(Lcom/brakefield/painter/ui/toolbars/MainToolbar;)Lcom/brakefield/painter/databinding/MainToolbarBinding;

    move-result-object v3

    iget-object v3, v3, Lcom/brakefield/painter/databinding/MainToolbarBinding;->colorButton:Lcom/brakefield/infinitestudio/ui/ColorFillButton;

    iget v3, v3, Lcom/brakefield/infinitestudio/ui/ColorFillButton;->previousY:I

    invoke-virtual {p1, v0, v3}, Lcom/brakefield/infinitestudio/ui/ColorSweepView;->update(II)V

    div-float/2addr v2, v1

    .line 362
    invoke-static {v2}, Lcom/brakefield/painter/PainterLib;->setBrushOpacity(F)V

    goto/16 :goto_0

    :cond_0
    const/4 v0, 0x3

    new-array v0, v0, [F

    .line 365
    iget-object v3, p0, Lcom/brakefield/painter/ui/toolbars/MainToolbar$2;->this$0:Lcom/brakefield/painter/ui/toolbars/MainToolbar;

    invoke-static {v3}, Lcom/brakefield/painter/ui/toolbars/MainToolbar;->access$300(Lcom/brakefield/painter/ui/toolbars/MainToolbar;)F

    move-result v3

    const/4 v4, 0x0

    aput v3, v0, v4

    iget-object v3, p0, Lcom/brakefield/painter/ui/toolbars/MainToolbar$2;->this$0:Lcom/brakefield/painter/ui/toolbars/MainToolbar;

    invoke-static {v3}, Lcom/brakefield/painter/ui/toolbars/MainToolbar;->access$400(Lcom/brakefield/painter/ui/toolbars/MainToolbar;)F

    move-result v3

    const/4 v4, 0x1

    aput v3, v0, v4

    int-to-float v3, p2

    div-float v1, v3, v1

    const/4 v4, 0x2

    aput v1, v0, v4

    invoke-static {v0}, Lcom/brakefield/infinitestudio/color/HSLColor;->toRGB([F)I

    move-result v0

    .line 366
    iget-object v1, p0, Lcom/brakefield/painter/ui/toolbars/MainToolbar$2;->this$0:Lcom/brakefield/painter/ui/toolbars/MainToolbar;

    invoke-static {v1}, Lcom/brakefield/painter/ui/toolbars/MainToolbar;->access$000(Lcom/brakefield/painter/ui/toolbars/MainToolbar;)I

    move-result v1

    if-ne v1, v2, :cond_1

    .line 367
    sput v0, Lcom/brakefield/infinitestudio/color/PaintManager;->color:I

    .line 368
    iget-object v1, p0, Lcom/brakefield/painter/ui/toolbars/MainToolbar$2;->this$0:Lcom/brakefield/painter/ui/toolbars/MainToolbar;

    invoke-static {v1}, Lcom/brakefield/painter/ui/toolbars/MainToolbar;->access$100(Lcom/brakefield/painter/ui/toolbars/MainToolbar;)Lcom/brakefield/painter/databinding/MainToolbarBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/brakefield/painter/databinding/MainToolbarBinding;->colorSweepView:Lcom/brakefield/infinitestudio/ui/ColorSweepView;

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getMax()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr v3, p1

    invoke-virtual {v1, v3}, Lcom/brakefield/infinitestudio/ui/ColorSweepView;->setValue(F)V

    .line 369
    iget-object p1, p0, Lcom/brakefield/painter/ui/toolbars/MainToolbar$2;->this$0:Lcom/brakefield/painter/ui/toolbars/MainToolbar;

    invoke-static {p1}, Lcom/brakefield/painter/ui/toolbars/MainToolbar;->access$100(Lcom/brakefield/painter/ui/toolbars/MainToolbar;)Lcom/brakefield/painter/databinding/MainToolbarBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/brakefield/painter/databinding/MainToolbarBinding;->colorSweepView:Lcom/brakefield/infinitestudio/ui/ColorSweepView;

    iget-object v1, p0, Lcom/brakefield/painter/ui/toolbars/MainToolbar$2;->this$0:Lcom/brakefield/painter/ui/toolbars/MainToolbar;

    invoke-static {v1}, Lcom/brakefield/painter/ui/toolbars/MainToolbar;->access$100(Lcom/brakefield/painter/ui/toolbars/MainToolbar;)Lcom/brakefield/painter/databinding/MainToolbarBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/brakefield/painter/databinding/MainToolbarBinding;->colorButton:Lcom/brakefield/infinitestudio/ui/ColorFillButton;

    iget v1, v1, Lcom/brakefield/infinitestudio/ui/ColorFillButton;->previousX:I

    iget-object v2, p0, Lcom/brakefield/painter/ui/toolbars/MainToolbar$2;->this$0:Lcom/brakefield/painter/ui/toolbars/MainToolbar;

    invoke-static {v2}, Lcom/brakefield/painter/ui/toolbars/MainToolbar;->access$100(Lcom/brakefield/painter/ui/toolbars/MainToolbar;)Lcom/brakefield/painter/databinding/MainToolbarBinding;

    move-result-object v2

    iget-object v2, v2, Lcom/brakefield/painter/databinding/MainToolbarBinding;->colorButton:Lcom/brakefield/infinitestudio/ui/ColorFillButton;

    iget v2, v2, Lcom/brakefield/infinitestudio/ui/ColorFillButton;->previousY:I

    invoke-virtual {p1, v1, v2}, Lcom/brakefield/infinitestudio/ui/ColorSweepView;->update(II)V

    .line 371
    :cond_1
    iget-object p1, p0, Lcom/brakefield/painter/ui/toolbars/MainToolbar$2;->this$0:Lcom/brakefield/painter/ui/toolbars/MainToolbar;

    invoke-static {p1}, Lcom/brakefield/painter/ui/toolbars/MainToolbar;->access$100(Lcom/brakefield/painter/ui/toolbars/MainToolbar;)Lcom/brakefield/painter/databinding/MainToolbarBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/brakefield/painter/databinding/MainToolbarBinding;->colorButton:Lcom/brakefield/infinitestudio/ui/ColorFillButton;

    invoke-virtual {p1, v0}, Lcom/brakefield/infinitestudio/ui/ColorFillButton;->setBackgroundColor(I)V

    .line 372
    invoke-static {v0}, Landroid/graphics/Color;->red(I)I

    move-result p1

    int-to-float p1, p1

    const/high16 v1, 0x437f0000    # 255.0f

    div-float/2addr p1, v1

    invoke-static {v0}, Landroid/graphics/Color;->green(I)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v1

    invoke-static {v0}, Landroid/graphics/Color;->blue(I)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v1

    invoke-static {p1, v2, v0}, Lcom/brakefield/painter/PainterLib;->setColor(FFF)V

    .line 373
    invoke-static {}, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;->updateFloatingWheel()V

    :goto_0
    if-eqz p3, :cond_4

    int-to-float p1, p2

    .line 378
    iget-object p2, p0, Lcom/brakefield/painter/ui/toolbars/MainToolbar$2;->this$0:Lcom/brakefield/painter/ui/toolbars/MainToolbar;

    invoke-static {p2}, Lcom/brakefield/painter/ui/toolbars/MainToolbar;->access$500(Lcom/brakefield/painter/ui/toolbars/MainToolbar;)F

    move-result p2

    sub-float/2addr p1, p2

    const/4 p2, 0x0

    cmpl-float p2, p1, p2

    if-lez p2, :cond_2

    const-string p2, "+"

    goto :goto_1

    :cond_2
    const-string p2, ""

    .line 381
    :goto_1
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p3

    const/high16 v0, 0x41200000    # 10.0f

    cmpg-float p3, p3, v0

    if-gez p3, :cond_3

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string p3, "%.1f"

    invoke-static {p3, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    .line 382
    :cond_3
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    float-to-int p1, p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string p3, "%d"

    invoke-static {p3, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 383
    :goto_2
    iget-object p2, p0, Lcom/brakefield/painter/ui/toolbars/MainToolbar$2;->this$0:Lcom/brakefield/painter/ui/toolbars/MainToolbar;

    invoke-static {p2}, Lcom/brakefield/painter/ui/toolbars/MainToolbar;->access$200(Lcom/brakefield/painter/ui/toolbars/MainToolbar;)Lcom/brakefield/painter/ui/SimpleUI;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const v0, 0x7f120079

    invoke-static {v0}, Lcom/brakefield/infinitestudio/Strings;->get(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string v0, ": "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p3, "%"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/brakefield/painter/ui/SimpleUI;->showMessage(Ljava/lang/String;)V

    :cond_4
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 12

    .line 390
    iget-object p1, p0, Lcom/brakefield/painter/ui/toolbars/MainToolbar$2;->this$0:Lcom/brakefield/painter/ui/toolbars/MainToolbar;

    invoke-static {p1}, Lcom/brakefield/painter/ui/toolbars/MainToolbar;->access$100(Lcom/brakefield/painter/ui/toolbars/MainToolbar;)Lcom/brakefield/painter/databinding/MainToolbarBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/brakefield/painter/databinding/MainToolbarBinding;->colorButton:Lcom/brakefield/infinitestudio/ui/ColorFillButton;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Lcom/brakefield/infinitestudio/ui/ColorFillButton;->setScaleValue(F)V

    .line 392
    iget-object p1, p0, Lcom/brakefield/painter/ui/toolbars/MainToolbar$2;->this$0:Lcom/brakefield/painter/ui/toolbars/MainToolbar;

    invoke-static {p1}, Lcom/brakefield/painter/ui/toolbars/MainToolbar;->access$000(Lcom/brakefield/painter/ui/toolbars/MainToolbar;)I

    move-result p1

    const-wide/16 v0, 0x28

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x4

    if-ne p1, v5, :cond_0

    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getPaintMode()I

    move-result p1

    if-eqz p1, :cond_0

    .line 394
    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getBrushOpacity()F

    move-result p1

    const/high16 v5, 0x42c80000    # 100.0f

    div-float/2addr p1, v5

    .line 396
    iget-object v5, p0, Lcom/brakefield/painter/ui/toolbars/MainToolbar$2;->this$0:Lcom/brakefield/painter/ui/toolbars/MainToolbar;

    invoke-static {v5}, Lcom/brakefield/painter/ui/toolbars/MainToolbar;->access$100(Lcom/brakefield/painter/ui/toolbars/MainToolbar;)Lcom/brakefield/painter/databinding/MainToolbarBinding;

    move-result-object v5

    iget-object v5, v5, Lcom/brakefield/painter/databinding/MainToolbarBinding;->colorSweepView:Lcom/brakefield/infinitestudio/ui/ColorSweepView;

    invoke-virtual {v5, v3}, Lcom/brakefield/infinitestudio/ui/ColorSweepView;->setVisibility(I)V

    .line 397
    iget-object v3, p0, Lcom/brakefield/painter/ui/toolbars/MainToolbar$2;->this$0:Lcom/brakefield/painter/ui/toolbars/MainToolbar;

    invoke-static {v3}, Lcom/brakefield/painter/ui/toolbars/MainToolbar;->access$100(Lcom/brakefield/painter/ui/toolbars/MainToolbar;)Lcom/brakefield/painter/databinding/MainToolbarBinding;

    move-result-object v3

    iget-object v3, v3, Lcom/brakefield/painter/databinding/MainToolbarBinding;->colorSweepView:Lcom/brakefield/infinitestudio/ui/ColorSweepView;

    invoke-virtual {v3, p1}, Lcom/brakefield/infinitestudio/ui/ColorSweepView;->setPreviousValue(F)V

    .line 398
    iget-object v3, p0, Lcom/brakefield/painter/ui/toolbars/MainToolbar$2;->this$0:Lcom/brakefield/painter/ui/toolbars/MainToolbar;

    invoke-static {v3}, Lcom/brakefield/painter/ui/toolbars/MainToolbar;->access$100(Lcom/brakefield/painter/ui/toolbars/MainToolbar;)Lcom/brakefield/painter/databinding/MainToolbarBinding;

    move-result-object v3

    iget-object v3, v3, Lcom/brakefield/painter/databinding/MainToolbarBinding;->colorSweepView:Lcom/brakefield/infinitestudio/ui/ColorSweepView;

    invoke-virtual {v3, p1}, Lcom/brakefield/infinitestudio/ui/ColorSweepView;->setValue(F)V

    .line 399
    iget-object p1, p0, Lcom/brakefield/painter/ui/toolbars/MainToolbar$2;->this$0:Lcom/brakefield/painter/ui/toolbars/MainToolbar;

    invoke-static {p1}, Lcom/brakefield/painter/ui/toolbars/MainToolbar;->access$100(Lcom/brakefield/painter/ui/toolbars/MainToolbar;)Lcom/brakefield/painter/databinding/MainToolbarBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/brakefield/painter/databinding/MainToolbarBinding;->colorSweepView:Lcom/brakefield/infinitestudio/ui/ColorSweepView;

    invoke-virtual {p1, v2}, Lcom/brakefield/infinitestudio/ui/ColorSweepView;->setChangingOpacity(Z)V

    new-array p1, v4, [I

    .line 402
    iget-object v2, p0, Lcom/brakefield/painter/ui/toolbars/MainToolbar$2;->this$0:Lcom/brakefield/painter/ui/toolbars/MainToolbar;

    invoke-static {v2}, Lcom/brakefield/painter/ui/toolbars/MainToolbar;->access$100(Lcom/brakefield/painter/ui/toolbars/MainToolbar;)Lcom/brakefield/painter/databinding/MainToolbarBinding;

    move-result-object v2

    iget-object v2, v2, Lcom/brakefield/painter/databinding/MainToolbarBinding;->colorButton:Lcom/brakefield/infinitestudio/ui/ColorFillButton;

    invoke-virtual {v2, p1}, Lcom/brakefield/infinitestudio/ui/ColorFillButton;->getLocationInWindow([I)V

    .line 404
    iget-object p1, p0, Lcom/brakefield/painter/ui/toolbars/MainToolbar$2;->this$0:Lcom/brakefield/painter/ui/toolbars/MainToolbar;

    invoke-static {p1}, Lcom/brakefield/painter/ui/toolbars/MainToolbar;->access$100(Lcom/brakefield/painter/ui/toolbars/MainToolbar;)Lcom/brakefield/painter/databinding/MainToolbarBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/brakefield/painter/databinding/MainToolbarBinding;->colorButton:Lcom/brakefield/infinitestudio/ui/ColorFillButton;

    invoke-virtual {p1}, Lcom/brakefield/infinitestudio/ui/ColorFillButton;->getWidth()I

    move-result p1

    div-int/2addr p1, v4

    .line 405
    iget v2, p0, Lcom/brakefield/painter/ui/toolbars/MainToolbar$2;->val$cornerSweepSize:I

    iget-object v3, p0, Lcom/brakefield/painter/ui/toolbars/MainToolbar$2;->this$0:Lcom/brakefield/painter/ui/toolbars/MainToolbar;

    invoke-static {v3}, Lcom/brakefield/painter/ui/toolbars/MainToolbar;->access$100(Lcom/brakefield/painter/ui/toolbars/MainToolbar;)Lcom/brakefield/painter/databinding/MainToolbarBinding;

    move-result-object v3

    iget-object v3, v3, Lcom/brakefield/painter/databinding/MainToolbarBinding;->colorButton:Lcom/brakefield/infinitestudio/ui/ColorFillButton;

    invoke-virtual {v3}, Lcom/brakefield/infinitestudio/ui/ColorFillButton;->getHeight()I

    move-result v3

    div-int/2addr v3, v4

    sub-int/2addr v2, v3

    .line 407
    new-instance v10, Landroid/view/animation/ScaleAnimation;

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    int-to-float v8, p1

    int-to-float v9, v2

    move-object v3, v10

    invoke-direct/range {v3 .. v9}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    .line 408
    invoke-static {}, Lcom/brakefield/infinitestudio/ui/animation/Easing;->In()Landroid/view/animation/Interpolator;

    move-result-object p1

    invoke-virtual {v10, p1}, Landroid/view/animation/ScaleAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 409
    invoke-virtual {v10, v0, v1}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 411
    iget-object p1, p0, Lcom/brakefield/painter/ui/toolbars/MainToolbar$2;->this$0:Lcom/brakefield/painter/ui/toolbars/MainToolbar;

    invoke-static {p1}, Lcom/brakefield/painter/ui/toolbars/MainToolbar;->access$100(Lcom/brakefield/painter/ui/toolbars/MainToolbar;)Lcom/brakefield/painter/databinding/MainToolbarBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/brakefield/painter/databinding/MainToolbarBinding;->colorSweepView:Lcom/brakefield/infinitestudio/ui/ColorSweepView;

    invoke-virtual {p1, v10}, Lcom/brakefield/infinitestudio/ui/ColorSweepView;->startAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_2

    :cond_0
    const/4 p1, 0x3

    new-array p1, p1, [F

    .line 417
    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getColor()I

    move-result v6

    invoke-static {v6, p1}, Lcom/brakefield/infinitestudio/color/HSLColor;->fromRGB(I[F)[F

    .line 419
    iget-object v6, p0, Lcom/brakefield/painter/ui/toolbars/MainToolbar$2;->this$0:Lcom/brakefield/painter/ui/toolbars/MainToolbar;

    invoke-static {v6}, Lcom/brakefield/painter/ui/toolbars/MainToolbar;->access$300(Lcom/brakefield/painter/ui/toolbars/MainToolbar;)F

    move-result v6

    iget-object v7, p0, Lcom/brakefield/painter/ui/toolbars/MainToolbar$2;->this$0:Lcom/brakefield/painter/ui/toolbars/MainToolbar;

    invoke-static {v7}, Lcom/brakefield/painter/ui/toolbars/MainToolbar;->access$400(Lcom/brakefield/painter/ui/toolbars/MainToolbar;)F

    move-result v7

    aget v8, p1, v4

    invoke-static {v6, v7, v8}, Lcom/brakefield/infinitestudio/color/HSLColor;->toRGB(FFF)I

    move-result v6

    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getColor()I

    move-result v7

    if-eq v6, v7, :cond_1

    .line 420
    iget-object v6, p0, Lcom/brakefield/painter/ui/toolbars/MainToolbar$2;->this$0:Lcom/brakefield/painter/ui/toolbars/MainToolbar;

    aget v7, p1, v3

    invoke-static {v6, v7}, Lcom/brakefield/painter/ui/toolbars/MainToolbar;->access$302(Lcom/brakefield/painter/ui/toolbars/MainToolbar;F)F

    .line 421
    iget-object v6, p0, Lcom/brakefield/painter/ui/toolbars/MainToolbar$2;->this$0:Lcom/brakefield/painter/ui/toolbars/MainToolbar;

    aget v7, p1, v2

    invoke-static {v6, v7}, Lcom/brakefield/painter/ui/toolbars/MainToolbar;->access$402(Lcom/brakefield/painter/ui/toolbars/MainToolbar;F)F

    .line 424
    :cond_1
    iget-object v6, p0, Lcom/brakefield/painter/ui/toolbars/MainToolbar$2;->this$0:Lcom/brakefield/painter/ui/toolbars/MainToolbar;

    aget v7, p1, v4

    invoke-static {v6, v7}, Lcom/brakefield/painter/ui/toolbars/MainToolbar;->access$502(Lcom/brakefield/painter/ui/toolbars/MainToolbar;F)F

    .line 426
    iget-object v6, p0, Lcom/brakefield/painter/ui/toolbars/MainToolbar$2;->this$0:Lcom/brakefield/painter/ui/toolbars/MainToolbar;

    invoke-static {v6}, Lcom/brakefield/painter/ui/toolbars/MainToolbar;->access$000(Lcom/brakefield/painter/ui/toolbars/MainToolbar;)I

    move-result v6

    if-ne v6, v5, :cond_4

    .line 428
    invoke-static {}, Lcom/brakefield/painter/PainterLib;->isCloning()Z

    move-result v5

    if-nez v5, :cond_3

    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getPaintMode()I

    move-result v5

    if-eqz v5, :cond_2

    goto/16 :goto_0

    :cond_2
    aget p1, p1, v4

    .line 433
    iget-object v5, p0, Lcom/brakefield/painter/ui/toolbars/MainToolbar$2;->this$0:Lcom/brakefield/painter/ui/toolbars/MainToolbar;

    invoke-static {v5}, Lcom/brakefield/painter/ui/toolbars/MainToolbar;->access$300(Lcom/brakefield/painter/ui/toolbars/MainToolbar;)F

    move-result v5

    iget-object v6, p0, Lcom/brakefield/painter/ui/toolbars/MainToolbar$2;->this$0:Lcom/brakefield/painter/ui/toolbars/MainToolbar;

    invoke-static {v6}, Lcom/brakefield/painter/ui/toolbars/MainToolbar;->access$400(Lcom/brakefield/painter/ui/toolbars/MainToolbar;)F

    move-result v6

    const/high16 v7, 0x3f000000    # 0.5f

    invoke-static {v5, v6, v7}, Lcom/brakefield/infinitestudio/color/HSLColor;->toRGB(FFF)I

    move-result v5

    sput v5, Lcom/brakefield/infinitestudio/color/PaintManager;->color:I

    .line 435
    iget-object v5, p0, Lcom/brakefield/painter/ui/toolbars/MainToolbar$2;->this$0:Lcom/brakefield/painter/ui/toolbars/MainToolbar;

    invoke-static {v5}, Lcom/brakefield/painter/ui/toolbars/MainToolbar;->access$100(Lcom/brakefield/painter/ui/toolbars/MainToolbar;)Lcom/brakefield/painter/databinding/MainToolbarBinding;

    move-result-object v5

    iget-object v5, v5, Lcom/brakefield/painter/databinding/MainToolbarBinding;->colorSweepView:Lcom/brakefield/infinitestudio/ui/ColorSweepView;

    invoke-virtual {v5, v3}, Lcom/brakefield/infinitestudio/ui/ColorSweepView;->setVisibility(I)V

    .line 436
    iget-object v5, p0, Lcom/brakefield/painter/ui/toolbars/MainToolbar$2;->this$0:Lcom/brakefield/painter/ui/toolbars/MainToolbar;

    invoke-static {v5}, Lcom/brakefield/painter/ui/toolbars/MainToolbar;->access$100(Lcom/brakefield/painter/ui/toolbars/MainToolbar;)Lcom/brakefield/painter/databinding/MainToolbarBinding;

    move-result-object v5

    iget-object v5, v5, Lcom/brakefield/painter/databinding/MainToolbarBinding;->colorSweepView:Lcom/brakefield/infinitestudio/ui/ColorSweepView;

    invoke-virtual {v5, p1}, Lcom/brakefield/infinitestudio/ui/ColorSweepView;->setPreviousValue(F)V

    .line 437
    iget-object v5, p0, Lcom/brakefield/painter/ui/toolbars/MainToolbar$2;->this$0:Lcom/brakefield/painter/ui/toolbars/MainToolbar;

    invoke-static {v5}, Lcom/brakefield/painter/ui/toolbars/MainToolbar;->access$100(Lcom/brakefield/painter/ui/toolbars/MainToolbar;)Lcom/brakefield/painter/databinding/MainToolbarBinding;

    move-result-object v5

    iget-object v5, v5, Lcom/brakefield/painter/databinding/MainToolbarBinding;->colorSweepView:Lcom/brakefield/infinitestudio/ui/ColorSweepView;

    invoke-virtual {v5, p1}, Lcom/brakefield/infinitestudio/ui/ColorSweepView;->setValue(F)V

    .line 438
    iget-object p1, p0, Lcom/brakefield/painter/ui/toolbars/MainToolbar$2;->this$0:Lcom/brakefield/painter/ui/toolbars/MainToolbar;

    invoke-static {p1}, Lcom/brakefield/painter/ui/toolbars/MainToolbar;->access$100(Lcom/brakefield/painter/ui/toolbars/MainToolbar;)Lcom/brakefield/painter/databinding/MainToolbarBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/brakefield/painter/databinding/MainToolbarBinding;->colorSweepView:Lcom/brakefield/infinitestudio/ui/ColorSweepView;

    invoke-virtual {p1, v3}, Lcom/brakefield/infinitestudio/ui/ColorSweepView;->setChangingOpacity(Z)V

    new-array p1, v4, [I

    .line 441
    iget-object v3, p0, Lcom/brakefield/painter/ui/toolbars/MainToolbar$2;->this$0:Lcom/brakefield/painter/ui/toolbars/MainToolbar;

    invoke-static {v3}, Lcom/brakefield/painter/ui/toolbars/MainToolbar;->access$100(Lcom/brakefield/painter/ui/toolbars/MainToolbar;)Lcom/brakefield/painter/databinding/MainToolbarBinding;

    move-result-object v3

    iget-object v3, v3, Lcom/brakefield/painter/databinding/MainToolbarBinding;->colorButton:Lcom/brakefield/infinitestudio/ui/ColorFillButton;

    invoke-virtual {v3, p1}, Lcom/brakefield/infinitestudio/ui/ColorFillButton;->getLocationInWindow([I)V

    .line 443
    iget-object p1, p0, Lcom/brakefield/painter/ui/toolbars/MainToolbar$2;->this$0:Lcom/brakefield/painter/ui/toolbars/MainToolbar;

    invoke-static {p1}, Lcom/brakefield/painter/ui/toolbars/MainToolbar;->access$100(Lcom/brakefield/painter/ui/toolbars/MainToolbar;)Lcom/brakefield/painter/databinding/MainToolbarBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/brakefield/painter/databinding/MainToolbarBinding;->colorButton:Lcom/brakefield/infinitestudio/ui/ColorFillButton;

    invoke-virtual {p1}, Lcom/brakefield/infinitestudio/ui/ColorFillButton;->getWidth()I

    move-result p1

    div-int/2addr p1, v4

    .line 444
    iget v3, p0, Lcom/brakefield/painter/ui/toolbars/MainToolbar$2;->val$cornerSweepSize:I

    iget-object v5, p0, Lcom/brakefield/painter/ui/toolbars/MainToolbar$2;->this$0:Lcom/brakefield/painter/ui/toolbars/MainToolbar;

    invoke-static {v5}, Lcom/brakefield/painter/ui/toolbars/MainToolbar;->access$100(Lcom/brakefield/painter/ui/toolbars/MainToolbar;)Lcom/brakefield/painter/databinding/MainToolbarBinding;

    move-result-object v5

    iget-object v5, v5, Lcom/brakefield/painter/databinding/MainToolbarBinding;->colorButton:Lcom/brakefield/infinitestudio/ui/ColorFillButton;

    invoke-virtual {v5}, Lcom/brakefield/infinitestudio/ui/ColorFillButton;->getHeight()I

    move-result v5

    div-int/2addr v5, v4

    sub-int/2addr v3, v5

    .line 446
    new-instance v11, Landroid/view/animation/ScaleAnimation;

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    int-to-float v9, p1

    int-to-float v10, v3

    move-object v4, v11

    invoke-direct/range {v4 .. v10}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    .line 447
    invoke-static {}, Lcom/brakefield/infinitestudio/ui/animation/Easing;->In()Landroid/view/animation/Interpolator;

    move-result-object p1

    invoke-virtual {v11, p1}, Landroid/view/animation/ScaleAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 448
    invoke-virtual {v11, v0, v1}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 450
    iget-object p1, p0, Lcom/brakefield/painter/ui/toolbars/MainToolbar$2;->this$0:Lcom/brakefield/painter/ui/toolbars/MainToolbar;

    invoke-static {p1}, Lcom/brakefield/painter/ui/toolbars/MainToolbar;->access$100(Lcom/brakefield/painter/ui/toolbars/MainToolbar;)Lcom/brakefield/painter/databinding/MainToolbarBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/brakefield/painter/databinding/MainToolbarBinding;->colorSweepView:Lcom/brakefield/infinitestudio/ui/ColorSweepView;

    invoke-virtual {p1, v11}, Lcom/brakefield/infinitestudio/ui/ColorSweepView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_1

    :cond_3
    :goto_0
    return-void

    .line 453
    :cond_4
    :goto_1
    iget-object p1, p0, Lcom/brakefield/painter/ui/toolbars/MainToolbar$2;->this$0:Lcom/brakefield/painter/ui/toolbars/MainToolbar;

    invoke-static {p1}, Lcom/brakefield/painter/ui/toolbars/MainToolbar;->access$100(Lcom/brakefield/painter/ui/toolbars/MainToolbar;)Lcom/brakefield/painter/databinding/MainToolbarBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/brakefield/painter/databinding/MainToolbarBinding;->colorButton:Lcom/brakefield/infinitestudio/ui/ColorFillButton;

    invoke-virtual {p1, v2}, Lcom/brakefield/infinitestudio/ui/ColorFillButton;->setPreviousColor(Z)V

    :goto_2
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2

    .line 459
    iget-object p1, p0, Lcom/brakefield/painter/ui/toolbars/MainToolbar$2;->this$0:Lcom/brakefield/painter/ui/toolbars/MainToolbar;

    invoke-static {p1}, Lcom/brakefield/painter/ui/toolbars/MainToolbar;->access$000(Lcom/brakefield/painter/ui/toolbars/MainToolbar;)I

    move-result p1

    const/16 v0, 0x8

    const/4 v1, 0x4

    if-ne p1, v1, :cond_0

    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getPaintMode()I

    move-result p1

    if-eqz p1, :cond_0

    .line 460
    iget-object p1, p0, Lcom/brakefield/painter/ui/toolbars/MainToolbar$2;->this$0:Lcom/brakefield/painter/ui/toolbars/MainToolbar;

    invoke-static {p1}, Lcom/brakefield/painter/ui/toolbars/MainToolbar;->access$100(Lcom/brakefield/painter/ui/toolbars/MainToolbar;)Lcom/brakefield/painter/databinding/MainToolbarBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/brakefield/painter/databinding/MainToolbarBinding;->colorSweepView:Lcom/brakefield/infinitestudio/ui/ColorSweepView;

    invoke-virtual {p1, v0}, Lcom/brakefield/infinitestudio/ui/ColorSweepView;->setVisibility(I)V

    .line 461
    iget-object p1, p0, Lcom/brakefield/painter/ui/toolbars/MainToolbar$2;->this$0:Lcom/brakefield/painter/ui/toolbars/MainToolbar;

    invoke-static {p1}, Lcom/brakefield/painter/ui/toolbars/MainToolbar;->access$200(Lcom/brakefield/painter/ui/toolbars/MainToolbar;)Lcom/brakefield/painter/ui/SimpleUI;

    move-result-object p1

    iget-object v0, p0, Lcom/brakefield/painter/ui/toolbars/MainToolbar$2;->val$activity:Landroid/app/Activity;

    invoke-virtual {p1, v0}, Lcom/brakefield/painter/ui/SimpleUI;->update(Landroid/app/Activity;)V

    goto :goto_0

    .line 463
    :cond_0
    iget-object p1, p0, Lcom/brakefield/painter/ui/toolbars/MainToolbar$2;->this$0:Lcom/brakefield/painter/ui/toolbars/MainToolbar;

    invoke-static {p1}, Lcom/brakefield/painter/ui/toolbars/MainToolbar;->access$000(Lcom/brakefield/painter/ui/toolbars/MainToolbar;)I

    move-result p1

    if-ne p1, v1, :cond_1

    iget-object p1, p0, Lcom/brakefield/painter/ui/toolbars/MainToolbar$2;->this$0:Lcom/brakefield/painter/ui/toolbars/MainToolbar;

    invoke-static {p1}, Lcom/brakefield/painter/ui/toolbars/MainToolbar;->access$100(Lcom/brakefield/painter/ui/toolbars/MainToolbar;)Lcom/brakefield/painter/databinding/MainToolbarBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/brakefield/painter/databinding/MainToolbarBinding;->colorSweepView:Lcom/brakefield/infinitestudio/ui/ColorSweepView;

    invoke-virtual {p1, v0}, Lcom/brakefield/infinitestudio/ui/ColorSweepView;->setVisibility(I)V

    .line 464
    :cond_1
    iget-object p1, p0, Lcom/brakefield/painter/ui/toolbars/MainToolbar$2;->this$0:Lcom/brakefield/painter/ui/toolbars/MainToolbar;

    invoke-static {p1}, Lcom/brakefield/painter/ui/toolbars/MainToolbar;->access$100(Lcom/brakefield/painter/ui/toolbars/MainToolbar;)Lcom/brakefield/painter/databinding/MainToolbarBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/brakefield/painter/databinding/MainToolbarBinding;->colorButton:Lcom/brakefield/infinitestudio/ui/ColorFillButton;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/brakefield/infinitestudio/ui/ColorFillButton;->setScaleValue(F)V

    .line 465
    iget-object p1, p0, Lcom/brakefield/painter/ui/toolbars/MainToolbar$2;->this$0:Lcom/brakefield/painter/ui/toolbars/MainToolbar;

    invoke-static {p1}, Lcom/brakefield/painter/ui/toolbars/MainToolbar;->access$100(Lcom/brakefield/painter/ui/toolbars/MainToolbar;)Lcom/brakefield/painter/databinding/MainToolbarBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/brakefield/painter/databinding/MainToolbarBinding;->colorButton:Lcom/brakefield/infinitestudio/ui/ColorFillButton;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/brakefield/infinitestudio/ui/ColorFillButton;->setPreviousColor(Z)V

    .line 466
    invoke-static {}, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;->updateFloatingWheel()V

    :goto_0
    return-void
.end method
