.class public Lcom/brakefield/painter/ui/MiniToolbars;
.super Ljava/lang/Object;
.source "MiniToolbars.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/brakefield/painter/ui/MiniToolbars$LinesGuideToolbar;,
        Lcom/brakefield/painter/ui/MiniToolbars$EllipseGuideToolbar;,
        Lcom/brakefield/painter/ui/MiniToolbars$PenGuideToolbar;,
        Lcom/brakefield/painter/ui/MiniToolbars$LazyGuideToolbar;,
        Lcom/brakefield/painter/ui/MiniToolbars$HatchingGuideToolbar;,
        Lcom/brakefield/painter/ui/MiniToolbars$LineShapeToolbar;,
        Lcom/brakefield/painter/ui/MiniToolbars$CircleShapeToolbar;,
        Lcom/brakefield/painter/ui/MiniToolbars$RectShapeToolbar;,
        Lcom/brakefield/painter/ui/MiniToolbars$PathShapeToolbar;,
        Lcom/brakefield/painter/ui/MiniToolbars$ArcShapeToolbar;,
        Lcom/brakefield/painter/ui/MiniToolbars$ShapeStampToolbar;,
        Lcom/brakefield/painter/ui/MiniToolbars$HorizontalSymmetryToolbar;,
        Lcom/brakefield/painter/ui/MiniToolbars$VerticalSymmetryToolbar;,
        Lcom/brakefield/painter/ui/MiniToolbars$RadialSymmetryToolbar;,
        Lcom/brakefield/painter/ui/MiniToolbars$KaleidoSymmetryToolbar;,
        Lcom/brakefield/painter/ui/MiniToolbars$OnePointPerspectiveToolbar;,
        Lcom/brakefield/painter/ui/MiniToolbars$TwoPointPerspectiveToolbar;,
        Lcom/brakefield/painter/ui/MiniToolbars$ThreePointPerspectiveToolbar;,
        Lcom/brakefield/painter/ui/MiniToolbars$FisheyePerspectiveToolbar;,
        Lcom/brakefield/painter/ui/MiniToolbars$IsometricPerspectiveToolbar;,
        Lcom/brakefield/painter/ui/MiniToolbars$TwoDimensionalGridToolbar;,
        Lcom/brakefield/painter/ui/MiniToolbars$SoloLayerModeToolbar;,
        Lcom/brakefield/painter/ui/MiniToolbars$TraceLayerModeToolbar;,
        Lcom/brakefield/painter/ui/MiniToolbars$CameraLockToolbar;,
        Lcom/brakefield/painter/ui/MiniToolbars$LockTransparencyToolbar;,
        Lcom/brakefield/painter/ui/MiniToolbars$CloneToolbar;,
        Lcom/brakefield/painter/ui/MiniToolbars$MiniToolbar;,
        Lcom/brakefield/painter/ui/MiniToolbars$Action;,
        Lcom/brakefield/painter/ui/MiniToolbars$LayerModeToolbar;,
        Lcom/brakefield/painter/ui/MiniToolbars$PerspectiveToolbar;,
        Lcom/brakefield/painter/ui/MiniToolbars$SymmetryToolbar;,
        Lcom/brakefield/painter/ui/MiniToolbars$ShapeToolbar;,
        Lcom/brakefield/painter/ui/MiniToolbars$GuideToolbar;,
        Lcom/brakefield/painter/ui/MiniToolbars$ToggleAction;,
        Lcom/brakefield/painter/ui/MiniToolbars$EventAction;
    }
.end annotation


# instance fields
.field private activity:Landroid/app/Activity;

.field private final arcShapeToolbar:Lcom/brakefield/painter/ui/MiniToolbars$ArcShapeToolbar;

.field private final cameraLockToolbar:Lcom/brakefield/painter/ui/MiniToolbars$CameraLockToolbar;

.field private final circleShapeToolbar:Lcom/brakefield/painter/ui/MiniToolbars$CircleShapeToolbar;

.field private final cloneToolbar:Lcom/brakefield/painter/ui/MiniToolbars$CloneToolbar;

.field private customToolbar:Lcom/brakefield/painter/ui/CustomToolbar;

.field private final ellipseGuideToolbar:Lcom/brakefield/painter/ui/MiniToolbars$EllipseGuideToolbar;

.field private final fisheyePerspectiveToolbar:Lcom/brakefield/painter/ui/MiniToolbars$FisheyePerspectiveToolbar;

.field private guideManager:Lcom/brakefield/painter/nativeobjs/GuideManagerNative;

.field private final hatchingGuideToolbar:Lcom/brakefield/painter/ui/MiniToolbars$HatchingGuideToolbar;

.field private final horizontalSymmetryToolbar:Lcom/brakefield/painter/ui/MiniToolbars$HorizontalSymmetryToolbar;

.field private final isometricPerspectiveToolbar:Lcom/brakefield/painter/ui/MiniToolbars$IsometricPerspectiveToolbar;

.field private final kaleidoSymmetryToolbar:Lcom/brakefield/painter/ui/MiniToolbars$KaleidoSymmetryToolbar;

.field private final lazyGuideToolbar:Lcom/brakefield/painter/ui/MiniToolbars$LazyGuideToolbar;

.field private final lineShapeToolbar:Lcom/brakefield/painter/ui/MiniToolbars$LineShapeToolbar;

.field private final linesGuideToolbar:Lcom/brakefield/painter/ui/MiniToolbars$LinesGuideToolbar;

.field private final lockTransparencyToolbar:Lcom/brakefield/painter/ui/MiniToolbars$LockTransparencyToolbar;

.field private miniToolbars:Landroid/view/ViewGroup;

.field private final onePointPerspectiveToolbar:Lcom/brakefield/painter/ui/MiniToolbars$OnePointPerspectiveToolbar;

.field private final pathShapeToolbar:Lcom/brakefield/painter/ui/MiniToolbars$PathShapeToolbar;

.field private final penGuideToolbar:Lcom/brakefield/painter/ui/MiniToolbars$PenGuideToolbar;

.field private perspectiveManager:Lcom/brakefield/painter/nativeobjs/PerspectiveManagerNative;

.field private final radialSymmetryToolbar:Lcom/brakefield/painter/ui/MiniToolbars$RadialSymmetryToolbar;

.field private final rectShapeToolbar:Lcom/brakefield/painter/ui/MiniToolbars$RectShapeToolbar;

.field private final shapeStampToolbar:Lcom/brakefield/painter/ui/MiniToolbars$ShapeStampToolbar;

.field private final soloLayerModeToolbar:Lcom/brakefield/painter/ui/MiniToolbars$SoloLayerModeToolbar;

.field private symmetryManager:Lcom/brakefield/painter/nativeobjs/SymmetryManagerNative;

.field private final threePointPerspectiveToolbar:Lcom/brakefield/painter/ui/MiniToolbars$ThreePointPerspectiveToolbar;

.field private final traceLayerModeToolbar:Lcom/brakefield/painter/ui/MiniToolbars$TraceLayerModeToolbar;

.field private final twoDimensionalGridToolbar:Lcom/brakefield/painter/ui/MiniToolbars$TwoDimensionalGridToolbar;

