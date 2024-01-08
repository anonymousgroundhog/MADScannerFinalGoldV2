.class Lcom/brakefield/painter/ui/viewcontrollers/BrushSizeCardViewController$2;
.super Ljava/lang/Object;
.source "BrushSizeCardViewController.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/brakefield/painter/ui/viewcontrollers/BrushSizeCardViewController;->getView(Landroid/app/Activity;Lcom/brakefield/painter/ui/SimpleUI;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/brakefield/painter/ui/viewcontrollers/BrushSizeCardViewController;

.field final synthetic val$brushHeadSettings:Lcom/brakefield/painter/nativeobjs/brushes/settings/HeadSettingsNative;

.field final synthetic val$displayAngle:Lcom/brakefield/infinitestudio/ui/UI$OnDisplayProgressValue;

.field final synthetic val$ui:Lcom/brakefield/painter/ui/SimpleUI;


# direct methods
.method constructor <init>(Lcom/brakefield/painter/ui/viewcontrollers/BrushSizeCardViewController;Lcom/brakefield/painter/nativeobjs/brushes/settings/HeadSettingsNative;Lcom/brakefield/infinitestudio/ui/UI$OnDisplayProgressValue;Lcom/brakefield/painter/ui/SimpleUI;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 115
    iput-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/BrushSizeCardViewController$2;->this$0:Lcom/brakefield/painter/ui/viewcontrollers/BrushSizeCardViewController;

    iput-object p2, p0, Lcom/brakefield/painter/ui/viewcontrollers/BrushSizeCardViewController$2;->val$brushHeadSettings:Lcom/brakefield/painter/nativeobjs/brushes/settings/HeadSettingsNative;

    iput-object p3, p0, Lcom/brakefield/painter/ui/viewcontrollers/BrushSizeCardViewController$2;->val$displayAngle:Lcom/brakefield/infinitestudio/ui/UI$OnDisplayProgressValue;

    iput-object p4, p0, Lcom/brakefield/painter/ui/viewcontrollers/BrushSizeCardViewController$2;->val$ui:Lcom/brakefield/painter/ui/SimpleUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 6

    int-to-float p2, p2

    const/high16 p3, 0x43b40000    # 360.0f

    div-float p3, p2, p3

    const/high16 v0, 0x3f000000    # 0.5f

    sub-float/2addr p3, v0

    const/4 v0, 0x0

    cmpg-float v0, p3, v0

    const/high16 v1, 0x3f800000    # 1.0f

    if-gez v0, :cond_0

    add-float/2addr p3, v1

    :cond_0
    const/high16 v0, 0x40000000    # 2.0f

    mul-float/2addr p3, v0

    float-to-double v2, p3

    const-wide v4, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v2, v4

    double-to-float p3, v2

    .line 122
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/BrushSizeCardViewController$2;->val$brushHeadSettings:Lcom/brakefield/painter/nativeobjs/brushes/settings/HeadSettingsNative;

    sub-float/2addr v1, p3

    invoke-virtual {v0, v1}, Lcom/brakefield/painter/nativeobjs/brushes/settings/HeadSettingsNative;->setAngle(F)V

    .line 123
    iget-object p3, p0, Lcom/brakefield/painter/ui/viewcontrollers/BrushSizeCardViewController$2;->this$0:Lcom/brakefield/painter/ui/viewcontrollers/BrushSizeCardViewController;

    invoke-static {p3}, Lcom/brakefield/painter/ui/viewcontrollers/BrushSizeCardViewController;->access$000(Lcom/brakefield/painter/ui/viewcontrollers/BrushSizeCardViewController;)Lcom/brakefield/painter/databinding/BrushSizeCardViewControllerBinding;

    move-result-object p3

    iget-object p3, p3, Lcom/brakefield/painter/databinding/BrushSizeCardViewControllerBinding;->angleSlider:Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;

    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/BrushSizeCardViewController$2;->val$displayAngle:Lcom/brakefield/infinitestudio/ui/UI$OnDisplayProgressValue;

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getMax()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p2, p1

    invoke-interface {v0, p2}, Lcom/brakefield/infinitestudio/ui/UI$OnDisplayProgressValue;->getDisplayValue(F)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/brakefield/infinitestudio/ui/LabeledSliderLayout;->setValueLabel(Ljava/lang/String;)V

    .line 124
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/BrushSizeCardViewController$2;->this$0:Lcom/brakefield/painter/ui/viewcontrollers/BrushSizeCardViewController;

    invoke-static {p1}, Lcom/brakefield/painter/ui/viewcontrollers/BrushSizeCardViewController;->access$000(Lcom/brakefield/painter/ui/viewcontrollers/BrushSizeCardViewController;)Lcom/brakefield/painter/databinding/BrushSizeCardViewControllerBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/brakefield/painter/databinding/BrushSizeCardViewControllerBinding;->brushPreview:Landroid/widget/ImageView;

    sput-object p1, Lcom/brakefield/painter/PainterGraphicsRenderer;->updateBrushPreview:Landroid/widget/ImageView;

    .line 125
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/BrushSizeCardViewController$2;->val$ui:Lcom/brakefield/painter/ui/SimpleUI;

    invoke-virtual {p1}, Lcom/brakefield/painter/ui/SimpleUI;->requestRender()V

    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    const/4 p1, 0x1

    .line 131
    sput-boolean p1, Lcom/brakefield/painter/PainterGraphicsRenderer;->saveBrushPreview:Z

    .line 132
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/BrushSizeCardViewController$2;->val$ui:Lcom/brakefield/painter/ui/SimpleUI;

    invoke-virtual {p1}, Lcom/brakefield/painter/ui/SimpleUI;->requestRender()V

    return-void
.end method
