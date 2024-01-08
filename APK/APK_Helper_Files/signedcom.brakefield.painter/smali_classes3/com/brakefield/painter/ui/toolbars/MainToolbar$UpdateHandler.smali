.class Lcom/brakefield/painter/ui/toolbars/MainToolbar$UpdateHandler;
.super Ljava/lang/Object;
.source "MainToolbar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/brakefield/painter/ui/toolbars/MainToolbar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UpdateHandler"
.end annotation


# instance fields
.field private final observeBlendModeSelected:Lcom/brakefield/infinitestudio/ui/components/Observe;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/brakefield/infinitestudio/ui/components/Observe<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final observeBrushSize:Lcom/infinite/core/observe/ObserveFloatNative;

.field private final observeColorVisible:Lcom/brakefield/infinitestudio/ui/components/Observe;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/brakefield/infinitestudio/ui/components/Observe<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final observeCorrectionsDisabled:Lcom/brakefield/infinitestudio/ui/components/Observe;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/brakefield/infinitestudio/ui/components/Observe<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final observeEraseModeSelected:Lcom/brakefield/infinitestudio/ui/components/Observe;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/brakefield/infinitestudio/ui/components/Observe<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final observeFilterEffectMiddlePivot:Lcom/brakefield/infinitestudio/ui/components/Observe;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/brakefield/infinitestudio/ui/components/Observe<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final observeFilterEffectValue:Lcom/brakefield/infinitestudio/ui/components/Observe;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/brakefield/infinitestudio/ui/components/Observe<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final observeIsBlendingCorners:Lcom/brakefield/infinitestudio/ui/components/Observe;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/brakefield/infinitestudio/ui/components/Observe<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final observeIsCloningCorners:Lcom/brakefield/infinitestudio/ui/components/Observe;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/brakefield/infinitestudio/ui/components/Observe<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final observeIsErasingCorners:Lcom/brakefield/infinitestudio/ui/components/Observe;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/brakefield/infinitestudio/ui/components/Observe<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final observeIsPaintingCorners:Lcom/brakefield/infinitestudio/ui/components/Observe;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/brakefield/infinitestudio/ui/components/Observe<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final observeModeFilterEffectVisible:Lcom/brakefield/infinitestudio/ui/components/Observe;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/brakefield/infinitestudio/ui/components/Observe<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final observeModeSettingsIcon:Lcom/brakefield/infinitestudio/ui/components/Observe;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/brakefield/infinitestudio/ui/components/Observe<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final observeModeSettingsVisible:Lcom/brakefield/infinitestudio/ui/components/Observe;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/brakefield/infinitestudio/ui/components/Observe<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final observePaintColor:Lcom/infinite/core/observe/ObserveIntNative;

.field private final observePaintModeSelected:Lcom/brakefield/infinitestudio/ui/components/Observe;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/brakefield/infinitestudio/ui/components/Observe<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final observeToolbarIsVertical:Lcom/brakefield/infinitestudio/ui/components/Observe;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/brakefield/infinitestudio/ui/components/Observe<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final observeToolbarPosition:Lcom/brakefield/infinitestudio/ui/components/Observe;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/brakefield/infinitestudio/ui/components/Observe<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final opacityControl:Lcom/brakefield/painter/OpacityControl;

.field private final swatchSlider:Lcom/brakefield/infinitestudio/color/SwatchSlider;


