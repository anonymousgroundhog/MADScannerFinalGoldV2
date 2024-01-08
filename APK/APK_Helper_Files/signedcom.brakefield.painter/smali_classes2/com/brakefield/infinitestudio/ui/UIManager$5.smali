.class Lcom/brakefield/infinitestudio/ui/UIManager$5;
.super Ljava/lang/Object;
.source "UIManager.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/brakefield/infinitestudio/ui/UIManager;->setupSlider(Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;Lcom/brakefield/infinitestudio/ui/UI$OnDisplayProgressValue;Lcom/brakefield/infinitestudio/ui/UIManager$OnSliderProgressChangedListener;Lcom/brakefield/infinitestudio/ui/UIManager$OnTrackTouchListener;Lcom/brakefield/infinitestudio/ui/UIManager$Value;Lcom/brakefield/infinitestudio/ui/UIManager$TransformProgress;FFLandroidx/constraintlayout/widget/ConstraintLayout;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$displayProgressValue:Lcom/brakefield/infinitestudio/ui/UI$OnDisplayProgressValue;

.field final synthetic val$minValue:F

.field final synthetic val$range:F

.field final synthetic val$scaledMax:F

.field final synthetic val$slider:Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;

.field final synthetic val$sliderProgressChangedListener:Lcom/brakefield/infinitestudio/ui/UIManager$OnSliderProgressChangedListener;

.field final synthetic val$trackTouchListener:Lcom/brakefield/infinitestudio/ui/UIManager$OnTrackTouchListener;

.field final synthetic val$transformProgress:Lcom/brakefield/infinitestudio/ui/UIManager$TransformProgress;

.field final synthetic val$valueRef:Lcom/brakefield/infinitestudio/ui/UIManager$Value;


# direct methods
.method constructor <init>(FLcom/brakefield/infinitestudio/ui/UIManager$TransformProgress;FFLcom/brakefield/infinitestudio/ui/LabeledSliderLayout;Lcom/brakefield/infinitestudio/ui/UI$OnDisplayProgressValue;Lcom/brakefield/infinitestudio/ui/UIManager$Value;Lcom/brakefield/infinitestudio/ui/UIManager$OnSliderProgressChangedListener;Lcom/brakefield/infinitestudio/ui/UIManager$OnTrackTouchListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 314
    iput p1, p0, Lcom/brakefield/infinitestudio/ui/UIManager$5;->val$scaledMax:F

    iput-object p2, p0, Lcom/brakefield/infinitestudio/ui/UIManager$5;->val$transformProgress:Lcom/brakefield/infinitestudio/ui/UIManager$TransformProgress;

    iput p3, p0, Lcom/brakefield/infinitestudio/ui/UIManager$5;->val$minValue:F

    iput p4, p0, Lcom/brakefield/infinitestudio/ui/UIManager$5;->val$range:F

    iput-object p5, p0, Lcom/brakefield/infinitestudio/ui/UIManager$5;->val$slider:Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;

    iput-object p6, p0, Lcom/brakefield/infinitestudio/ui/UIManager$5;->val$displayProgressValue:Lcom/brakefield/infinitestudio/ui/UI$OnDisplayProgressValue;

    iput-object p7, p0, Lcom/brakefield/infinitestudio/ui/UIManager$5;->val$valueRef:Lcom/brakefield/infinitestudio/ui/UIManager$Value;

    iput-object p8, p0, Lcom/brakefield/infinitestudio/ui/UIManager$5;->val$sliderProgressChangedListener:Lcom/brakefield/infinitestudio/ui/UIManager$OnSliderProgressChangedListener;

    iput-object p9, p0, Lcom/brakefield/infinitestudio/ui/UIManager$5;->val$trackTouchListener:Lcom/brakefield/infinitestudio/ui/UIManager$OnTrackTouchListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 3

    int-to-float p2, p2

    .line 317
    iget v0, p0, Lcom/brakefield/infinitestudio/ui/UIManager$5;->val$scaledMax:F

    div-float/2addr p2, v0

    .line 318
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/UIManager$5;->val$transformProgress:Lcom/brakefield/infinitestudio/ui/UIManager$TransformProgress;

    if-eqz v0, :cond_0

    .line 319
    invoke-interface {v0, p2}, Lcom/brakefield/infinitestudio/ui/UIManager$TransformProgress;->apply(F)F

    move-result p2

    .line 321
    :cond_0
    iget v0, p0, Lcom/brakefield/infinitestudio/ui/UIManager$5;->val$minValue:F

    iget v1, p0, Lcom/brakefield/infinitestudio/ui/UIManager$5;->val$range:F

    mul-float/2addr v1, p2

    add-float/2addr v0, v1

    .line 322
    iget-object v1, p0, Lcom/brakefield/infinitestudio/ui/UIManager$5;->val$slider:Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;

    iget-object v2, p0, Lcom/brakefield/infinitestudio/ui/UIManager$5;->val$displayProgressValue:Lcom/brakefield/infinitestudio/ui/UI$OnDisplayProgressValue;

    invoke-interface {v2, v0}, Lcom/brakefield/infinitestudio/ui/UI$OnDisplayProgressValue;->getDisplayValue(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;->setValueLabel(Ljava/lang/String;)V

    .line 323
    iget-object v1, p0, Lcom/brakefield/infinitestudio/ui/UIManager$5;->val$valueRef:Lcom/brakefield/infinitestudio/ui/UIManager$Value;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/brakefield/infinitestudio/ui/UIManager$Value;->set(Ljava/lang/Object;)V

    .line 324
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/UIManager$5;->val$sliderProgressChangedListener:Lcom/brakefield/infinitestudio/ui/UIManager$OnSliderProgressChangedListener;

    if-eqz v0, :cond_1

    .line 325
    invoke-interface {v0, p1, p2, p3}, Lcom/brakefield/infinitestudio/ui/UIManager$OnSliderProgressChangedListener;->onProgressChanged(Landroid/widget/SeekBar;FZ)V

    :cond_1
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1

    .line 330
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/UIManager$5;->val$trackTouchListener:Lcom/brakefield/infinitestudio/ui/UIManager$OnTrackTouchListener;

    if-eqz v0, :cond_0

    .line 331
    invoke-interface {v0, p1}, Lcom/brakefield/infinitestudio/ui/UIManager$OnTrackTouchListener;->onStartTrackingTouch(Landroid/widget/SeekBar;)V

    :cond_0
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1

    .line 336
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/UIManager$5;->val$trackTouchListener:Lcom/brakefield/infinitestudio/ui/UIManager$OnTrackTouchListener;

    if-eqz v0, :cond_0

    .line 337
    invoke-interface {v0, p1}, Lcom/brakefield/infinitestudio/ui/UIManager$OnTrackTouchListener;->onStopTrackingTouch(Landroid/widget/SeekBar;)V

    :cond_0
    return-void
.end method
