.class Lcom/brakefield/painter/ui/toolbars/ColorAdjustmentsToolbar$UpdateHandler;
.super Ljava/lang/Object;
.source "ColorAdjustmentsToolbar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/brakefield/painter/ui/toolbars/ColorAdjustmentsToolbar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UpdateHandler"
.end annotation


# instance fields
.field private final colorAdjustmentTool:Lcom/brakefield/painter/nativeobjs/tools/ColorAdjustmentToolNative;

.field private final observeAdjustmentStrength:Lcom/brakefield/infinitestudio/ui/components/Observe;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/brakefield/infinitestudio/ui/components/Observe<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final observeAdjustmentUsesMiddlePivot:Lcom/brakefield/infinitestudio/ui/components/Observe;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/brakefield/infinitestudio/ui/components/Observe<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final observeBrightnessSelected:Lcom/brakefield/infinitestudio/ui/components/Observe;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/brakefield/infinitestudio/ui/components/Observe<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final observeContrastSelected:Lcom/brakefield/infinitestudio/ui/components/Observe;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/brakefield/infinitestudio/ui/components/Observe<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final observeExposureSelected:Lcom/brakefield/infinitestudio/ui/components/Observe;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/brakefield/infinitestudio/ui/components/Observe<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final observeGammaSelected:Lcom/brakefield/infinitestudio/ui/components/Observe;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/brakefield/infinitestudio/ui/components/Observe<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final observeHueSelected:Lcom/brakefield/infinitestudio/ui/components/Observe;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/brakefield/infinitestudio/ui/components/Observe<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final observeSaturationSelected:Lcom/brakefield/infinitestudio/ui/components/Observe;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/brakefield/infinitestudio/ui/components/Observe<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final observeTemperatureSelected:Lcom/brakefield/infinitestudio/ui/components/Observe;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/brakefield/infinitestudio/ui/components/Observe<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final observeTintSelected:Lcom/brakefield/infinitestudio/ui/components/Observe;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/brakefield/infinitestudio/ui/components/Observe<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final observeVibranceSelected:Lcom/brakefield/infinitestudio/ui/components/Observe;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/brakefield/infinitestudio/ui/components/Observe<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/brakefield/painter/nativeobjs/tools/ColorAdjustmentToolNative;Lcom/brakefield/painter/databinding/ColorAdjustmentsToolbarBinding;Lcom/brakefield/painter/ui/SimpleUI;)V
    .locals 1

    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 143
    iput-object p1, p0, Lcom/brakefield/painter/ui/toolbars/ColorAdjustmentsToolbar$UpdateHandler;->colorAdjustmentTool:Lcom/brakefield/painter/nativeobjs/tools/ColorAdjustmentToolNative;

    .line 144
    new-instance p1, Lcom/brakefield/infinitestudio/ui/components/Observe;

    new-instance v0, Lcom/brakefield/painter/ui/toolbars/ColorAdjustmentsToolbar$UpdateHandler$$ExternalSyntheticLambda0;

    invoke-direct {v0, p2}, Lcom/brakefield/painter/ui/toolbars/ColorAdjustmentsToolbar$UpdateHandler$$ExternalSyntheticLambda0;-><init>(Lcom/brakefield/painter/databinding/ColorAdjustmentsToolbarBinding;)V

    invoke-direct {p1, v0}, Lcom/brakefield/infinitestudio/ui/components/Observe;-><init>(Lcom/brakefield/infinitestudio/ui/components/OnChange;)V

    iput-object p1, p0, Lcom/brakefield/painter/ui/toolbars/ColorAdjustmentsToolbar$UpdateHandler;->observeAdjustmentUsesMiddlePivot:Lcom/brakefield/infinitestudio/ui/components/Observe;

    .line 145
    new-instance p1, Lcom/brakefield/infinitestudio/ui/components/Observe;

    new-instance v0, Lcom/brakefield/painter/ui/toolbars/ColorAdjustmentsToolbar$UpdateHandler$$ExternalSyntheticLambda3;

    invoke-direct {v0, p2, p3}, Lcom/brakefield/painter/ui/toolbars/ColorAdjustmentsToolbar$UpdateHandler$$ExternalSyntheticLambda3;-><init>(Lcom/brakefield/painter/databinding/ColorAdjustmentsToolbarBinding;Lcom/brakefield/painter/ui/SimpleUI;)V

    invoke-direct {p1, v0}, Lcom/brakefield/infinitestudio/ui/components/Observe;-><init>(Lcom/brakefield/infinitestudio/ui/components/OnChange;)V

    iput-object p1, p0, Lcom/brakefield/painter/ui/toolbars/ColorAdjustmentsToolbar$UpdateHandler;->observeAdjustmentStrength:Lcom/brakefield/infinitestudio/ui/components/Observe;

    .line 154
    new-instance p1, Lcom/brakefield/infinitestudio/ui/components/Observe;

    new-instance p3, Lcom/brakefield/painter/ui/toolbars/ColorAdjustmentsToolbar$UpdateHandler$$ExternalSyntheticLambda4;

    invoke-direct {p3, p2}, Lcom/brakefield/painter/ui/toolbars/ColorAdjustmentsToolbar$UpdateHandler$$ExternalSyntheticLambda4;-><init>(Lcom/brakefield/painter/databinding/ColorAdjustmentsToolbarBinding;)V

    invoke-direct {p1, p3}, Lcom/brakefield/infinitestudio/ui/components/Observe;-><init>(Lcom/brakefield/infinitestudio/ui/components/OnChange;)V

    iput-object p1, p0, Lcom/brakefield/painter/ui/toolbars/ColorAdjustmentsToolbar$UpdateHandler;->observeBrightnessSelected:Lcom/brakefield/infinitestudio/ui/components/Observe;

    .line 155
    new-instance p1, Lcom/brakefield/infinitestudio/ui/components/Observe;

    new-instance p3, Lcom/brakefield/painter/ui/toolbars/ColorAdjustmentsToolbar$UpdateHandler$$ExternalSyntheticLambda5;

    invoke-direct {p3, p2}, Lcom/brakefield/painter/ui/toolbars/ColorAdjustmentsToolbar$UpdateHandler$$ExternalSyntheticLambda5;-><init>(Lcom/brakefield/painter/databinding/ColorAdjustmentsToolbarBinding;)V

    invoke-direct {p1, p3}, Lcom/brakefield/infinitestudio/ui/components/Observe;-><init>(Lcom/brakefield/infinitestudio/ui/components/OnChange;)V

    iput-object p1, p0, Lcom/brakefield/painter/ui/toolbars/ColorAdjustmentsToolbar$UpdateHandler;->observeContrastSelected:Lcom/brakefield/infinitestudio/ui/components/Observe;

    .line 156
    new-instance p1, Lcom/brakefield/infinitestudio/ui/components/Observe;

    new-instance p3, Lcom/brakefield/painter/ui/toolbars/ColorAdjustmentsToolbar$UpdateHandler$$ExternalSyntheticLambda6;

    invoke-direct {p3, p2}, Lcom/brakefield/painter/ui/toolbars/ColorAdjustmentsToolbar$UpdateHandler$$ExternalSyntheticLambda6;-><init>(Lcom/brakefield/painter/databinding/ColorAdjustmentsToolbarBinding;)V

    invoke-direct {p1, p3}, Lcom/brakefield/infinitestudio/ui/components/Observe;-><init>(Lcom/brakefield/infinitestudio/ui/components/OnChange;)V

    iput-object p1, p0, Lcom/brakefield/painter/ui/toolbars/ColorAdjustmentsToolbar$UpdateHandler;->observeExposureSelected:Lcom/brakefield/infinitestudio/ui/components/Observe;

    .line 157
    new-instance p1, Lcom/brakefield/infinitestudio/ui/components/Observe;

    new-instance p3, Lcom/brakefield/painter/ui/toolbars/ColorAdjustmentsToolbar$UpdateHandler$$ExternalSyntheticLambda7;

    invoke-direct {p3, p2}, Lcom/brakefield/painter/ui/toolbars/ColorAdjustmentsToolbar$UpdateHandler$$ExternalSyntheticLambda7;-><init>(Lcom/brakefield/painter/databinding/ColorAdjustmentsToolbarBinding;)V

    invoke-direct {p1, p3}, Lcom/brakefield/infinitestudio/ui/components/Observe;-><init>(Lcom/brakefield/infinitestudio/ui/components/OnChange;)V

    iput-object p1, p0, Lcom/brakefield/painter/ui/toolbars/ColorAdjustmentsToolbar$UpdateHandler;->observeGammaSelected:Lcom/brakefield/infinitestudio/ui/components/Observe;

    .line 158
    new-instance p1, Lcom/brakefield/infinitestudio/ui/components/Observe;

    new-instance p3, Lcom/brakefield/painter/ui/toolbars/ColorAdjustmentsToolbar$UpdateHandler$$ExternalSyntheticLambda8;

    invoke-direct {p3, p2}, Lcom/brakefield/painter/ui/toolbars/ColorAdjustmentsToolbar$UpdateHandler$$ExternalSyntheticLambda8;-><init>(Lcom/brakefield/painter/databinding/ColorAdjustmentsToolbarBinding;)V

    invoke-direct {p1, p3}, Lcom/brakefield/infinitestudio/ui/components/Observe;-><init>(Lcom/brakefield/infinitestudio/ui/components/OnChange;)V

    iput-object p1, p0, Lcom/brakefield/painter/ui/toolbars/ColorAdjustmentsToolbar$UpdateHandler;->observeSaturationSelected:Lcom/brakefield/infinitestudio/ui/components/Observe;

    .line 159
    new-instance p1, Lcom/brakefield/infinitestudio/ui/components/Observe;

    new-instance p3, Lcom/brakefield/painter/ui/toolbars/ColorAdjustmentsToolbar$UpdateHandler$$ExternalSyntheticLambda9;

    invoke-direct {p3, p2}, Lcom/brakefield/painter/ui/toolbars/ColorAdjustmentsToolbar$UpdateHandler$$ExternalSyntheticLambda9;-><init>(Lcom/brakefield/painter/databinding/ColorAdjustmentsToolbarBinding;)V

    invoke-direct {p1, p3}, Lcom/brakefield/infinitestudio/ui/components/Observe;-><init>(Lcom/brakefield/infinitestudio/ui/components/OnChange;)V

    iput-object p1, p0, Lcom/brakefield/painter/ui/toolbars/ColorAdjustmentsToolbar$UpdateHandler;->observeVibranceSelected:Lcom/brakefield/infinitestudio/ui/components/Observe;

    .line 160
    new-instance p1, Lcom/brakefield/infinitestudio/ui/components/Observe;

    new-instance p3, Lcom/brakefield/painter/ui/toolbars/ColorAdjustmentsToolbar$UpdateHandler$$ExternalSyntheticLambda10;

    invoke-direct {p3, p2}, Lcom/brakefield/painter/ui/toolbars/ColorAdjustmentsToolbar$UpdateHandler$$ExternalSyntheticLambda10;-><init>(Lcom/brakefield/painter/databinding/ColorAdjustmentsToolbarBinding;)V

    invoke-direct {p1, p3}, Lcom/brakefield/infinitestudio/ui/components/Observe;-><init>(Lcom/brakefield/infinitestudio/ui/components/OnChange;)V

    iput-object p1, p0, Lcom/brakefield/painter/ui/toolbars/ColorAdjustmentsToolbar$UpdateHandler;->observeTemperatureSelected:Lcom/brakefield/infinitestudio/ui/components/Observe;

    .line 161
    new-instance p1, Lcom/brakefield/infinitestudio/ui/components/Observe;

    new-instance p3, Lcom/brakefield/painter/ui/toolbars/ColorAdjustmentsToolbar$UpdateHandler$$ExternalSyntheticLambda1;

    invoke-direct {p3, p2}, Lcom/brakefield/painter/ui/toolbars/ColorAdjustmentsToolbar$UpdateHandler$$ExternalSyntheticLambda1;-><init>(Lcom/brakefield/painter/databinding/ColorAdjustmentsToolbarBinding;)V

    invoke-direct {p1, p3}, Lcom/brakefield/infinitestudio/ui/components/Observe;-><init>(Lcom/brakefield/infinitestudio/ui/components/OnChange;)V

    iput-object p1, p0, Lcom/brakefield/painter/ui/toolbars/ColorAdjustmentsToolbar$UpdateHandler;->observeTintSelected:Lcom/brakefield/infinitestudio/ui/components/Observe;

    .line 162
    new-instance p1, Lcom/brakefield/infinitestudio/ui/components/Observe;

    new-instance p3, Lcom/brakefield/painter/ui/toolbars/ColorAdjustmentsToolbar$UpdateHandler$$ExternalSyntheticLambda2;

    invoke-direct {p3, p2}, Lcom/brakefield/painter/ui/toolbars/ColorAdjustmentsToolbar$UpdateHandler$$ExternalSyntheticLambda2;-><init>(Lcom/brakefield/painter/databinding/ColorAdjustmentsToolbarBinding;)V

    invoke-direct {p1, p3}, Lcom/brakefield/infinitestudio/ui/components/Observe;-><init>(Lcom/brakefield/infinitestudio/ui/components/OnChange;)V

    iput-object p1, p0, Lcom/brakefield/painter/ui/toolbars/ColorAdjustmentsToolbar$UpdateHandler;->observeHueSelected:Lcom/brakefield/infinitestudio/ui/components/Observe;

    return-void