# direct methods
.method constructor <init>(Lcom/brakefield/painter/databinding/MainToolbarBinding;Lcom/brakefield/painter/OpacityControl;Lcom/brakefield/infinitestudio/color/SwatchSlider;)V
    .locals 4

    .line 1359
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1360
    iput-object p2, p0, Lcom/brakefield/painter/ui/toolbars/MainToolbar$UpdateHandler;->opacityControl:Lcom/brakefield/painter/OpacityControl;

    .line 1361
    iput-object p3, p0, Lcom/brakefield/painter/ui/toolbars/MainToolbar$UpdateHandler;->swatchSlider:Lcom/brakefield/infinitestudio/color/SwatchSlider;

    .line 1363
    invoke-virtual {p1}, Lcom/brakefield/painter/databinding/MainToolbarBinding;->getRoot()Lcom/brakefield/infinitestudio/gestures/GestureLayout;

    move-result-object p3

    invoke-virtual {p3}, Lcom/brakefield/infinitestudio/gestures/GestureLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    .line 1365
    new-instance v0, Lcom/infinite/core/observe/ObserveFloatNative;

    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getBrushSizeObserver()J

    move-result-wide v1

    new-instance v3, Lcom/brakefield/painter/ui/toolbars/MainToolbar$UpdateHandler$$ExternalSyntheticLambda0;

    invoke-direct {v3, p1}, Lcom/brakefield/painter/ui/toolbars/MainToolbar$UpdateHandler$$ExternalSyntheticLambda0;-><init>(Lcom/brakefield/painter/databinding/MainToolbarBinding;)V

    invoke-direct {v0, v1, v2, v3}, Lcom/infinite/core/observe/ObserveFloatNative;-><init>(JLcom/infinite/core/observe/ObserveNative$OnChange;)V

    iput-object v0, p0, Lcom/brakefield/painter/ui/toolbars/MainToolbar$UpdateHandler;->observeBrushSize:Lcom/infinite/core/observe/ObserveFloatNative;

    .line 1366
    new-instance v0, Lcom/infinite/core/observe/ObserveIntNative;

    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getPaintColorObserver()J

    move-result-wide v1

    new-instance v3, Lcom/brakefield/painter/ui/toolbars/MainToolbar$UpdateHandler$$ExternalSyntheticLambda17;

    invoke-direct {v3, p1}, Lcom/brakefield/painter/ui/toolbars/MainToolbar$UpdateHandler$$ExternalSyntheticLambda17;-><init>(Lcom/brakefield/painter/databinding/MainToolbarBinding;)V

    invoke-direct {v0, v1, v2, v3}, Lcom/infinite/core/observe/ObserveIntNative;-><init>(JLcom/infinite/core/observe/ObserveNative$OnChange;)V

    iput-object v0, p0, Lcom/brakefield/painter/ui/toolbars/MainToolbar$UpdateHandler;->observePaintColor:Lcom/infinite/core/observe/ObserveIntNative;

    .line 1368
    invoke-virtual {p2}, Lcom/brakefield/painter/OpacityControl;->reset()V

    .line 1370
    new-instance p2, Lcom/brakefield/infinitestudio/ui/components/Observe;

    new-instance v0, Lcom/brakefield/painter/ui/toolbars/MainToolbar$UpdateHandler$$ExternalSyntheticLambda1;

    invoke-direct {v0, p1}, Lcom/brakefield/painter/ui/toolbars/MainToolbar$UpdateHandler$$ExternalSyntheticLambda1;-><init>(Lcom/brakefield/painter/databinding/MainToolbarBinding;)V

    invoke-direct {p2, v0}, Lcom/brakefield/infinitestudio/ui/components/Observe;-><init>(Lcom/brakefield/infinitestudio/ui/components/OnChange;)V

    iput-object p2, p0, Lcom/brakefield/painter/ui/toolbars/MainToolbar$UpdateHandler;->observeToolbarPosition:Lcom/brakefield/infinitestudio/ui/components/Observe;

    .line 1379
    new-instance p2, Lcom/brakefield/infinitestudio/ui/components/Observe;

    new-instance v0, Lcom/brakefield/painter/ui/toolbars/MainToolbar$UpdateHandler$$ExternalSyntheticLambda2;

    invoke-direct {v0, p1}, Lcom/brakefield/painter/ui/toolbars/MainToolbar$UpdateHandler$$ExternalSyntheticLambda2;-><init>(Lcom/brakefield/painter/databinding/MainToolbarBinding;)V

    invoke-direct {p2, v0}, Lcom/brakefield/infinitestudio/ui/components/Observe;-><init>(Lcom/brakefield/infinitestudio/ui/components/OnChange;)V

    iput-object p2, p0, Lcom/brakefield/painter/ui/toolbars/MainToolbar$UpdateHandler;->observePaintModeSelected:Lcom/brakefield/infinitestudio/ui/components/Observe;

    .line 1380
    new-instance p2, Lcom/brakefield/infinitestudio/ui/components/Observe;

    new-instance v0, Lcom/brakefield/painter/ui/toolbars/MainToolbar$UpdateHandler$$ExternalSyntheticLambda3;

    invoke-direct {v0, p1}, Lcom/brakefield/painter/ui/toolbars/MainToolbar$UpdateHandler$$ExternalSyntheticLambda3;-><init>(Lcom/brakefield/painter/databinding/MainToolbarBinding;)V

    invoke-direct {p2, v0}, Lcom/brakefield/infinitestudio/ui/components/Observe;-><init>(Lcom/brakefield/infinitestudio/ui/components/OnChange;)V

    iput-object p2, p0, Lcom/brakefield/painter/ui/toolbars/MainToolbar$UpdateHandler;->observeBlendModeSelected:Lcom/brakefield/infinitestudio/ui/components/Observe;

    .line 1381
    new-instance p2, Lcom/brakefield/infinitestudio/ui/components/Observe;

    new-instance v0, Lcom/brakefield/painter/ui/toolbars/MainToolbar$UpdateHandler$$ExternalSyntheticLambda4;

    invoke-direct {v0, p1}, Lcom/brakefield/painter/ui/toolbars/MainToolbar$UpdateHandler$$ExternalSyntheticLambda4;-><init>(Lcom/brakefield/painter/databinding/MainToolbarBinding;)V

    invoke-direct {p2, v0}, Lcom/brakefield/infinitestudio/ui/components/Observe;-><init>(Lcom/brakefield/infinitestudio/ui/components/OnChange;)V

    iput-object p2, p0, Lcom/brakefield/painter/ui/toolbars/MainToolbar$UpdateHandler;->observeEraseModeSelected:Lcom/brakefield/infinitestudio/ui/components/Observe;

    .line 1383
    new-instance p2, Lcom/brakefield/infinitestudio/ui/components/Observe;

    new-instance v0, Lcom/brakefield/painter/ui/toolbars/MainToolbar$UpdateHandler$$ExternalSyntheticLambda5;

    invoke-direct {v0, p1}, Lcom/brakefield/painter/ui/toolbars/MainToolbar$UpdateHandler$$ExternalSyntheticLambda5;-><init>(Lcom/brakefield/painter/databinding/MainToolbarBinding;)V

    invoke-direct {p2, v0}, Lcom/brakefield/infinitestudio/ui/components/Observe;-><init>(Lcom/brakefield/infinitestudio/ui/components/OnChange;)V

    iput-object p2, p0, Lcom/brakefield/painter/ui/toolbars/MainToolbar$UpdateHandler;->observeColorVisible:Lcom/brakefield/infinitestudio/ui/components/Observe;

    .line 1387
    new-instance p2, Lcom/brakefield/infinitestudio/ui/components/Observe;

    new-instance v0, Lcom/brakefield/painter/ui/toolbars/MainToolbar$UpdateHandler$$ExternalSyntheticLambda6;

    invoke-direct {v0, p1}, Lcom/brakefield/painter/ui/toolbars/MainToolbar$UpdateHandler$$ExternalSyntheticLambda6;-><init>(Lcom/brakefield/painter/databinding/MainToolbarBinding;)V

    invoke-direct {p2, v0}, Lcom/brakefield/infinitestudio/ui/components/Observe;-><init>(Lcom/brakefield/infinitestudio/ui/components/OnChange;)V

    iput-object p2, p0, Lcom/brakefield/painter/ui/toolbars/MainToolbar$UpdateHandler;->observeModeSettingsVisible:Lcom/brakefield/infinitestudio/ui/components/Observe;

    .line 1391
    new-instance p2, Lcom/brakefield/infinitestudio/ui/components/Observe;

    new-instance v0, Lcom/brakefield/painter/ui/toolbars/MainToolbar$UpdateHandler$$ExternalSyntheticLambda7;

    invoke-direct {v0, p1}, Lcom/brakefield/painter/ui/toolbars/MainToolbar$UpdateHandler$$ExternalSyntheticLambda7;-><init>(Lcom/brakefield/painter/databinding/MainToolbarBinding;)V

    invoke-direct {p2, v0}, Lcom/brakefield/infinitestudio/ui/components/Observe;-><init>(Lcom/brakefield/infinitestudio/ui/components/OnChange;)V

    iput-object p2, p0, Lcom/brakefield/painter/ui/toolbars/MainToolbar$UpdateHandler;->observeModeFilterEffectVisible:Lcom/brakefield/infinitestudio/ui/components/Observe;

    .line 1396
    new-instance p2, Lcom/brakefield/infinitestudio/ui/components/Observe;

    new-instance v0, Lcom/brakefield/painter/ui/toolbars/MainToolbar$UpdateHandler$$ExternalSyntheticLambda8;

    invoke-direct {v0, p1}, Lcom/brakefield/painter/ui/toolbars/MainToolbar$UpdateHandler$$ExternalSyntheticLambda8;-><init>(Lcom/brakefield/painter/databinding/MainToolbarBinding;)V

    invoke-direct {p2, v0}, Lcom/brakefield/infinitestudio/ui/components/Observe;-><init>(Lcom/brakefield/infinitestudio/ui/components/OnChange;)V

    iput-object p2, p0, Lcom/brakefield/painter/ui/toolbars/MainToolbar$UpdateHandler;->observeFilterEffectValue:Lcom/brakefield/infinitestudio/ui/components/Observe;

    .line 1398
    new-instance p2, Lcom/brakefield/infinitestudio/ui/components/Observe;

    new-instance v0, Lcom/brakefield/painter/ui/toolbars/MainToolbar$UpdateHandler$$ExternalSyntheticLambda9;

    invoke-direct {v0, p1}, Lcom/brakefield/painter/ui/toolbars/MainToolbar$UpdateHandler$$ExternalSyntheticLambda9;-><init>(Lcom/brakefield/painter/databinding/MainToolbarBinding;)V

    invoke-direct {p2, v0}, Lcom/brakefield/infinitestudio/ui/components/Observe;-><init>(Lcom/brakefield/infinitestudio/ui/components/OnChange;)V

    iput-object p2, p0, Lcom/brakefield/painter/ui/toolbars/MainToolbar$UpdateHandler;->observeFilterEffectMiddlePivot:Lcom/brakefield/infinitestudio/ui/components/Observe;

    .line 1400
    new-instance p2, Lcom/brakefield/infinitestudio/ui/components/Observe;

    new-instance v0, Lcom/brakefield/painter/ui/toolbars/MainToolbar$UpdateHandler$$ExternalSyntheticLambda10;

    invoke-direct {v0, p1}, Lcom/brakefield/painter/ui/toolbars/MainToolbar$UpdateHandler$$ExternalSyntheticLambda10;-><init>(Lcom/brakefield/painter/databinding/MainToolbarBinding;)V

    invoke-direct {p2, v0}, Lcom/brakefield/infinitestudio/ui/components/Observe;-><init>(Lcom/brakefield/infinitestudio/ui/components/OnChange;)V

    iput-object p2, p0, Lcom/brakefield/painter/ui/toolbars/MainToolbar$UpdateHandler;->observeModeSettingsIcon:Lcom/brakefield/infinitestudio/ui/components/Observe;

    .line 1402
    new-instance p2, Lcom/brakefield/infinitestudio/ui/components/Observe;

    new-instance v0, Lcom/brakefield/painter/ui/toolbars/MainToolbar$UpdateHandler$$ExternalSyntheticLambda11;

    invoke-direct {v0, p1}, Lcom/brakefield/painter/ui/toolbars/MainToolbar$UpdateHandler$$ExternalSyntheticLambda11;-><init>(Lcom/brakefield/painter/databinding/MainToolbarBinding;)V

    invoke-direct {p2, v0}, Lcom/brakefield/infinitestudio/ui/components/Observe;-><init>(Lcom/brakefield/infinitestudio/ui/components/OnChange;)V

    iput-object p2, p0, Lcom/brakefield/painter/ui/toolbars/MainToolbar$UpdateHandler;->observeIsPaintingCorners:Lcom/brakefield/infinitestudio/ui/components/Observe;

    .line 1408
    new-instance p2, Lcom/brakefield/infinitestudio/ui/components/Observe;

    new-instance v0, Lcom/brakefield/painter/ui/toolbars/MainToolbar$UpdateHandler$$ExternalSyntheticLambda12;

    invoke-direct {v0, p1}, Lcom/brakefield/painter/ui/toolbars/MainToolbar$UpdateHandler$$ExternalSyntheticLambda12;-><init>(Lcom/brakefield/painter/databinding/MainToolbarBinding;)V

    invoke-direct {p2, v0}, Lcom/brakefield/infinitestudio/ui/components/Observe;-><init>(Lcom/brakefield/infinitestudio/ui/components/OnChange;)V

    iput-object p2, p0, Lcom/brakefield/painter/ui/toolbars/MainToolbar$UpdateHandler;->observeIsErasingCorners:Lcom/brakefield/infinitestudio/ui/components/Observe;

    .line 1414
    new-instance p2, Lcom/brakefield/infinitestudio/ui/components/Observe;

    new-instance v0, Lcom/brakefield/painter/ui/toolbars/MainToolbar$UpdateHandler$$ExternalSyntheticLambda13;

    invoke-direct {v0, p1}, Lcom/brakefield/painter/ui/toolbars/MainToolbar$UpdateHandler$$ExternalSyntheticLambda13;-><init>(Lcom/brakefield/painter/databinding/MainToolbarBinding;)V

    invoke-direct {p2, v0}, Lcom/brakefield/infinitestudio/ui/components/Observe;-><init>(Lcom/brakefield/infinitestudio/ui/components/OnChange;)V

    iput-object p2, p0, Lcom/brakefield/painter/ui/toolbars/MainToolbar$UpdateHandler;->observeIsCloningCorners:Lcom/brakefield/infinitestudio/ui/components/Observe;

    .line 1420
    new-instance p2, Lcom/brakefield/infinitestudio/ui/components/Observe;

    new-instance v0, Lcom/brakefield/painter/ui/toolbars/MainToolbar$UpdateHandler$$ExternalSyntheticLambda14;

    invoke-direct {v0, p1, p3}, Lcom/brakefield/painter/ui/toolbars/MainToolbar$UpdateHandler$$ExternalSyntheticLambda14;-><init>(Lcom/brakefield/painter/databinding/MainToolbarBinding;Landroid/content/res/Resources;)V

    invoke-direct {p2, v0}, Lcom/brakefield/infinitestudio/ui/components/Observe;-><init>(Lcom/brakefield/infinitestudio/ui/components/OnChange;)V

    iput-object p2, p0, Lcom/brakefield/painter/ui/toolbars/MainToolbar$UpdateHandler;->observeIsBlendingCorners:Lcom/brakefield/infinitestudio/ui/components/Observe;

    .line 1445
    new-instance p2, Lcom/brakefield/infinitestudio/ui/components/Observe;

    new-instance p3, Lcom/brakefield/painter/ui/toolbars/MainToolbar$UpdateHandler$$ExternalSyntheticLambda15;

    invoke-direct {p3, p1}, Lcom/brakefield/painter/ui/toolbars/MainToolbar$UpdateHandler$$ExternalSyntheticLambda15;-><init>(Lcom/brakefield/painter/databinding/MainToolbarBinding;)V

    invoke-direct {p2, p3}, Lcom/brakefield/infinitestudio/ui/components/Observe;-><init>(Lcom/brakefield/infinitestudio/ui/components/OnChange;)V

    iput-object p2, p0, Lcom/brakefield/painter/ui/toolbars/MainToolbar$UpdateHandler;->observeCorrectionsDisabled:Lcom/brakefield/infinitestudio/ui/components/Observe;

    .line 1455
    new-instance p2, Lcom/brakefield/infinitestudio/ui/components/Observe;

    new-instance p3, Lcom/brakefield/painter/ui/toolbars/MainToolbar$UpdateHandler$$ExternalSyntheticLambda16;

    invoke-direct {p3, p1}, Lcom/brakefield/painter/ui/toolbars/MainToolbar$UpdateHandler$$ExternalSyntheticLambda16;-><init>(Lcom/brakefield/painter/databinding/MainToolbarBinding;)V

    invoke-direct {p2, p3}, Lcom/brakefield/infinitestudio/ui/components/Observe;-><init>(Lcom/brakefield/infinitestudio/ui/components/OnChange;)V

    iput-object p2, p0, Lcom/brakefield/painter/ui/toolbars/MainToolbar$UpdateHandler;->observeToolbarIsVertical:Lcom/brakefield/infinitestudio/ui/components/Observe;

    return-void
