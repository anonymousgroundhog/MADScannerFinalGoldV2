.class public Lcom/brakefield/painter/ui/toolbars/MainToolbar;
.super Lcom/brakefield/painter/ui/toolbars/Toolbar;
.source "MainToolbar.java"

# interfaces
.implements Lcom/brakefield/painter/ui/Draggable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/brakefield/painter/ui/toolbars/MainToolbar$TwoFingerDragGesture;,
        Lcom/brakefield/painter/ui/toolbars/MainToolbar$UpdateHandler;
    }
.end annotation


# static fields
.field public static final TOOLBAR_BOTTOM:I = 0x2

.field public static final TOOLBAR_CORNERS:I = 0x4

.field public static final TOOLBAR_FREE:I = 0x5

.field public static final TOOLBAR_LEFT:I = 0x0

.field public static final TOOLBAR_RIGHT:I = 0x1

.field public static final TOOLBAR_TOP:I = 0x3


# instance fields
.field private activity:Landroid/app/Activity;

.field private binding:Lcom/brakefield/painter/databinding/MainToolbarBinding;

.field private downBright:F

.field private downHue:F

.field private downSat:F

.field private dragStartX:F

.field private dragStartY:F

.field private dragging:Z

.field private draggingToolbar:Lcom/brakefield/infinitestudio/gestures/GestureLayout;

.field final observeOpacityControlAffects:Lcom/brakefield/infinitestudio/ui/components/OnChange;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/brakefield/infinitestudio/ui/components/OnChange<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final observeOpacityControlValue:Lcom/brakefield/infinitestudio/ui/components/OnChange;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/brakefield/infinitestudio/ui/components/OnChange<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private opacityControl:Lcom/brakefield/painter/OpacityControl;

.field private parent:Landroidx/constraintlayout/widget/ConstraintLayout;

.field private res:Landroid/content/res/Resources;

.field private swatchSlider:Lcom/brakefield/infinitestudio/color/SwatchSlider;

.field toolBarListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field private toolbar:Lcom/brakefield/infinitestudio/gestures/GestureLayout;

.field private toolbarFloatX:F

.field private toolbarFloatY:F

.field private toolbarIsVertical:Z

.field private toolbarPosition:I

.field private ui:Lcom/brakefield/painter/ui/SimpleUI;

.field private updateHandler:Lcom/brakefield/painter/ui/toolbars/MainToolbar$UpdateHandler;

.field private useColorHistoryStrip:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 68
    invoke-direct {p0}, Lcom/brakefield/painter/ui/toolbars/Toolbar;-><init>()V

    const/4 v0, 0x0

    .line 77
    iput v0, p0, Lcom/brakefield/painter/ui/toolbars/MainToolbar;->toolbarPosition:I

    const/4 v0, 0x0

    .line 78
    iput v0, p0, Lcom/brakefield/painter/ui/toolbars/MainToolbar;->toolbarFloatX:F

    const/high16 v0, 0x3e800000    # 0.25f

    .line 79
    iput v0, p0, Lcom/brakefield/painter/ui/toolbars/MainToolbar;->toolbarFloatY:F

    const/4 v0, 0x1

    .line 80
    iput-boolean v0, p0, Lcom/brakefield/painter/ui/toolbars/MainToolbar;->toolbarIsVertical:Z

    .line 105
    iput-boolean v0, p0, Lcom/brakefield/painter/ui/toolbars/MainToolbar;->useColorHistoryStrip:Z

    .line 1332
    new-instance v0, Lcom/brakefield/painter/ui/toolbars/MainToolbar$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/brakefield/painter/ui/toolbars/MainToolbar$$ExternalSyntheticLambda0;-><init>(Lcom/brakefield/painter/ui/toolbars/MainToolbar;)V

    iput-object v0, p0, Lcom/brakefield/painter/ui/toolbars/MainToolbar;->observeOpacityControlValue:Lcom/brakefield/infinitestudio/ui/components/OnChange;

    .line 1333
    new-instance v0, Lcom/brakefield/painter/ui/toolbars/MainToolbar$$ExternalSyntheticLambda11;

    invoke-direct {v0, p0}, Lcom/brakefield/painter/ui/toolbars/MainToolbar$$ExternalSyntheticLambda11;-><init>(Lcom/brakefield/painter/ui/toolbars/MainToolbar;)V

    iput-object v0, p0, Lcom/brakefield/painter/ui/toolbars/MainToolbar;->observeOpacityControlAffects:Lcom/brakefield/infinitestudio/ui/components/OnChange;

    return-void
.end method

.method static synthetic access$000(Lcom/brakefield/painter/ui/toolbars/MainToolbar;)I
    .locals 0

    .line 68
    iget p0, p0, Lcom/brakefield/painter/ui/toolbars/MainToolbar;->toolbarPosition:I

    return p0
.end method

.method static synthetic access$100(Lcom/brakefield/painter/ui/toolbars/MainToolbar;)Lcom/brakefield/painter/databinding/MainToolbarBinding;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/brakefield/painter/ui/toolbars/MainToolbar;->binding:Lcom/brakefield/painter/databinding/MainToolbarBinding;

    return-object p0
.end method

.method static synthetic access$200(Lcom/brakefield/painter/ui/toolbars/MainToolbar;)Lcom/brakefield/painter/ui/SimpleUI;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/brakefield/painter/ui/toolbars/MainToolbar;->ui:Lcom/brakefield/painter/ui/SimpleUI;

    return-object p0
.end method

.method static synthetic access$300(Lcom/brakefield/painter/ui/toolbars/MainToolbar;)F
    .locals 0

    .line 68
    iget p0, p0, Lcom/brakefield/painter/ui/toolbars/MainToolbar;->downHue:F

    return p0
.end method

.method static synthetic access$302(Lcom/brakefield/painter/ui/toolbars/MainToolbar;F)F
    .locals 0

    .line 68
    iput p1, p0, Lcom/brakefield/painter/ui/toolbars/MainToolbar;->downHue:F

    return p1
.end method

.method static synthetic access$400(Lcom/brakefield/painter/ui/toolbars/MainToolbar;)F
    .locals 0

    .line 68
    iget p0, p0, Lcom/brakefield/painter/ui/toolbars/MainToolbar;->downSat:F

    return p0
.end method

.method static synthetic access$402(Lcom/brakefield/painter/ui/toolbars/MainToolbar;F)F
    .locals 0

    .line 68
    iput p1, p0, Lcom/brakefield/painter/ui/toolbars/MainToolbar;->downSat:F

    return p1
.end method

.method static synthetic access$500(Lcom/brakefield/painter/ui/toolbars/MainToolbar;)F
    .locals 0

    .line 68
    iget p0, p0, Lcom/brakefield/painter/ui/toolbars/MainToolbar;->downBright:F

    return p0
.end method

.method static synthetic access$502(Lcom/brakefield/painter/ui/toolbars/MainToolbar;F)F
    .locals 0

    .line 68
    iput p1, p0, Lcom/brakefield/painter/ui/toolbars/MainToolbar;->downBright:F

    return p1
.end method

.method static synthetic access$600(Lcom/brakefield/painter/ui/toolbars/MainToolbar;)Lcom/brakefield/painter/OpacityControl;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/brakefield/painter/ui/toolbars/MainToolbar;->opacityControl:Lcom/brakefield/painter/OpacityControl;

    return-object p0
.end method

.method static synthetic access$700(Lcom/brakefield/painter/ui/toolbars/MainToolbar;)Landroid/app/Activity;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/brakefield/painter/ui/toolbars/MainToolbar;->activity:Landroid/app/Activity;

    return-object p0
.end method

.method private addToolbar()V
    .locals 4

    .line 1067
    iget-object v0, p0, Lcom/brakefield/painter/ui/toolbars/MainToolbar;->toolbar:Lcom/brakefield/infinitestudio/gestures/GestureLayout;

    if-eqz v0, :cond_0

    .line 1068
    iget-object v1, p0, Lcom/brakefield/painter/ui/toolbars/MainToolbar;->parent:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v1, v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->removeView(Landroid/view/View;)V

    .line 1070
    :cond_0
    iget-object v0, p0, Lcom/brakefield/painter/ui/toolbars/MainToolbar;->activity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/brakefield/painter/ui/toolbars/MainToolbar;->ui:Lcom/brakefield/painter/ui/SimpleUI;

    invoke-virtual {p0, v0, v1}, Lcom/brakefield/painter/ui/toolbars/MainToolbar;->getView(Landroid/app/Activity;Lcom/brakefield/painter/ui/SimpleUI;)Lcom/brakefield/infinitestudio/gestures/GestureLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/brakefield/painter/ui/toolbars/MainToolbar;->toolbar:Lcom/brakefield/infinitestudio/gestures/GestureLayout;

    .line 1071
    iget-object v1, p0, Lcom/brakefield/painter/ui/toolbars/MainToolbar;->parent:Landroidx/constraintlayout/widget/ConstraintLayout;

    const/4 v2, -0x2

    invoke-virtual {v1, v0, v2, v2}, Landroidx/constraintlayout/widget/ConstraintLayout;->addView(Landroid/view/View;II)V

    .line 1072
    iget-object v0, p0, Lcom/brakefield/painter/ui/toolbars/MainToolbar;->toolbar:Lcom/brakefield/infinitestudio/gestures/GestureLayout;

    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/brakefield/infinitestudio/gestures/GestureLayout;->setId(I)V

    .line 1074
    iget-object v0, p0, Lcom/brakefield/painter/ui/toolbars/MainToolbar;->toolbar:Lcom/brakefield/infinitestudio/gestures/GestureLayout;

    invoke-static {v0}, Lcom/brakefield/painter/databinding/MainToolbarBinding;->bind(Landroid/view/View;)Lcom/brakefield/painter/databinding/MainToolbarBinding;

    move-result-object v0

    iput-object v0, p0, Lcom/brakefield/painter/ui/toolbars/MainToolbar;->binding:Lcom/brakefield/painter/databinding/MainToolbarBinding;

    .line 1075
    new-instance v0, Lcom/brakefield/painter/ui/toolbars/MainToolbar$UpdateHandler;

    iget-object v1, p0, Lcom/brakefield/painter/ui/toolbars/MainToolbar;->binding:Lcom/brakefield/painter/databinding/MainToolbarBinding;

    iget-object v2, p0, Lcom/brakefield/painter/ui/toolbars/MainToolbar;->opacityControl:Lcom/brakefield/painter/OpacityControl;

    iget-object v3, p0, Lcom/brakefield/painter/ui/toolbars/MainToolbar;->swatchSlider:Lcom/brakefield/infinitestudio/color/SwatchSlider;

    invoke-direct {v0, v1, v2, v3}, Lcom/brakefield/painter/ui/toolbars/MainToolbar$UpdateHandler;-><init>(Lcom/brakefield/painter/databinding/MainToolbarBinding;Lcom/brakefield/painter/OpacityControl;Lcom/brakefield/infinitestudio/color/SwatchSlider;)V

    iput-object v0, p0, Lcom/brakefield/painter/ui/toolbars/MainToolbar;->updateHandler:Lcom/brakefield/painter/ui/toolbars/MainToolbar$UpdateHandler;

    .line 1077
    iget-object v0, p0, Lcom/brakefield/painter/ui/toolbars/MainToolbar;->activity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/brakefield/painter/ui/toolbars/MainToolbar;->toolbar:Lcom/brakefield/infinitestudio/gestures/GestureLayout;

    iget-boolean v2, p0, Lcom/brakefield/painter/ui/toolbars/MainToolbar;->toolbarIsVertical:Z

    invoke-direct {p0, v0, v1, v2}, Lcom/brakefield/painter/ui/toolbars/MainToolbar;->setupToolbar(Landroid/app/Activity;Lcom/brakefield/infinitestudio/gestures/GestureLayout;Z)V

    .line 1078
    iget-object v0, p0, Lcom/brakefield/painter/ui/toolbars/MainToolbar;->toolbar:Lcom/brakefield/infinitestudio/gestures/GestureLayout;

    invoke-virtual {p0, v0}, Lcom/brakefield/painter/ui/toolbars/MainToolbar;->adjustToolbar(Landroid/view/View;)V

    .line 1080
    new-instance v0, Lcom/brakefield/painter/ui/toolbars/MainToolbar$$ExternalSyntheticLambda13;

    invoke-direct {v0, p0}, Lcom/brakefield/painter/ui/toolbars/MainToolbar$$ExternalSyntheticLambda13;-><init>(Lcom/brakefield/painter/ui/toolbars/MainToolbar;)V

    iput-object v0, p0, Lcom/brakefield/painter/ui/toolbars/MainToolbar;->toolBarListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 1085
    invoke-virtual {p0}, Lcom/brakefield/painter/ui/toolbars/MainToolbar;->update()V

    return-void
.end method