.end method

.method static synthetic lambda$new$0(Lcom/brakefield/painter/databinding/ColorAdjustmentsToolbarBinding;Ljava/lang/Boolean;)V
    .locals 0

    .line 144
    iget-object p0, p0, Lcom/brakefield/painter/databinding/ColorAdjustmentsToolbarBinding;->adjustmentSlider:Lcom/brakefield/infinitestudio/ui/CustomSlider;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/brakefield/infinitestudio/ui/CustomSlider;->setMiddlePivot(Z)V

    return-void
.end method

.method static synthetic lambda$new$1(Lcom/brakefield/painter/databinding/ColorAdjustmentsToolbarBinding;Lcom/brakefield/painter/ui/SimpleUI;Ljava/lang/Float;)V
    .locals 6

    .line 146
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    const/high16 v0, 0x42c80000    # 100.0f

    mul-float/2addr p2, v0

    float-to-int p2, p2

    .line 147
    iget-object v0, p0, Lcom/brakefield/painter/databinding/ColorAdjustmentsToolbarBinding;->adjustmentSlider:Lcom/brakefield/infinitestudio/ui/CustomSlider;

    invoke-virtual {v0, p2}, Lcom/brakefield/infinitestudio/ui/CustomSlider;->setProgress(I)V

    .line 148
    iget-object v0, p0, Lcom/brakefield/painter/databinding/ColorAdjustmentsToolbarBinding;->adjustmentSlider:Lcom/brakefield/infinitestudio/ui/CustomSlider;

    invoke-virtual {v0}, Lcom/brakefield/infinitestudio/ui/CustomSlider;->isMiddlePivot()Z

    move-result v0

    if-eqz v0, :cond_0

    int-to-double v0, p2

    .line 149
    iget-object p2, p0, Lcom/brakefield/painter/databinding/ColorAdjustmentsToolbarBinding;->adjustmentSlider:Lcom/brakefield/infinitestudio/ui/CustomSlider;

    invoke-virtual {p2}, Lcom/brakefield/infinitestudio/ui/CustomSlider;->getMax()I

    move-result p2

    int-to-double v2, p2

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v2, v4

    sub-double/2addr v0, v2

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    mul-double/2addr v0, v2

    double-to-int p2, v0

    .line 151
    :cond_0
    iget-object p0, p0, Lcom/brakefield/painter/databinding/ColorAdjustmentsToolbarBinding;->adjustmentSliderValue:Lcom/brakefield/infinitestudio/ui/AutosizeTextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const/4 v0, 0x0

    sget-object v0, Lcom/brakefield/infinitestudio/image/eps/Jpb/CfMJvi;->qFBJ:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/brakefield/infinitestudio/ui/AutosizeTextView;->setText(Ljava/lang/CharSequence;)V

    .line 152
    invoke-virtual {p1}, Lcom/brakefield/painter/ui/SimpleUI;->requestRender()V

    return-void