.end method

.method static synthetic lambda$new$0(Lcom/brakefield/painter/databinding/MainToolbarBinding;Ljava/lang/Float;)V
    .locals 4

    .line 1365
    iget-object p0, p0, Lcom/brakefield/painter/databinding/MainToolbarBinding;->sizeSlider:Lcom/brakefield/infinitestudio/ui/SizePullButton;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    const/high16 v0, 0x42c80000    # 100.0f

    div-float/2addr p1, v0

    float-to-double v0, p1

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    mul-double/2addr v0, v2

    double-to-int p1, v0

    invoke-virtual {p0, p1}, Lcom/brakefield/infinitestudio/ui/SizePullButton;->setProgress(I)V

    return-void
.end method

.method static synthetic lambda$new$1(Lcom/brakefield/painter/databinding/MainToolbarBinding;Ljava/lang/Integer;)V
    .locals 0

    .line 1366
    iget-object p0, p0, Lcom/brakefield/painter/databinding/MainToolbarBinding;->colorButton:Lcom/brakefield/infinitestudio/ui/ColorFillButton;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/brakefield/infinitestudio/ui/ColorFillButton;->setBackgroundColor(I)V

    return-void
.end method

.method static synthetic lambda$new$10(Lcom/brakefield/painter/databinding/MainToolbarBinding;Ljava/lang/Boolean;)V
    .locals 0

    .line 1398
    iget-object p0, p0, Lcom/brakefield/painter/databinding/MainToolbarBinding;->filterEffectButton:Lcom/brakefield/infinitestudio/ui/PullButton;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/brakefield/infinitestudio/ui/PullButton;->setMiddlePivot(Z)V

    return-void