.field private final twoPointPerspectiveToolbar:Lcom/brakefield/painter/ui/MiniToolbars$TwoPointPerspectiveToolbar;

.field private ui:Lcom/brakefield/painter/ui/SimpleUI;

.field private final verticalSymmetryToolbar:Lcom/brakefield/painter/ui/MiniToolbars$VerticalSymmetryToolbar;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Lcom/brakefield/painter/ui/MiniToolbars$LinesGuideToolbar;

    invoke-direct {v0, p0}, Lcom/brakefield/painter/ui/MiniToolbars$LinesGuideToolbar;-><init>(Lcom/brakefield/painter/ui/MiniToolbars;)V

    iput-object v0, p0, Lcom/brakefield/painter/ui/MiniToolbars;->linesGuideToolbar:Lcom/brakefield/painter/ui/MiniToolbars$LinesGuideToolbar;

    .line 36
    new-instance v0, Lcom/brakefield/painter/ui/MiniToolbars$EllipseGuideToolbar;

    invoke-direct {v0, p0}, Lcom/brakefield/painter/ui/MiniToolbars$EllipseGuideToolbar;-><init>(Lcom/brakefield/painter/ui/MiniToolbars;)V

    iput-object v0, p0, Lcom/brakefield/painter/ui/MiniToolbars;->ellipseGuideToolbar:Lcom/brakefield/painter/ui/MiniToolbars$EllipseGuideToolbar;

    .line 37
    new-instance v0, Lcom/brakefield/painter/ui/MiniToolbars$PenGuideToolbar;

    invoke-direct {v0, p0}, Lcom/brakefield/painter/ui/MiniToolbars$PenGuideToolbar;-><init>(Lcom/brakefield/painter/ui/MiniToolbars;)V

    iput-object v0, p0, Lcom/brakefield/painter/ui/MiniToolbars;->penGuideToolbar:Lcom/brakefield/painter/ui/MiniToolbars$PenGuideToolbar;

    .line 38
    new-instance v0, Lcom/brakefield/painter/ui/MiniToolbars$LazyGuideToolbar;

    invoke-direct {v0, p0}, Lcom/brakefield/painter/ui/MiniToolbars$LazyGuideToolbar;-><init>(Lcom/brakefield/painter/ui/MiniToolbars;)V

    iput-object v0, p0, Lcom/brakefield/painter/ui/MiniToolbars;->lazyGuideToolbar:Lcom/brakefield/painter/ui/MiniToolbars$LazyGuideToolbar;

    .line 39
    new-instance v0, Lcom/brakefield/painter/ui/MiniToolbars$HatchingGuideToolbar;

    invoke-direct {v0, p0}, Lcom/brakefield/painter/ui/MiniToolbars$HatchingGuideToolbar;-><init>(Lcom/brakefield/painter/ui/MiniToolbars;)V

    iput-object v0, p0, Lcom/brakefield/painter/ui/MiniToolbars;->hatchingGuideToolbar:Lcom/brakefield/painter/ui/MiniToolbars$HatchingGuideToolbar;

    .line 41
    new-instance v0, Lcom/brakefield/painter/ui/MiniToolbars$LineShapeToolbar;

    invoke-direct {v0, p0}, Lcom/brakefield/painter/ui/MiniToolbars$LineShapeToolbar;-><init>(Lcom/brakefield/painter/ui/MiniToolbars;)V

    iput-object v0, p0, Lcom/brakefield/painter/ui/MiniToolbars;->lineShapeToolbar:Lcom/brakefield/painter/ui/MiniToolbars$LineShapeToolbar;

    .line 42
    new-instance v0, Lcom/brakefield/painter/ui/MiniToolbars$CircleShapeToolbar;

    invoke-direct {v0, p0}, Lcom/brakefield/painter/ui/MiniToolbars$CircleShapeToolbar;-><init>(Lcom/brakefield/painter/ui/MiniToolbars;)V

    iput-object v0, p0, Lcom/brakefield/painter/ui/MiniToolbars;->circleShapeToolbar:Lcom/brakefield/painter/ui/MiniToolbars$CircleShapeToolbar;

    .line 43
    new-instance v0, Lcom/brakefield/painter/ui/MiniToolbars$RectShapeToolbar;

    invoke-direct {v0, p0}, Lcom/brakefield/painter/ui/MiniToolbars$RectShapeToolbar;-><init>(Lcom/brakefield/painter/ui/MiniToolbars;)V

    iput-object v0, p0, Lcom/brakefield/painter/ui/MiniToolbars;->rectShapeToolbar:Lcom/brakefield/painter/ui/MiniToolbars$RectShapeToolbar;

    .line 44
    new-instance v0, Lcom/brakefield/painter/ui/MiniToolbars$PathShapeToolbar;

    invoke-direct {v0, p0}, Lcom/brakefield/painter/ui/MiniToolbars$PathShapeToolbar;-><init>(Lcom/brakefield/painter/ui/MiniToolbars;)V

    iput-object v0, p0, Lcom/brakefield/painter/ui/MiniToolbars;->pathShapeToolbar:Lcom/brakefield/painter/ui/MiniToolbars$PathShapeToolbar;

    .line 45
    new-instance v0, Lcom/brakefield/painter/ui/MiniToolbars$ArcShapeToolbar;

    invoke-direct {v0, p0}, Lcom/brakefield/painter/ui/MiniToolbars$ArcShapeToolbar;-><init>(Lcom/brakefield/painter/ui/MiniToolbars;)V

    iput-object v0, p0, Lcom/brakefield/painter/ui/MiniToolbars;->arcShapeToolbar:Lcom/brakefield/painter/ui/MiniToolbars$ArcShapeToolbar;

    .line 46
    new-instance v0, Lcom/brakefield/painter/ui/MiniToolbars$ShapeStampToolbar;

    invoke-direct {v0, p0}, Lcom/brakefield/painter/ui/MiniToolbars$ShapeStampToolbar;-><init>(Lcom/brakefield/painter/ui/MiniToolbars;)V

    iput-object v0, p0, Lcom/brakefield/painter/ui/MiniToolbars;->shapeStampToolbar:Lcom/brakefield/painter/ui/MiniToolbars$ShapeStampToolbar;

    .line 48
    new-instance v0, Lcom/brakefield/painter/ui/MiniToolbars$HorizontalSymmetryToolbar;

    invoke-direct {v0, p0}, Lcom/brakefield/painter/ui/MiniToolbars$HorizontalSymmetryToolbar;-><init>(Lcom/brakefield/painter/ui/MiniToolbars;)V

    iput-object v0, p0, Lcom/brakefield/painter/ui/MiniToolbars;->horizontalSymmetryToolbar:Lcom/brakefield/painter/ui/MiniToolbars$HorizontalSymmetryToolbar;

    .line 49
    new-instance v0, Lcom/brakefield/painter/ui/MiniToolbars$VerticalSymmetryToolbar;

    invoke-direct {v0, p0}, Lcom/brakefield/painter/ui/MiniToolbars$VerticalSymmetryToolbar;-><init>(Lcom/brakefield/painter/ui/MiniToolbars;)V

    iput-object v0, p0, Lcom/brakefield/painter/ui/MiniToolbars;->verticalSymmetryToolbar:Lcom/brakefield/painter/ui/MiniToolbars$VerticalSymmetryToolbar;

    .line 50
    new-instance v0, Lcom/brakefield/painter/ui/MiniToolbars$RadialSymmetryToolbar;

    invoke-direct {v0, p0}, Lcom/brakefield/painter/ui/MiniToolbars$RadialSymmetryToolbar;-><init>(Lcom/brakefield/painter/ui/MiniToolbars;)V

    iput-object v0, p0, Lcom/brakefield/painter/ui/MiniToolbars;->radialSymmetryToolbar:Lcom/brakefield/painter/ui/MiniToolbars$RadialSymmetryToolbar;

    .line 51
    new-instance v0, Lcom/brakefield/painter/ui/MiniToolbars$KaleidoSymmetryToolbar;

    invoke-direct {v0, p0}, Lcom/brakefield/painter/ui/MiniToolbars$KaleidoSymmetryToolbar;-><init>(Lcom/brakefield/painter/ui/MiniToolbars;)V

    iput-object v0, p0, Lcom/brakefield/painter/ui/MiniToolbars;->kaleidoSymmetryToolbar:Lcom/brakefield/painter/ui/MiniToolbars$KaleidoSymmetryToolbar;

    .line 53
    new-instance v0, Lcom/brakefield/painter/ui/MiniToolbars$OnePointPerspectiveToolbar;

    invoke-direct {v0, p0}, Lcom/brakefield/painter/ui/MiniToolbars$OnePointPerspectiveToolbar;-><init>(Lcom/brakefield/painter/ui/MiniToolbars;)V

    iput-object v0, p0, Lcom/brakefield/painter/ui/MiniToolbars;->onePointPerspectiveToolbar:Lcom/brakefield/painter/ui/MiniToolbars$OnePointPerspectiveToolbar;

    .line 54
    new-instance v0, Lcom/brakefield/painter/ui/MiniToolbars$TwoPointPerspectiveToolbar;

    invoke-direct {v0, p0}, Lcom/brakefield/painter/ui/MiniToolbars$TwoPointPerspectiveToolbar;-><init>(Lcom/brakefield/painter/ui/MiniToolbars;)V

    iput-object v0, p0, Lcom/brakefield/painter/ui/MiniToolbars;->twoPointPerspectiveToolbar:Lcom/brakefield/painter/ui/MiniToolbars$TwoPointPerspectiveToolbar;

    .line 55
    new-instance v0, Lcom/brakefield/painter/ui/MiniToolbars$ThreePointPerspectiveToolbar;

    invoke-direct {v0, p0}, Lcom/brakefield/painter/ui/MiniToolbars$ThreePointPerspectiveToolbar;-><init>(Lcom/brakefield/painter/ui/MiniToolbars;)V

    iput-object v0, p0, Lcom/brakefield/painter/ui/MiniToolbars;->threePointPerspectiveToolbar:Lcom/brakefield/painter/ui/MiniToolbars$ThreePointPerspectiveToolbar;

    .line 56
    new-instance v0, Lcom/brakefield/painter/ui/MiniToolbars$FisheyePerspectiveToolbar;

    invoke-direct {v0, p0}, Lcom/brakefield/painter/ui/MiniToolbars$FisheyePerspectiveToolbar;-><init>(Lcom/brakefield/painter/ui/MiniToolbars;)V

    iput-object v0, p0, Lcom/brakefield/painter/ui/MiniToolbars;->fisheyePerspectiveToolbar:Lcom/brakefield/painter/ui/MiniToolbars$FisheyePerspectiveToolbar;

    .line 57
    new-instance v0, Lcom/brakefield/painter/ui/MiniToolbars$IsometricPerspectiveToolbar;

    invoke-direct {v0, p0}, Lcom/brakefield/painter/ui/MiniToolbars$IsometricPerspectiveToolbar;-><init>(Lcom/brakefield/painter/ui/MiniToolbars;)V

    iput-object v0, p0, Lcom/brakefield/painter/ui/MiniToolbars;->isometricPerspectiveToolbar:Lcom/brakefield/painter/ui/MiniToolbars$IsometricPerspectiveToolbar;

    .line 58
    new-instance v0, Lcom/brakefield/painter/ui/MiniToolbars$TwoDimensionalGridToolbar;

    invoke-direct {v0, p0}, Lcom/brakefield/painter/ui/MiniToolbars$TwoDimensionalGridToolbar;-><init>(Lcom/brakefield/painter/ui/MiniToolbars;)V

    iput-object v0, p0, Lcom/brakefield/painter/ui/MiniToolbars;->twoDimensionalGridToolbar:Lcom/brakefield/painter/ui/MiniToolbars$TwoDimensionalGridToolbar;

    .line 60
    new-instance v0, Lcom/brakefield/painter/ui/MiniToolbars$SoloLayerModeToolbar;

    invoke-direct {v0, p0}, Lcom/brakefield/painter/ui/MiniToolbars$SoloLayerModeToolbar;-><init>(Lcom/brakefield/painter/ui/MiniToolbars;)V

    iput-object v0, p0, Lcom/brakefield/painter/ui/MiniToolbars;->soloLayerModeToolbar:Lcom/brakefield/painter/ui/MiniToolbars$SoloLayerModeToolbar;

    .line 61
    new-instance v0, Lcom/brakefield/painter/ui/MiniToolbars$TraceLayerModeToolbar;

    invoke-direct {v0, p0}, Lcom/brakefield/painter/ui/MiniToolbars$TraceLayerModeToolbar;-><init>(Lcom/brakefield/painter/ui/MiniToolbars;)V

    iput-object v0, p0, Lcom/brakefield/painter/ui/MiniToolbars;->traceLayerModeToolbar:Lcom/brakefield/painter/ui/MiniToolbars$TraceLayerModeToolbar;

    .line 63
    new-instance v0, Lcom/brakefield/painter/ui/MiniToolbars$CameraLockToolbar;

    invoke-direct {v0, p0}, Lcom/brakefield/painter/ui/MiniToolbars$CameraLockToolbar;-><init>(Lcom/brakefield/painter/ui/MiniToolbars;)V

    iput-object v0, p0, Lcom/brakefield/painter/ui/MiniToolbars;->cameraLockToolbar:Lcom/brakefield/painter/ui/MiniToolbars$CameraLockToolbar;

    .line 64
    new-instance v0, Lcom/brakefield/painter/ui/MiniToolbars$LockTransparencyToolbar;

    invoke-direct {v0, p0}, Lcom/brakefield/painter/ui/MiniToolbars$LockTransparencyToolbar;-><init>(Lcom/brakefield/painter/ui/MiniToolbars;)V

    iput-object v0, p0, Lcom/brakefield/painter/ui/MiniToolbars;->lockTransparencyToolbar:Lcom/brakefield/painter/ui/MiniToolbars$LockTransparencyToolbar;

    .line 65
    new-instance v0, Lcom/brakefield/painter/ui/MiniToolbars$CloneToolbar;

    invoke-direct {v0, p0}, Lcom/brakefield/painter/ui/MiniToolbars$CloneToolbar;-><init>(Lcom/brakefield/painter/ui/MiniToolbars;)V

    iput-object v0, p0, Lcom/brakefield/painter/ui/MiniToolbars;->cloneToolbar:Lcom/brakefield/painter/ui/MiniToolbars$CloneToolbar;

    return-void