.end method

.method static synthetic lambda$new$10(Lcom/brakefield/painter/databinding/ColorAdjustmentsToolbarBinding;Ljava/lang/Boolean;)V
    .locals 0

    .line 162
    iget-object p0, p0, Lcom/brakefield/painter/databinding/ColorAdjustmentsToolbarBinding;->hueImage:Landroid/widget/ImageView;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {p0, p1}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->styleSelectedIcon(Landroid/widget/ImageView;Z)V

    return-void
.end method

.method static synthetic lambda$new$2(Lcom/brakefield/painter/databinding/ColorAdjustmentsToolbarBinding;Ljava/lang/Boolean;)V
    .locals 0

    .line 154
    iget-object p0, p0, Lcom/brakefield/painter/databinding/ColorAdjustmentsToolbarBinding;->brightnessImage:Landroid/widget/ImageView;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {p0, p1}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->styleSelectedIcon(Landroid/widget/ImageView;Z)V

    return-void
.end method

.method static synthetic lambda$new$3(Lcom/brakefield/painter/databinding/ColorAdjustmentsToolbarBinding;Ljava/lang/Boolean;)V
    .locals 0

    .line 155
    iget-object p0, p0, Lcom/brakefield/painter/databinding/ColorAdjustmentsToolbarBinding;->contrastImage:Landroid/widget/ImageView;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {p0, p1}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->styleSelectedIcon(Landroid/widget/ImageView;Z)V

    return-void