.end method

.method static synthetic lambda$new$11(Lcom/brakefield/painter/databinding/MainToolbarBinding;Ljava/lang/Integer;)V
    .locals 0

    .line 1400
    iget-object p0, p0, Lcom/brakefield/painter/databinding/MainToolbarBinding;->blendColorButton:Landroid/widget/ImageView;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method static synthetic lambda$new$12(Lcom/brakefield/painter/databinding/MainToolbarBinding;Ljava/lang/Boolean;)V
    .locals 1

    .line 1403
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1404
    iget-object p1, p0, Lcom/brakefield/painter/databinding/MainToolbarBinding;->paintButton:Landroid/widget/ImageView;

    const v0, 0x7f08008d

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1405
    iget-object p0, p0, Lcom/brakefield/painter/databinding/MainToolbarBinding;->eraserButton:Landroid/widget/ImageView;

    const p1, 0x7f080090

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_0
    return-void
.end method

.method static synthetic lambda$new$13(Lcom/brakefield/painter/databinding/MainToolbarBinding;Ljava/lang/Boolean;)V
    .locals 1

    .line 1409
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1410
    iget-object p1, p0, Lcom/brakefield/painter/databinding/MainToolbarBinding;->paintButton:Landroid/widget/ImageView;

    const v0, 0x7f080090

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1411
    iget-object p0, p0, Lcom/brakefield/painter/databinding/MainToolbarBinding;->eraserButton:Landroid/widget/ImageView;

    const p1, 0x7f08008d

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_0
    return-void