.method private adjustSwatchSlider(Lcom/brakefield/infinitestudio/color/SwatchSlider;Landroid/view/View;)V
    .locals 12

    .line 1187
    new-instance v0, Landroidx/constraintlayout/widget/ConstraintSet;

    invoke-direct {v0}, Landroidx/constraintlayout/widget/ConstraintSet;-><init>()V

    .line 1188
    iget-object v1, p0, Lcom/brakefield/painter/ui/toolbars/MainToolbar;->parent:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/ConstraintSet;->clone(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    .line 1190
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    const/4 v2, 0x0

    move v3, v2

    .line 1191
    :goto_0
    iget-object v4, p0, Lcom/brakefield/painter/ui/toolbars/MainToolbar;->parent:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v4}, Landroidx/constraintlayout/widget/ConstraintLayout;->getChildCount()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 1192
    iget-object v4, p0, Lcom/brakefield/painter/ui/toolbars/MainToolbar;->parent:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v4, v3}, Landroidx/constraintlayout/widget/ConstraintLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1193
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1196
    :cond_0
    invoke-virtual {v0}, Landroidx/constraintlayout/widget/ConstraintSet;->getKnownIds()[I

    move-result-object v3

    .line 1197
    array-length v4, v3

    move v5, v2

    :goto_1
    const/4 v6, 0x1

    if-ge v5, v4, :cond_1

    aget v7, v3, v5

    .line 1198
    invoke-virtual {v0, v7, v6}, Landroidx/constraintlayout/widget/ConstraintSet;->setVisibilityMode(II)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 1201
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result p2

    .line 1202
    invoke-virtual {p1}, Lcom/brakefield/infinitestudio/color/SwatchSlider;->getId()I

    move-result v3

    .line 1203
    invoke-virtual {v0, v3}, Landroidx/constraintlayout/widget/ConstraintSet;->clear(I)V

    .line 1205
    iget-object v4, p0, Lcom/brakefield/painter/ui/toolbars/MainToolbar;->res:Landroid/content/res/Resources;

    const v5, 0x7f07005d

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 1207
    iget v5, p0, Lcom/brakefield/painter/ui/toolbars/MainToolbar;->toolbarPosition:I

    const/4 v7, 0x2

    const/4 v8, 0x4

    const/4 v9, 0x3

    if-eqz v5, :cond_a

    if-eq v5, v6, :cond_9

    if-eq v5, v7, :cond_8

    if-eq v5, v9, :cond_7

    const/high16 v10, 0x3f000000    # 0.5f

    if-eq v5, v8, :cond_6

    const/4 v11, 0x5

    if-eq v5, v11, :cond_2

    goto/16 :goto_4

    .line 1254
    :cond_2
    iget-boolean v5, p0, Lcom/brakefield/painter/ui/toolbars/MainToolbar;->toolbarIsVertical:Z

    if-eqz v5, :cond_4

    .line 1255
    iget v5, p0, Lcom/brakefield/painter/ui/toolbars/MainToolbar;->toolbarFloatX:F

    cmpg-float v5, v5, v10

    if-gez v5, :cond_3

    .line 1256
    invoke-virtual {v0, v3, v6, p2, v7}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    .line 1257
    sget-object v5, Lcom/brakefield/infinitestudio/color/SwatchSlider$SwatchSliderDirection;->LEFT_SIDE:Lcom/brakefield/infinitestudio/color/SwatchSlider$SwatchSliderDirection;

    invoke-virtual {p1, v5}, Lcom/brakefield/infinitestudio/color/SwatchSlider;->setDirection(Lcom/brakefield/infinitestudio/color/SwatchSlider$SwatchSliderDirection;)V

    goto :goto_2

    .line 1259
    :cond_3
    invoke-virtual {v0, v3, v7, p2, v6}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    .line 1260
    sget-object v5, Lcom/brakefield/infinitestudio/color/SwatchSlider$SwatchSliderDirection;->RIGHT_SIDE:Lcom/brakefield/infinitestudio/color/SwatchSlider$SwatchSliderDirection;

    invoke-virtual {p1, v5}, Lcom/brakefield/infinitestudio/color/SwatchSlider;->setDirection(Lcom/brakefield/infinitestudio/color/SwatchSlider$SwatchSliderDirection;)V

    .line 1262
    :goto_2
    invoke-virtual {v0, v3, v9, p2, v9}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    .line 1263
    invoke-virtual {v0, v3, v8, p2, v8}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    .line 1264
    invoke-virtual {v0, v3, v4}, Landroidx/constraintlayout/widget/ConstraintSet;->constrainWidth(II)V

    .line 1265
    invoke-virtual {v0, v3, v2}, Landroidx/constraintlayout/widget/ConstraintSet;->constrainHeight(II)V

    .line 1266
    iget p1, p0, Lcom/brakefield/painter/ui/toolbars/MainToolbar;->toolbarFloatY:F

    invoke-virtual {v0, v3, p1}, Landroidx/constraintlayout/widget/ConstraintSet;->setVerticalBias(IF)V

    goto/16 :goto_4

    .line 1268
    :cond_4
    iget v5, p0, Lcom/brakefield/painter/ui/toolbars/MainToolbar;->toolbarFloatY:F

    cmpg-float v5, v5, v10

    if-gez v5, :cond_5

    .line 1269
    invoke-virtual {v0, v3, v9, p2, v8}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    .line 1270
    sget-object v5, Lcom/brakefield/infinitestudio/color/SwatchSlider$SwatchSliderDirection;->BELOW:Lcom/brakefield/infinitestudio/color/SwatchSlider$SwatchSliderDirection;

    invoke-virtual {p1, v5}, Lcom/brakefield/infinitestudio/color/SwatchSlider;->setDirection(Lcom/brakefield/infinitestudio/color/SwatchSlider$SwatchSliderDirection;)V

    goto :goto_3

    .line 1272
    :cond_5
    invoke-virtual {v0, v3, v8, p2, v9}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    .line 1273
    sget-object v5, Lcom/brakefield/infinitestudio/color/SwatchSlider$SwatchSliderDirection;->ABOVE:Lcom/brakefield/infinitestudio/color/SwatchSlider$SwatchSliderDirection;

    invoke-virtual {p1, v5}, Lcom/brakefield/infinitestudio/color/SwatchSlider;->setDirection(Lcom/brakefield/infinitestudio/color/SwatchSlider$SwatchSliderDirection;)V

    .line 1275
    :goto_3
    invoke-virtual {v0, v3, v6, p2, v6}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    .line 1276
    invoke-virtual {v0, v3, v7, p2, v7}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    .line 1277
    invoke-virtual {v0, v3, v2}, Landroidx/constraintlayout/widget/ConstraintSet;->constrainWidth(II)V

    .line 1278
    invoke-virtual {v0, v3, v4}, Landroidx/constraintlayout/widget/ConstraintSet;->constrainHeight(II)V

    .line 1279
    iget p1, p0, Lcom/brakefield/painter/ui/toolbars/MainToolbar;->toolbarFloatX:F

    invoke-virtual {v0, v3, p1}, Landroidx/constraintlayout/widget/ConstraintSet;->setHorizontalBias(IF)V

    goto/16 :goto_4

    .line 1209
    :cond_6
    invoke-virtual {v0, v3, v6, p2, v6}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    .line 1210
    invoke-virtual {v0, v3, v9, v2, v9}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    .line 1211
    invoke-virtual {v0, v3, v8, v2, v8}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    .line 1212
    invoke-virtual {v0, v3, v4}, Landroidx/constraintlayout/widget/ConstraintSet;->constrainWidth(II)V

    const/high16 p2, 0x43a00000    # 320.0f

    .line 1213
    invoke-static {p2}, Lcom/brakefield/infinitestudio/ResourceHelper;->dp(F)F

    move-result p2

    float-to-int p2, p2

    invoke-virtual {v0, v3, p2}, Landroidx/constraintlayout/widget/ConstraintSet;->constrainHeight(II)V

    .line 1214
    invoke-virtual {v0, v3, v10}, Landroidx/constraintlayout/widget/ConstraintSet;->setVerticalBias(IF)V

    .line 1215
    sget-object p2, Lcom/brakefield/infinitestudio/color/SwatchSlider$SwatchSliderDirection;->LEFT_SIDE:Lcom/brakefield/infinitestudio/color/SwatchSlider$SwatchSliderDirection;

    invoke-virtual {p1, p2}, Lcom/brakefield/infinitestudio/color/SwatchSlider;->setDirection(Lcom/brakefield/infinitestudio/color/SwatchSlider$SwatchSliderDirection;)V

    goto :goto_4

    .line 1236
    :cond_7
    invoke-virtual {v0, v3, v9, p2, v8}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    .line 1237
    invoke-virtual {v0, v3, v6, p2, v6}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    .line 1238
    invoke-virtual {v0, v3, v7, p2, v7}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    .line 1239
    invoke-virtual {v0, v3, v2}, Landroidx/constraintlayout/widget/ConstraintSet;->constrainWidth(II)V

    .line 1240
    invoke-virtual {v0, v3, v4}, Landroidx/constraintlayout/widget/ConstraintSet;->constrainHeight(II)V

    .line 1241
    iget p2, p0, Lcom/brakefield/painter/ui/toolbars/MainToolbar;->toolbarFloatX:F

    invoke-virtual {v0, v3, p2}, Landroidx/constraintlayout/widget/ConstraintSet;->setHorizontalBias(IF)V

    .line 1242
    sget-object p2, Lcom/brakefield/infinitestudio/color/SwatchSlider$SwatchSliderDirection;->BELOW:Lcom/brakefield/infinitestudio/color/SwatchSlider$SwatchSliderDirection;

    invoke-virtual {p1, p2}, Lcom/brakefield/infinitestudio/color/SwatchSlider;->setDirection(Lcom/brakefield/infinitestudio/color/SwatchSlider$SwatchSliderDirection;)V

    goto :goto_4

    .line 1245
    :cond_8
    invoke-virtual {v0, v3, v8, p2, v9}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    .line 1246
    invoke-virtual {v0, v3, v6, p2, v6}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    .line 1247
    invoke-virtual {v0, v3, v7, p2, v7}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    .line 1248
    invoke-virtual {v0, v3, v2}, Landroidx/constraintlayout/widget/ConstraintSet;->constrainWidth(II)V

    .line 1249
    invoke-virtual {v0, v3, v4}, Landroidx/constraintlayout/widget/ConstraintSet;->constrainHeight(II)V

    .line 1250
    iget p2, p0, Lcom/brakefield/painter/ui/toolbars/MainToolbar;->toolbarFloatX:F

    invoke-virtual {v0, v3, p2}, Landroidx/constraintlayout/widget/ConstraintSet;->setHorizontalBias(IF)V

    .line 1251
    sget-object p2, Lcom/brakefield/infinitestudio/color/SwatchSlider$SwatchSliderDirection;->ABOVE:Lcom/brakefield/infinitestudio/color/SwatchSlider$SwatchSliderDirection;

    invoke-virtual {p1, p2}, Lcom/brakefield/infinitestudio/color/SwatchSlider;->setDirection(Lcom/brakefield/infinitestudio/color/SwatchSlider$SwatchSliderDirection;)V

    goto :goto_4

    .line 1227
    :cond_9
    invoke-virtual {v0, v3, v7, p2, v6}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    .line 1228
    invoke-virtual {v0, v3, v9, p2, v9}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    .line 1229
    invoke-virtual {v0, v3, v8, p2, v8}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    .line 1230
    invoke-virtual {v0, v3, v4}, Landroidx/constraintlayout/widget/ConstraintSet;->constrainWidth(II)V

    .line 1231
    invoke-virtual {v0, v3, v2}, Landroidx/constraintlayout/widget/ConstraintSet;->constrainHeight(II)V

    .line 1232
    iget p2, p0, Lcom/brakefield/painter/ui/toolbars/MainToolbar;->toolbarFloatY:F

    invoke-virtual {v0, v3, p2}, Landroidx/constraintlayout/widget/ConstraintSet;->setVerticalBias(IF)V

    .line 1233
    sget-object p2, Lcom/brakefield/infinitestudio/color/SwatchSlider$SwatchSliderDirection;->RIGHT_SIDE:Lcom/brakefield/infinitestudio/color/SwatchSlider$SwatchSliderDirection;

    invoke-virtual {p1, p2}, Lcom/brakefield/infinitestudio/color/SwatchSlider;->setDirection(Lcom/brakefield/infinitestudio/color/SwatchSlider$SwatchSliderDirection;)V

    goto :goto_4

    .line 1218
    :cond_a
    invoke-virtual {v0, v3, v6, p2, v7}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    .line 1219
    invoke-virtual {v0, v3, v9, p2, v9}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    .line 1220
    invoke-virtual {v0, v3, v8, p2, v8}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    .line 1221
    invoke-virtual {v0, v3, v4}, Landroidx/constraintlayout/widget/ConstraintSet;->constrainWidth(II)V

    .line 1222
    invoke-virtual {v0, v3, v2}, Landroidx/constraintlayout/widget/ConstraintSet;->constrainHeight(II)V

    .line 1223
    iget p2, p0, Lcom/brakefield/painter/ui/toolbars/MainToolbar;->toolbarFloatY:F

    invoke-virtual {v0, v3, p2}, Landroidx/constraintlayout/widget/ConstraintSet;->setVerticalBias(IF)V

    .line 1224
    sget-object p2, Lcom/brakefield/infinitestudio/color/SwatchSlider$SwatchSliderDirection;->LEFT_SIDE:Lcom/brakefield/infinitestudio/color/SwatchSlider$SwatchSliderDirection;

    invoke-virtual {p1, p2}, Lcom/brakefield/infinitestudio/color/SwatchSlider;->setDirection(Lcom/brakefield/infinitestudio/color/SwatchSlider$SwatchSliderDirection;)V

    .line 1284
    :goto_4
    iget-object p1, p0, Lcom/brakefield/painter/ui/toolbars/MainToolbar;->parent:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0, p1}, Landroidx/constraintlayout/widget/ConstraintSet;->applyTo(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    .line 1286
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    .line 1287
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {v0, p2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_5

    :cond_b
    return-void
.end method

.method private getSwatchSlider(Lcom/brakefield/painter/ui/SimpleUI;)Lcom/brakefield/infinitestudio/color/SwatchSlider;
    .locals 1

    .line 1089
    new-instance p1, Lcom/brakefield/infinitestudio/color/SwatchSlider;

    iget-object v0, p0, Lcom/brakefield/painter/ui/toolbars/MainToolbar;->activity:Landroid/app/Activity;

    invoke-direct {p1, v0}, Lcom/brakefield/infinitestudio/color/SwatchSlider;-><init>(Landroid/content/Context;)V

    return-object p1
.end method

.method private isVertical()Z
    .locals 4

    .line 892
    iget v0, p0, Lcom/brakefield/painter/ui/toolbars/MainToolbar;->toolbarPosition:I

    const/4 v1, 0x5

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_2

    .line 893
    iget v0, p0, Lcom/brakefield/painter/ui/toolbars/MainToolbar;->toolbarFloatX:F

    const v1, 0x3e4ccccd    # 0.2f

    cmpg-float v1, v0, v1

    if-ltz v1, :cond_0

    const v1, 0x3f4ccccd    # 0.8f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    :cond_0
    move v2, v3

    :cond_1
    return v2

    :cond_2
    if-eqz v0, :cond_4

    if-ne v0, v3, :cond_3

    goto :goto_0

    :cond_3
    return v2

    :cond_4
    :goto_0
    return v3
.end method

.method static synthetic lambda$setupToolbar$11(F)Ljava/lang/String;
    .locals 2

    .line 246
    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getBrushPixelSize()F

    move-result p0

    const/high16 v0, 0x41200000    # 10.0f

    cmpg-float v0, p0, v0

    const-string v1, ""

    if-gez v0, :cond_0

    .line 247
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v1, "%.1f"

    invoke-static {v1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 248
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    float-to-int p0, p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v1, "%d"

    invoke-static {v1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$setupToolbar$9()V
    .locals 2

    .line 234
    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getPaintMode()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    .line 235
    invoke-static {v0}, Lcom/brakefield/painter/PainterLib;->setBlend(Z)V

    const/4 v0, 0x1

    .line 236
    invoke-static {v0}, Lcom/brakefield/painter/PainterLib;->setErase(Z)V

    :cond_0
    return-void
.end method

.method private setupQuickBrushes(Landroid/app/Activity;Landroid/view/View;Ljava/lang/Runnable;)V
    .locals 0

    return-void
.end method

.method private setupSwatchSlider(Lcom/brakefield/infinitestudio/color/SwatchSlider;)V
    .locals 3

    .line 1093
    new-instance v0, Lcom/brakefield/painter/ui/toolbars/MainToolbar$6;

    invoke-direct {v0, p0, p1}, Lcom/brakefield/painter/ui/toolbars/MainToolbar$6;-><init>(Lcom/brakefield/painter/ui/toolbars/MainToolbar;Lcom/brakefield/infinitestudio/color/SwatchSlider;)V

    invoke-virtual {p1, v0}, Lcom/brakefield/infinitestudio/color/SwatchSlider;->setDelegate(Lcom/brakefield/infinitestudio/color/SwatchSlider$Delegate;)V

    .line 1166
    new-instance v0, Lcom/brakefield/painter/nativeobjs/color/PaletteNative;

    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getColorHistoryPalette()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/brakefield/painter/nativeobjs/color/PaletteNative;-><init>(J)V

    .line 1168
    new-instance v1, Lcom/brakefield/painter/ui/toolbars/MainToolbar$7;

    invoke-direct {v1, p0, v0}, Lcom/brakefield/painter/ui/toolbars/MainToolbar$7;-><init>(Lcom/brakefield/painter/ui/toolbars/MainToolbar;Lcom/brakefield/painter/nativeobjs/color/PaletteNative;)V

    invoke-virtual {p1, v1}, Lcom/brakefield/infinitestudio/color/SwatchSlider;->setPalette(Lcom/brakefield/infinitestudio/color/SwatchSlider$ColorProvider;)V

    return-void
.end method

.method private setupToolbar(Landroid/app/Activity;Lcom/brakefield/infinitestudio/gestures/GestureLayout;Z)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 145
    iget v3, v0, Lcom/brakefield/painter/ui/toolbars/MainToolbar;->toolbarPosition:I

    const/4 v4, 0x0

    const/4 v5, 0x4

    if-eq v3, v5, :cond_0

    new-instance v3, Lcom/brakefield/infinitestudio/ui/BarDrawable;

    invoke-direct {v3, v2}, Lcom/brakefield/infinitestudio/ui/BarDrawable;-><init>(Landroid/view/View;)V

    invoke-virtual {v2, v3}, Lcom/brakefield/infinitestudio/gestures/GestureLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 146
    :cond_0
    invoke-virtual {v2, v4}, Lcom/brakefield/infinitestudio/gestures/GestureLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 148
    :goto_0
    iget-object v3, v0, Lcom/brakefield/painter/ui/toolbars/MainToolbar;->res:Landroid/content/res/Resources;

    const v6, 0x7f070076

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    .line 150
    new-instance v6, Lcom/brakefield/infinitestudio/gestures/LongpressDragGesture$Single;

    iget-object v7, v0, Lcom/brakefield/painter/ui/toolbars/MainToolbar;->res:Landroid/content/res/Resources;

    new-instance v8, Lcom/brakefield/painter/ui/toolbars/MainToolbar$$ExternalSyntheticLambda15;

    invoke-direct {v8, v0}, Lcom/brakefield/painter/ui/toolbars/MainToolbar$$ExternalSyntheticLambda15;-><init>(Lcom/brakefield/painter/ui/toolbars/MainToolbar;)V

    invoke-direct {v6, v7, v8}, Lcom/brakefield/infinitestudio/gestures/LongpressDragGesture$Single;-><init>(Landroid/content/res/Resources;Lcom/brakefield/infinitestudio/gestures/LongpressDragGesture$Listener;)V

    const/4 v7, 0x1

    .line 154
    invoke-virtual {v6, v7}, Lcom/brakefield/infinitestudio/gestures/LongpressDragGesture;->setCancelsOtherGestures(Z)V

    .line 155
    new-instance v8, Lcom/brakefield/painter/ui/toolbars/MainToolbar$$ExternalSyntheticLambda3;

    invoke-direct {v8, v0}, Lcom/brakefield/painter/ui/toolbars/MainToolbar$$ExternalSyntheticLambda3;-><init>(Lcom/brakefield/painter/ui/toolbars/MainToolbar;)V

    invoke-virtual {v6, v8}, Lcom/brakefield/infinitestudio/gestures/LongpressDragGesture;->setOnEndedListener(Ljava/lang/Runnable;)V

    .line 156
    invoke-virtual {v2, v6}, Lcom/brakefield/infinitestudio/gestures/GestureLayout;->addGesture(Lcom/brakefield/infinitestudio/gestures/Gesture;)V

    .line 158
    new-instance v6, Lcom/brakefield/painter/ui/toolbars/MainToolbar$TwoFingerDragGesture;

    iget-object v8, v0, Lcom/brakefield/painter/ui/toolbars/MainToolbar;->res:Landroid/content/res/Resources;

    invoke-direct {v6, v0, v8}, Lcom/brakefield/painter/ui/toolbars/MainToolbar$TwoFingerDragGesture;-><init>(Lcom/brakefield/painter/ui/toolbars/MainToolbar;Landroid/content/res/Resources;)V

    .line 159
    new-instance v8, Lcom/brakefield/painter/ui/toolbars/MainToolbar$$ExternalSyntheticLambda4;

    invoke-direct {v8, v0}, Lcom/brakefield/painter/ui/toolbars/MainToolbar$$ExternalSyntheticLambda4;-><init>(Lcom/brakefield/painter/ui/toolbars/MainToolbar;)V

    invoke-virtual {v6, v8}, Lcom/brakefield/painter/ui/toolbars/MainToolbar$TwoFingerDragGesture;->setOnEndedListener(Ljava/lang/Runnable;)V

    .line 160
    invoke-virtual {v2, v6}, Lcom/brakefield/infinitestudio/gestures/GestureLayout;->addGesture(Lcom/brakefield/infinitestudio/gestures/Gesture;)V

    .line 162
    iget-object v2, v0, Lcom/brakefield/painter/ui/toolbars/MainToolbar;->binding:Lcom/brakefield/painter/databinding/MainToolbarBinding;

    iget-object v2, v2, Lcom/brakefield/painter/databinding/MainToolbarBinding;->paintButton:Landroid/widget/ImageView;

    invoke-static {v2}, Lcom/brakefield/infinitestudio/ui/UIManager;->setPressAction(Landroid/view/View;)V

    .line 163
    iget-object v2, v0, Lcom/brakefield/painter/ui/toolbars/MainToolbar;->binding:Lcom/brakefield/painter/databinding/MainToolbarBinding;

    iget-object v2, v2, Lcom/brakefield/painter/databinding/MainToolbarBinding;->paintButton:Landroid/widget/ImageView;

    new-instance v6, Lcom/brakefield/painter/ui/toolbars/MainToolbar$$ExternalSyntheticLambda5;

    invoke-direct {v6, v0, v1}, Lcom/brakefield/painter/ui/toolbars/MainToolbar$$ExternalSyntheticLambda5;-><init>(Lcom/brakefield/painter/ui/toolbars/MainToolbar;Landroid/app/Activity;)V

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 173
    iget-object v2, v0, Lcom/brakefield/painter/ui/toolbars/MainToolbar;->binding:Lcom/brakefield/painter/databinding/MainToolbarBinding;

    iget-object v2, v2, Lcom/brakefield/painter/databinding/MainToolbarBinding;->paintButton:Landroid/widget/ImageView;

    new-instance v6, Lcom/brakefield/painter/ui/toolbars/MainToolbar$$ExternalSyntheticLambda6;

    invoke-direct {v6, v0, v1}, Lcom/brakefield/painter/ui/toolbars/MainToolbar$$ExternalSyntheticLambda6;-><init>(Lcom/brakefield/painter/ui/toolbars/MainToolbar;Landroid/app/Activity;)V

    invoke-direct {v0, v1, v2, v6}, Lcom/brakefield/painter/ui/toolbars/MainToolbar;->setupQuickBrushes(Landroid/app/Activity;Landroid/view/View;Ljava/lang/Runnable;)V

    .line 181
    iget-object v2, v0, Lcom/brakefield/painter/ui/toolbars/MainToolbar;->binding:Lcom/brakefield/painter/databinding/MainToolbarBinding;

    iget-object v2, v2, Lcom/brakefield/painter/databinding/MainToolbarBinding;->blendButton:Landroid/widget/ImageView;

    invoke-static {v2}, Lcom/brakefield/infinitestudio/ui/UIManager;->setPressAction(Landroid/view/View;)V

    .line 182
    iget-object v2, v0, Lcom/brakefield/painter/ui/toolbars/MainToolbar;->binding:Lcom/brakefield/painter/databinding/MainToolbarBinding;

    iget-object v2, v2, Lcom/brakefield/painter/databinding/MainToolbarBinding;->blendButton:Landroid/widget/ImageView;

    new-instance v6, Lcom/brakefield/painter/ui/toolbars/MainToolbar$$ExternalSyntheticLambda7;

    invoke-direct {v6, v0, v1}, Lcom/brakefield/painter/ui/toolbars/MainToolbar$$ExternalSyntheticLambda7;-><init>(Lcom/brakefield/painter/ui/toolbars/MainToolbar;Landroid/app/Activity;)V

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 192
    iget-object v2, v0, Lcom/brakefield/painter/ui/toolbars/MainToolbar;->binding:Lcom/brakefield/painter/databinding/MainToolbarBinding;

    iget-object v2, v2, Lcom/brakefield/painter/databinding/MainToolbarBinding;->blendButton:Landroid/widget/ImageView;

    new-instance v6, Lcom/brakefield/painter/ui/toolbars/MainToolbar$$ExternalSyntheticLambda8;

    invoke-direct {v6, v0, v1}, Lcom/brakefield/painter/ui/toolbars/MainToolbar$$ExternalSyntheticLambda8;-><init>(Lcom/brakefield/painter/ui/toolbars/MainToolbar;Landroid/app/Activity;)V

    invoke-direct {v0, v1, v2, v6}, Lcom/brakefield/painter/ui/toolbars/MainToolbar;->setupQuickBrushes(Landroid/app/Activity;Landroid/view/View;Ljava/lang/Runnable;)V

    .line 200
    iget-object v2, v0, Lcom/brakefield/painter/ui/toolbars/MainToolbar;->binding:Lcom/brakefield/painter/databinding/MainToolbarBinding;

    iget-object v2, v2, Lcom/brakefield/painter/databinding/MainToolbarBinding;->blendColorButton:Landroid/widget/ImageView;

    invoke-static {v2}, Lcom/brakefield/infinitestudio/ui/UIManager;->setPressAction(Landroid/view/View;)V

    .line 201
    iget-object v2, v0, Lcom/brakefield/painter/ui/toolbars/MainToolbar;->binding:Lcom/brakefield/painter/databinding/MainToolbarBinding;

    iget-object v2, v2, Lcom/brakefield/painter/databinding/MainToolbarBinding;->blendColorButton:Landroid/widget/ImageView;

    new-instance v6, Lcom/brakefield/painter/ui/toolbars/MainToolbar$$ExternalSyntheticLambda9;

    invoke-direct {v6, v0, v1}, Lcom/brakefield/painter/ui/toolbars/MainToolbar$$ExternalSyntheticLambda9;-><init>(Lcom/brakefield/painter/ui/toolbars/MainToolbar;Landroid/app/Activity;)V

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 218
    iget-object v2, v0, Lcom/brakefield/painter/ui/toolbars/MainToolbar;->binding:Lcom/brakefield/painter/databinding/MainToolbarBinding;

    iget-object v2, v2, Lcom/brakefield/painter/databinding/MainToolbarBinding;->eraserButton:Landroid/widget/ImageView;

    invoke-static {v2}, Lcom/brakefield/infinitestudio/ui/UIManager;->setPressAction(Landroid/view/View;)V

    .line 220
    iget-object v2, v0, Lcom/brakefield/painter/ui/toolbars/MainToolbar;->binding:Lcom/brakefield/painter/databinding/MainToolbarBinding;

    iget-object v2, v2, Lcom/brakefield/painter/databinding/MainToolbarBinding;->eraserButton:Landroid/widget/ImageView;

    new-instance v6, Lcom/brakefield/painter/ui/toolbars/MainToolbar$$ExternalSyntheticLambda10;

    invoke-direct {v6, v0, v1}, Lcom/brakefield/painter/ui/toolbars/MainToolbar$$ExternalSyntheticLambda10;-><init>(Lcom/brakefield/painter/ui/toolbars/MainToolbar;Landroid/app/Activity;)V

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 233
    iget-object v2, v0, Lcom/brakefield/painter/ui/toolbars/MainToolbar;->binding:Lcom/brakefield/painter/databinding/MainToolbarBinding;

    iget-object v2, v2, Lcom/brakefield/painter/databinding/MainToolbarBinding;->eraserButton:Landroid/widget/ImageView;

    new-instance v6, Lcom/brakefield/painter/ui/toolbars/MainToolbar$$ExternalSyntheticLambda12;

    invoke-direct {v6}, Lcom/brakefield/painter/ui/toolbars/MainToolbar$$ExternalSyntheticLambda12;-><init>()V

    invoke-direct {v0, v1, v2, v6}, Lcom/brakefield/painter/ui/toolbars/MainToolbar;->setupQuickBrushes(Landroid/app/Activity;Landroid/view/View;Ljava/lang/Runnable;)V

    .line 239
    iget-object v2, v0, Lcom/brakefield/painter/ui/toolbars/MainToolbar;->binding:Lcom/brakefield/painter/databinding/MainToolbarBinding;

    iget-object v2, v2, Lcom/brakefield/painter/databinding/MainToolbarBinding;->noEraserButton:Landroid/widget/ImageView;

    invoke-static {v2}, Lcom/brakefield/infinitestudio/ui/UIManager;->setPressAction(Landroid/view/View;)V

    .line 241
    iget-object v2, v0, Lcom/brakefield/painter/ui/toolbars/MainToolbar;->binding:Lcom/brakefield/painter/databinding/MainToolbarBinding;

    iget-object v2, v2, Lcom/brakefield/painter/databinding/MainToolbarBinding;->noEraserButton:Landroid/widget/ImageView;

    new-instance v6, Lcom/brakefield/painter/ui/toolbars/MainToolbar$$ExternalSyntheticLambda16;

    invoke-direct {v6, v0}, Lcom/brakefield/painter/ui/toolbars/MainToolbar$$ExternalSyntheticLambda16;-><init>(Lcom/brakefield/painter/ui/toolbars/MainToolbar;)V

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 243
    iget-object v2, v0, Lcom/brakefield/painter/ui/toolbars/MainToolbar;->binding:Lcom/brakefield/painter/databinding/MainToolbarBinding;

    iget-object v2, v2, Lcom/brakefield/painter/databinding/MainToolbarBinding;->sizeSlider:Lcom/brakefield/infinitestudio/ui/SizePullButton;

    const/4 v6, 0x0

    invoke-virtual {v2, v6}, Lcom/brakefield/infinitestudio/ui/SizePullButton;->setDrawText(Z)V

    .line 244
    iget-object v2, v0, Lcom/brakefield/painter/ui/toolbars/MainToolbar;->binding:Lcom/brakefield/painter/databinding/MainToolbarBinding;

    iget-object v2, v2, Lcom/brakefield/painter/databinding/MainToolbarBinding;->sizeSlider:Lcom/brakefield/infinitestudio/ui/SizePullButton;

    iget-object v8, v0, Lcom/brakefield/painter/ui/toolbars/MainToolbar;->ui:Lcom/brakefield/painter/ui/SimpleUI;

    invoke-virtual {v8}, Lcom/brakefield/painter/ui/SimpleUI;->getMainContainer()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v8

    new-instance v9, Lcom/brakefield/painter/ui/toolbars/MainToolbar$$ExternalSyntheticLambda17;

    invoke-direct {v9}, Lcom/brakefield/painter/ui/toolbars/MainToolbar$$ExternalSyntheticLambda17;-><init>()V

    new-instance v10, Lcom/brakefield/painter/ui/toolbars/MainToolbar$1;

    invoke-direct {v10, v0, v3, v1}, Lcom/brakefield/painter/ui/toolbars/MainToolbar$1;-><init>(Lcom/brakefield/painter/ui/toolbars/MainToolbar;ILandroid/app/Activity;)V

    invoke-static {v1, v2, v8, v9, v10}, Lcom/brakefield/infinitestudio/ui/UIManager;->setSliderControl2(Landroid/content/Context;Lcom/brakefield/infinitestudio/ui/CustomSlider;Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/brakefield/infinitestudio/ui/UI$OnDisplayProgressValue;Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 322
    iget v2, v0, Lcom/brakefield/painter/ui/toolbars/MainToolbar;->toolbarPosition:I

    const/high16 v8, 0x3f000000    # 0.5f

    const/high16 v9, 0x43610000    # 225.0f

    const/4 v10, 0x3

    const/4 v11, 0x2

    const v12, 0x7f07005d

    if-eqz v2, :cond_4

    if-ne v2, v7, :cond_1

    goto :goto_2

    :cond_1
    if-eq v2, v11, :cond_3

    if-ne v2, v10, :cond_2

    goto :goto_1

    :cond_2
    if-ne v2, v5, :cond_5

    .line 327
    iget-object v2, v0, Lcom/brakefield/painter/ui/toolbars/MainToolbar;->binding:Lcom/brakefield/painter/databinding/MainToolbarBinding;

    iget-object v2, v2, Lcom/brakefield/painter/databinding/MainToolbarBinding;->sizeSlider:Lcom/brakefield/infinitestudio/ui/SizePullButton;

    int-to-float v13, v3

    iget-object v14, v0, Lcom/brakefield/painter/ui/toolbars/MainToolbar;->res:Landroid/content/res/Resources;

    invoke-virtual {v14, v12}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v14

    sub-float/2addr v13, v14

    invoke-virtual {v2, v7, v9, v8, v13}, Lcom/brakefield/infinitestudio/ui/SizePullButton;->setSweepable(ZFFF)V

    goto :goto_3

    .line 325
    :cond_3
    :goto_1
    iget-object v2, v0, Lcom/brakefield/painter/ui/toolbars/MainToolbar;->binding:Lcom/brakefield/painter/databinding/MainToolbarBinding;

    iget-object v2, v2, Lcom/brakefield/painter/databinding/MainToolbarBinding;->sizeSlider:Lcom/brakefield/infinitestudio/ui/SizePullButton;

    invoke-virtual {v2, v6}, Lcom/brakefield/infinitestudio/ui/SizePullButton;->setVerticalable(Z)V

    goto :goto_3

    .line 323
    :cond_4
    :goto_2
    iget-object v2, v0, Lcom/brakefield/painter/ui/toolbars/MainToolbar;->binding:Lcom/brakefield/painter/databinding/MainToolbarBinding;

    iget-object v2, v2, Lcom/brakefield/painter/databinding/MainToolbarBinding;->sizeSlider:Lcom/brakefield/infinitestudio/ui/SizePullButton;

    invoke-virtual {v2, v6}, Lcom/brakefield/infinitestudio/ui/SizePullButton;->setHorizontalable(Z)V

    .line 330
    :cond_5
    :goto_3
    iget-object v2, v0, Lcom/brakefield/painter/ui/toolbars/MainToolbar;->binding:Lcom/brakefield/painter/databinding/MainToolbarBinding;

    iget-object v2, v2, Lcom/brakefield/painter/databinding/MainToolbarBinding;->sizeSlider:Lcom/brakefield/infinitestudio/ui/SizePullButton;

    new-instance v13, Lcom/brakefield/painter/ui/toolbars/MainToolbar$$ExternalSyntheticLambda18;

    invoke-direct {v13, v0, v1}, Lcom/brakefield/painter/ui/toolbars/MainToolbar$$ExternalSyntheticLambda18;-><init>(Lcom/brakefield/painter/ui/toolbars/MainToolbar;Landroid/app/Activity;)V

    invoke-virtual {v2, v13}, Lcom/brakefield/infinitestudio/ui/SizePullButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 340
    iget-object v2, v0, Lcom/brakefield/painter/ui/toolbars/MainToolbar;->binding:Lcom/brakefield/painter/databinding/MainToolbarBinding;

    iget-object v2, v2, Lcom/brakefield/painter/databinding/MainToolbarBinding;->colorButton:Lcom/brakefield/infinitestudio/ui/ColorFillButton;

    iget-object v13, v0, Lcom/brakefield/painter/ui/toolbars/MainToolbar;->ui:Lcom/brakefield/painter/ui/SimpleUI;

    invoke-virtual {v13}, Lcom/brakefield/painter/ui/SimpleUI;->getMainContainer()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v13

    new-instance v14, Lcom/brakefield/painter/ui/toolbars/MainToolbar$$ExternalSyntheticLambda19;

    invoke-direct {v14, v0}, Lcom/brakefield/painter/ui/toolbars/MainToolbar$$ExternalSyntheticLambda19;-><init>(Lcom/brakefield/painter/ui/toolbars/MainToolbar;)V

    new-instance v15, Lcom/brakefield/painter/ui/toolbars/MainToolbar$2;

    invoke-direct {v15, v0, v3, v1}, Lcom/brakefield/painter/ui/toolbars/MainToolbar$2;-><init>(Lcom/brakefield/painter/ui/toolbars/MainToolbar;ILandroid/app/Activity;)V

    invoke-static {v1, v2, v13, v14, v15}, Lcom/brakefield/infinitestudio/ui/UIManager;->setSliderControl2(Landroid/content/Context;Lcom/brakefield/infinitestudio/ui/CustomSlider;Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/brakefield/infinitestudio/ui/UI$OnDisplayProgressValue;Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 471
    iget-object v2, v0, Lcom/brakefield/painter/ui/toolbars/MainToolbar;->binding:Lcom/brakefield/painter/databinding/MainToolbarBinding;

    iget-object v2, v2, Lcom/brakefield/painter/databinding/MainToolbarBinding;->colorButton:Lcom/brakefield/infinitestudio/ui/ColorFillButton;

    new-instance v13, Lcom/brakefield/painter/ui/toolbars/MainToolbar$$ExternalSyntheticLambda20;

    invoke-direct {v13, v0, v1}, Lcom/brakefield/painter/ui/toolbars/MainToolbar$$ExternalSyntheticLambda20;-><init>(Lcom/brakefield/painter/ui/toolbars/MainToolbar;Landroid/app/Activity;)V

    invoke-virtual {v2, v13}, Lcom/brakefield/infinitestudio/ui/ColorFillButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 505
    iget-object v2, v0, Lcom/brakefield/painter/ui/toolbars/MainToolbar;->binding:Lcom/brakefield/painter/databinding/MainToolbarBinding;

    iget-object v2, v2, Lcom/brakefield/painter/databinding/MainToolbarBinding;->colorButton:Lcom/brakefield/infinitestudio/ui/ColorFillButton;

    new-instance v13, Lcom/brakefield/painter/ui/toolbars/MainToolbar$3;

    invoke-direct {v13, v0, v1}, Lcom/brakefield/painter/ui/toolbars/MainToolbar$3;-><init>(Lcom/brakefield/painter/ui/toolbars/MainToolbar;Landroid/app/Activity;)V

    invoke-virtual {v2, v13}, Lcom/brakefield/infinitestudio/ui/ColorFillButton;->setOnOutListener(Lcom/brakefield/infinitestudio/ui/PullButton$OnOutListener;)V

    .line 552
    iget v2, v0, Lcom/brakefield/painter/ui/toolbars/MainToolbar;->toolbarPosition:I

    if-ne v2, v5, :cond_6

    .line 553
    iget-object v2, v0, Lcom/brakefield/painter/ui/toolbars/MainToolbar;->binding:Lcom/brakefield/painter/databinding/MainToolbarBinding;

    iget-object v2, v2, Lcom/brakefield/painter/databinding/MainToolbarBinding;->colorButton:Lcom/brakefield/infinitestudio/ui/ColorFillButton;

    int-to-float v13, v3

    iget-object v14, v0, Lcom/brakefield/painter/ui/toolbars/MainToolbar;->res:Landroid/content/res/Resources;

    invoke-virtual {v14, v12}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v14

    sub-float/2addr v13, v14

    const v14, 0x439d8000    # 315.0f

    const/high16 v15, -0x41000000    # -0.5f

    invoke-virtual {v2, v7, v14, v15, v13}, Lcom/brakefield/infinitestudio/ui/ColorFillButton;->setSweepable(ZFFF)V

    goto :goto_4

    :cond_6
    if-eqz p3, :cond_7

    .line 555
    iget-object v2, v0, Lcom/brakefield/painter/ui/toolbars/MainToolbar;->binding:Lcom/brakefield/painter/databinding/MainToolbarBinding;

    iget-object v2, v2, Lcom/brakefield/painter/databinding/MainToolbarBinding;->colorButton:Lcom/brakefield/infinitestudio/ui/ColorFillButton;

    invoke-virtual {v2, v6}, Lcom/brakefield/infinitestudio/ui/ColorFillButton;->setHorizontalable(Z)V

    .line 556
    iget-object v2, v0, Lcom/brakefield/painter/ui/toolbars/MainToolbar;->binding:Lcom/brakefield/painter/databinding/MainToolbarBinding;

    iget-object v2, v2, Lcom/brakefield/painter/databinding/MainToolbarBinding;->colorButton:Lcom/brakefield/infinitestudio/ui/ColorFillButton;

    invoke-virtual {v2, v7}, Lcom/brakefield/infinitestudio/ui/ColorFillButton;->setVerticalable(Z)V

    goto :goto_4

    .line 559
    :cond_7
    iget-object v2, v0, Lcom/brakefield/painter/ui/toolbars/MainToolbar;->binding:Lcom/brakefield/painter/databinding/MainToolbarBinding;

    iget-object v2, v2, Lcom/brakefield/painter/databinding/MainToolbarBinding;->colorButton:Lcom/brakefield/infinitestudio/ui/ColorFillButton;

    invoke-virtual {v2, v7}, Lcom/brakefield/infinitestudio/ui/ColorFillButton;->setHorizontalable(Z)V

    .line 560
    iget-object v2, v0, Lcom/brakefield/painter/ui/toolbars/MainToolbar;->binding:Lcom/brakefield/painter/databinding/MainToolbarBinding;

    iget-object v2, v2, Lcom/brakefield/painter/databinding/MainToolbarBinding;->colorButton:Lcom/brakefield/infinitestudio/ui/ColorFillButton;

    invoke-virtual {v2, v6}, Lcom/brakefield/infinitestudio/ui/ColorFillButton;->setVerticalable(Z)V

    .line 565
    :goto_4
    iget-object v2, v0, Lcom/brakefield/painter/ui/toolbars/MainToolbar;->binding:Lcom/brakefield/painter/databinding/MainToolbarBinding;

    iget-object v2, v2, Lcom/brakefield/painter/databinding/MainToolbarBinding;->opacitySlider:Lcom/brakefield/infinitestudio/ui/OpacityPullButton;

    iget-object v13, v0, Lcom/brakefield/painter/ui/toolbars/MainToolbar;->ui:Lcom/brakefield/painter/ui/SimpleUI;

    invoke-virtual {v13}, Lcom/brakefield/painter/ui/SimpleUI;->getMainContainer()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v13

    new-instance v14, Lcom/brakefield/painter/ui/toolbars/MainToolbar$4;

    invoke-direct {v14, v0, v1}, Lcom/brakefield/painter/ui/toolbars/MainToolbar$4;-><init>(Lcom/brakefield/painter/ui/toolbars/MainToolbar;Landroid/app/Activity;)V

    invoke-static {v1, v2, v13, v4, v14}, Lcom/brakefield/infinitestudio/ui/UIManager;->setSliderControl2(Landroid/content/Context;Lcom/brakefield/infinitestudio/ui/CustomSlider;Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/brakefield/infinitestudio/ui/UI$OnDisplayProgressValue;Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 592
    iget-object v2, v0, Lcom/brakefield/painter/ui/toolbars/MainToolbar;->binding:Lcom/brakefield/painter/databinding/MainToolbarBinding;

    iget-object v2, v2, Lcom/brakefield/painter/databinding/MainToolbarBinding;->opacitySlider:Lcom/brakefield/infinitestudio/ui/OpacityPullButton;

    new-instance v4, Lcom/brakefield/painter/ui/toolbars/MainToolbar$$ExternalSyntheticLambda21;

    invoke-direct {v4, v0, v1}, Lcom/brakefield/painter/ui/toolbars/MainToolbar$$ExternalSyntheticLambda21;-><init>(Lcom/brakefield/painter/ui/toolbars/MainToolbar;Landroid/app/Activity;)V

    invoke-virtual {v2, v4}, Lcom/brakefield/infinitestudio/ui/OpacityPullButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 598
    iget-object v2, v0, Lcom/brakefield/painter/ui/toolbars/MainToolbar;->binding:Lcom/brakefield/painter/databinding/MainToolbarBinding;

    iget-object v2, v2, Lcom/brakefield/painter/databinding/MainToolbarBinding;->filterEffectButton:Lcom/brakefield/infinitestudio/ui/PullButton;

    iget-object v4, v0, Lcom/brakefield/painter/ui/toolbars/MainToolbar;->ui:Lcom/brakefield/painter/ui/SimpleUI;

    invoke-virtual {v4}, Lcom/brakefield/painter/ui/SimpleUI;->getMainContainer()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v4

    new-instance v13, Lcom/brakefield/painter/ui/toolbars/MainToolbar$$ExternalSyntheticLambda1;

    invoke-direct {v13, v0}, Lcom/brakefield/painter/ui/toolbars/MainToolbar$$ExternalSyntheticLambda1;-><init>(Lcom/brakefield/painter/ui/toolbars/MainToolbar;)V

    new-instance v14, Lcom/brakefield/painter/ui/toolbars/MainToolbar$5;

    invoke-direct {v14, v0}, Lcom/brakefield/painter/ui/toolbars/MainToolbar$5;-><init>(Lcom/brakefield/painter/ui/toolbars/MainToolbar;)V

    invoke-static {v1, v2, v4, v13, v14}, Lcom/brakefield/infinitestudio/ui/UIManager;->setSliderControl2(Landroid/content/Context;Lcom/brakefield/infinitestudio/ui/CustomSlider;Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/brakefield/infinitestudio/ui/UI$OnDisplayProgressValue;Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 636
    iget v2, v0, Lcom/brakefield/painter/ui/toolbars/MainToolbar;->toolbarPosition:I

    if-eqz v2, :cond_b

    if-ne v2, v7, :cond_8

    goto :goto_6

    :cond_8
    if-eq v2, v11, :cond_a

    if-ne v2, v10, :cond_9

    goto :goto_5

    :cond_9
    if-ne v2, v5, :cond_c

    .line 641
    iget-object v2, v0, Lcom/brakefield/painter/ui/toolbars/MainToolbar;->binding:Lcom/brakefield/painter/databinding/MainToolbarBinding;

    iget-object v2, v2, Lcom/brakefield/painter/databinding/MainToolbarBinding;->sizeSlider:Lcom/brakefield/infinitestudio/ui/SizePullButton;

    int-to-float v3, v3

    iget-object v4, v0, Lcom/brakefield/painter/ui/toolbars/MainToolbar;->res:Landroid/content/res/Resources;

    invoke-virtual {v4, v12}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    sub-float/2addr v3, v4

    invoke-virtual {v2, v7, v9, v8, v3}, Lcom/brakefield/infinitestudio/ui/SizePullButton;->setSweepable(ZFFF)V

    goto :goto_7

    .line 639
    :cond_a
    :goto_5
    iget-object v2, v0, Lcom/brakefield/painter/ui/toolbars/MainToolbar;->binding:Lcom/brakefield/painter/databinding/MainToolbarBinding;

    iget-object v2, v2, Lcom/brakefield/painter/databinding/MainToolbarBinding;->sizeSlider:Lcom/brakefield/infinitestudio/ui/SizePullButton;

    invoke-virtual {v2, v6}, Lcom/brakefield/infinitestudio/ui/SizePullButton;->setVerticalable(Z)V

    goto :goto_7

    .line 637
    :cond_b
    :goto_6
    iget-object v2, v0, Lcom/brakefield/painter/ui/toolbars/MainToolbar;->binding:Lcom/brakefield/painter/databinding/MainToolbarBinding;

    iget-object v2, v2, Lcom/brakefield/painter/databinding/MainToolbarBinding;->sizeSlider:Lcom/brakefield/infinitestudio/ui/SizePullButton;

    invoke-virtual {v2, v6}, Lcom/brakefield/infinitestudio/ui/SizePullButton;->setHorizontalable(Z)V

    .line 644
    :cond_c
    :goto_7
    iget-object v2, v0, Lcom/brakefield/painter/ui/toolbars/MainToolbar;->binding:Lcom/brakefield/painter/databinding/MainToolbarBinding;

    iget-object v2, v2, Lcom/brakefield/painter/databinding/MainToolbarBinding;->sizeSlider:Lcom/brakefield/infinitestudio/ui/SizePullButton;

    new-instance v3, Lcom/brakefield/painter/ui/toolbars/MainToolbar$$ExternalSyntheticLambda2;

    invoke-direct {v3, v0, v1}, Lcom/brakefield/painter/ui/toolbars/MainToolbar$$ExternalSyntheticLambda2;-><init>(Lcom/brakefield/painter/ui/toolbars/MainToolbar;Landroid/app/Activity;)V

    invoke-virtual {v2, v3}, Lcom/brakefield/infinitestudio/ui/SizePullButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 655
    iget-object v2, v0, Lcom/brakefield/painter/ui/toolbars/MainToolbar;->binding:Lcom/brakefield/painter/databinding/MainToolbarBinding;

    iget-object v2, v2, Lcom/brakefield/painter/databinding/MainToolbarBinding;->paintButton:Landroid/widget/ImageView;

    invoke-static {}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->getInactiveColor()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 656
    iget-object v2, v0, Lcom/brakefield/painter/ui/toolbars/MainToolbar;->binding:Lcom/brakefield/painter/databinding/MainToolbarBinding;

    iget-object v2, v2, Lcom/brakefield/painter/databinding/MainToolbarBinding;->blendButton:Landroid/widget/ImageView;

    invoke-static {}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->getInactiveColor()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 657
    iget-object v2, v0, Lcom/brakefield/painter/ui/toolbars/MainToolbar;->binding:Lcom/brakefield/painter/databinding/MainToolbarBinding;

    iget-object v2, v2, Lcom/brakefield/painter/databinding/MainToolbarBinding;->eraserButton:Landroid/widget/ImageView;

    invoke-static {}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->getInactiveColor()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 658
    iget-object v2, v0, Lcom/brakefield/painter/ui/toolbars/MainToolbar;->binding:Lcom/brakefield/painter/databinding/MainToolbarBinding;

    iget-object v2, v2, Lcom/brakefield/painter/databinding/MainToolbarBinding;->sizeSlider:Lcom/brakefield/infinitestudio/ui/SizePullButton;

    invoke-static {}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->getTrackColor()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/brakefield/infinitestudio/ui/SizePullButton;->setTrackColor(I)V

    .line 659
    iget-object v2, v0, Lcom/brakefield/painter/ui/toolbars/MainToolbar;->binding:Lcom/brakefield/painter/databinding/MainToolbarBinding;

    iget-object v2, v2, Lcom/brakefield/painter/databinding/MainToolbarBinding;->sizeSlider:Lcom/brakefield/infinitestudio/ui/SizePullButton;

    invoke-static {}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->getIconColor()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/brakefield/infinitestudio/ui/SizePullButton;->setColorFilter(I)V

    .line 660
    iget-object v2, v0, Lcom/brakefield/painter/ui/toolbars/MainToolbar;->binding:Lcom/brakefield/painter/databinding/MainToolbarBinding;

    iget-object v2, v2, Lcom/brakefield/painter/databinding/MainToolbarBinding;->opacitySlider:Lcom/brakefield/infinitestudio/ui/OpacityPullButton;

    invoke-static {}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->getTrackColor()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/brakefield/infinitestudio/ui/OpacityPullButton;->setTrackColor(I)V

    .line 661
    iget-object v2, v0, Lcom/brakefield/painter/ui/toolbars/MainToolbar;->binding:Lcom/brakefield/painter/databinding/MainToolbarBinding;

    iget-object v2, v2, Lcom/brakefield/painter/databinding/MainToolbarBinding;->opacitySlider:Lcom/brakefield/infinitestudio/ui/OpacityPullButton;

    invoke-static {}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->getIconColor()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/brakefield/infinitestudio/ui/OpacityPullButton;->setColorFilter(I)V

    .line 662
    iget-object v2, v0, Lcom/brakefield/painter/ui/toolbars/MainToolbar;->binding:Lcom/brakefield/painter/databinding/MainToolbarBinding;

    iget-object v2, v2, Lcom/brakefield/painter/databinding/MainToolbarBinding;->blendColorButton:Landroid/widget/ImageView;

    invoke-static {}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->getIconColor()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 663
    iget-object v2, v0, Lcom/brakefield/painter/ui/toolbars/MainToolbar;->binding:Lcom/brakefield/painter/databinding/MainToolbarBinding;

    iget-object v2, v2, Lcom/brakefield/painter/databinding/MainToolbarBinding;->filterEffectButton:Lcom/brakefield/infinitestudio/ui/PullButton;

    invoke-static {}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->getTrackColor()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/brakefield/infinitestudio/ui/PullButton;->setTrackColor(I)V

    .line 664
    iget-object v2, v0, Lcom/brakefield/painter/ui/toolbars/MainToolbar;->binding:Lcom/brakefield/painter/databinding/MainToolbarBinding;

    iget-object v2, v2, Lcom/brakefield/painter/databinding/MainToolbarBinding;->filterEffectButton:Lcom/brakefield/infinitestudio/ui/PullButton;

    invoke-static {}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->getIconColor()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/brakefield/infinitestudio/ui/PullButton;->setColorFilter(I)V

    .line 666
    iget-object v2, v0, Lcom/brakefield/painter/ui/toolbars/MainToolbar;->ui:Lcom/brakefield/painter/ui/SimpleUI;

    invoke-virtual {v2, v1}, Lcom/brakefield/painter/ui/SimpleUI;->update(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method protected adjustToolbar(Landroid/view/View;)V
    .locals 12

    .line 800
    new-instance v0, Landroidx/constraintlayout/widget/ConstraintSet;

    invoke-direct {v0}, Landroidx/constraintlayout/widget/ConstraintSet;-><init>()V

    .line 801
    iget-object v1, p0, Lcom/brakefield/painter/ui/toolbars/MainToolbar;->parent:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/ConstraintSet;->clone(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    .line 803
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    const/4 v2, 0x0

    move v3, v2

    .line 804
    :goto_0
    iget-object v4, p0, Lcom/brakefield/painter/ui/toolbars/MainToolbar;->parent:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v4}, Landroidx/constraintlayout/widget/ConstraintLayout;->getChildCount()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 805
    iget-object v4, p0, Lcom/brakefield/painter/ui/toolbars/MainToolbar;->parent:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v4, v3}, Landroidx/constraintlayout/widget/ConstraintLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 806
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 809
    :cond_0
    invoke-virtual {v0}, Landroidx/constraintlayout/widget/ConstraintSet;->getKnownIds()[I

    move-result-object v3

    .line 810
    array-length v4, v3

    move v5, v2

    :goto_1
    const/4 v6, 0x1

    if-ge v5, v4, :cond_1

    aget v7, v3, v5

    .line 811
    invoke-virtual {v0, v7, v6}, Landroidx/constraintlayout/widget/ConstraintSet;->setVisibilityMode(II)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 814
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    .line 815
    invoke-virtual {v0, v3}, Landroidx/constraintlayout/widget/ConstraintSet;->clear(I)V

    const v4, 0x7f0a0258

    .line 817
    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroidx/constraintlayout/helper/widget/Flow;

    .line 819
    iget v5, p0, Lcom/brakefield/painter/ui/toolbars/MainToolbar;->toolbarPosition:I

    const/4 v7, 0x3

    const/4 v8, 0x4

    const/4 v9, -0x2

    if-eqz v5, :cond_8

    const/4 v10, 0x2

    if-eq v5, v6, :cond_7

    if-eq v5, v10, :cond_6

    if-eq v5, v7, :cond_5

    if-eq v5, v8, :cond_4

    const/4 v11, 0x5

    if-eq v5, v11, :cond_2

    goto/16 :goto_2

    .line 864
    :cond_2
    invoke-virtual {v0, v3, v6, v2, v6}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    .line 865
    invoke-virtual {v0, v3, v10, v2, v10}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    .line 866
    invoke-virtual {v0, v3, v7, v2, v7}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    .line 867
    invoke-virtual {v0, v3, v8, v2, v8}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    .line 868
    iget v5, p0, Lcom/brakefield/painter/ui/toolbars/MainToolbar;->toolbarFloatX:F

    invoke-virtual {v0, v3, v5}, Landroidx/constraintlayout/widget/ConstraintSet;->setHorizontalBias(IF)V

    .line 869
    iget v5, p0, Lcom/brakefield/painter/ui/toolbars/MainToolbar;->toolbarFloatY:F

    invoke-virtual {v0, v3, v5}, Landroidx/constraintlayout/widget/ConstraintSet;->setVerticalBias(IF)V

    .line 870
    iget-boolean v5, p0, Lcom/brakefield/painter/ui/toolbars/MainToolbar;->toolbarIsVertical:Z

    if-eqz v5, :cond_3

    .line 871
    invoke-virtual {v0, v3, v9}, Landroidx/constraintlayout/widget/ConstraintSet;->constrainWidth(II)V

    .line 872
    invoke-virtual {v0, v3, v9}, Landroidx/constraintlayout/widget/ConstraintSet;->constrainHeight(II)V

    .line 873
    invoke-virtual {v4, v6}, Landroidx/constraintlayout/helper/widget/Flow;->setOrientation(I)V

    goto/16 :goto_2

    .line 875
    :cond_3
    invoke-virtual {v0, v3, v9}, Landroidx/constraintlayout/widget/ConstraintSet;->constrainWidth(II)V

    .line 876
    invoke-virtual {v0, v3, v9}, Landroidx/constraintlayout/widget/ConstraintSet;->constrainHeight(II)V

    .line 877
    invoke-virtual {v4, v2}, Landroidx/constraintlayout/helper/widget/Flow;->setOrientation(I)V

    goto :goto_2

    .line 821
    :cond_4
    invoke-virtual {v0, v3, v6, v2, v6}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    .line 822
    invoke-virtual {v0, v3, v10, v2, v10}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    .line 823
    invoke-virtual {v0, v3, v8, v2, v8}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    .line 824
    invoke-virtual {v0, v3, v2}, Landroidx/constraintlayout/widget/ConstraintSet;->constrainWidth(II)V

    .line 825
    invoke-virtual {v0, v3, v9}, Landroidx/constraintlayout/widget/ConstraintSet;->constrainHeight(II)V

    goto :goto_2

    .line 846
    :cond_5
    invoke-virtual {v0, v3, v6, v2, v6}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    .line 847
    invoke-virtual {v0, v3, v10, v2, v10}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    .line 848
    invoke-virtual {v0, v3, v7, v2, v7}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    .line 849
    invoke-virtual {v0, v3, v9}, Landroidx/constraintlayout/widget/ConstraintSet;->constrainWidth(II)V

    .line 850
    invoke-virtual {v0, v3, v9}, Landroidx/constraintlayout/widget/ConstraintSet;->constrainHeight(II)V

    .line 851
    iget v5, p0, Lcom/brakefield/painter/ui/toolbars/MainToolbar;->toolbarFloatX:F

    invoke-virtual {v0, v3, v5}, Landroidx/constraintlayout/widget/ConstraintSet;->setHorizontalBias(IF)V

    .line 852
    invoke-virtual {v4, v2}, Landroidx/constraintlayout/helper/widget/Flow;->setOrientation(I)V

    goto :goto_2

    .line 855
    :cond_6
    invoke-virtual {v0, v3, v6, v2, v6}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    .line 856
    invoke-virtual {v0, v3, v10, v2, v10}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    .line 857
    invoke-virtual {v0, v3, v8, v2, v8}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    .line 858
    invoke-virtual {v0, v3, v9}, Landroidx/constraintlayout/widget/ConstraintSet;->constrainWidth(II)V

    .line 859
    invoke-virtual {v0, v3, v9}, Landroidx/constraintlayout/widget/ConstraintSet;->constrainHeight(II)V

    .line 860
    iget v5, p0, Lcom/brakefield/painter/ui/toolbars/MainToolbar;->toolbarFloatX:F

    invoke-virtual {v0, v3, v5}, Landroidx/constraintlayout/widget/ConstraintSet;->setHorizontalBias(IF)V

    .line 861
    invoke-virtual {v4, v2}, Landroidx/constraintlayout/helper/widget/Flow;->setOrientation(I)V

    goto :goto_2

    .line 837
    :cond_7
    invoke-virtual {v0, v3, v10, v2, v10}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    .line 838
    invoke-virtual {v0, v3, v7, v2, v7}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    .line 839
    invoke-virtual {v0, v3, v8, v2, v8}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    .line 840
    invoke-virtual {v0, v3, v9}, Landroidx/constraintlayout/widget/ConstraintSet;->constrainWidth(II)V

    .line 841
    invoke-virtual {v0, v3, v9}, Landroidx/constraintlayout/widget/ConstraintSet;->constrainHeight(II)V

    .line 842
    iget v2, p0, Lcom/brakefield/painter/ui/toolbars/MainToolbar;->toolbarFloatY:F

    invoke-virtual {v0, v3, v2}, Landroidx/constraintlayout/widget/ConstraintSet;->setVerticalBias(IF)V

    .line 843
    invoke-virtual {v4, v6}, Landroidx/constraintlayout/helper/widget/Flow;->setOrientation(I)V

    goto :goto_2

    .line 828
    :cond_8
    invoke-virtual {v0, v3, v6, v2, v6}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    .line 829
    invoke-virtual {v0, v3, v7, v2, v7}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    .line 830
    invoke-virtual {v0, v3, v8, v2, v8}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    .line 831
    invoke-virtual {v0, v3, v9}, Landroidx/constraintlayout/widget/ConstraintSet;->constrainWidth(II)V

    .line 832
    invoke-virtual {v0, v3, v9}, Landroidx/constraintlayout/widget/ConstraintSet;->constrainHeight(II)V

    .line 833
    iget v2, p0, Lcom/brakefield/painter/ui/toolbars/MainToolbar;->toolbarFloatY:F

    invoke-virtual {v0, v3, v2}, Landroidx/constraintlayout/widget/ConstraintSet;->setVerticalBias(IF)V

    .line 834
    invoke-virtual {v4, v6}, Landroidx/constraintlayout/helper/widget/Flow;->setOrientation(I)V

    .line 882
    :goto_2
    iget-object v2, p0, Lcom/brakefield/painter/ui/toolbars/MainToolbar;->parent:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0, v2}, Landroidx/constraintlayout/widget/ConstraintSet;->applyTo(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    .line 884
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 885
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    .line 888
    :cond_9
    iget-object v0, p0, Lcom/brakefield/painter/ui/toolbars/MainToolbar;->swatchSlider:Lcom/brakefield/infinitestudio/color/SwatchSlider;

    invoke-direct {p0, v0, p1}, Lcom/brakefield/painter/ui/toolbars/MainToolbar;->adjustSwatchSlider(Lcom/brakefield/infinitestudio/color/SwatchSlider;Landroid/view/View;)V

    return-void
.end method

.method public dragEnded()V
    .locals 2

    .line 1057
    iget-boolean v0, p0, Lcom/brakefield/painter/ui/toolbars/MainToolbar;->dragging:Z

    if-nez v0, :cond_0

    return-void

    .line 1058
    :cond_0
    iget-object v0, p0, Lcom/brakefield/painter/ui/toolbars/MainToolbar;->draggingToolbar:Lcom/brakefield/infinitestudio/gestures/GestureLayout;

    if-eqz v0, :cond_1

    .line 1059
    iget-object v1, p0, Lcom/brakefield/painter/ui/toolbars/MainToolbar;->parent:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v1, v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->removeView(Landroid/view/View;)V

    :cond_1
    const/4 v0, 0x0

    .line 1061
    iput-object v0, p0, Lcom/brakefield/painter/ui/toolbars/MainToolbar;->draggingToolbar:Lcom/brakefield/infinitestudio/gestures/GestureLayout;

    const/4 v0, 0x0

    .line 1062
    iput-boolean v0, p0, Lcom/brakefield/painter/ui/toolbars/MainToolbar;->dragging:Z

    .line 1063
    invoke-direct {p0}, Lcom/brakefield/painter/ui/toolbars/MainToolbar;->addToolbar()V

    return-void
.end method

.method public dragMoved([Landroid/graphics/PointF;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 955
    iget-boolean v2, v0, Lcom/brakefield/painter/ui/toolbars/MainToolbar;->dragging:Z

    if-nez v2, :cond_0

    return-void

    .line 956
    :cond_0
    iget-object v2, v0, Lcom/brakefield/painter/ui/toolbars/MainToolbar;->draggingToolbar:Lcom/brakefield/infinitestudio/gestures/GestureLayout;

    if-nez v2, :cond_1

    return-void

    .line 960
    :cond_1
    array-length v2, v1

    const/4 v4, 0x0

    move v6, v4

    move v7, v6

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v2, :cond_2

    aget-object v8, v1, v5

    .line 961
    iget v9, v8, Landroid/graphics/PointF;->x:F

    add-float/2addr v6, v9

    .line 962
    iget v8, v8, Landroid/graphics/PointF;->y:F

    add-float/2addr v7, v8

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 964
    :cond_2
    array-length v2, v1

    int-to-float v2, v2

    div-float/2addr v6, v2

    .line 965
    array-length v2, v1

    int-to-float v2, v2

    div-float/2addr v7, v2

    .line 967
    iget v2, v0, Lcom/brakefield/painter/ui/toolbars/MainToolbar;->dragStartX:F

    add-float/2addr v2, v6

    .line 968
    iget v5, v0, Lcom/brakefield/painter/ui/toolbars/MainToolbar;->dragStartY:F

    add-float/2addr v5, v7

    .line 970
    iget-object v8, v0, Lcom/brakefield/painter/ui/toolbars/MainToolbar;->res:Landroid/content/res/Resources;

    const v9, 0x7f07005f

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    .line 972
    iget-object v9, v0, Lcom/brakefield/painter/ui/toolbars/MainToolbar;->draggingToolbar:Lcom/brakefield/infinitestudio/gestures/GestureLayout;

    invoke-virtual {v9}, Lcom/brakefield/infinitestudio/gestures/GestureLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v9

    check-cast v9, Landroid/view/ViewGroup;

    .line 973
    invoke-virtual {v9}, Landroid/view/ViewGroup;->getWidth()I

    move-result v10

    int-to-float v10, v10

    .line 974
    invoke-virtual {v9}, Landroid/view/ViewGroup;->getHeight()I

    move-result v9

    int-to-float v9, v9

    .line 976
    iget-object v11, v0, Lcom/brakefield/painter/ui/toolbars/MainToolbar;->draggingToolbar:Lcom/brakefield/infinitestudio/gestures/GestureLayout;

    invoke-virtual {v11}, Lcom/brakefield/infinitestudio/gestures/GestureLayout;->getMeasuredWidth()I

    move-result v11

    .line 977
    iget-object v12, v0, Lcom/brakefield/painter/ui/toolbars/MainToolbar;->draggingToolbar:Lcom/brakefield/infinitestudio/gestures/GestureLayout;

    invoke-virtual {v12}, Lcom/brakefield/infinitestudio/gestures/GestureLayout;->getMeasuredHeight()I

    move-result v12

    int-to-float v11, v11

    sub-float/2addr v10, v11

    int-to-float v12, v12

    sub-float/2addr v9, v12

    const/high16 v13, 0x3f000000    # 0.5f

    mul-float/2addr v11, v13

    sub-float/2addr v2, v11

    mul-float/2addr v12, v13

    sub-float/2addr v5, v12

    div-float v11, v2, v10

    .line 988
    iput v11, v0, Lcom/brakefield/painter/ui/toolbars/MainToolbar;->toolbarFloatX:F

    div-float v12, v5, v9

    .line 989
    iput v12, v0, Lcom/brakefield/painter/ui/toolbars/MainToolbar;->toolbarFloatY:F

    cmpg-float v13, v11, v4

    const/high16 v14, 0x3f800000    # 1.0f

    if-gez v13, :cond_3

    .line 991
    iput v4, v0, Lcom/brakefield/painter/ui/toolbars/MainToolbar;->toolbarFloatX:F

    goto :goto_1

    :cond_3
    cmpl-float v11, v11, v14

    if-lez v11, :cond_4

    .line 992
    iput v14, v0, Lcom/brakefield/painter/ui/toolbars/MainToolbar;->toolbarFloatX:F

    :cond_4
    :goto_1
    cmpg-float v11, v12, v4

    if-gez v11, :cond_5

    .line 994
    iput v4, v0, Lcom/brakefield/painter/ui/toolbars/MainToolbar;->toolbarFloatY:F

    goto :goto_2

    :cond_5
    cmpl-float v11, v12, v14

    if-lez v11, :cond_6

    .line 995
    iput v14, v0, Lcom/brakefield/painter/ui/toolbars/MainToolbar;->toolbarFloatY:F

    .line 997
    :cond_6
    :goto_2
    array-length v11, v1

    const/4 v12, 0x2

    if-ne v11, v12, :cond_9

    .line 999
    array-length v11, v1

    const/4 v14, 0x0

    :goto_3
    if-ge v14, v11, :cond_7

    aget-object v15, v1, v14

    .line 1000
    iget v13, v15, Landroid/graphics/PointF;->y:F

    sub-float v13, v7, v13

    float-to-double v12, v13

    iget v15, v15, Landroid/graphics/PointF;->x:F

    sub-float v15, v6, v15

    move/from16 v16, v4

    float-to-double v3, v15

    invoke-static {v12, v13, v3, v4}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v3

    double-to-float v3, v3

    add-float v4, v16, v3

    add-int/lit8 v14, v14, 0x1

    const/4 v12, 0x2

    goto :goto_3

    :cond_7
    move/from16 v16, v4

    .line 1002
    array-length v1, v1

    int-to-float v1, v1

    div-float v4, v16, v1

    float-to-double v3, v4

    .line 1003
    invoke-static {v3, v4}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v3

    double-to-float v1, v3

    const/high16 v3, 0x42340000    # 45.0f

    cmpg-float v3, v1, v3

    if-gez v3, :cond_8

    const/high16 v3, -0x3dcc0000    # -45.0f

    cmpl-float v1, v1, v3

    if-lez v1, :cond_8

    const/4 v1, 0x1

    goto :goto_4

    :cond_8
    const/4 v1, 0x0

    .line 1004
    :goto_4
    iput-boolean v1, v0, Lcom/brakefield/painter/ui/toolbars/MainToolbar;->toolbarIsVertical:Z

    .line 1008
    :cond_9
    iget v1, v0, Lcom/brakefield/painter/ui/toolbars/MainToolbar;->toolbarPosition:I

    const v3, 0x7f0d00bf

    const v4, 0x7f0d00be

    const/4 v6, 0x4

    if-ne v1, v6, :cond_a

    move v1, v3

    goto :goto_5

    :cond_a
    move v1, v4

    :goto_5
    sub-float/2addr v9, v8

    cmpl-float v7, v5, v9

    if-lez v7, :cond_d

    cmpg-float v5, v2, v8

    if-ltz v5, :cond_c

    sub-float/2addr v10, v8

    cmpl-float v2, v2, v10

    if-lez v2, :cond_b

    goto :goto_6

    :cond_b
    const/4 v2, 0x2

    .line 1015
    iput v2, v0, Lcom/brakefield/painter/ui/toolbars/MainToolbar;->toolbarPosition:I

    const/4 v7, 0x0

    .line 1016
    iput-boolean v7, v0, Lcom/brakefield/painter/ui/toolbars/MainToolbar;->toolbarIsVertical:Z

    goto :goto_7

    .line 1013
    :cond_c
    :goto_6
    iput v6, v0, Lcom/brakefield/painter/ui/toolbars/MainToolbar;->toolbarPosition:I

    goto :goto_7

    :cond_d
    const/4 v7, 0x0

    cmpg-float v9, v2, v8

    if-gez v9, :cond_e

    .line 1019
    iput v7, v0, Lcom/brakefield/painter/ui/toolbars/MainToolbar;->toolbarPosition:I

    const/4 v7, 0x1

    .line 1020
    iput-boolean v7, v0, Lcom/brakefield/painter/ui/toolbars/MainToolbar;->toolbarIsVertical:Z

    goto :goto_7

    :cond_e
    const/4 v7, 0x1

    sub-float/2addr v10, v8

    cmpl-float v2, v2, v10

    if-lez v2, :cond_f

    .line 1022
    iput v7, v0, Lcom/brakefield/painter/ui/toolbars/MainToolbar;->toolbarPosition:I

    .line 1023
    iput-boolean v7, v0, Lcom/brakefield/painter/ui/toolbars/MainToolbar;->toolbarIsVertical:Z

    goto :goto_7

    :cond_f
    cmpg-float v2, v5, v8

    if-gez v2, :cond_10

    const/4 v2, 0x3

    .line 1025
    iput v2, v0, Lcom/brakefield/painter/ui/toolbars/MainToolbar;->toolbarPosition:I

    const/4 v2, 0x0

    .line 1026
    iput-boolean v2, v0, Lcom/brakefield/painter/ui/toolbars/MainToolbar;->toolbarIsVertical:Z

    goto :goto_7

    :cond_10
    const/4 v2, 0x5

    .line 1028
    iput v2, v0, Lcom/brakefield/painter/ui/toolbars/MainToolbar;->toolbarPosition:I

    .line 1032
    :goto_7
    iget v2, v0, Lcom/brakefield/painter/ui/toolbars/MainToolbar;->toolbarPosition:I

    if-ne v2, v6, :cond_11

    goto :goto_8

    :cond_11
    move v3, v4

    :goto_8
    if-eq v1, v3, :cond_12

    .line 1036
    invoke-virtual/range {p0 .. p0}, Lcom/brakefield/painter/ui/toolbars/MainToolbar;->setupDragToolbar()V

    .line 1039
    :cond_12
    iget-object v1, v0, Lcom/brakefield/painter/ui/toolbars/MainToolbar;->draggingToolbar:Lcom/brakefield/infinitestudio/gestures/GestureLayout;

    invoke-virtual {v0, v1}, Lcom/brakefield/painter/ui/toolbars/MainToolbar;->adjustToolbar(Landroid/view/View;)V

    .line 1041
    iget-object v1, v0, Lcom/brakefield/painter/ui/toolbars/MainToolbar;->activity:Landroid/app/Activity;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 1042
    iget-object v2, v0, Lcom/brakefield/painter/ui/toolbars/MainToolbar;->res:Landroid/content/res/Resources;

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_13

    const-string v2, "PREF_TOOLBAR_POSITION_LAND"

    .line 1043
    iget v3, v0, Lcom/brakefield/painter/ui/toolbars/MainToolbar;->toolbarPosition:I

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string v2, "PREF_TOOLBAR_FLOAT_X_LAND"

    .line 1044
    iget v3, v0, Lcom/brakefield/painter/ui/toolbars/MainToolbar;->toolbarFloatX:F

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    const/4 v2, 0x0

    sget-object v2, Lcom/brakefield/infinitestudio/color/YQ/FdgWfQQGDtjiVL;->mWPPyJdMXlCYK:Ljava/lang/String;

    .line 1045
    iget v3, v0, Lcom/brakefield/painter/ui/toolbars/MainToolbar;->toolbarFloatY:F

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    const-string v2, "PREF_TOOLBAR_VERTICAL_LAND"

    .line 1046
    iget-boolean v3, v0, Lcom/brakefield/painter/ui/toolbars/MainToolbar;->toolbarIsVertical:Z

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_9

    :cond_13
    const-string v2, "PREF_TOOLBAR_POSITION_PORT"

    .line 1048
    iget v3, v0, Lcom/brakefield/painter/ui/toolbars/MainToolbar;->toolbarPosition:I

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string v2, "PREF_TOOLBAR_FLOAT_X_PORT"

    .line 1049
    iget v3, v0, Lcom/brakefield/painter/ui/toolbars/MainToolbar;->toolbarFloatX:F

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    const-string v2, "PREF_TOOLBAR_FLOAT_Y_PORT"

    .line 1050
    iget v3, v0, Lcom/brakefield/painter/ui/toolbars/MainToolbar;->toolbarFloatY:F

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    const/4 v2, 0x0

    sget-object v2, Lcom/brakefield/infinitestudio/color/YQ/FdgWfQQGDtjiVL;->pbFuTLORNsFLv:Ljava/lang/String;

    .line 1051
    iget-boolean v3, v0, Lcom/brakefield/painter/ui/toolbars/MainToolbar;->toolbarIsVertical:Z

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1053
    :goto_9
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public dragStarted([Landroid/graphics/PointF;)V
    .locals 2

    const/4 p1, 0x1

    .line 941
    iput-boolean p1, p0, Lcom/brakefield/painter/ui/toolbars/MainToolbar;->dragging:Z

    .line 943
    iget-object v0, p0, Lcom/brakefield/painter/ui/toolbars/MainToolbar;->toolbar:Lcom/brakefield/infinitestudio/gestures/GestureLayout;

    const/4 v1, 0x2

    new-array v1, v1, [I

    .line 945
    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationInWindow([I)V

    const/4 v0, 0x0

    aget v0, v1, v0

    int-to-float v0, v0

    .line 947
    iput v0, p0, Lcom/brakefield/painter/ui/toolbars/MainToolbar;->dragStartX:F

    aget p1, v1, p1

    int-to-float p1, p1

    .line 948
    iput p1, p0, Lcom/brakefield/painter/ui/toolbars/MainToolbar;->dragStartY:F

    .line 950
    iget-object p1, p0, Lcom/brakefield/painter/ui/toolbars/MainToolbar;->toolbar:Lcom/brakefield/infinitestudio/gestures/GestureLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/brakefield/infinitestudio/gestures/GestureLayout;->setAlpha(F)V

    .line 951
    invoke-virtual {p0}, Lcom/brakefield/painter/ui/toolbars/MainToolbar;->setupDragToolbar()V

    return-void
.end method

.method public fireBlendButton()V
    .locals 1

    .line 1317
    iget-object v0, p0, Lcom/brakefield/painter/ui/toolbars/MainToolbar;->binding:Lcom/brakefield/painter/databinding/MainToolbarBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/MainToolbarBinding;->blendButton:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->performClick()Z

    return-void
.end method

.method public fireColorButton()V
    .locals 1

    .line 1325
    iget-object v0, p0, Lcom/brakefield/painter/ui/toolbars/MainToolbar;->binding:Lcom/brakefield/painter/databinding/MainToolbarBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/MainToolbarBinding;->colorButton:Lcom/brakefield/infinitestudio/ui/ColorFillButton;

    invoke-virtual {v0}, Lcom/brakefield/infinitestudio/ui/ColorFillButton;->performClick()Z

    return-void
.end method

.method public fireEraserButton()V
    .locals 1

    .line 1321
    iget-object v0, p0, Lcom/brakefield/painter/ui/toolbars/MainToolbar;->binding:Lcom/brakefield/painter/databinding/MainToolbarBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/MainToolbarBinding;->eraserButton:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->performClick()Z

    return-void
.end method

.method public firePaintButton()V
    .locals 1

    .line 1313
    iget-object v0, p0, Lcom/brakefield/painter/ui/toolbars/MainToolbar;->binding:Lcom/brakefield/painter/databinding/MainToolbarBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/MainToolbarBinding;->paintButton:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->performClick()Z

    return-void
.end method

.method protected getDefaultToolbarFloatX(Z)F
    .locals 0

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/high16 p1, 0x3f000000    # 0.5f

    return p1
.end method

.method protected getDefaultToolbarFloatY(ZZ)F
    .locals 0

    if-eqz p1, :cond_0

    const/high16 p1, 0x3e800000    # 0.25f

    return p1

    :cond_0
    if-eqz p2, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    const/high16 p1, 0x3f800000    # 1.0f

    return p1
.end method

.method protected getDefaultToolbarPosition(ZZ)I
    .locals 0

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    if-eqz p2, :cond_1

    const/4 p1, 0x3

    return p1

    :cond_1
    const/4 p1, 0x2

    return p1
.end method

.method public bridge synthetic getView(Landroid/app/Activity;Lcom/brakefield/painter/ui/SimpleUI;)Landroid/view/View;
    .locals 0

    .line 68
    invoke-virtual {p0, p1, p2}, Lcom/brakefield/painter/ui/toolbars/MainToolbar;->getView(Landroid/app/Activity;Lcom/brakefield/painter/ui/SimpleUI;)Lcom/brakefield/infinitestudio/gestures/GestureLayout;

    move-result-object p1

    return-object p1
.end method

.method public getView(Landroid/app/Activity;Lcom/brakefield/painter/ui/SimpleUI;)Lcom/brakefield/infinitestudio/gestures/GestureLayout;
    .locals 2

    .line 929
    iget p2, p0, Lcom/brakefield/painter/ui/toolbars/MainToolbar;->toolbarPosition:I

    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    const p2, 0x7f0d00bf

    goto :goto_0

    :cond_0
    const p2, 0x7f0d00be

    .line 932
    :goto_0
    invoke-virtual {p1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/brakefield/infinitestudio/gestures/GestureLayout;

    .line 933
    iget p2, p0, Lcom/brakefield/painter/ui/toolbars/MainToolbar;->toolbarPosition:I

    if-eq p2, v0, :cond_1

    .line 934
    new-instance p2, Lcom/brakefield/infinitestudio/ui/BarDrawable;

    invoke-direct {p2, p1}, Lcom/brakefield/infinitestudio/ui/BarDrawable;-><init>(Landroid/view/View;)V

    invoke-virtual {p1, p2}, Lcom/brakefield/infinitestudio/gestures/GestureLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    return-object p1
.end method

.method public hide()V
    .locals 2

    .line 924
    iget-object v0, p0, Lcom/brakefield/painter/ui/toolbars/MainToolbar;->toolbar:Lcom/brakefield/infinitestudio/gestures/GestureLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/brakefield/infinitestudio/gestures/GestureLayout;->setVisibility(I)V

    return-void
.end method

.method synthetic lambda$addToolbar$19$com-brakefield-painter-ui-toolbars-MainToolbar()V
    .locals 1

    .line 1081
    iget-object v0, p0, Lcom/brakefield/painter/ui/toolbars/MainToolbar;->toolbar:Lcom/brakefield/infinitestudio/gestures/GestureLayout;

    invoke-virtual {p0, v0}, Lcom/brakefield/painter/ui/toolbars/MainToolbar;->adjustToolbar(Landroid/view/View;)V

    .line 1082
    iget-object v0, p0, Lcom/brakefield/painter/ui/toolbars/MainToolbar;->toolbar:Lcom/brakefield/infinitestudio/gestures/GestureLayout;

    invoke-virtual {v0}, Lcom/brakefield/infinitestudio/gestures/GestureLayout;->postInvalidate()V

    return-void
.end method

.method synthetic lambda$new$20$com-brakefield-painter-ui-toolbars-MainToolbar(Ljava/lang/Float;)V
    .locals 1

    .line 1332
    iget-object v0, p0, Lcom/brakefield/painter/ui/toolbars/MainToolbar;->binding:Lcom/brakefield/painter/databinding/MainToolbarBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/MainToolbarBinding;->opacitySlider:Lcom/brakefield/infinitestudio/ui/OpacityPullButton;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {v0, p1}, Lcom/brakefield/infinitestudio/ui/OpacityPullButton;->setProgress(I)V

    return-void
.end method

.method synthetic lambda$new$21$com-brakefield-painter-ui-toolbars-MainToolbar(Ljava/lang/Integer;)V
    .locals 2

    .line 1333
    iget-object v0, p0, Lcom/brakefield/painter/ui/toolbars/MainToolbar;->binding:Lcom/brakefield/painter/databinding/MainToolbarBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/MainToolbarBinding;->opacitySlider:Lcom/brakefield/infinitestudio/ui/OpacityPullButton;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, p1}, Lcom/brakefield/infinitestudio/ui/OpacityPullButton;->useShader(Z)V

    return-void
.end method

.method synthetic lambda$setupToolbar$0$com-brakefield-painter-ui-toolbars-MainToolbar(Lcom/brakefield/infinitestudio/gestures/LongpressDragGesture;Landroid/graphics/PointF;Landroid/graphics/PointF;Z)V
    .locals 1

    .line 0
    const/4 p1, 0x0

    const/4 v0, 0x1

    if-eqz p4, :cond_0

    new-array p3, v0, [Landroid/graphics/PointF;

    aput-object p2, p3, p1

    .line 151
    invoke-virtual {p0, p3}, Lcom/brakefield/painter/ui/toolbars/MainToolbar;->dragStarted([Landroid/graphics/PointF;)V

    goto :goto_0

    :cond_0
    new-array p2, v0, [Landroid/graphics/PointF;

    aput-object p3, p2, p1

    .line 152
    invoke-virtual {p0, p2}, Lcom/brakefield/painter/ui/toolbars/MainToolbar;->dragMoved([Landroid/graphics/PointF;)V

    :goto_0
    return-void
.end method

.method synthetic lambda$setupToolbar$1$com-brakefield-painter-ui-toolbars-MainToolbar()V
    .locals 0

    .line 155
    invoke-virtual {p0}, Lcom/brakefield/painter/ui/toolbars/MainToolbar;->dragEnded()V

    return-void
.end method

.method synthetic lambda$setupToolbar$10$com-brakefield-painter-ui-toolbars-MainToolbar(Landroid/view/View;)V
    .locals 1

    .line 241
    iget-object p1, p0, Lcom/brakefield/painter/ui/toolbars/MainToolbar;->ui:Lcom/brakefield/painter/ui/SimpleUI;

    const v0, 0x7f1209a8

    invoke-static {v0}, Lcom/brakefield/infinitestudio/Strings;->get(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/brakefield/painter/ui/SimpleUI;->showMessage(Ljava/lang/String;)V

    return-void
.end method

.method synthetic lambda$setupToolbar$12$com-brakefield-painter-ui-toolbars-MainToolbar(Landroid/app/Activity;Landroid/view/View;)V
    .locals 2

    .line 331
    iget v0, p0, Lcom/brakefield/painter/ui/toolbars/MainToolbar;->toolbarPosition:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 332
    iget-object p1, p0, Lcom/brakefield/painter/ui/toolbars/MainToolbar;->binding:Lcom/brakefield/painter/databinding/MainToolbarBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/MainToolbarBinding;->paintButton:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->performClick()Z

    goto :goto_0

    .line 334
    :cond_0
    new-instance v0, Lcom/brakefield/painter/ui/viewcontrollers/BrushSizeCardViewController;

    invoke-direct {v0}, Lcom/brakefield/painter/ui/viewcontrollers/BrushSizeCardViewController;-><init>()V

    .line 335
    iget-object v1, p0, Lcom/brakefield/painter/ui/toolbars/MainToolbar;->ui:Lcom/brakefield/painter/ui/SimpleUI;

    invoke-virtual {v0, p1, v1}, Lcom/brakefield/painter/ui/viewcontrollers/BrushSizeCardViewController;->getView(Landroid/app/Activity;Lcom/brakefield/painter/ui/SimpleUI;)Landroid/view/View;

    move-result-object v0

    .line 336
    iget-object v1, p0, Lcom/brakefield/painter/ui/toolbars/MainToolbar;->ui:Lcom/brakefield/painter/ui/SimpleUI;

    invoke-virtual {v1, p1, v0, p2}, Lcom/brakefield/painter/ui/SimpleUI;->popup(Landroid/app/Activity;Landroid/view/View;Landroid/view/View;)V

    :goto_0
    return-void
.end method

.method synthetic lambda$setupToolbar$13$com-brakefield-painter-ui-toolbars-MainToolbar(F)Ljava/lang/String;
    .locals 4

    .line 342
    iget v0, p0, Lcom/brakefield/painter/ui/toolbars/MainToolbar;->toolbarPosition:I

    const/4 v1, 0x4

    const-string v2, "%d"

    const/high16 v3, 0x42c80000    # 100.0f

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getPaintMode()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    mul-float/2addr p1, v3

    float-to-int p1, p1

    .line 343
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 345
    :cond_0
    iget v0, p0, Lcom/brakefield/painter/ui/toolbars/MainToolbar;->downBright:F

    sub-float/2addr p1, v0

    mul-float/2addr p1, v3

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_1

    const-string v0, "+"

    goto :goto_0

    :cond_1
    const-string v0, ""

    .line 349
    :goto_0
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const/high16 v3, 0x41200000    # 10.0f

    cmpg-float v1, v1, v3

    if-gez v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v1, "%.1f"

    invoke-static {v1, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 350
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    float-to-int p1, p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method synthetic lambda$setupToolbar$14$com-brakefield-painter-ui-toolbars-MainToolbar(Landroid/app/Activity;IZ)V
    .locals 2

    .line 473
    invoke-static {p2}, Landroid/graphics/Color;->red(I)I

    move-result p3

    int-to-float p3, p3

    const/high16 v0, 0x437f0000    # 255.0f

    div-float/2addr p3, v0

    invoke-static {p2}, Landroid/graphics/Color;->green(I)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v0

    invoke-static {p2}, Landroid/graphics/Color;->blue(I)I

    move-result p2

    int-to-float p2, p2

    div-float/2addr p2, v0

    invoke-static {p3, v1, p2}, Lcom/brakefield/painter/PainterLib;->setColor(FFF)V

    .line 474
    invoke-static {}, Lcom/brakefield/painter/ui/viewcontrollers/ColorWheelViewController;->updateFloatingWheel()V

    .line 475
    iget-object p2, p0, Lcom/brakefield/painter/ui/toolbars/MainToolbar;->ui:Lcom/brakefield/painter/ui/SimpleUI;

    invoke-virtual {p2, p1}, Lcom/brakefield/painter/ui/SimpleUI;->update(Landroid/app/Activity;)V

    return-void
.end method

.method synthetic lambda$setupToolbar$15$com-brakefield-painter-ui-toolbars-MainToolbar(Landroid/app/Activity;Landroid/view/View;)V
    .locals 6

    .line 472
    new-instance v4, Lcom/brakefield/painter/ui/toolbars/MainToolbar$$ExternalSyntheticLambda14;

    invoke-direct {v4, p0, p1}, Lcom/brakefield/painter/ui/toolbars/MainToolbar$$ExternalSyntheticLambda14;-><init>(Lcom/brakefield/painter/ui/toolbars/MainToolbar;Landroid/app/Activity;)V

    .line 478
    iget v0, p0, Lcom/brakefield/painter/ui/toolbars/MainToolbar;->toolbarPosition:I

    const/4 v1, 0x4

    const/4 v2, 0x0

    if-ne v0, v1, :cond_3

    .line 479
    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getPaintMode()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 480
    new-instance v0, Lcom/brakefield/painter/ui/viewcontrollers/BlendSettingsViewController;

    invoke-direct {v0}, Lcom/brakefield/painter/ui/viewcontrollers/BlendSettingsViewController;-><init>()V

    .line 481
    iget-object v1, p0, Lcom/brakefield/painter/ui/toolbars/MainToolbar;->ui:Lcom/brakefield/painter/ui/SimpleUI;

    invoke-virtual {v0, p1, v1}, Lcom/brakefield/painter/ui/viewcontrollers/BlendSettingsViewController;->getView(Landroid/app/Activity;Lcom/brakefield/painter/ui/SimpleUI;)Landroid/view/View;

    move-result-object v0

    .line 482
    iget-object v1, p0, Lcom/brakefield/painter/ui/toolbars/MainToolbar;->ui:Lcom/brakefield/painter/ui/SimpleUI;

    invoke-virtual {v1, p1, v0, p2}, Lcom/brakefield/painter/ui/SimpleUI;->popup(Landroid/app/Activity;Landroid/view/View;Landroid/view/View;)V

    goto :goto_0

    .line 483
    :cond_0
    invoke-static {}, Lcom/brakefield/painter/PainterLib;->isCloning()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getPaintMode()I

    move-result v0

    if-nez v0, :cond_1

    .line 484
    new-instance v0, Lcom/brakefield/painter/ui/viewcontrollers/CloneSettingsViewController;

    invoke-direct {v0}, Lcom/brakefield/painter/ui/viewcontrollers/CloneSettingsViewController;-><init>()V

    .line 485
    iget-object v1, p0, Lcom/brakefield/painter/ui/toolbars/MainToolbar;->ui:Lcom/brakefield/painter/ui/SimpleUI;

    invoke-virtual {v0, p1, v1}, Lcom/brakefield/painter/ui/viewcontrollers/CloneSettingsViewController;->getView(Landroid/app/Activity;Lcom/brakefield/painter/ui/SimpleUI;)Landroid/view/View;

    move-result-object v0

    .line 486
    iget-object v1, p0, Lcom/brakefield/painter/ui/toolbars/MainToolbar;->ui:Lcom/brakefield/painter/ui/SimpleUI;

    invoke-virtual {v1, p1, v0, p2}, Lcom/brakefield/painter/ui/SimpleUI;->popup(Landroid/app/Activity;Landroid/view/View;Landroid/view/View;)V

    goto :goto_0

    .line 488
    :cond_1
    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getPaintMode()I

    move-result v0

    if-eqz v0, :cond_2

    .line 489
    invoke-static {v2}, Lcom/brakefield/painter/PainterLib;->setBlend(Z)V

    .line 490
    invoke-static {v2}, Lcom/brakefield/painter/PainterLib;->setErase(Z)V

    .line 491
    iget-object v0, p0, Lcom/brakefield/painter/ui/toolbars/MainToolbar;->ui:Lcom/brakefield/painter/ui/SimpleUI;

    invoke-virtual {v0, p1}, Lcom/brakefield/painter/ui/SimpleUI;->update(Landroid/app/Activity;)V

    .line 493
    :cond_2
    iget-object v0, p0, Lcom/brakefield/painter/ui/toolbars/MainToolbar;->ui:Lcom/brakefield/painter/ui/SimpleUI;

    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getColor()I

    move-result v3

    const/4 v5, 0x0

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/brakefield/painter/ui/SimpleUI;->showColorsPanel(Landroid/app/Activity;Landroid/view/View;ILcom/brakefield/infinitestudio/color/ColorPickerView$OnColorChangeListener;I)V

    goto :goto_0

    .line 495
    :cond_3
    invoke-static {}, Lcom/brakefield/painter/PainterLib;->isCloning()Z

    move-result v0

    if-nez v0, :cond_5

    .line 496
    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getPaintMode()I

    move-result v0

    if-eqz v0, :cond_4

    .line 497
    invoke-static {v2}, Lcom/brakefield/painter/PainterLib;->setBlend(Z)V

    .line 498
    invoke-static {v2}, Lcom/brakefield/painter/PainterLib;->setErase(Z)V

    .line 499
    iget-object v0, p0, Lcom/brakefield/painter/ui/toolbars/MainToolbar;->ui:Lcom/brakefield/painter/ui/SimpleUI;

    invoke-virtual {v0, p1}, Lcom/brakefield/painter/ui/SimpleUI;->update(Landroid/app/Activity;)V

    .line 501
    :cond_4
    iget-object v0, p0, Lcom/brakefield/painter/ui/toolbars/MainToolbar;->ui:Lcom/brakefield/painter/ui/SimpleUI;

    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getColor()I

    move-result v3

    const/4 v5, 0x0

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/brakefield/painter/ui/SimpleUI;->showColorsPanel(Landroid/app/Activity;Landroid/view/View;ILcom/brakefield/infinitestudio/color/ColorPickerView$OnColorChangeListener;I)V

    :cond_5
    :goto_0
    return-void
.end method

.method synthetic lambda$setupToolbar$16$com-brakefield-painter-ui-toolbars-MainToolbar(Landroid/app/Activity;Landroid/view/View;)V
    .locals 3

    .line 593
    new-instance v0, Lcom/brakefield/painter/ui/viewcontrollers/BrushOpacityCardViewController;

    invoke-direct {v0}, Lcom/brakefield/painter/ui/viewcontrollers/BrushOpacityCardViewController;-><init>()V

    .line 594
    iget-object v1, p0, Lcom/brakefield/painter/ui/toolbars/MainToolbar;->opacityControl:Lcom/brakefield/painter/OpacityControl;

    iget-object v2, p0, Lcom/brakefield/painter/ui/toolbars/MainToolbar;->ui:Lcom/brakefield/painter/ui/SimpleUI;

    invoke-virtual {v0, p1, v1, v2}, Lcom/brakefield/painter/ui/viewcontrollers/BrushOpacityCardViewController;->getView(Landroid/app/Activity;Lcom/brakefield/painter/OpacityControl;Lcom/brakefield/painter/ui/SimpleUI;)Landroid/view/View;

    move-result-object v0

    .line 595
    iget-object v1, p0, Lcom/brakefield/painter/ui/toolbars/MainToolbar;->ui:Lcom/brakefield/painter/ui/SimpleUI;

    invoke-virtual {v1, p1, v0, p2}, Lcom/brakefield/painter/ui/SimpleUI;->popup(Landroid/app/Activity;Landroid/view/View;Landroid/view/View;)V

    return-void
.end method

.method synthetic lambda$setupToolbar$17$com-brakefield-painter-ui-toolbars-MainToolbar(F)Ljava/lang/String;
    .locals 2

    .line 601
    iget-object v0, p0, Lcom/brakefield/painter/ui/toolbars/MainToolbar;->binding:Lcom/brakefield/painter/databinding/MainToolbarBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/MainToolbarBinding;->filterEffectButton:Lcom/brakefield/infinitestudio/ui/PullButton;

    invoke-virtual {v0}, Lcom/brakefield/infinitestudio/ui/PullButton;->isMiddlePivot()Z

    move-result v0

    if-eqz v0, :cond_0

    const/high16 v0, 0x3f000000    # 0.5f

    sub-float/2addr p1, v0

    const/high16 v0, 0x40000000    # 2.0f

    mul-float/2addr p1, v0

    .line 602
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float/2addr p1, v1

    float-to-int p1, p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v1, "%d"

    invoke-static {v1, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method synthetic lambda$setupToolbar$18$com-brakefield-painter-ui-toolbars-MainToolbar(Landroid/app/Activity;Landroid/view/View;)V
    .locals 2

    .line 645
    iget v0, p0, Lcom/brakefield/painter/ui/toolbars/MainToolbar;->toolbarPosition:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 646
    iget-object p1, p0, Lcom/brakefield/painter/ui/toolbars/MainToolbar;->binding:Lcom/brakefield/painter/databinding/MainToolbarBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/MainToolbarBinding;->paintButton:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->performClick()Z

    goto :goto_0

    .line 648
    :cond_0
    new-instance v0, Lcom/brakefield/painter/ui/viewcontrollers/BrushSizeCardViewController;

    invoke-direct {v0}, Lcom/brakefield/painter/ui/viewcontrollers/BrushSizeCardViewController;-><init>()V

    .line 649
    iget-object v1, p0, Lcom/brakefield/painter/ui/toolbars/MainToolbar;->ui:Lcom/brakefield/painter/ui/SimpleUI;

    invoke-virtual {v0, p1, v1}, Lcom/brakefield/painter/ui/viewcontrollers/BrushSizeCardViewController;->getView(Landroid/app/Activity;Lcom/brakefield/painter/ui/SimpleUI;)Landroid/view/View;

    move-result-object v0

    .line 650
    iget-object v1, p0, Lcom/brakefield/painter/ui/toolbars/MainToolbar;->ui:Lcom/brakefield/painter/ui/SimpleUI;

    invoke-virtual {v1, p1, v0, p2}, Lcom/brakefield/painter/ui/SimpleUI;->popup(Landroid/app/Activity;Landroid/view/View;Landroid/view/View;)V

    :goto_0
    return-void
.end method

.method synthetic lambda$setupToolbar$2$com-brakefield-painter-ui-toolbars-MainToolbar()V
    .locals 0

    .line 159
    invoke-virtual {p0}, Lcom/brakefield/painter/ui/toolbars/MainToolbar;->dragEnded()V

    return-void
.end method

.method synthetic lambda$setupToolbar$3$com-brakefield-painter-ui-toolbars-MainToolbar(Landroid/app/Activity;Landroid/view/View;)V
    .locals 2

    .line 164
    iget v0, p0, Lcom/brakefield/painter/ui/toolbars/MainToolbar;->toolbarPosition:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/brakefield/painter/ui/toolbars/MainToolbar;->ui:Lcom/brakefield/painter/ui/SimpleUI;

    invoke-virtual {v0, p1, p2}, Lcom/brakefield/painter/ui/SimpleUI;->showBrushesPanel(Landroid/app/Activity;Landroid/view/View;)V

    goto :goto_0

    .line 166
    :cond_0
    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getPaintMode()I

    move-result v0

    if-eqz v0, :cond_1

    const/4 p2, 0x0

    .line 167
    invoke-static {p2}, Lcom/brakefield/painter/PainterLib;->setBlend(Z)V

    .line 168
    invoke-static {p2}, Lcom/brakefield/painter/PainterLib;->setErase(Z)V

    goto :goto_0

    .line 169
    :cond_1
    iget-object v0, p0, Lcom/brakefield/painter/ui/toolbars/MainToolbar;->ui:Lcom/brakefield/painter/ui/SimpleUI;

    invoke-virtual {v0, p1, p2}, Lcom/brakefield/painter/ui/SimpleUI;->showBrushesPanel(Landroid/app/Activity;Landroid/view/View;)V

    .line 171
    :goto_0
    iget-object p2, p0, Lcom/brakefield/painter/ui/toolbars/MainToolbar;->ui:Lcom/brakefield/painter/ui/SimpleUI;

    invoke-virtual {p2, p1}, Lcom/brakefield/painter/ui/SimpleUI;->update(Landroid/app/Activity;)V

    return-void
.end method

.method synthetic lambda$setupToolbar$4$com-brakefield-painter-ui-toolbars-MainToolbar(Landroid/app/Activity;)V
    .locals 1

    .line 174
    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getPaintMode()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 175
    invoke-static {v0}, Lcom/brakefield/painter/PainterLib;->setBlend(Z)V

    .line 176
    invoke-static {v0}, Lcom/brakefield/painter/PainterLib;->setErase(Z)V

    .line 177
    iget-object v0, p0, Lcom/brakefield/painter/ui/toolbars/MainToolbar;->ui:Lcom/brakefield/painter/ui/SimpleUI;

    invoke-virtual {v0, p1}, Lcom/brakefield/painter/ui/SimpleUI;->update(Landroid/app/Activity;)V

    :cond_0
    return-void
.end method

.method synthetic lambda$setupToolbar$5$com-brakefield-painter-ui-toolbars-MainToolbar(Landroid/app/Activity;Landroid/view/View;)V
    .locals 2

    .line 183
    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getPaintMode()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 184
    invoke-static {v1}, Lcom/brakefield/painter/PainterLib;->setBlend(Z)V

    const/4 p2, 0x0

    .line 185
    invoke-static {p2}, Lcom/brakefield/painter/PainterLib;->setErase(Z)V

    goto :goto_0

    .line 187
    :cond_0
    iget-object v0, p0, Lcom/brakefield/painter/ui/toolbars/MainToolbar;->ui:Lcom/brakefield/painter/ui/SimpleUI;

    invoke-virtual {v0, p1, p2}, Lcom/brakefield/painter/ui/SimpleUI;->showBrushesPanel(Landroid/app/Activity;Landroid/view/View;)V

    .line 188
    iget-object p2, p0, Lcom/brakefield/painter/ui/toolbars/MainToolbar;->ui:Lcom/brakefield/painter/ui/SimpleUI;

    invoke-virtual {p2, p1}, Lcom/brakefield/painter/ui/SimpleUI;->update(Landroid/app/Activity;)V

    .line 190
    :goto_0
    iget-object p2, p0, Lcom/brakefield/painter/ui/toolbars/MainToolbar;->ui:Lcom/brakefield/painter/ui/SimpleUI;

    invoke-virtual {p2, p1}, Lcom/brakefield/painter/ui/SimpleUI;->update(Landroid/app/Activity;)V

    return-void
.end method

.method synthetic lambda$setupToolbar$6$com-brakefield-painter-ui-toolbars-MainToolbar(Landroid/app/Activity;)V
    .locals 2

    .line 193
    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getPaintMode()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 194
    invoke-static {v1}, Lcom/brakefield/painter/PainterLib;->setBlend(Z)V

    const/4 v0, 0x0

    .line 195
    invoke-static {v0}, Lcom/brakefield/painter/PainterLib;->setErase(Z)V

    .line 196
    iget-object v0, p0, Lcom/brakefield/painter/ui/toolbars/MainToolbar;->ui:Lcom/brakefield/painter/ui/SimpleUI;

    invoke-virtual {v0, p1}, Lcom/brakefield/painter/ui/SimpleUI;->update(Landroid/app/Activity;)V

    :cond_0
    return-void
.end method

.method synthetic lambda$setupToolbar$7$com-brakefield-painter-ui-toolbars-MainToolbar(Landroid/app/Activity;Landroid/view/View;)V
    .locals 2

    .line 202
    iget v0, p0, Lcom/brakefield/painter/ui/toolbars/MainToolbar;->toolbarPosition:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 203
    invoke-static {}, Lcom/brakefield/painter/PainterLib;->isBlending()Z

    move-result p2

    xor-int/lit8 p2, p2, 0x1

    invoke-static {p2}, Lcom/brakefield/painter/PainterLib;->setBlend(Z)V

    const/4 p2, 0x0

    .line 204
    invoke-static {p2}, Lcom/brakefield/painter/PainterLib;->setErase(Z)V

    .line 205
    iget-object p2, p0, Lcom/brakefield/painter/ui/toolbars/MainToolbar;->ui:Lcom/brakefield/painter/ui/SimpleUI;

    invoke-virtual {p2, p1}, Lcom/brakefield/painter/ui/SimpleUI;->update(Landroid/app/Activity;)V

    goto :goto_0

    .line 207
    :cond_0
    invoke-static {}, Lcom/brakefield/painter/PainterLib;->isCloning()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getPaintMode()I

    move-result v0

    if-nez v0, :cond_1

    .line 208
    new-instance v0, Lcom/brakefield/painter/ui/viewcontrollers/CloneSettingsViewController;

    invoke-direct {v0}, Lcom/brakefield/painter/ui/viewcontrollers/CloneSettingsViewController;-><init>()V

    .line 209
    iget-object v1, p0, Lcom/brakefield/painter/ui/toolbars/MainToolbar;->ui:Lcom/brakefield/painter/ui/SimpleUI;

    invoke-virtual {v0, p1, v1}, Lcom/brakefield/painter/ui/viewcontrollers/CloneSettingsViewController;->getView(Landroid/app/Activity;Lcom/brakefield/painter/ui/SimpleUI;)Landroid/view/View;

    move-result-object v0

    .line 210
    iget-object v1, p0, Lcom/brakefield/painter/ui/toolbars/MainToolbar;->ui:Lcom/brakefield/painter/ui/SimpleUI;

    invoke-virtual {v1, p1, v0, p2}, Lcom/brakefield/painter/ui/SimpleUI;->popup(Landroid/app/Activity;Landroid/view/View;Landroid/view/View;)V

    goto :goto_0

    .line 211
    :cond_1
    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getPaintMode()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    .line 212
    new-instance v0, Lcom/brakefield/painter/ui/viewcontrollers/BlendSettingsViewController;

    invoke-direct {v0}, Lcom/brakefield/painter/ui/viewcontrollers/BlendSettingsViewController;-><init>()V

    .line 213
    iget-object v1, p0, Lcom/brakefield/painter/ui/toolbars/MainToolbar;->ui:Lcom/brakefield/painter/ui/SimpleUI;

    invoke-virtual {v0, p1, v1}, Lcom/brakefield/painter/ui/viewcontrollers/BlendSettingsViewController;->getView(Landroid/app/Activity;Lcom/brakefield/painter/ui/SimpleUI;)Landroid/view/View;

    move-result-object v0

    .line 214
    iget-object v1, p0, Lcom/brakefield/painter/ui/toolbars/MainToolbar;->ui:Lcom/brakefield/painter/ui/SimpleUI;

    invoke-virtual {v1, p1, v0, p2}, Lcom/brakefield/painter/ui/SimpleUI;->popup(Landroid/app/Activity;Landroid/view/View;Landroid/view/View;)V

    :cond_2
    :goto_0
    return-void
.end method

.method synthetic lambda$setupToolbar$8$com-brakefield-painter-ui-toolbars-MainToolbar(Landroid/app/Activity;Landroid/view/View;)V
    .locals 4

    .line 221
    iget v0, p0, Lcom/brakefield/painter/ui/toolbars/MainToolbar;->toolbarPosition:I

    const/4 v1, 0x4

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_0

    .line 222
    invoke-static {}, Lcom/brakefield/painter/PainterLib;->isErasing()Z

    move-result p2

    xor-int/2addr p2, v2

    invoke-static {p2}, Lcom/brakefield/painter/PainterLib;->setErase(Z)V

    .line 223
    invoke-static {v3}, Lcom/brakefield/painter/PainterLib;->setBlend(Z)V

    .line 224
    iget-object p2, p0, Lcom/brakefield/painter/ui/toolbars/MainToolbar;->ui:Lcom/brakefield/painter/ui/SimpleUI;

    invoke-virtual {p2, p1}, Lcom/brakefield/painter/ui/SimpleUI;->update(Landroid/app/Activity;)V

    goto :goto_0

    .line 226
    :cond_0
    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getPaintMode()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    .line 227
    invoke-static {v3}, Lcom/brakefield/painter/PainterLib;->setBlend(Z)V

    .line 228
    invoke-static {v2}, Lcom/brakefield/painter/PainterLib;->setErase(Z)V

    goto :goto_0

    .line 229
    :cond_1
    iget-object v0, p0, Lcom/brakefield/painter/ui/toolbars/MainToolbar;->ui:Lcom/brakefield/painter/ui/SimpleUI;

    invoke-virtual {v0, p1, p2}, Lcom/brakefield/painter/ui/SimpleUI;->showBrushesPanel(Landroid/app/Activity;Landroid/view/View;)V

    .line 231
    :goto_0
    iget-object p2, p0, Lcom/brakefield/painter/ui/toolbars/MainToolbar;->ui:Lcom/brakefield/painter/ui/SimpleUI;

    invoke-virtual {p2, p1}, Lcom/brakefield/painter/ui/SimpleUI;->update(Landroid/app/Activity;)V

    return-void
.end method

.method public openBrushes()V
    .locals 3

    .line 1329
    iget-object v0, p0, Lcom/brakefield/painter/ui/toolbars/MainToolbar;->ui:Lcom/brakefield/painter/ui/SimpleUI;

    iget-object v1, p0, Lcom/brakefield/painter/ui/toolbars/MainToolbar;->activity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/brakefield/painter/ui/toolbars/MainToolbar;->binding:Lcom/brakefield/painter/databinding/MainToolbarBinding;

    iget-object v2, v2, Lcom/brakefield/painter/databinding/MainToolbarBinding;->paintButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v1, v2}, Lcom/brakefield/painter/ui/SimpleUI;->showBrushesPanel(Landroid/app/Activity;Landroid/view/View;)V

    return-void
.end method

.method public setOpacityControl(Lcom/brakefield/painter/OpacityControl;)V
    .locals 1

    .line 1303
    iput-object p1, p0, Lcom/brakefield/painter/ui/toolbars/MainToolbar;->opacityControl:Lcom/brakefield/painter/OpacityControl;

    .line 1304
    iget-object v0, p0, Lcom/brakefield/painter/ui/toolbars/MainToolbar;->observeOpacityControlAffects:Lcom/brakefield/infinitestudio/ui/components/OnChange;

    invoke-virtual {p1, v0}, Lcom/brakefield/painter/OpacityControl;->addOnAffectedTargetChangeListener(Lcom/brakefield/infinitestudio/ui/components/OnChange;)V

    .line 1305
    iget-object p1, p0, Lcom/brakefield/painter/ui/toolbars/MainToolbar;->opacityControl:Lcom/brakefield/painter/OpacityControl;

    iget-object v0, p0, Lcom/brakefield/painter/ui/toolbars/MainToolbar;->observeOpacityControlValue:Lcom/brakefield/infinitestudio/ui/components/OnChange;

    invoke-virtual {p1, v0}, Lcom/brakefield/painter/OpacityControl;->addOnAffectedValueChangeListener(Lcom/brakefield/infinitestudio/ui/components/OnChange;)V

    return-void
.end method

.method public setUseColorHistoryStrip(Z)V
    .locals 0

    .line 1309
    iput-boolean p1, p0, Lcom/brakefield/painter/ui/toolbars/MainToolbar;->useColorHistoryStrip:Z

    return-void
.end method

.method public setup(Landroid/app/Activity;Lcom/brakefield/painter/ui/SimpleUI;Landroidx/constraintlayout/widget/ConstraintLayout;)V
    .locals 5

    .line 109
    iput-object p1, p0, Lcom/brakefield/painter/ui/toolbars/MainToolbar;->activity:Landroid/app/Activity;

    .line 110
    iput-object p2, p0, Lcom/brakefield/painter/ui/toolbars/MainToolbar;->ui:Lcom/brakefield/painter/ui/SimpleUI;

    .line 111
    iput-object p3, p0, Lcom/brakefield/painter/ui/toolbars/MainToolbar;->parent:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 113
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 114
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iput-object p1, p0, Lcom/brakefield/painter/ui/toolbars/MainToolbar;->res:Landroid/content/res/Resources;

    .line 116
    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-ne p1, v1, :cond_0

    move p1, v2

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 117
    :goto_0
    iget-object v1, p0, Lcom/brakefield/painter/ui/toolbars/MainToolbar;->res:Landroid/content/res/Resources;

    const v3, 0x7f050002

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz p1, :cond_1

    const-string v3, "PREF_TOOLBAR_FLOAT_X_LAND"

    .line 120
    invoke-virtual {p0, v1}, Lcom/brakefield/painter/ui/toolbars/MainToolbar;->getDefaultToolbarFloatX(Z)F

    move-result v4

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v3

    iput v3, p0, Lcom/brakefield/painter/ui/toolbars/MainToolbar;->toolbarFloatX:F

    const-string v3, "PREF_TOOLBAR_FLOAT_Y_LAND"

    .line 121
    invoke-virtual {p0, v1, p1}, Lcom/brakefield/painter/ui/toolbars/MainToolbar;->getDefaultToolbarFloatY(ZZ)F

    move-result v4

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v3

    iput v3, p0, Lcom/brakefield/painter/ui/toolbars/MainToolbar;->toolbarFloatY:F

    const-string v3, "PREF_TOOLBAR_POSITION_LAND"

    .line 122
    invoke-virtual {p0, v1, p1}, Lcom/brakefield/painter/ui/toolbars/MainToolbar;->getDefaultToolbarPosition(ZZ)I

    move-result p1

    invoke-interface {v0, v3, p1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/brakefield/painter/ui/toolbars/MainToolbar;->toolbarPosition:I

    const-string p1, "PREF_TOOLBAR_VERTICAL_LAND"

    .line 123
    invoke-interface {v0, p1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/brakefield/painter/ui/toolbars/MainToolbar;->toolbarIsVertical:Z

    goto :goto_1

    :cond_1
    const-string v2, "PREF_TOOLBAR_FLOAT_X_PORT"

    .line 125
    invoke-virtual {p0, v1}, Lcom/brakefield/painter/ui/toolbars/MainToolbar;->getDefaultToolbarFloatX(Z)F

    move-result v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v2

    iput v2, p0, Lcom/brakefield/painter/ui/toolbars/MainToolbar;->toolbarFloatX:F

    const-string v2, "PREF_TOOLBAR_FLOAT_Y_PORT"

    .line 126
    invoke-virtual {p0, v1, p1}, Lcom/brakefield/painter/ui/toolbars/MainToolbar;->getDefaultToolbarFloatY(ZZ)F

    move-result v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v2

    iput v2, p0, Lcom/brakefield/painter/ui/toolbars/MainToolbar;->toolbarFloatY:F

    const-string v2, "PREF_TOOLBAR_POSITION_PORT"

    .line 127
    invoke-virtual {p0, v1, p1}, Lcom/brakefield/painter/ui/toolbars/MainToolbar;->getDefaultToolbarPosition(ZZ)I

    move-result p1

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/brakefield/painter/ui/toolbars/MainToolbar;->toolbarPosition:I

    const-string p1, "PREF_TOOLBAR_VERTICAL_PORT"

    .line 128
    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/brakefield/painter/ui/toolbars/MainToolbar;->toolbarIsVertical:Z

    .line 131
    :goto_1
    iget-object p1, p0, Lcom/brakefield/painter/ui/toolbars/MainToolbar;->swatchSlider:Lcom/brakefield/infinitestudio/color/SwatchSlider;

    if-eqz p1, :cond_2

    .line 132
    invoke-virtual {p3, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->removeView(Landroid/view/View;)V

    .line 135
    :cond_2
    invoke-direct {p0, p2}, Lcom/brakefield/painter/ui/toolbars/MainToolbar;->getSwatchSlider(Lcom/brakefield/painter/ui/SimpleUI;)Lcom/brakefield/infinitestudio/color/SwatchSlider;

    move-result-object p1

    iput-object p1, p0, Lcom/brakefield/painter/ui/toolbars/MainToolbar;->swatchSlider:Lcom/brakefield/infinitestudio/color/SwatchSlider;

    const/4 p2, -0x2

    .line 136
    invoke-virtual {p3, p1, p2, p2}, Landroidx/constraintlayout/widget/ConstraintLayout;->addView(Landroid/view/View;II)V

    .line 137
    iget-object p1, p0, Lcom/brakefield/painter/ui/toolbars/MainToolbar;->swatchSlider:Lcom/brakefield/infinitestudio/color/SwatchSlider;

    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/brakefield/infinitestudio/color/SwatchSlider;->setId(I)V

    .line 138
    iget-object p1, p0, Lcom/brakefield/painter/ui/toolbars/MainToolbar;->swatchSlider:Lcom/brakefield/infinitestudio/color/SwatchSlider;

    invoke-direct {p0, p1}, Lcom/brakefield/painter/ui/toolbars/MainToolbar;->setupSwatchSlider(Lcom/brakefield/infinitestudio/color/SwatchSlider;)V

    .line 140
    invoke-direct {p0}, Lcom/brakefield/painter/ui/toolbars/MainToolbar;->addToolbar()V

    return-void
.end method

.method setupDragToolbar()V
    .locals 4

    .line 1292
    iget-object v0, p0, Lcom/brakefield/painter/ui/toolbars/MainToolbar;->draggingToolbar:Lcom/brakefield/infinitestudio/gestures/GestureLayout;

    if-eqz v0, :cond_0

    .line 1293
    iget-object v1, p0, Lcom/brakefield/painter/ui/toolbars/MainToolbar;->parent:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v1, v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->removeView(Landroid/view/View;)V

    .line 1295
    :cond_0
    iget-object v0, p0, Lcom/brakefield/painter/ui/toolbars/MainToolbar;->activity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/brakefield/painter/ui/toolbars/MainToolbar;->ui:Lcom/brakefield/painter/ui/SimpleUI;

    invoke-virtual {p0, v0, v1}, Lcom/brakefield/painter/ui/toolbars/MainToolbar;->getView(Landroid/app/Activity;Lcom/brakefield/painter/ui/SimpleUI;)Lcom/brakefield/infinitestudio/gestures/GestureLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/brakefield/painter/ui/toolbars/MainToolbar;->draggingToolbar:Lcom/brakefield/infinitestudio/gestures/GestureLayout;

    .line 1296
    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/brakefield/infinitestudio/gestures/GestureLayout;->setId(I)V

    .line 1297
    new-instance v0, Lcom/brakefield/painter/ui/toolbars/MainToolbar$UpdateHandler;

    iget-object v1, p0, Lcom/brakefield/painter/ui/toolbars/MainToolbar;->draggingToolbar:Lcom/brakefield/infinitestudio/gestures/GestureLayout;

    invoke-static {v1}, Lcom/brakefield/painter/databinding/MainToolbarBinding;->bind(Landroid/view/View;)Lcom/brakefield/painter/databinding/MainToolbarBinding;

    move-result-object v1

    iget-object v2, p0, Lcom/brakefield/painter/ui/toolbars/MainToolbar;->opacityControl:Lcom/brakefield/painter/OpacityControl;

    iget-object v3, p0, Lcom/brakefield/painter/ui/toolbars/MainToolbar;->swatchSlider:Lcom/brakefield/infinitestudio/color/SwatchSlider;

    invoke-direct {v0, v1, v2, v3}, Lcom/brakefield/painter/ui/toolbars/MainToolbar$UpdateHandler;-><init>(Lcom/brakefield/painter/databinding/MainToolbarBinding;Lcom/brakefield/painter/OpacityControl;Lcom/brakefield/infinitestudio/color/SwatchSlider;)V

    .line 1298
    iget v1, p0, Lcom/brakefield/painter/ui/toolbars/MainToolbar;->toolbarPosition:I

    iget-boolean v2, p0, Lcom/brakefield/painter/ui/toolbars/MainToolbar;->toolbarIsVertical:Z

    invoke-virtual {v0, v1, v2}, Lcom/brakefield/painter/ui/toolbars/MainToolbar$UpdateHandler;->update(IZ)V

    .line 1299
    iget-object v0, p0, Lcom/brakefield/painter/ui/toolbars/MainToolbar;->parent:Landroidx/constraintlayout/widget/ConstraintLayout;

    iget-object v1, p0, Lcom/brakefield/painter/ui/toolbars/MainToolbar;->draggingToolbar:Lcom/brakefield/infinitestudio/gestures/GestureLayout;

    const/4 v2, -0x2

    invoke-virtual {v0, v1, v2, v2}, Landroidx/constraintlayout/widget/ConstraintLayout;->addView(Landroid/view/View;II)V

    return-void
.end method

.method public show()V
    .locals 2

    .line 920
    iget-object v0, p0, Lcom/brakefield/painter/ui/toolbars/MainToolbar;->toolbar:Lcom/brakefield/infinitestudio/gestures/GestureLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/brakefield/infinitestudio/gestures/GestureLayout;->setVisibility(I)V

    return-void
.end method

.method public showSwatchBar()Z
    .locals 1

    .line 916
    iget-boolean v0, p0, Lcom/brakefield/painter/ui/toolbars/MainToolbar;->useColorHistoryStrip:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/brakefield/painter/ui/toolbars/MainToolbar;->toolbar:Lcom/brakefield/infinitestudio/gestures/GestureLayout;

    invoke-virtual {v0}, Lcom/brakefield/infinitestudio/gestures/GestureLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/brakefield/painter/ui/toolbars/MainToolbar;->binding:Lcom/brakefield/painter/databinding/MainToolbarBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/MainToolbarBinding;->colorButton:Lcom/brakefield/infinitestudio/ui/ColorFillButton;

    invoke-virtual {v0}, Lcom/brakefield/infinitestudio/ui/ColorFillButton;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/brakefield/painter/PainterLib;->isMasking()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public update()V
    .locals 3

    .line 671
    iget-object v0, p0, Lcom/brakefield/painter/ui/toolbars/MainToolbar;->updateHandler:Lcom/brakefield/painter/ui/toolbars/MainToolbar$UpdateHandler;

    iget v1, p0, Lcom/brakefield/painter/ui/toolbars/MainToolbar;->toolbarPosition:I

    iget-boolean v2, p0, Lcom/brakefield/painter/ui/toolbars/MainToolbar;->toolbarIsVertical:Z

    invoke-virtual {v0, v1, v2}, Lcom/brakefield/painter/ui/toolbars/MainToolbar$UpdateHandler;->update(IZ)V

    .line 673
    invoke-virtual {p0}, Lcom/brakefield/painter/ui/toolbars/MainToolbar;->showSwatchBar()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 674
    iget-object v0, p0, Lcom/brakefield/painter/ui/toolbars/MainToolbar;->swatchSlider:Lcom/brakefield/infinitestudio/color/SwatchSlider;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/brakefield/infinitestudio/color/SwatchSlider;->setVisibility(I)V

    goto :goto_0

    .line 676
    :cond_0
    iget-object v0, p0, Lcom/brakefield/painter/ui/toolbars/MainToolbar;->swatchSlider:Lcom/brakefield/infinitestudio/color/SwatchSlider;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/brakefield/infinitestudio/color/SwatchSlider;->setVisibility(I)V

    :goto_0
    return-void
.end method