.end method

.method static synthetic lambda$new$4(Lcom/brakefield/painter/databinding/ColorAdjustmentsToolbarBinding;Ljava/lang/Boolean;)V
    .locals 0

    .line 156
    iget-object p0, p0, Lcom/brakefield/painter/databinding/ColorAdjustmentsToolbarBinding;->exposureImage:Landroid/widget/ImageView;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {p0, p1}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->styleSelectedIcon(Landroid/widget/ImageView;Z)V

    return-void
.end method

.method static synthetic lambda$new$5(Lcom/brakefield/painter/databinding/ColorAdjustmentsToolbarBinding;Ljava/lang/Boolean;)V
    .locals 0

    .line 157
    iget-object p0, p0, Lcom/brakefield/painter/databinding/ColorAdjustmentsToolbarBinding;->gammaImage:Landroid/widget/ImageView;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {p0, p1}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->styleSelectedIcon(Landroid/widget/ImageView;Z)V

    return-void
.end method

.method static synthetic lambda$new$6(Lcom/brakefield/painter/databinding/ColorAdjustmentsToolbarBinding;Ljava/lang/Boolean;)V
    .locals 0

    .line 158
    iget-object p0, p0, Lcom/brakefield/painter/databinding/ColorAdjustmentsToolbarBinding;->saturationImage:Landroid/widget/ImageView;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {p0, p1}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->styleSelectedIcon(Landroid/widget/ImageView;Z)V

    return-void