.end method

.method static synthetic lambda$new$14(Lcom/brakefield/painter/databinding/MainToolbarBinding;Ljava/lang/Boolean;)V
    .locals 1

    .line 1415
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1416
    iget-object p1, p0, Lcom/brakefield/painter/databinding/MainToolbarBinding;->paintButton:Landroid/widget/ImageView;

    const v0, 0x7f08008f

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1417
    iget-object p0, p0, Lcom/brakefield/painter/databinding/MainToolbarBinding;->eraserButton:Landroid/widget/ImageView;

    const p1, 0x7f08008d

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_0
    return-void
.end method

.method static synthetic lambda$new$15(Lcom/brakefield/painter/databinding/MainToolbarBinding;Landroid/content/res/Resources;Ljava/lang/Boolean;)V
    .locals 3

    .line 1421
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    const v0, 0x7f080116

    const v1, 0x7f08008c

    if-eqz p2, :cond_1

    .line 1422
    iget-object p2, p0, Lcom/brakefield/painter/databinding/MainToolbarBinding;->colorButton:Lcom/brakefield/infinitestudio/ui/ColorFillButton;

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/brakefield/infinitestudio/ui/ColorFillButton;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1423
    invoke-static {}, Lcom/brakefield/painter/PainterLib;->isCloning()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1424
    iget-object p1, p0, Lcom/brakefield/painter/databinding/MainToolbarBinding;->blendColorButton:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1425
    iget-object p0, p0, Lcom/brakefield/painter/databinding/MainToolbarBinding;->blendColorButton:Landroid/widget/ImageView;

    invoke-static {}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->getIconColor()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setColorFilter(I)V

    goto :goto_0

    .line 1427
    :cond_0
    iget-object p1, p0, Lcom/brakefield/painter/databinding/MainToolbarBinding;->blendColorButton:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1428
    iget-object p0, p0, Lcom/brakefield/painter/databinding/MainToolbarBinding;->blendColorButton:Landroid/widget/ImageView;

    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getColor()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setColorFilter(I)V

    goto :goto_0

    .line 1431
    :cond_1
    iget-object p2, p0, Lcom/brakefield/painter/databinding/MainToolbarBinding;->colorButton:Lcom/brakefield/infinitestudio/ui/ColorFillButton;

    const/4 v2, 0x0

    invoke-virtual {p2, v2}, Lcom/brakefield/infinitestudio/ui/ColorFillButton;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1432
    iget-object p2, p0, Lcom/brakefield/painter/databinding/MainToolbarBinding;->blendColorButton:Landroid/widget/ImageView;

    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1433
    iget-object p2, p0, Lcom/brakefield/painter/databinding/MainToolbarBinding;->blendColorButton:Landroid/widget/ImageView;

    invoke-virtual {p2, v2}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 1434
    invoke-static {}, Lcom/brakefield/painter/PainterLib;->isErasing()Z

    move-result p2

    if-eqz p2, :cond_2

    iget-object p0, p0, Lcom/brakefield/painter/databinding/MainToolbarBinding;->colorButton:Lcom/brakefield/infinitestudio/ui/ColorFillButton;

    const p2, 0x7f080304

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/brakefield/infinitestudio/ui/ColorFillButton;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 1435
    :cond_2
    invoke-static {}, Lcom/brakefield/painter/PainterLib;->isCloning()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 1436
    iget-object p2, p0, Lcom/brakefield/painter/databinding/MainToolbarBinding;->colorButton:Lcom/brakefield/infinitestudio/ui/ColorFillButton;

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/brakefield/infinitestudio/ui/ColorFillButton;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1437
    iget-object p0, p0, Lcom/brakefield/painter/databinding/MainToolbarBinding;->colorButton:Lcom/brakefield/infinitestudio/ui/ColorFillButton;

    invoke-static {}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->getIconColor()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/brakefield/infinitestudio/ui/ColorFillButton;->setColorFilter(I)V

    goto :goto_0

    .line 1439
    :cond_3
    iget-object p1, p0, Lcom/brakefield/painter/databinding/MainToolbarBinding;->colorButton:Lcom/brakefield/infinitestudio/ui/ColorFillButton;

    invoke-virtual {p1, v2}, Lcom/brakefield/infinitestudio/ui/ColorFillButton;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1440
    iget-object p0, p0, Lcom/brakefield/painter/databinding/MainToolbarBinding;->colorButton:Lcom/brakefield/infinitestudio/ui/ColorFillButton;

    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getColor()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/brakefield/infinitestudio/ui/ColorFillButton;->setBackgroundColor(I)V

    :goto_0
    return-void
.end method