.end method

.method static synthetic access$300(Lcom/brakefield/painter/ui/MiniToolbars;)Lcom/brakefield/painter/ui/SimpleUI;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/brakefield/painter/ui/MiniToolbars;->ui:Lcom/brakefield/painter/ui/SimpleUI;

    return-object p0
.end method

.method private getActionButton(Lcom/brakefield/painter/ui/MiniToolbars$Action;)Landroid/widget/ImageView;
    .locals 2

    .line 229
    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result v0

    iput v0, p1, Lcom/brakefield/painter/ui/MiniToolbars$Action;->viewId:I

    .line 230
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/brakefield/painter/ui/MiniToolbars;->activity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 231
    iget v1, p1, Lcom/brakefield/painter/ui/MiniToolbars$Action;->viewId:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setId(I)V

    .line 232
    invoke-virtual {p1}, Lcom/brakefield/painter/ui/MiniToolbars$Action;->getIcon()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 233
    invoke-virtual {p1, v0}, Lcom/brakefield/painter/ui/MiniToolbars$Action;->update(Landroid/widget/ImageView;)V

    .line 234
    invoke-static {v0}, Lcom/brakefield/infinitestudio/ui/UIManager;->setPressAction(Landroid/view/View;)V

    .line 235
    new-instance v1, Lcom/brakefield/painter/ui/MiniToolbars$$ExternalSyntheticLambda2;

    invoke-direct {v1, p1, v0}, Lcom/brakefield/painter/ui/MiniToolbars$$ExternalSyntheticLambda2;-><init>(Lcom/brakefield/painter/ui/MiniToolbars$Action;Landroid/widget/ImageView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v0
.end method

.method private getSeparator()Landroid/view/View;
    .locals 3

    .line 223
    new-instance v0, Landroid/view/View;

    iget-object v1, p0, Lcom/brakefield/painter/ui/MiniToolbars;->activity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const v1, -0x777778

    const/16 v2, 0x64

    .line 224
    invoke-static {v1, v2}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    return-object v0
.end method

.method private getToolButton(II)Landroid/widget/ImageView;
    .locals 2

    .line 214
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/brakefield/painter/ui/MiniToolbars;->activity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 215
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 216
    invoke-static {}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->getIconColor()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 217
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 218
    invoke-static {v0}, Lcom/brakefield/infinitestudio/ui/UIManager;->setPressAction(Landroid/view/View;)V

    return-object v0
.end method

.method static synthetic lambda$getActionButton$2(Lcom/brakefield/painter/ui/MiniToolbars$Action;Landroid/widget/ImageView;Landroid/view/View;)V
    .locals 0

    .line 236
    invoke-virtual {p0, p1}, Lcom/brakefield/painter/ui/MiniToolbars$Action;->onClick(Landroid/view/View;)V

    .line 237
    invoke-virtual {p0, p1}, Lcom/brakefield/painter/ui/MiniToolbars$Action;->update(Landroid/widget/ImageView;)V

    return-void
.end method

.method static synthetic lambda$setHintListener$0(Landroid/view/View$OnClickListener;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4

    .line 84
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 85
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    const/4 v1, 0x0

    cmpg-float v2, v0, v1

    const/4 v3, 0x0

    if-ltz v2, :cond_1

    cmpg-float v1, p2, v1

    if-ltz v1, :cond_1

    .line 86
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    cmpl-float p2, p2, v0

    if-lez p2, :cond_0

    goto :goto_0

    :cond_0
    return v3

    .line 87
    :cond_1
    :goto_0
    invoke-virtual {p1, v3}, Landroid/view/View;->setFocusable(Z)V

    .line 88
    invoke-interface {p0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    const/4 p0, 0x1

    return p0
.end method

.method static synthetic lambda$setHintListener$1(Landroid/view/View$OnClickListener;Landroid/view/View;)Z
    .locals 0

    .line 95
    invoke-interface {p0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    const/4 p0, 0x1

    return p0
.end method

.method private updateCustomToolbar(Landroid/app/Activity;ZI)V
    .locals 0

    .line 155
    iget-object p1, p0, Lcom/brakefield/painter/ui/MiniToolbars;->customToolbar:Lcom/brakefield/painter/ui/CustomToolbar;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/brakefield/painter/ui/CustomToolbar;->getView(Ljava/lang/Object;)Landroid/widget/ImageView;

    move-result-object p1

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    .line 156
    invoke-static {}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->getHighlightColor()I

    move-result p2

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->getIconColor()I

    move-result p2

    :goto_0
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setColorFilter(I)V

    :cond_1
    return-void
.end method

.method private updateMiniToolbars(Landroid/app/Activity;ZLcom/brakefield/painter/ui/MiniToolbars$MiniToolbar;I)V
    .locals 7

    .line 160
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 161
    invoke-virtual {p3}, Lcom/brakefield/painter/ui/MiniToolbars$MiniToolbar;->getIcon()I

    move-result v1

    if-eqz p2, :cond_2

    .line 163
    iget-object p2, p0, Lcom/brakefield/painter/ui/MiniToolbars;->miniToolbars:Landroid/view/ViewGroup;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/view/ViewGroup;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object p2

    if-nez p2, :cond_3

    .line 165
    invoke-direct {p0, v1, p4}, Lcom/brakefield/painter/ui/MiniToolbars;->getToolButton(II)Landroid/widget/ImageView;

    move-result-object p2

    .line 167
    invoke-static {p4}, Lcom/brakefield/painter/ui/DockableElements;->getElement(I)Lcom/brakefield/painter/ui/DockableElements$DockableElement;

    move-result-object v1

    .line 168
    iget-object v2, p0, Lcom/brakefield/painter/ui/MiniToolbars;->ui:Lcom/brakefield/painter/ui/SimpleUI;

    invoke-virtual {v1, p1, v2}, Lcom/brakefield/painter/ui/DockableElements$DockableElement;->getOnClickListener(Landroid/app/Activity;Lcom/brakefield/painter/ui/SimpleUI;)Landroid/view/View$OnClickListener;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 169
    invoke-virtual {v1}, Lcom/brakefield/painter/ui/DockableElements$DockableElement;->getUIBindingKey()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0a0663

    invoke-virtual {p2, v2, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 170
    iget-object v1, p0, Lcom/brakefield/painter/ui/MiniToolbars;->ui:Lcom/brakefield/painter/ui/SimpleUI;

    const/4 v2, 0x0

    invoke-virtual {v1, p2, v2}, Lcom/brakefield/painter/ui/SimpleUI;->bindUI(Landroid/view/View;Lcom/infinite/app/OnBindListener;)V

    const v1, 0x7f07005d

    .line 172
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    const/high16 v2, 0x40800000    # 4.0f

    .line 173
    invoke-static {v2}, Lcom/brakefield/infinitestudio/ResourceHelper;->dp(F)F

    move-result v2

    float-to-int v2, v2

    mul-int/lit8 v3, v2, 0x2

    add-int/2addr v3, v1

    .line 176
    invoke-virtual {p3}, Lcom/brakefield/painter/ui/MiniToolbars$MiniToolbar;->getActions()[Lcom/brakefield/painter/ui/MiniToolbars$Action;

    move-result-object p3

    .line 177
    array-length v4, p3

    if-lez v4, :cond_1

    .line 179
    new-instance v4, Landroid/widget/LinearLayout;

    invoke-direct {v4, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 180
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x2

    invoke-direct {p1, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, p1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 p1, 0x0

    .line 181
    invoke-virtual {v4, p1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 182
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-virtual {v4, p4}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 183
    new-instance p4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p4, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, p2, p4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 185
    invoke-direct {p0}, Lcom/brakefield/painter/ui/MiniToolbars;->getSeparator()Landroid/view/View;

    move-result-object p2

    .line 186
    new-instance p4, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-static {v6}, Lcom/brakefield/infinitestudio/ResourceHelper;->dp(F)F

    move-result v6

    float-to-int v6, v6

    invoke-direct {p4, v6, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, p2, p4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 188
    array-length p2, p3

    :goto_0
    if-ge p1, p2, :cond_0

    aget-object p4, p3, p1

    .line 189
    invoke-direct {p0, p4}, Lcom/brakefield/painter/ui/MiniToolbars;->getActionButton(Lcom/brakefield/painter/ui/MiniToolbars$Action;)Landroid/widget/ImageView;

    move-result-object p4

    .line 190
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v6, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, p4, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    move-object p2, v4

    goto :goto_1

    :cond_1
    move v5, v3

    .line 197
    :goto_1
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p1, v5, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const p3, 0x7f070223

    .line 199
    invoke-virtual {v0, p3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p3

    float-to-int p3, p3

    .line 200
    invoke-virtual {p1, p3, p3, p3, p3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 202
    new-instance p3, Lcom/brakefield/infinitestudio/ui/PanelDrawable;

    invoke-direct {p3}, Lcom/brakefield/infinitestudio/ui/PanelDrawable;-><init>()V

    invoke-virtual {p2, p3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 203
    invoke-virtual {p2, v2, v2, v2, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 205
    iget-object p3, p0, Lcom/brakefield/painter/ui/MiniToolbars;->miniToolbars:Landroid/view/ViewGroup;

    invoke-virtual {p3, p2, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_2

    .line 208
    :cond_2
    iget-object p1, p0, Lcom/brakefield/painter/ui/MiniToolbars;->miniToolbars:Landroid/view/ViewGroup;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 209
    iget-object p2, p0, Lcom/brakefield/painter/ui/MiniToolbars;->miniToolbars:Landroid/view/ViewGroup;

    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_3
    :goto_2
    return-void
.end method


# virtual methods
.method public hide()V
    .locals 2

    .line 247
    iget-object v0, p0, Lcom/brakefield/painter/ui/MiniToolbars;->miniToolbars:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method

.method protected setHintListener(Landroid/view/View;Landroid/view/View$OnClickListener;)V
    .locals 1

    .line 83
    new-instance v0, Lcom/brakefield/painter/ui/MiniToolbars$$ExternalSyntheticLambda0;

    invoke-direct {v0, p2}, Lcom/brakefield/painter/ui/MiniToolbars$$ExternalSyntheticLambda0;-><init>(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 94
    new-instance v0, Lcom/brakefield/painter/ui/MiniToolbars$$ExternalSyntheticLambda1;

    invoke-direct {v0, p2}, Lcom/brakefield/painter/ui/MiniToolbars$$ExternalSyntheticLambda1;-><init>(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void
.end method

.method public setup(Landroid/app/Activity;Lcom/brakefield/painter/ui/SimpleUI;Landroid/view/ViewGroup;Lcom/brakefield/painter/ui/CustomToolbar;)V
    .locals 0

    .line 72
    iput-object p1, p0, Lcom/brakefield/painter/ui/MiniToolbars;->activity:Landroid/app/Activity;

    .line 73
    iput-object p2, p0, Lcom/brakefield/painter/ui/MiniToolbars;->ui:Lcom/brakefield/painter/ui/SimpleUI;

    .line 74
    iput-object p3, p0, Lcom/brakefield/painter/ui/MiniToolbars;->miniToolbars:Landroid/view/ViewGroup;

    .line 75
    iput-object p4, p0, Lcom/brakefield/painter/ui/MiniToolbars;->customToolbar:Lcom/brakefield/painter/ui/CustomToolbar;

    .line 76
    invoke-virtual {p2}, Lcom/brakefield/painter/ui/SimpleUI;->getSymmetryManager()Lcom/brakefield/painter/nativeobjs/SymmetryManagerNative;

    move-result-object p1

    iput-object p1, p0, Lcom/brakefield/painter/ui/MiniToolbars;->symmetryManager:Lcom/brakefield/painter/nativeobjs/SymmetryManagerNative;

    .line 77
    invoke-virtual {p2}, Lcom/brakefield/painter/ui/SimpleUI;->getGuideManager()Lcom/brakefield/painter/nativeobjs/GuideManagerNative;

    move-result-object p1

    iput-object p1, p0, Lcom/brakefield/painter/ui/MiniToolbars;->guideManager:Lcom/brakefield/painter/nativeobjs/GuideManagerNative;

    .line 78
    invoke-virtual {p2}, Lcom/brakefield/painter/ui/SimpleUI;->getPerspectiveManager()Lcom/brakefield/painter/nativeobjs/PerspectiveManagerNative;

    move-result-object p1

    iput-object p1, p0, Lcom/brakefield/painter/ui/MiniToolbars;->perspectiveManager:Lcom/brakefield/painter/nativeobjs/PerspectiveManagerNative;

    return-void
.end method

.method public show()V
    .locals 2

    .line 243
    iget-object v0, p0, Lcom/brakefield/painter/ui/MiniToolbars;->miniToolbars:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method

.method public update()V
    .locals 14

    .line 102
    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getToolType()I

    move-result v0

    .line 104
    iget-object v1, p0, Lcom/brakefield/painter/ui/MiniToolbars;->guideManager:Lcom/brakefield/painter/nativeobjs/GuideManagerNative;

    invoke-virtual {v1}, Lcom/brakefield/painter/nativeobjs/GuideManagerNative;->getType()I

    move-result v1

    .line 105
    iget-object v2, p0, Lcom/brakefield/painter/ui/MiniToolbars;->activity:Landroid/app/Activity;

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v1, v4, :cond_0

    move v5, v4

    goto :goto_0

    :cond_0
    move v5, v3

    :goto_0
    iget-object v6, p0, Lcom/brakefield/painter/ui/MiniToolbars;->linesGuideToolbar:Lcom/brakefield/painter/ui/MiniToolbars$LinesGuideToolbar;

    invoke-virtual {p0, v2, v5, v6}, Lcom/brakefield/painter/ui/MiniToolbars;->updateHint(Landroid/app/Activity;ZLcom/brakefield/painter/ui/MiniToolbars$MiniToolbar;)V

    .line 106
    iget-object v2, p0, Lcom/brakefield/painter/ui/MiniToolbars;->activity:Landroid/app/Activity;

    const/4 v5, 0x2

    if-ne v1, v5, :cond_1

    move v6, v4

    goto :goto_1

    :cond_1
    move v6, v3

    :goto_1
    iget-object v7, p0, Lcom/brakefield/painter/ui/MiniToolbars;->ellipseGuideToolbar:Lcom/brakefield/painter/ui/MiniToolbars$EllipseGuideToolbar;

    invoke-virtual {p0, v2, v6, v7}, Lcom/brakefield/painter/ui/MiniToolbars;->updateHint(Landroid/app/Activity;ZLcom/brakefield/painter/ui/MiniToolbars$MiniToolbar;)V

    .line 107
    iget-object v2, p0, Lcom/brakefield/painter/ui/MiniToolbars;->activity:Landroid/app/Activity;

    const/4 v6, 0x3

    if-ne v1, v6, :cond_2

    move v1, v4

    goto :goto_2

    :cond_2
    move v1, v3

    :goto_2
    iget-object v7, p0, Lcom/brakefield/painter/ui/MiniToolbars;->penGuideToolbar:Lcom/brakefield/painter/ui/MiniToolbars$PenGuideToolbar;

    invoke-virtual {p0, v2, v1, v7}, Lcom/brakefield/painter/ui/MiniToolbars;->updateHint(Landroid/app/Activity;ZLcom/brakefield/painter/ui/MiniToolbars$MiniToolbar;)V

    .line 108
    iget-object v1, p0, Lcom/brakefield/painter/ui/MiniToolbars;->activity:Landroid/app/Activity;

    invoke-static {}, Lcom/brakefield/painter/PainterLib;->isLazyActive()Z

    move-result v2

    iget-object v7, p0, Lcom/brakefield/painter/ui/MiniToolbars;->lazyGuideToolbar:Lcom/brakefield/painter/ui/MiniToolbars$LazyGuideToolbar;

    invoke-virtual {p0, v1, v2, v7}, Lcom/brakefield/painter/ui/MiniToolbars;->updateHint(Landroid/app/Activity;ZLcom/brakefield/painter/ui/MiniToolbars$MiniToolbar;)V

    .line 109
    iget-object v1, p0, Lcom/brakefield/painter/ui/MiniToolbars;->activity:Landroid/app/Activity;

    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getBrushHatching()Z

    move-result v2

    iget-object v7, p0, Lcom/brakefield/painter/ui/MiniToolbars;->hatchingGuideToolbar:Lcom/brakefield/painter/ui/MiniToolbars$HatchingGuideToolbar;

    invoke-virtual {p0, v1, v2, v7}, Lcom/brakefield/painter/ui/MiniToolbars;->updateHint(Landroid/app/Activity;ZLcom/brakefield/painter/ui/MiniToolbars$MiniToolbar;)V

    .line 111
    iget-object v1, p0, Lcom/brakefield/painter/ui/MiniToolbars;->symmetryManager:Lcom/brakefield/painter/nativeobjs/SymmetryManagerNative;

    invoke-virtual {v1}, Lcom/brakefield/painter/nativeobjs/SymmetryManagerNative;->getType()I

    move-result v1

    .line 112
    iget-object v2, p0, Lcom/brakefield/painter/ui/MiniToolbars;->activity:Landroid/app/Activity;

    if-ne v1, v5, :cond_3

    move v7, v4

    goto :goto_3

    :cond_3
    move v7, v3

    :goto_3
    iget-object v8, p0, Lcom/brakefield/painter/ui/MiniToolbars;->verticalSymmetryToolbar:Lcom/brakefield/painter/ui/MiniToolbars$VerticalSymmetryToolbar;

    invoke-virtual {p0, v2, v7, v8}, Lcom/brakefield/painter/ui/MiniToolbars;->updateHint(Landroid/app/Activity;ZLcom/brakefield/painter/ui/MiniToolbars$MiniToolbar;)V

    .line 113
    iget-object v2, p0, Lcom/brakefield/painter/ui/MiniToolbars;->activity:Landroid/app/Activity;

    if-ne v1, v4, :cond_4

    move v7, v4

    goto :goto_4

    :cond_4
    move v7, v3

    :goto_4
    iget-object v8, p0, Lcom/brakefield/painter/ui/MiniToolbars;->horizontalSymmetryToolbar:Lcom/brakefield/painter/ui/MiniToolbars$HorizontalSymmetryToolbar;

    invoke-virtual {p0, v2, v7, v8}, Lcom/brakefield/painter/ui/MiniToolbars;->updateHint(Landroid/app/Activity;ZLcom/brakefield/painter/ui/MiniToolbars$MiniToolbar;)V

    .line 114
    iget-object v2, p0, Lcom/brakefield/painter/ui/MiniToolbars;->activity:Landroid/app/Activity;

    if-ne v1, v6, :cond_5

    move v7, v4

    goto :goto_5

    :cond_5
    move v7, v3

    :goto_5
    iget-object v8, p0, Lcom/brakefield/painter/ui/MiniToolbars;->radialSymmetryToolbar:Lcom/brakefield/painter/ui/MiniToolbars$RadialSymmetryToolbar;

    invoke-virtual {p0, v2, v7, v8}, Lcom/brakefield/painter/ui/MiniToolbars;->updateHint(Landroid/app/Activity;ZLcom/brakefield/painter/ui/MiniToolbars$MiniToolbar;)V

    .line 115
    iget-object v2, p0, Lcom/brakefield/painter/ui/MiniToolbars;->activity:Landroid/app/Activity;

    const/4 v7, 0x4

    if-ne v1, v7, :cond_6

    move v1, v4

    goto :goto_6

    :cond_6
    move v1, v3

    :goto_6
    iget-object v8, p0, Lcom/brakefield/painter/ui/MiniToolbars;->kaleidoSymmetryToolbar:Lcom/brakefield/painter/ui/MiniToolbars$KaleidoSymmetryToolbar;

    invoke-virtual {p0, v2, v1, v8}, Lcom/brakefield/painter/ui/MiniToolbars;->updateHint(Landroid/app/Activity;ZLcom/brakefield/painter/ui/MiniToolbars$MiniToolbar;)V

    .line 117
    iget-object v1, p0, Lcom/brakefield/painter/ui/MiniToolbars;->ui:Lcom/brakefield/painter/ui/SimpleUI;

    invoke-virtual {v1}, Lcom/brakefield/painter/ui/SimpleUI;->getToolManager()Lcom/brakefield/painter/nativeobjs/tools/ToolManagerNative;

    move-result-object v1

    invoke-virtual {v1}, Lcom/brakefield/painter/nativeobjs/tools/ToolManagerNative;->getShapeType()I

    move-result v1

    .line 118
    iget-object v2, p0, Lcom/brakefield/painter/ui/MiniToolbars;->activity:Landroid/app/Activity;

    if-ne v1, v4, :cond_7

    move v8, v4

    goto :goto_7

    :cond_7
    move v8, v3

    :goto_7
    iget-object v9, p0, Lcom/brakefield/painter/ui/MiniToolbars;->lineShapeToolbar:Lcom/brakefield/painter/ui/MiniToolbars$LineShapeToolbar;

    invoke-virtual {p0, v2, v8, v9}, Lcom/brakefield/painter/ui/MiniToolbars;->updateHint(Landroid/app/Activity;ZLcom/brakefield/painter/ui/MiniToolbars$MiniToolbar;)V

    .line 119
    iget-object v2, p0, Lcom/brakefield/painter/ui/MiniToolbars;->activity:Landroid/app/Activity;

    const/16 v8, 0x15

    if-ne v1, v6, :cond_8

    if-eq v0, v8, :cond_8

    move v6, v4

    goto :goto_8

    :cond_8
    move v6, v3

    :goto_8
    iget-object v9, p0, Lcom/brakefield/painter/ui/MiniToolbars;->circleShapeToolbar:Lcom/brakefield/painter/ui/MiniToolbars$CircleShapeToolbar;

    invoke-virtual {p0, v2, v6, v9}, Lcom/brakefield/painter/ui/MiniToolbars;->updateHint(Landroid/app/Activity;ZLcom/brakefield/painter/ui/MiniToolbars$MiniToolbar;)V

    .line 120
    iget-object v2, p0, Lcom/brakefield/painter/ui/MiniToolbars;->activity:Landroid/app/Activity;

    const/16 v6, 0xc

    if-ne v1, v5, :cond_9

    if-eq v0, v6, :cond_9

    move v9, v4

    goto :goto_9

    :cond_9
    move v9, v3

    :goto_9
    iget-object v10, p0, Lcom/brakefield/painter/ui/MiniToolbars;->rectShapeToolbar:Lcom/brakefield/painter/ui/MiniToolbars$RectShapeToolbar;

    invoke-virtual {p0, v2, v9, v10}, Lcom/brakefield/painter/ui/MiniToolbars;->updateHint(Landroid/app/Activity;ZLcom/brakefield/painter/ui/MiniToolbars$MiniToolbar;)V

    .line 121
    iget-object v2, p0, Lcom/brakefield/painter/ui/MiniToolbars;->activity:Landroid/app/Activity;

    const/16 v9, 0x17

    const/4 v10, 0x6

    if-ne v1, v10, :cond_a

    if-eq v0, v9, :cond_a

    move v11, v4

    goto :goto_a

    :cond_a
    move v11, v3

    :goto_a
    iget-object v12, p0, Lcom/brakefield/painter/ui/MiniToolbars;->pathShapeToolbar:Lcom/brakefield/painter/ui/MiniToolbars$PathShapeToolbar;

    invoke-virtual {p0, v2, v11, v12}, Lcom/brakefield/painter/ui/MiniToolbars;->updateHint(Landroid/app/Activity;ZLcom/brakefield/painter/ui/MiniToolbars$MiniToolbar;)V

    .line 122
    iget-object v2, p0, Lcom/brakefield/painter/ui/MiniToolbars;->activity:Landroid/app/Activity;

    const/4 v11, 0x7

    if-ne v1, v11, :cond_b

    move v12, v4

    goto :goto_b

    :cond_b
    move v12, v3

    :goto_b
    iget-object v13, p0, Lcom/brakefield/painter/ui/MiniToolbars;->arcShapeToolbar:Lcom/brakefield/painter/ui/MiniToolbars$ArcShapeToolbar;

    invoke-virtual {p0, v2, v12, v13}, Lcom/brakefield/painter/ui/MiniToolbars;->updateHint(Landroid/app/Activity;ZLcom/brakefield/painter/ui/MiniToolbars$MiniToolbar;)V

    .line 124
    iget-object v2, p0, Lcom/brakefield/painter/ui/MiniToolbars;->activity:Landroid/app/Activity;

    if-nez v1, :cond_c

    invoke-static {}, Lcom/brakefield/painter/PainterLib;->inShapeMode()Z

    move-result v1

    if-nez v1, :cond_e

    :cond_c
    if-eq v0, v8, :cond_e

    if-eq v0, v6, :cond_e

    if-ne v0, v9, :cond_d

    goto :goto_c

    :cond_d
    move v1, v3

    goto :goto_d

    :cond_e
    :goto_c
    move v1, v4

    :goto_d
    iget-object v6, p0, Lcom/brakefield/painter/ui/MiniToolbars;->shapeStampToolbar:Lcom/brakefield/painter/ui/MiniToolbars$ShapeStampToolbar;

    invoke-virtual {p0, v2, v1, v6}, Lcom/brakefield/painter/ui/MiniToolbars;->updateHint(Landroid/app/Activity;ZLcom/brakefield/painter/ui/MiniToolbars$MiniToolbar;)V

    .line 129
    iget-object v1, p0, Lcom/brakefield/painter/ui/MiniToolbars;->perspectiveManager:Lcom/brakefield/painter/nativeobjs/PerspectiveManagerNative;

    invoke-virtual {v1}, Lcom/brakefield/painter/nativeobjs/PerspectiveManagerNative;->getType()I

    move-result v1

    .line 130
    iget-object v2, p0, Lcom/brakefield/painter/ui/MiniToolbars;->activity:Landroid/app/Activity;

    if-ne v1, v7, :cond_f

    move v6, v4

    goto :goto_e

    :cond_f
    move v6, v3

    :goto_e
    iget-object v7, p0, Lcom/brakefield/painter/ui/MiniToolbars;->onePointPerspectiveToolbar:Lcom/brakefield/painter/ui/MiniToolbars$OnePointPerspectiveToolbar;

    invoke-virtual {p0, v2, v6, v7}, Lcom/brakefield/painter/ui/MiniToolbars;->updateHint(Landroid/app/Activity;ZLcom/brakefield/painter/ui/MiniToolbars$MiniToolbar;)V

    .line 131
    iget-object v2, p0, Lcom/brakefield/painter/ui/MiniToolbars;->activity:Landroid/app/Activity;

    const/4 v6, 0x5

    if-ne v1, v6, :cond_10

    move v6, v4

    goto :goto_f

    :cond_10
    move v6, v3

    :goto_f
    iget-object v7, p0, Lcom/brakefield/painter/ui/MiniToolbars;->twoPointPerspectiveToolbar:Lcom/brakefield/painter/ui/MiniToolbars$TwoPointPerspectiveToolbar;

    invoke-virtual {p0, v2, v6, v7}, Lcom/brakefield/painter/ui/MiniToolbars;->updateHint(Landroid/app/Activity;ZLcom/brakefield/painter/ui/MiniToolbars$MiniToolbar;)V

    .line 132
    iget-object v2, p0, Lcom/brakefield/painter/ui/MiniToolbars;->activity:Landroid/app/Activity;

    if-ne v1, v10, :cond_11

    move v6, v4

    goto :goto_10

    :cond_11
    move v6, v3

    :goto_10
    iget-object v7, p0, Lcom/brakefield/painter/ui/MiniToolbars;->threePointPerspectiveToolbar:Lcom/brakefield/painter/ui/MiniToolbars$ThreePointPerspectiveToolbar;

    invoke-virtual {p0, v2, v6, v7}, Lcom/brakefield/painter/ui/MiniToolbars;->updateHint(Landroid/app/Activity;ZLcom/brakefield/painter/ui/MiniToolbars$MiniToolbar;)V

    .line 133
    iget-object v2, p0, Lcom/brakefield/painter/ui/MiniToolbars;->activity:Landroid/app/Activity;

    if-ne v1, v11, :cond_12

    move v6, v4

    goto :goto_11

    :cond_12
    move v6, v3

    :goto_11
    iget-object v7, p0, Lcom/brakefield/painter/ui/MiniToolbars;->fisheyePerspectiveToolbar:Lcom/brakefield/painter/ui/MiniToolbars$FisheyePerspectiveToolbar;

    invoke-virtual {p0, v2, v6, v7}, Lcom/brakefield/painter/ui/MiniToolbars;->updateHint(Landroid/app/Activity;ZLcom/brakefield/painter/ui/MiniToolbars$MiniToolbar;)V

    .line 134
    iget-object v2, p0, Lcom/brakefield/painter/ui/MiniToolbars;->activity:Landroid/app/Activity;

    const/16 v6, 0x8

    if-ne v1, v6, :cond_13

    move v6, v4

    goto :goto_12

    :cond_13
    move v6, v3

    :goto_12
    iget-object v7, p0, Lcom/brakefield/painter/ui/MiniToolbars;->isometricPerspectiveToolbar:Lcom/brakefield/painter/ui/MiniToolbars$IsometricPerspectiveToolbar;

    invoke-virtual {p0, v2, v6, v7}, Lcom/brakefield/painter/ui/MiniToolbars;->updateHint(Landroid/app/Activity;ZLcom/brakefield/painter/ui/MiniToolbars$MiniToolbar;)V

    .line 135
    iget-object v2, p0, Lcom/brakefield/painter/ui/MiniToolbars;->activity:Landroid/app/Activity;

    const/16 v6, 0x9

    if-ne v1, v6, :cond_14

    move v1, v4

    goto :goto_13

    :cond_14
    move v1, v3

    :goto_13
    iget-object v6, p0, Lcom/brakefield/painter/ui/MiniToolbars;->twoDimensionalGridToolbar:Lcom/brakefield/painter/ui/MiniToolbars$TwoDimensionalGridToolbar;

    invoke-virtual {p0, v2, v1, v6}, Lcom/brakefield/painter/ui/MiniToolbars;->updateHint(Landroid/app/Activity;ZLcom/brakefield/painter/ui/MiniToolbars$MiniToolbar;)V

    .line 137
    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getLayerRenderingMode()I

    move-result v1

    .line 138
    iget-object v2, p0, Lcom/brakefield/painter/ui/MiniToolbars;->activity:Landroid/app/Activity;

    if-ne v1, v4, :cond_15

    move v6, v4

    goto :goto_14

    :cond_15
    move v6, v3

    :goto_14
    iget-object v7, p0, Lcom/brakefield/painter/ui/MiniToolbars;->soloLayerModeToolbar:Lcom/brakefield/painter/ui/MiniToolbars$SoloLayerModeToolbar;

    invoke-virtual {p0, v2, v6, v7}, Lcom/brakefield/painter/ui/MiniToolbars;->updateHint(Landroid/app/Activity;ZLcom/brakefield/painter/ui/MiniToolbars$MiniToolbar;)V

    .line 139
    iget-object v2, p0, Lcom/brakefield/painter/ui/MiniToolbars;->activity:Landroid/app/Activity;

    if-ne v1, v5, :cond_16

    move v1, v4

    goto :goto_15

    :cond_16
    move v1, v3

    :goto_15
    iget-object v5, p0, Lcom/brakefield/painter/ui/MiniToolbars;->traceLayerModeToolbar:Lcom/brakefield/painter/ui/MiniToolbars$TraceLayerModeToolbar;

    invoke-virtual {p0, v2, v1, v5}, Lcom/brakefield/painter/ui/MiniToolbars;->updateHint(Landroid/app/Activity;ZLcom/brakefield/painter/ui/MiniToolbars$MiniToolbar;)V

    .line 141
    iget-object v1, p0, Lcom/brakefield/painter/ui/MiniToolbars;->activity:Landroid/app/Activity;

    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getNavigationLock()Z

    move-result v2

    iget-object v5, p0, Lcom/brakefield/painter/ui/MiniToolbars;->cameraLockToolbar:Lcom/brakefield/painter/ui/MiniToolbars$CameraLockToolbar;

    invoke-virtual {p0, v1, v2, v5}, Lcom/brakefield/painter/ui/MiniToolbars;->updateHint(Landroid/app/Activity;ZLcom/brakefield/painter/ui/MiniToolbars$MiniToolbar;)V

    .line 142
    iget-object v1, p0, Lcom/brakefield/painter/ui/MiniToolbars;->activity:Landroid/app/Activity;

    invoke-static {}, Lcom/brakefield/painter/PainterLib;->selectedLayerId()I

    move-result v2

    invoke-static {v2}, Lcom/brakefield/painter/PainterLib;->getLayerLockAlpha(I)Z

    move-result v2

    iget-object v5, p0, Lcom/brakefield/painter/ui/MiniToolbars;->lockTransparencyToolbar:Lcom/brakefield/painter/ui/MiniToolbars$LockTransparencyToolbar;

    invoke-virtual {p0, v1, v2, v5}, Lcom/brakefield/painter/ui/MiniToolbars;->updateHint(Landroid/app/Activity;ZLcom/brakefield/painter/ui/MiniToolbars$MiniToolbar;)V

    .line 143
    iget-object v1, p0, Lcom/brakefield/painter/ui/MiniToolbars;->activity:Landroid/app/Activity;

    invoke-static {}, Lcom/brakefield/painter/PainterLib;->isCloning()Z

    move-result v2

    if-eqz v2, :cond_17

    if-nez v0, :cond_17

    move v3, v4

    :cond_17
    iget-object v0, p0, Lcom/brakefield/painter/ui/MiniToolbars;->cloneToolbar:Lcom/brakefield/painter/ui/MiniToolbars$CloneToolbar;

    invoke-virtual {p0, v1, v3, v0}, Lcom/brakefield/painter/ui/MiniToolbars;->updateHint(Landroid/app/Activity;ZLcom/brakefield/painter/ui/MiniToolbars$MiniToolbar;)V

    .line 145
    iget-object v0, p0, Lcom/brakefield/painter/ui/MiniToolbars;->ui:Lcom/brakefield/painter/ui/SimpleUI;

    invoke-virtual {v0}, Lcom/brakefield/painter/ui/SimpleUI;->updateCameraResetIcon()V

    return-void
.end method

.method protected updateHint(Landroid/app/Activity;ZLcom/brakefield/painter/ui/MiniToolbars$MiniToolbar;)V
    .locals 1

    .line 149
    invoke-virtual {p3}, Lcom/brakefield/painter/ui/MiniToolbars$MiniToolbar;->getTag()I

    move-result v0

    .line 150
    invoke-direct {p0, p1, p2, v0}, Lcom/brakefield/painter/ui/MiniToolbars;->updateCustomToolbar(Landroid/app/Activity;ZI)V

    .line 151
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/brakefield/painter/ui/MiniToolbars;->updateMiniToolbars(Landroid/app/Activity;ZLcom/brakefield/painter/ui/MiniToolbars$MiniToolbar;I)V

    return-void
.end method