.end method

.method static synthetic lambda$new$7(Lcom/brakefield/painter/databinding/ColorAdjustmentsToolbarBinding;Ljava/lang/Boolean;)V
    .locals 0

    .line 159
    iget-object p0, p0, Lcom/brakefield/painter/databinding/ColorAdjustmentsToolbarBinding;->vibranceImage:Landroid/widget/ImageView;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {p0, p1}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->styleSelectedIcon(Landroid/widget/ImageView;Z)V

    return-void
.end method

.method static synthetic lambda$new$8(Lcom/brakefield/painter/databinding/ColorAdjustmentsToolbarBinding;Ljava/lang/Boolean;)V
    .locals 0

    .line 160
    iget-object p0, p0, Lcom/brakefield/painter/databinding/ColorAdjustmentsToolbarBinding;->temperatureImage:Landroid/widget/ImageView;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {p0, p1}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->styleSelectedIcon(Landroid/widget/ImageView;Z)V

    return-void
.end method

.method static synthetic lambda$new$9(Lcom/brakefield/painter/databinding/ColorAdjustmentsToolbarBinding;Ljava/lang/Boolean;)V
    .locals 0

    .line 161
    iget-object p0, p0, Lcom/brakefield/painter/databinding/ColorAdjustmentsToolbarBinding;->tintImage:Landroid/widget/ImageView;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {p0, p1}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->styleSelectedIcon(Landroid/widget/ImageView;Z)V

    return-void