.method static synthetic lambda$new$16(Lcom/brakefield/painter/databinding/MainToolbarBinding;Ljava/lang/Boolean;)V
    .locals 2

    .line 1446
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const/16 v0, 0x8

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 1447
    iget-object p1, p0, Lcom/brakefield/painter/databinding/MainToolbarBinding;->eraserButton:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1448
    iget-object p0, p0, Lcom/brakefield/painter/databinding/MainToolbarBinding;->noEraserButton:Landroid/widget/ImageView;

    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 1450
    :cond_0
    iget-object p1, p0, Lcom/brakefield/painter/databinding/MainToolbarBinding;->eraserButton:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1451
    iget-object p0, p0, Lcom/brakefield/painter/databinding/MainToolbarBinding;->noEraserButton:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method static synthetic lambda$new$17(Lcom/brakefield/painter/databinding/MainToolbarBinding;Ljava/lang/Boolean;)V
    .locals 2

    .line 1456
    iget-object v0, p0, Lcom/brakefield/painter/databinding/MainToolbarBinding;->colorButton:Lcom/brakefield/infinitestudio/ui/ColorFillButton;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/brakefield/infinitestudio/ui/ColorFillButton;->setVerticalable(Z)V

    .line 1457
    iget-object p0, p0, Lcom/brakefield/painter/databinding/MainToolbarBinding;->colorButton:Lcom/brakefield/infinitestudio/ui/ColorFillButton;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Lcom/brakefield/infinitestudio/ui/ColorFillButton;->setHorizontalable(Z)V

    return-void
.end method

.method static synthetic lambda$new$2(Lcom/brakefield/painter/databinding/MainToolbarBinding;Ljava/lang/Integer;)V
    .locals 5

    .line 1371
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, v2, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    .line 1372
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v3, 0x2

    if-eq p1, v3, :cond_1

    move v1, v2

    .line 1373
    :cond_1
    iget-object p1, p0, Lcom/brakefield/painter/databinding/MainToolbarBinding;->sizeSlider:Lcom/brakefield/infinitestudio/ui/SizePullButton;

    invoke-virtual {p1, v1}, Lcom/brakefield/infinitestudio/ui/SizePullButton;->setVerticalable(Z)V

    .line 1374
    iget-object p1, p0, Lcom/brakefield/painter/databinding/MainToolbarBinding;->sizeSlider:Lcom/brakefield/infinitestudio/ui/SizePullButton;

    invoke-virtual {p1, v0}, Lcom/brakefield/infinitestudio/ui/SizePullButton;->setHorizontalable(Z)V

    .line 1375
    iget-object p1, p0, Lcom/brakefield/painter/databinding/MainToolbarBinding;->opacitySlider:Lcom/brakefield/infinitestudio/ui/OpacityPullButton;

    invoke-virtual {p1, v1}, Lcom/brakefield/infinitestudio/ui/OpacityPullButton;->setVerticalable(Z)V

    .line 1376
    iget-object p0, p0, Lcom/brakefield/painter/databinding/MainToolbarBinding;->opacitySlider:Lcom/brakefield/infinitestudio/ui/OpacityPullButton;

    invoke-virtual {p0, v0}, Lcom/brakefield/infinitestudio/ui/OpacityPullButton;->setHorizontalable(Z)V

    return-void
.end method

.method static synthetic lambda$new$3(Lcom/brakefield/painter/databinding/MainToolbarBinding;Ljava/lang/Boolean;)V
    .locals 0

    .line 1379
    iget-object p0, p0, Lcom/brakefield/painter/databinding/MainToolbarBinding;->paintButton:Landroid/widget/ImageView;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {p0, p1}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->styleSelectedIcon(Landroid/widget/ImageView;Z)V

    return-void
.end method

.method static synthetic lambda$new$4(Lcom/brakefield/painter/databinding/MainToolbarBinding;Ljava/lang/Boolean;)V
    .locals 0

    .line 1380
    iget-object p0, p0, Lcom/brakefield/painter/databinding/MainToolbarBinding;->blendButton:Landroid/widget/ImageView;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {p0, p1}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->styleSelectedIcon(Landroid/widget/ImageView;Z)V

    return-void
.end method

.method static synthetic lambda$new$5(Lcom/brakefield/painter/databinding/MainToolbarBinding;Ljava/lang/Boolean;)V
    .locals 0

    .line 1381
    iget-object p0, p0, Lcom/brakefield/painter/databinding/MainToolbarBinding;->eraserButton:Landroid/widget/ImageView;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {p0, p1}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->styleSelectedIcon(Landroid/widget/ImageView;Z)V

    return-void
.end method

.method static synthetic lambda$new$6(Lcom/brakefield/painter/databinding/MainToolbarBinding;Ljava/lang/Boolean;)V
    .locals 0

    .line 1384
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/brakefield/painter/databinding/MainToolbarBinding;->colorButton:Lcom/brakefield/infinitestudio/ui/ColorFillButton;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/brakefield/infinitestudio/ui/ColorFillButton;->setVisibility(I)V

    goto :goto_0

    .line 1385
    :cond_0
    iget-object p0, p0, Lcom/brakefield/painter/databinding/MainToolbarBinding;->colorButton:Lcom/brakefield/infinitestudio/ui/ColorFillButton;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Lcom/brakefield/infinitestudio/ui/ColorFillButton;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method static synthetic lambda$new$7(Lcom/brakefield/painter/databinding/MainToolbarBinding;Ljava/lang/Boolean;)V
    .locals 0

    .line 1388
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/brakefield/painter/databinding/MainToolbarBinding;->blendColorButton:Landroid/widget/ImageView;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 1389
    :cond_0
    iget-object p0, p0, Lcom/brakefield/painter/databinding/MainToolbarBinding;->blendColorButton:Landroid/widget/ImageView;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method static synthetic lambda$new$8(Lcom/brakefield/painter/databinding/MainToolbarBinding;Ljava/lang/Boolean;)V
    .locals 0

    .line 1392
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/brakefield/painter/databinding/MainToolbarBinding;->filterEffectButton:Lcom/brakefield/infinitestudio/ui/PullButton;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/brakefield/infinitestudio/ui/PullButton;->setVisibility(I)V

    goto :goto_0

    .line 1393
    :cond_0
    iget-object p0, p0, Lcom/brakefield/painter/databinding/MainToolbarBinding;->filterEffectButton:Lcom/brakefield/infinitestudio/ui/PullButton;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Lcom/brakefield/infinitestudio/ui/PullButton;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method static synthetic lambda$new$9(Lcom/brakefield/painter/databinding/MainToolbarBinding;Ljava/lang/Integer;)V
    .locals 0

    .line 1396
    iget-object p0, p0, Lcom/brakefield/painter/databinding/MainToolbarBinding;->filterEffectButton:Lcom/brakefield/infinitestudio/ui/PullButton;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/brakefield/infinitestudio/ui/PullButton;->setProgress(I)V

    return-void
.end method


# virtual methods
.method public update(IZ)V
    .locals 10

    .line 1463
    new-instance v0, Lcom/brakefield/painter/nativeobjs/brushes/settings/SpecialEffectsSettingsNative;

    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getBrushSpecialEffectsSettings()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/brakefield/painter/nativeobjs/brushes/settings/SpecialEffectsSettingsNative;-><init>(J)V

    .line 1465
    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getPaintMode()I

    move-result v1

    const/4 v2, 0x3

    if-nez v1, :cond_0

    .line 1466
    invoke-static {}, Lcom/brakefield/painter/PainterLib;->isCloning()Z

    move-result v3

    if-eqz v3, :cond_0

    move v1, v2

    :cond_0
    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v1, :cond_2

    if-ne v1, v3, :cond_1

    goto :goto_0

    :cond_1
    move v6, v4

    goto :goto_1

    :cond_2
    :goto_0
    move v6, v5

    :goto_1
    if-eqz v6, :cond_3

    .line 1471
    invoke-virtual {v0}, Lcom/brakefield/painter/nativeobjs/brushes/settings/SpecialEffectsSettingsNative;->getUsesPaintColor()Z

    move-result v7

    if-nez v7, :cond_3

    move v7, v5

    goto :goto_2

    :cond_3
    move v7, v4

    :goto_2
    const/4 v8, 0x4

    if-ne p1, v8, :cond_8

    .line 1474
    iget-object p2, p0, Lcom/brakefield/painter/ui/toolbars/MainToolbar$UpdateHandler;->observeIsPaintingCorners:Lcom/brakefield/infinitestudio/ui/components/Observe;

    if-nez v1, :cond_4

    move v6, v5

    goto :goto_3

    :cond_4
    move v6, v4

    :goto_3
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {p2, v6}, Lcom/brakefield/infinitestudio/ui/components/Observe;->update(Ljava/lang/Object;)V

    .line 1475
    iget-object p2, p0, Lcom/brakefield/painter/ui/toolbars/MainToolbar$UpdateHandler;->observeIsBlendingCorners:Lcom/brakefield/infinitestudio/ui/components/Observe;

    if-ne v1, v5, :cond_5

    move v6, v5

    goto :goto_4

    :cond_5
    move v6, v4

    :goto_4
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {p2, v6}, Lcom/brakefield/infinitestudio/ui/components/Observe;->update(Ljava/lang/Object;)V

    .line 1476
    iget-object p2, p0, Lcom/brakefield/painter/ui/toolbars/MainToolbar$UpdateHandler;->observeIsErasingCorners:Lcom/brakefield/infinitestudio/ui/components/Observe;

    if-ne v1, v3, :cond_6

    move v3, v5

    goto :goto_5

    :cond_6
    move v3, v4

    :goto_5
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {p2, v3}, Lcom/brakefield/infinitestudio/ui/components/Observe;->update(Ljava/lang/Object;)V

    .line 1477
    iget-object p2, p0, Lcom/brakefield/painter/ui/toolbars/MainToolbar$UpdateHandler;->observeIsCloningCorners:Lcom/brakefield/infinitestudio/ui/components/Observe;

    if-ne v1, v2, :cond_7

    move v4, v5

    :cond_7
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/brakefield/infinitestudio/ui/components/Observe;->update(Ljava/lang/Object;)V

    goto/16 :goto_b

    .line 1479
    :cond_8
    iget-object v8, p0, Lcom/brakefield/painter/ui/toolbars/MainToolbar$UpdateHandler;->observePaintModeSelected:Lcom/brakefield/infinitestudio/ui/components/Observe;

    if-eqz v1, :cond_a

    if-ne v1, v2, :cond_9

    goto :goto_6

    :cond_9
    move v9, v4

    goto :goto_7

    :cond_a
    :goto_6
    move v9, v5

    :goto_7
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/brakefield/infinitestudio/ui/components/Observe;->update(Ljava/lang/Object;)V

    .line 1480
    iget-object v8, p0, Lcom/brakefield/painter/ui/toolbars/MainToolbar$UpdateHandler;->observeBlendModeSelected:Lcom/brakefield/infinitestudio/ui/components/Observe;

    if-ne v1, v5, :cond_b

    move v9, v5

    goto :goto_8

    :cond_b
    move v9, v4

    :goto_8
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/brakefield/infinitestudio/ui/components/Observe;->update(Ljava/lang/Object;)V

    .line 1481
    iget-object v8, p0, Lcom/brakefield/painter/ui/toolbars/MainToolbar$UpdateHandler;->observeEraseModeSelected:Lcom/brakefield/infinitestudio/ui/components/Observe;

    if-ne v1, v3, :cond_c

    move v9, v5

    goto :goto_9

    :cond_c
    move v9, v4

    :goto_9
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/brakefield/infinitestudio/ui/components/Observe;->update(Ljava/lang/Object;)V

    .line 1482
    iget-object v8, p0, Lcom/brakefield/painter/ui/toolbars/MainToolbar$UpdateHandler;->observeColorVisible:Lcom/brakefield/infinitestudio/ui/components/Observe;

    if-eqz v6, :cond_d

    invoke-static {}, Lcom/brakefield/painter/PainterLib;->isMasking()Z

    move-result v9

    if-nez v9, :cond_d

    invoke-virtual {v0}, Lcom/brakefield/painter/nativeobjs/brushes/settings/SpecialEffectsSettingsNative;->getUsesPaintColor()Z

    move-result v9

    if-eqz v9, :cond_d

    move v4, v5

    :cond_d
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v8, v4}, Lcom/brakefield/infinitestudio/ui/components/Observe;->update(Ljava/lang/Object;)V

    .line 1483
    iget-object v4, p0, Lcom/brakefield/painter/ui/toolbars/MainToolbar$UpdateHandler;->observeModeSettingsVisible:Lcom/brakefield/infinitestudio/ui/components/Observe;

    xor-int/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/brakefield/infinitestudio/ui/components/Observe;->update(Ljava/lang/Object;)V

    .line 1484
    iget-object v4, p0, Lcom/brakefield/painter/ui/toolbars/MainToolbar$UpdateHandler;->observeModeFilterEffectVisible:Lcom/brakefield/infinitestudio/ui/components/Observe;

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/brakefield/infinitestudio/ui/components/Observe;->update(Ljava/lang/Object;)V

    .line 1485
    iget-object v4, p0, Lcom/brakefield/painter/ui/toolbars/MainToolbar$UpdateHandler;->observeToolbarIsVertical:Lcom/brakefield/infinitestudio/ui/components/Observe;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {v4, p2}, Lcom/brakefield/infinitestudio/ui/components/Observe;->update(Ljava/lang/Object;)V

    if-eq v1, v3, :cond_f

    if-eq v1, v2, :cond_e

    const p2, 0x7f080470

    goto :goto_a

    :cond_e
    const p2, 0x7f0804a6

    goto :goto_a

    :cond_f
    const p2, 0x7f080304

    .line 1492
    :goto_a
    iget-object v1, p0, Lcom/brakefield/painter/ui/toolbars/MainToolbar$UpdateHandler;->observeModeSettingsIcon:Lcom/brakefield/infinitestudio/ui/components/Observe;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v1, p2}, Lcom/brakefield/infinitestudio/ui/components/Observe;->update(Ljava/lang/Object;)V

    .line 1495
    :goto_b
    iget-object p2, p0, Lcom/brakefield/painter/ui/toolbars/MainToolbar$UpdateHandler;->observePaintColor:Lcom/infinite/core/observe/ObserveIntNative;

    invoke-virtual {p2}, Lcom/infinite/core/observe/ObserveIntNative;->update()Z

    .line 1496
    iget-object p2, p0, Lcom/brakefield/painter/ui/toolbars/MainToolbar$UpdateHandler;->observeBrushSize:Lcom/infinite/core/observe/ObserveFloatNative;

    invoke-virtual {p2}, Lcom/infinite/core/observe/ObserveFloatNative;->update()Z

    .line 1497
    iget-object p2, p0, Lcom/brakefield/painter/ui/toolbars/MainToolbar$UpdateHandler;->observeCorrectionsDisabled:Lcom/brakefield/infinitestudio/ui/components/Observe;

    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getChallengeCorrectionsDisabled()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/brakefield/infinitestudio/ui/components/Observe;->update(Ljava/lang/Object;)V

    .line 1498
    iget-object p2, p0, Lcom/brakefield/painter/ui/toolbars/MainToolbar$UpdateHandler;->opacityControl:Lcom/brakefield/painter/OpacityControl;

    invoke-virtual {p2}, Lcom/brakefield/painter/OpacityControl;->update()V

    .line 1499
    iget-object p2, p0, Lcom/brakefield/painter/ui/toolbars/MainToolbar$UpdateHandler;->observeToolbarPosition:Lcom/brakefield/infinitestudio/ui/components/Observe;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/brakefield/infinitestudio/ui/components/Observe;->update(Ljava/lang/Object;)V

    if-eqz v7, :cond_10

    .line 1502
    iget-object p1, p0, Lcom/brakefield/painter/ui/toolbars/MainToolbar$UpdateHandler;->observeFilterEffectMiddlePivot:Lcom/brakefield/infinitestudio/ui/components/Observe;

    invoke-virtual {v0}, Lcom/brakefield/painter/nativeobjs/brushes/settings/SpecialEffectsSettingsNative;->isMiddlePivot()Z

    move-result p2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/brakefield/infinitestudio/ui/components/Observe;->update(Ljava/lang/Object;)V

    .line 1503
    iget-object p1, p0, Lcom/brakefield/painter/ui/toolbars/MainToolbar$UpdateHandler;->observeFilterEffectValue:Lcom/brakefield/infinitestudio/ui/components/Observe;

    invoke-virtual {v0}, Lcom/brakefield/painter/nativeobjs/brushes/settings/SpecialEffectsSettingsNative;->getValue()F

    move-result p2

    const/high16 v0, 0x42c80000    # 100.0f

    mul-float/2addr p2, v0

    float-to-int p2, p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/brakefield/infinitestudio/ui/components/Observe;->update(Ljava/lang/Object;)V

    .line 1506
    :cond_10
    iget-object p1, p0, Lcom/brakefield/painter/ui/toolbars/MainToolbar$UpdateHandler;->swatchSlider:Lcom/brakefield/infinitestudio/color/SwatchSlider;

    invoke-virtual {p1}, Lcom/brakefield/infinitestudio/color/SwatchSlider;->postInvalidate()V

    return-void
.end method