.end method


# virtual methods
.method update()V
    .locals 5

    .line 166
    iget-object v0, p0, Lcom/brakefield/painter/ui/toolbars/ColorAdjustmentsToolbar$UpdateHandler;->observeAdjustmentStrength:Lcom/brakefield/infinitestudio/ui/components/Observe;

    iget-object v1, p0, Lcom/brakefield/painter/ui/toolbars/ColorAdjustmentsToolbar$UpdateHandler;->colorAdjustmentTool:Lcom/brakefield/painter/nativeobjs/tools/ColorAdjustmentToolNative;

    invoke-virtual {v1}, Lcom/brakefield/painter/nativeobjs/tools/ColorAdjustmentToolNative;->getValue()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/brakefield/infinitestudio/ui/components/Observe;->update(Ljava/lang/Object;)V

    .line 167
    iget-object v0, p0, Lcom/brakefield/painter/ui/toolbars/ColorAdjustmentsToolbar$UpdateHandler;->observeAdjustmentUsesMiddlePivot:Lcom/brakefield/infinitestudio/ui/components/Observe;

    iget-object v1, p0, Lcom/brakefield/painter/ui/toolbars/ColorAdjustmentsToolbar$UpdateHandler;->colorAdjustmentTool:Lcom/brakefield/painter/nativeobjs/tools/ColorAdjustmentToolNative;

    invoke-virtual {v1}, Lcom/brakefield/painter/nativeobjs/tools/ColorAdjustmentToolNative;->isMiddlePivot()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/brakefield/infinitestudio/ui/components/Observe;->update(Ljava/lang/Object;)V

    .line 169
    iget-object v0, p0, Lcom/brakefield/painter/ui/toolbars/ColorAdjustmentsToolbar$UpdateHandler;->colorAdjustmentTool:Lcom/brakefield/painter/nativeobjs/tools/ColorAdjustmentToolNative;

    invoke-virtual {v0}, Lcom/brakefield/painter/nativeobjs/tools/ColorAdjustmentToolNative;->getMode()I

    move-result v0

    .line 170
    iget-object v1, p0, Lcom/brakefield/painter/ui/toolbars/ColorAdjustmentsToolbar$UpdateHandler;->observeBrightnessSelected:Lcom/brakefield/infinitestudio/ui/components/Observe;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v0, :cond_0

    move v4, v3

    goto :goto_0

    :cond_0
    move v4, v2

    :goto_0
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/brakefield/infinitestudio/ui/components/Observe;->update(Ljava/lang/Object;)V

    .line 171
    iget-object v1, p0, Lcom/brakefield/painter/ui/toolbars/ColorAdjustmentsToolbar$UpdateHandler;->observeContrastSelected:Lcom/brakefield/infinitestudio/ui/components/Observe;

    if-ne v0, v3, :cond_1

    move v4, v3

    goto :goto_1

    :cond_1
    move v4, v2

    :goto_1
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/brakefield/infinitestudio/ui/components/Observe;->update(Ljava/lang/Object;)V

    .line 172
    iget-object v1, p0, Lcom/brakefield/painter/ui/toolbars/ColorAdjustmentsToolbar$UpdateHandler;->observeExposureSelected:Lcom/brakefield/infinitestudio/ui/components/Observe;

    const/4 v4, 0x2

    if-ne v0, v4, :cond_2

    move v4, v3

    goto :goto_2

    :cond_2
    move v4, v2

    :goto_2
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/brakefield/infinitestudio/ui/components/Observe;->update(Ljava/lang/Object;)V

    .line 173
    iget-object v1, p0, Lcom/brakefield/painter/ui/toolbars/ColorAdjustmentsToolbar$UpdateHandler;->observeGammaSelected:Lcom/brakefield/infinitestudio/ui/components/Observe;

    const/4 v4, 0x3

    if-ne v0, v4, :cond_3

    move v4, v3

    goto :goto_3

    :cond_3
    move v4, v2

    :goto_3
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/brakefield/infinitestudio/ui/components/Observe;->update(Ljava/lang/Object;)V

    .line 174
    iget-object v1, p0, Lcom/brakefield/painter/ui/toolbars/ColorAdjustmentsToolbar$UpdateHandler;->observeSaturationSelected:Lcom/brakefield/infinitestudio/ui/components/Observe;

    const/4 v4, 0x4

    if-ne v0, v4, :cond_4

    move v4, v3

    goto :goto_4

    :cond_4
    move v4, v2

    :goto_4
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/brakefield/infinitestudio/ui/components/Observe;->update(Ljava/lang/Object;)V

    .line 175
    iget-object v1, p0, Lcom/brakefield/painter/ui/toolbars/ColorAdjustmentsToolbar$UpdateHandler;->observeVibranceSelected:Lcom/brakefield/infinitestudio/ui/components/Observe;

    const/4 v4, 0x5

    if-ne v0, v4, :cond_5

    move v4, v3

    goto :goto_5

    :cond_5
    move v4, v2

    :goto_5
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/brakefield/infinitestudio/ui/components/Observe;->update(Ljava/lang/Object;)V

    .line 176
    iget-object v1, p0, Lcom/brakefield/painter/ui/toolbars/ColorAdjustmentsToolbar$UpdateHandler;->observeTemperatureSelected:Lcom/brakefield/infinitestudio/ui/components/Observe;

    const/4 v4, 0x6

    if-ne v0, v4, :cond_6

    move v4, v3

    goto :goto_6

    :cond_6
    move v4, v2

    :goto_6
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/brakefield/infinitestudio/ui/components/Observe;->update(Ljava/lang/Object;)V

    .line 177
    iget-object v1, p0, Lcom/brakefield/painter/ui/toolbars/ColorAdjustmentsToolbar$UpdateHandler;->observeTintSelected:Lcom/brakefield/infinitestudio/ui/components/Observe;

    const/16 v4, 0x8

    if-ne v0, v4, :cond_7

    move v4, v3

    goto :goto_7

    :cond_7
    move v4, v2

    :goto_7
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/brakefield/infinitestudio/ui/components/Observe;->update(Ljava/lang/Object;)V

    .line 178
    iget-object v1, p0, Lcom/brakefield/painter/ui/toolbars/ColorAdjustmentsToolbar$UpdateHandler;->observeHueSelected:Lcom/brakefield/infinitestudio/ui/components/Observe;

    const/4 v4, 0x7

    if-ne v0, v4, :cond_8

    move v2, v3

    :cond_8
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/brakefield/infinitestudio/ui/components/Observe;->update(Ljava/lang/Object;)V

    return-void
.end method
