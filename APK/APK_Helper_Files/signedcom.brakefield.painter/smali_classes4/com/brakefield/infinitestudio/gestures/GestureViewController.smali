.class public Lcom/brakefield/infinitestudio/gestures/GestureViewController;
.super Ljava/lang/Object;
.source "GestureViewController.java"

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;
.implements Landroid/view/GestureDetector$OnDoubleTapListener;


# static fields
.field public static BOTTOM_EDGE:I = 0x0

.field public static LEFT_EDGE:I = 0x0

.field public static MAX_TAP_TIME:I = 0x78

.field public static MIN_TAP_TIME:I = 0x28

.field public static MOVE_DISTANCE:I

.field public static RIGHT_EDGE:I

.field public static TOP_EDGE:I


# instance fields
.field private bottomEdgeClickListener:Lcom/brakefield/infinitestudio/gestures/listeners/ClickListener;

.field private final bottomEdgeClickRequiresLongpress:Z

.field private bottomEdgePullListener:Lcom/brakefield/infinitestudio/gestures/listeners/PullListener;

.field private final bottomEdgePullRequiresLongpress:Z

.field private bottomEdgeSlideListener:Lcom/brakefield/infinitestudio/gestures/listeners/SlideListener;

.field private final bottomEdgeSlideRequiresLongpress:Z

.field private bottomLeftCornerClickListener:Lcom/brakefield/infinitestudio/gestures/listeners/ClickListener;

.field private bottomLeftCornerPullListener:Lcom/brakefield/infinitestudio/gestures/listeners/PullListener;

.field private bottomRightCornerClickListener:Lcom/brakefield/infinitestudio/gestures/listeners/ClickListener;

.field private bottomRightCornerPullListener:Lcom/brakefield/infinitestudio/gestures/listeners/PullListener;

.field private doubleTapListener:Lcom/brakefield/infinitestudio/gestures/listeners/DoubleTapListener;

.field protected downPoint1:Lcom/brakefield/infinitestudio/geometry/Point;

.field protected downPoint2:Lcom/brakefield/infinitestudio/geometry/Point;

.field private downPointer:Lcom/brakefield/infinitestudio/sketchbook/Pointer;

.field private downSlideX:F

.field private downSlideY:F

.field protected downX:F

.field protected downY:F

.field private dp10:F

.field private eraserListener:Lcom/brakefield/infinitestudio/gestures/listeners/EraserListener;

.field private fingerListener:Lcom/brakefield/infinitestudio/gestures/listeners/FingerListener;

.field private fingersInUse:I

.field private fiveFingerListener:Lcom/brakefield/infinitestudio/gestures/listeners/FiveFingerListener;

.field private flingListener:Lcom/brakefield/infinitestudio/gestures/listeners/FlingListener;

.field private floatClick:Z

.field private focusChangeListener:Lcom/brakefield/infinitestudio/gestures/listeners/FocusChangeListener;

.field private fourFingerClick:Z

.field private fourFingerListener:Lcom/brakefield/infinitestudio/gestures/listeners/FourFingerListener;

.field private gestureDetector:Landroidx/core/view/GestureDetectorCompat;

.field private height:I

.field public historySize:I

.field private hoverListener:Lcom/brakefield/infinitestudio/gestures/listeners/HoverListener;

.field protected hovering:Z

.field private inBottomEdge:Z

.field private inBottomLeftCorner:Z

.field private inBottomRightCorner:Z

.field private inLeftEdge:Z

.field private inRightEdge:Z

.field private inTopEdge:Z

.field private inTopLeftCorner:Z

.field private inTopRightCorner:Z

.field private leftEdgeClickListener:Lcom/brakefield/infinitestudio/gestures/listeners/ClickListener;

.field private final leftEdgeClickRequiresLongpress:Z

.field private leftEdgePullListener:Lcom/brakefield/infinitestudio/gestures/listeners/PullListener;

.field private final leftEdgePullRequiresLongpress:Z

.field private leftEdgeSlideListener:Lcom/brakefield/infinitestudio/gestures/listeners/SlideListener;

.field private final leftEdgeSlideRequiresLongpress:Z

.field private longpressDrag:Z

.field private longpressDragListener:Lcom/brakefield/infinitestudio/gestures/listeners/LongpressDragListener;

.field private longpressListener:Lcom/brakefield/infinitestudio/gestures/listeners/LongpressListener;

.field private longpressed:Z

.field private mouseScrollListener:Lcom/brakefield/infinitestudio/gestures/listeners/MouseScrollListener;

.field protected multiDownX:F

.field protected multiDownY:F

.field private oldStylusButtonState:I

.field private out:Z

.field pointers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/brakefield/infinitestudio/sketchbook/Pointer;",
            ">;"
        }
    .end annotation
.end field

.field private prefs:Landroid/content/SharedPreferences;

.field private pressDownListener:Lcom/brakefield/infinitestudio/gestures/listeners/PressDownListener;

.field protected prevX:F

.field protected prevY:F

.field private previousPCount:I

.field private rightEdgeClickListener:Lcom/brakefield/infinitestudio/gestures/listeners/ClickListener;

.field private final rightEdgeClickRequiresLongpress:Z

.field private rightEdgePullListener:Lcom/brakefield/infinitestudio/gestures/listeners/PullListener;

.field private final rightEdgePullRequiresLongpress:Z

.field private rightEdgeSlideListener:Lcom/brakefield/infinitestudio/gestures/listeners/SlideListener;

.field private final rightEdgeSlideRequiresLongpress:Z

.field private singleTapListener:Lcom/brakefield/infinitestudio/gestures/listeners/SingleTapListener;

.field private slide:Z

.field private stylusButtonListener:Lcom/brakefield/infinitestudio/gestures/listeners/StylusButtonListener;

.field private stylusListener:Lcom/brakefield/infinitestudio/gestures/listeners/StylusListener;

.field private stylusPrimaryButtonPressed:Z

.field private stylusSecondaryButtonPressed:Z

.field private threeFingerClick:Z

.field private threeFingerListener:Lcom/brakefield/infinitestudio/gestures/listeners/ThreeFingerListener;

.field private threeFingerSlideHorizontalListener:Lcom/brakefield/infinitestudio/gestures/listeners/ThreeFingerSlideHorizontalListener;

.field private threeFingerSlideVerticalListener:Lcom/brakefield/infinitestudio/gestures/listeners/ThreeFingerSlideVerticalListener;

.field protected threeSlideHorizontal:Z

.field protected threeSlideVertical:Z

.field private topEdgeClickListener:Lcom/brakefield/infinitestudio/gestures/listeners/ClickListener;

.field private final topEdgeClickRequiresLongpress:Z

.field private topEdgePullListener:Lcom/brakefield/infinitestudio/gestures/listeners/PullListener;

.field private final topEdgePullRequiresLongpress:Z

.field private topEdgeSlideListener:Lcom/brakefield/infinitestudio/gestures/listeners/SlideListener;

.field private final topEdgeSlideRequiresLongpress:Z

.field private topLeftCornerClickListener:Lcom/brakefield/infinitestudio/gestures/listeners/ClickListener;

.field private topLeftCornerPullListener:Lcom/brakefield/infinitestudio/gestures/listeners/PullListener;

.field private topRightCornerClickListener:Lcom/brakefield/infinitestudio/gestures/listeners/ClickListener;

.field private topRightCornerPullListener:Lcom/brakefield/infinitestudio/gestures/listeners/PullListener;

.field private touchListener:Landroid/view/View$OnTouchListener;

.field private twoFingerClick:Z

.field private twoFingerListener:Lcom/brakefield/infinitestudio/gestures/listeners/TwoFingerListener;

.field private usedStylus:Z

.field private view:Landroid/view/View;

.field private width:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 202
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->pointers:Ljava/util/List;

    const/4 v0, 0x0

    .line 78
    iput-boolean v0, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->stylusPrimaryButtonPressed:Z

    .line 79
    iput-boolean v0, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->stylusSecondaryButtonPressed:Z

    .line 81
    iput v0, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->previousPCount:I

    .line 83
    iput v0, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->fingersInUse:I

    .line 85
    iput-boolean v0, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->inTopLeftCorner:Z

    .line 86
    iput-boolean v0, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->inTopRightCorner:Z

    .line 87
    iput-boolean v0, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->inBottomRightCorner:Z

    .line 88
    iput-boolean v0, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->inBottomLeftCorner:Z

    .line 89
    iput-boolean v0, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->inLeftEdge:Z

    .line 90
    iput-boolean v0, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->inTopEdge:Z

    .line 91
    iput-boolean v0, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->inRightEdge:Z

    .line 92
    iput-boolean v0, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->inBottomEdge:Z

    .line 103
    iput-boolean v0, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->threeSlideVertical:Z

    .line 104
    iput-boolean v0, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->threeSlideHorizontal:Z

    .line 106
    new-instance v1, Lcom/brakefield/infinitestudio/geometry/Point;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v2}, Lcom/brakefield/infinitestudio/geometry/Point;-><init>(FF)V

    iput-object v1, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->downPoint1:Lcom/brakefield/infinitestudio/geometry/Point;

    .line 107
    new-instance v1, Lcom/brakefield/infinitestudio/geometry/Point;

    invoke-direct {v1, v2, v2}, Lcom/brakefield/infinitestudio/geometry/Point;-><init>(FF)V

    iput-object v1, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->downPoint2:Lcom/brakefield/infinitestudio/geometry/Point;

    .line 114
    iput-boolean v0, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->slide:Z

    .line 115
    iput-boolean v0, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->out:Z

    .line 118
    iput-boolean v0, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->floatClick:Z

    const/4 v1, 0x1

    .line 120
    iput-boolean v1, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->rightEdgeSlideRequiresLongpress:Z

    .line 121
    iput-boolean v1, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->leftEdgeSlideRequiresLongpress:Z

    .line 122
    iput-boolean v1, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->topEdgeSlideRequiresLongpress:Z

    .line 123
    iput-boolean v1, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->bottomEdgeSlideRequiresLongpress:Z

    .line 125
    iput-boolean v1, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->rightEdgePullRequiresLongpress:Z

    .line 126
    iput-boolean v1, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->leftEdgePullRequiresLongpress:Z

    .line 127
    iput-boolean v1, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->topEdgePullRequiresLongpress:Z

    .line 128
    iput-boolean v1, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->bottomEdgePullRequiresLongpress:Z

    .line 130
    iput-boolean v1, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->rightEdgeClickRequiresLongpress:Z

    .line 131
    iput-boolean v1, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->leftEdgeClickRequiresLongpress:Z

    .line 132
    iput-boolean v1, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->topEdgeClickRequiresLongpress:Z

    .line 133
    iput-boolean v1, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->bottomEdgeClickRequiresLongpress:Z

    .line 135
    iput-boolean v0, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->longpressed:Z

    .line 136
    iput-boolean v0, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->longpressDrag:Z

    .line 192
    iput-boolean v0, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->usedStylus:Z

    const/4 v0, 0x5

    .line 200
    iput v0, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->historySize:I

    .line 203
    invoke-direct {p0, p1}, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 3

    .line 206
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->pointers:Ljava/util/List;

    const/4 v0, 0x0

    .line 78
    iput-boolean v0, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->stylusPrimaryButtonPressed:Z

    .line 79
    iput-boolean v0, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->stylusSecondaryButtonPressed:Z

    .line 81
    iput v0, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->previousPCount:I

    .line 83
    iput v0, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->fingersInUse:I

    .line 85
    iput-boolean v0, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->inTopLeftCorner:Z

    .line 86
    iput-boolean v0, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->inTopRightCorner:Z

    .line 87
    iput-boolean v0, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->inBottomRightCorner:Z

    .line 88
    iput-boolean v0, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->inBottomLeftCorner:Z

    .line 89
    iput-boolean v0, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->inLeftEdge:Z

    .line 90
    iput-boolean v0, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->inTopEdge:Z

    .line 91
    iput-boolean v0, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->inRightEdge:Z

    .line 92
    iput-boolean v0, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->inBottomEdge:Z

    .line 103
    iput-boolean v0, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->threeSlideVertical:Z

    .line 104
    iput-boolean v0, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->threeSlideHorizontal:Z

    .line 106
    new-instance v1, Lcom/brakefield/infinitestudio/geometry/Point;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v2}, Lcom/brakefield/infinitestudio/geometry/Point;-><init>(FF)V

    iput-object v1, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->downPoint1:Lcom/brakefield/infinitestudio/geometry/Point;

    .line 107
    new-instance v1, Lcom/brakefield/infinitestudio/geometry/Point;

    invoke-direct {v1, v2, v2}, Lcom/brakefield/infinitestudio/geometry/Point;-><init>(FF)V

    iput-object v1, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->downPoint2:Lcom/brakefield/infinitestudio/geometry/Point;

    .line 114
    iput-boolean v0, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->slide:Z

    .line 115
    iput-boolean v0, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->out:Z

    .line 118
    iput-boolean v0, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->floatClick:Z

    const/4 v1, 0x1

    .line 120
    iput-boolean v1, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->rightEdgeSlideRequiresLongpress:Z

    .line 121
    iput-boolean v1, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->leftEdgeSlideRequiresLongpress:Z

    .line 122
    iput-boolean v1, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->topEdgeSlideRequiresLongpress:Z

    .line 123
    iput-boolean v1, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->bottomEdgeSlideRequiresLongpress:Z

    .line 125
    iput-boolean v1, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->rightEdgePullRequiresLongpress:Z

    .line 126
    iput-boolean v1, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->leftEdgePullRequiresLongpress:Z

    .line 127
    iput-boolean v1, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->topEdgePullRequiresLongpress:Z

    .line 128
    iput-boolean v1, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->bottomEdgePullRequiresLongpress:Z

    .line 130
    iput-boolean v1, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->rightEdgeClickRequiresLongpress:Z

    .line 131
    iput-boolean v1, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->leftEdgeClickRequiresLongpress:Z

    .line 132
    iput-boolean v1, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->topEdgeClickRequiresLongpress:Z

    .line 133
    iput-boolean v1, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->bottomEdgeClickRequiresLongpress:Z

    .line 135
    iput-boolean v0, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->longpressed:Z

    .line 136
    iput-boolean v0, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->longpressDrag:Z

    .line 192
    iput-boolean v0, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->usedStylus:Z

    const/4 v0, 0x5

    .line 200
    iput v0, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->historySize:I

    .line 207
    iput-object p1, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->view:Landroid/view/View;

    .line 208
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->init(Landroid/content/Context;)V

    return-void
.end method

.method private getAverageX(Ljava/util/List;)F
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/brakefield/infinitestudio/sketchbook/Pointer;",
            ">;)F"
        }
    .end annotation

    .line 880
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/brakefield/infinitestudio/sketchbook/Pointer;

    .line 881
    iget v3, v3, Lcom/brakefield/infinitestudio/sketchbook/Pointer;->x:F

    add-float/2addr v2, v3

    const/high16 v3, 0x3f800000    # 1.0f

    add-float/2addr v1, v3

    goto :goto_0

    :cond_0
    cmpl-float p1, v1, v0

    if-lez p1, :cond_1

    div-float/2addr v2, v1

    return v2

    :cond_1
    return v0
.end method

.method private getAverageY(Ljava/util/List;)F
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/brakefield/infinitestudio/sketchbook/Pointer;",
            ">;)F"
        }
    .end annotation

    .line 893
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/brakefield/infinitestudio/sketchbook/Pointer;

    .line 894
    iget v3, v3, Lcom/brakefield/infinitestudio/sketchbook/Pointer;->y:F

    add-float/2addr v2, v3

    const/high16 v3, 0x3f800000    # 1.0f

    add-float/2addr v1, v3

    goto :goto_0

    :cond_0
    cmpl-float p1, v1, v0

    if-lez p1, :cond_1

    div-float/2addr v2, v1

    return v2

    :cond_1
    return v0
.end method

.method private getPointerFromPointerId(I)Lcom/brakefield/infinitestudio/sketchbook/Pointer;
    .locals 3

    .line 904
    iget-object v0, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->pointers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/brakefield/infinitestudio/sketchbook/Pointer;

    .line 905
    iget v2, v1, Lcom/brakefield/infinitestudio/sketchbook/Pointer;->id:I

    if-ne v2, p1, :cond_0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private init(Landroid/content/Context;)V
    .locals 2

    .line 212
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->prefs:Landroid/content/SharedPreferences;

    const/high16 p1, 0x41200000    # 10.0f

    .line 213
    invoke-static {p1}, Lcom/brakefield/infinitestudio/ResourceHelper;->dp(F)F

    move-result p1

    iput p1, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->dp10:F

    .line 214
    iget-object p1, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->prefs:Landroid/content/SharedPreferences;

    const-string v0, "PREF_USED_STYLUS"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->usedStylus:Z

    return-void
.end method

.method private isTap(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 853
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 854
    sget p1, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->MIN_TAP_TIME:I

    int-to-long v2, p1

    cmp-long p1, v0, v2

    if-lez p1, :cond_0

    sget p1, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->MAX_TAP_TIME:I

    int-to-long v2, p1

    cmp-long p1, v0, v2

    if-gez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private reset()V
    .locals 1

    .line 858
    iget-object v0, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->pointers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    .line 859
    iput-boolean v0, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->inTopLeftCorner:Z

    .line 860
    iput-boolean v0, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->inTopRightCorner:Z

    .line 861
    iput-boolean v0, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->inBottomRightCorner:Z

    .line 862
    iput-boolean v0, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->inBottomLeftCorner:Z

    .line 863
    iput-boolean v0, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->inLeftEdge:Z

    .line 864
    iput-boolean v0, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->inTopEdge:Z

    .line 865
    iput-boolean v0, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->inRightEdge:Z

    .line 866
    iput-boolean v0, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->inBottomEdge:Z

    .line 867
    iput-boolean v0, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->slide:Z

    .line 868
    iput-boolean v0, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->threeSlideVertical:Z

    .line 869
    iput-boolean v0, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->threeSlideHorizontal:Z

    .line 870
    iput-boolean v0, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->out:Z

    .line 871
    iput-boolean v0, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->longpressed:Z

    .line 872
    iput-boolean v0, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->twoFingerClick:Z

    .line 874
    iput v0, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->fingersInUse:I

    return-void
.end method


# virtual methods
.method public bind(Landroid/view/View;)V
    .locals 1

    .line 218
    iput-object p1, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->view:Landroid/view/View;

    .line 219
    new-instance v0, Lcom/brakefield/infinitestudio/gestures/GestureViewController$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/brakefield/infinitestudio/gestures/GestureViewController$$ExternalSyntheticLambda0;-><init>(Lcom/brakefield/infinitestudio/gestures/GestureViewController;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 220
    new-instance v0, Lcom/brakefield/infinitestudio/gestures/GestureViewController$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/brakefield/infinitestudio/gestures/GestureViewController$$ExternalSyntheticLambda1;-><init>(Lcom/brakefield/infinitestudio/gestures/GestureViewController;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnGenericMotionListener(Landroid/view/View$OnGenericMotionListener;)V

    .line 221
    new-instance v0, Lcom/brakefield/infinitestudio/gestures/GestureViewController$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/brakefield/infinitestudio/gestures/GestureViewController$$ExternalSyntheticLambda2;-><init>(Lcom/brakefield/infinitestudio/gestures/GestureViewController;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    return-void
.end method

.method public getFingersUsed()I
    .locals 1

    .line 1200
    iget v0, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->previousPCount:I

    return v0
.end method

.method public handleTouchEvent(Landroid/view/MotionEvent;)V
    .locals 14

    const/4 v0, 0x0

    .line 514
    iput-boolean v0, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->hovering:Z

    .line 515
    iput-boolean v0, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->floatClick:Z

    .line 517
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_0

    .line 520
    iget-object v2, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->pointers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 525
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v2

    .line 526
    iget v3, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->oldStylusButtonState:I

    not-int v3, v3

    and-int/2addr v3, v2

    .line 527
    iput v2, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->oldStylusButtonState:I

    and-int/lit8 v3, v3, 0x20

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    move v3, v4

    goto :goto_0

    :cond_1
    move v3, v0

    .line 529
    :goto_0
    iput-boolean v3, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->stylusPrimaryButtonPressed:Z

    and-int/lit8 v2, v2, 0x40

    if-eqz v2, :cond_2

    move v2, v4

    goto :goto_1

    :cond_2
    move v2, v0

    .line 530
    :goto_1
    iput-boolean v2, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->stylusSecondaryButtonPressed:Z

    .line 532
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    add-int/lit8 v3, v2, -0x1

    move v5, v0

    :goto_2
    if-ge v5, v2, :cond_36

    and-int/lit16 v1, v1, 0xff

    .line 541
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v6

    .line 543
    invoke-direct {p0, v6}, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->getPointerFromPointerId(I)Lcom/brakefield/infinitestudio/sketchbook/Pointer;

    move-result-object v7

    if-nez v7, :cond_3

    .line 546
    new-instance v7, Lcom/brakefield/infinitestudio/sketchbook/Pointer;

    invoke-direct {v7, v6}, Lcom/brakefield/infinitestudio/sketchbook/Pointer;-><init>(I)V

    .line 547
    iget-object v8, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->pointers:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 550
    :cond_3
    invoke-virtual {v7, p1, v5}, Lcom/brakefield/infinitestudio/sketchbook/Pointer;->update(Landroid/view/MotionEvent;I)V

    .line 552
    iget-boolean v8, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->usedStylus:Z

    if-nez v8, :cond_4

    invoke-virtual {v7}, Lcom/brakefield/infinitestudio/sketchbook/Pointer;->isStylus()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 553
    iput-boolean v4, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->usedStylus:Z

    .line 554
    iget-object v8, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v8}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    const-string v9, "PREF_USED_STYLUS"

    invoke-interface {v8, v9, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_4
    const/4 v8, 0x6

    const/4 v9, 0x5

    if-ne v2, v4, :cond_6

    if-ne v1, v9, :cond_5

    move v1, v0

    goto :goto_3

    :cond_5
    if-ne v1, v8, :cond_6

    move v1, v4

    :cond_6
    :goto_3
    const/4 v10, 0x3

    const/4 v11, 0x2

    const/4 v12, 0x4

    if-le v1, v12, :cond_1c

    .line 562
    iget-object v13, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->pointers:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v13

    if-ne v2, v13, :cond_1c

    .line 564
    iget v6, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->fingersInUse:I

    if-ne v6, v4, :cond_7

    .line 565
    invoke-virtual {p0, v7}, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->onOneCancel(Lcom/brakefield/infinitestudio/sketchbook/Pointer;)V

    :cond_7
    if-eq v1, v9, :cond_12

    if-eq v1, v8, :cond_8

    goto/16 :goto_a

    .line 654
    :cond_8
    iput-boolean v0, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->longpressed:Z

    if-eq v2, v11, :cond_10

    if-eq v2, v10, :cond_c

    if-eq v2, v12, :cond_a

    if-eq v2, v9, :cond_9

    goto/16 :goto_a

    .line 658
    :cond_9
    iget-object v6, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->fiveFingerListener:Lcom/brakefield/infinitestudio/gestures/listeners/FiveFingerListener;

    if-eqz v6, :cond_35

    iget v7, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->fingersInUse:I

    if-ne v7, v9, :cond_35

    .line 659
    iget-object v7, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->pointers:Ljava/util/List;

    invoke-interface {v6, v7}, Lcom/brakefield/infinitestudio/gestures/listeners/FiveFingerListener;->onUp(Ljava/util/List;)V

    goto/16 :goto_a

    .line 662
    :cond_a
    iget-object v6, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->fourFingerListener:Lcom/brakefield/infinitestudio/gestures/listeners/FourFingerListener;

    if-eqz v6, :cond_35

    iget v7, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->fingersInUse:I

    if-ne v7, v12, :cond_35

    .line 663
    iget-object v7, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->pointers:Ljava/util/List;

    iget-boolean v8, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->fourFingerClick:Z

    if-eqz v8, :cond_b

    invoke-direct {p0, p1}, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->isTap(Landroid/view/MotionEvent;)Z

    move-result v8

    if-eqz v8, :cond_b

    move v8, v4

    goto :goto_4

    :cond_b
    move v8, v0

    :goto_4
    invoke-interface {v6, v7, v8}, Lcom/brakefield/infinitestudio/gestures/listeners/FourFingerListener;->onUp(Ljava/util/List;Z)V

    .line 664
    iput-boolean v0, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->fourFingerClick:Z

    goto/16 :goto_a

    .line 668
    :cond_c
    iget v6, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->fingersInUse:I

    if-ne v6, v10, :cond_35

    .line 669
    iget-object v6, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->threeFingerSlideHorizontalListener:Lcom/brakefield/infinitestudio/gestures/listeners/ThreeFingerSlideHorizontalListener;

    if-eqz v6, :cond_d

    iget-boolean v7, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->threeSlideHorizontal:Z

    if-eqz v7, :cond_d

    .line 671
    invoke-interface {v6}, Lcom/brakefield/infinitestudio/gestures/listeners/ThreeFingerSlideHorizontalListener;->onUp()V

    goto/16 :goto_a

    .line 672
    :cond_d
    iget-object v6, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->threeFingerSlideVerticalListener:Lcom/brakefield/infinitestudio/gestures/listeners/ThreeFingerSlideVerticalListener;

    if-eqz v6, :cond_e

    iget-boolean v7, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->threeSlideVertical:Z

    if-eqz v7, :cond_e

    .line 674
    invoke-interface {v6}, Lcom/brakefield/infinitestudio/gestures/listeners/ThreeFingerSlideVerticalListener;->onUp()V

    goto/16 :goto_a

    .line 675
    :cond_e
    iget-object v6, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->threeFingerListener:Lcom/brakefield/infinitestudio/gestures/listeners/ThreeFingerListener;

    if-eqz v6, :cond_35

    .line 676
    iget-object v7, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->pointers:Ljava/util/List;

    iget-boolean v8, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->threeFingerClick:Z

    if-eqz v8, :cond_f

    invoke-direct {p0, p1}, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->isTap(Landroid/view/MotionEvent;)Z

    move-result v8

    if-eqz v8, :cond_f

    move v8, v4

    goto :goto_5

    :cond_f
    move v8, v0

    :goto_5
    invoke-interface {v6, v7, v8}, Lcom/brakefield/infinitestudio/gestures/listeners/ThreeFingerListener;->onUp(Ljava/util/List;Z)V

    .line 677
    iput-boolean v0, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->threeFingerClick:Z

    goto/16 :goto_a

    .line 682
    :cond_10
    iget-object v6, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->twoFingerListener:Lcom/brakefield/infinitestudio/gestures/listeners/TwoFingerListener;

    if-eqz v6, :cond_35

    iget v6, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->fingersInUse:I

    if-ne v6, v11, :cond_35

    .line 683
    iget-boolean v6, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->twoFingerClick:Z

    if-eqz v6, :cond_11

    invoke-direct {p0, p1}, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->isTap(Landroid/view/MotionEvent;)Z

    move-result v6

    if-eqz v6, :cond_11

    .line 684
    iget-object v6, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->twoFingerListener:Lcom/brakefield/infinitestudio/gestures/listeners/TwoFingerListener;

    iget-object v7, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->pointers:Ljava/util/List;

    invoke-interface {v6, v7}, Lcom/brakefield/infinitestudio/gestures/listeners/TwoFingerListener;->onClick(Ljava/util/List;)V

    .line 685
    invoke-direct {p0}, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->reset()V

    goto/16 :goto_a

    .line 686
    :cond_11
    iget-object v6, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->twoFingerListener:Lcom/brakefield/infinitestudio/gestures/listeners/TwoFingerListener;

    iget-object v7, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->pointers:Ljava/util/List;

    invoke-interface {v6, v7}, Lcom/brakefield/infinitestudio/gestures/listeners/TwoFingerListener;->onUp(Ljava/util/List;)V

    goto/16 :goto_a

    .line 571
    :cond_12
    iput-boolean v0, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->longpressed:Z

    if-eq v2, v11, :cond_1a

    if-eq v2, v10, :cond_17

    if-eq v2, v12, :cond_15

    if-eq v2, v9, :cond_13

    goto/16 :goto_6

    .line 576
    :cond_13
    iget-object v6, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->twoFingerListener:Lcom/brakefield/infinitestudio/gestures/listeners/TwoFingerListener;

    if-eqz v6, :cond_14

    .line 577
    invoke-interface {v6}, Lcom/brakefield/infinitestudio/gestures/listeners/TwoFingerListener;->onCancel()V

    .line 580
    :cond_14
    iget-object v6, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->fiveFingerListener:Lcom/brakefield/infinitestudio/gestures/listeners/FiveFingerListener;

    if-eqz v6, :cond_1b

    .line 582
    iput v9, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->fingersInUse:I

    .line 584
    iget-object v6, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->pointers:Ljava/util/List;

    invoke-direct {p0, v6}, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->getAverageX(Ljava/util/List;)F

    move-result v6

    iput v6, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->multiDownX:F

    .line 585
    iget-object v6, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->pointers:Ljava/util/List;

    invoke-direct {p0, v6}, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->getAverageY(Ljava/util/List;)F

    move-result v6

    iput v6, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->multiDownY:F

    .line 587
    iget-object v6, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->fiveFingerListener:Lcom/brakefield/infinitestudio/gestures/listeners/FiveFingerListener;

    iget-object v7, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->pointers:Ljava/util/List;

    invoke-interface {v6, v7}, Lcom/brakefield/infinitestudio/gestures/listeners/FiveFingerListener;->onDown(Ljava/util/List;)V

    goto/16 :goto_6

    .line 592
    :cond_15
    iget-object v6, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->twoFingerListener:Lcom/brakefield/infinitestudio/gestures/listeners/TwoFingerListener;

    if-eqz v6, :cond_16

    .line 593
    invoke-interface {v6}, Lcom/brakefield/infinitestudio/gestures/listeners/TwoFingerListener;->onCancel()V

    .line 596
    :cond_16
    iget-object v6, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->fourFingerListener:Lcom/brakefield/infinitestudio/gestures/listeners/FourFingerListener;

    if-eqz v6, :cond_1b

    .line 598
    iput v12, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->fingersInUse:I

    .line 600
    iget-object v6, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->pointers:Ljava/util/List;

    invoke-direct {p0, v6}, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->getAverageX(Ljava/util/List;)F

    move-result v6

    iput v6, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->multiDownX:F

    .line 601
    iget-object v6, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->pointers:Ljava/util/List;

    invoke-direct {p0, v6}, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->getAverageY(Ljava/util/List;)F

    move-result v6

    iput v6, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->multiDownY:F

    .line 603
    iput-boolean v4, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->fourFingerClick:Z

    .line 605
    iget-object v6, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->fourFingerListener:Lcom/brakefield/infinitestudio/gestures/listeners/FourFingerListener;

    iget-object v7, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->pointers:Ljava/util/List;

    invoke-interface {v6, v7}, Lcom/brakefield/infinitestudio/gestures/listeners/FourFingerListener;->onDown(Ljava/util/List;)V

    goto :goto_6

    .line 610
    :cond_17
    iget-object v6, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->twoFingerListener:Lcom/brakefield/infinitestudio/gestures/listeners/TwoFingerListener;

    if-eqz v6, :cond_18

    .line 611
    invoke-interface {v6}, Lcom/brakefield/infinitestudio/gestures/listeners/TwoFingerListener;->onCancel()V

    .line 614
    :cond_18
    iget-object v6, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->threeFingerListener:Lcom/brakefield/infinitestudio/gestures/listeners/ThreeFingerListener;

    if-nez v6, :cond_19

    iget-object v6, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->threeFingerSlideHorizontalListener:Lcom/brakefield/infinitestudio/gestures/listeners/ThreeFingerSlideHorizontalListener;

    if-nez v6, :cond_19

    iget-object v6, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->threeFingerSlideVerticalListener:Lcom/brakefield/infinitestudio/gestures/listeners/ThreeFingerSlideVerticalListener;

    if-eqz v6, :cond_1b

    .line 616
    :cond_19
    iput v10, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->fingersInUse:I

    .line 618
    iget-object v6, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->pointers:Ljava/util/List;

    invoke-direct {p0, v6}, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->getAverageX(Ljava/util/List;)F

    move-result v6

    iput v6, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->multiDownX:F

    .line 619
    iget-object v6, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->pointers:Ljava/util/List;

    invoke-direct {p0, v6}, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->getAverageY(Ljava/util/List;)F

    move-result v6

    iput v6, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->multiDownY:F

    .line 621
    iput-boolean v0, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->threeSlideHorizontal:Z

    .line 622
    iput-boolean v0, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->threeSlideVertical:Z

    .line 623
    iput-boolean v4, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->threeFingerClick:Z

    .line 625
    iget-object v6, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->threeFingerListener:Lcom/brakefield/infinitestudio/gestures/listeners/ThreeFingerListener;

    if-eqz v6, :cond_1b

    .line 626
    iget-object v7, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->pointers:Ljava/util/List;

    invoke-interface {v6, v7}, Lcom/brakefield/infinitestudio/gestures/listeners/ThreeFingerListener;->onDown(Ljava/util/List;)V

    goto :goto_6

    .line 632
    :cond_1a
    iget-object v6, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->twoFingerListener:Lcom/brakefield/infinitestudio/gestures/listeners/TwoFingerListener;

    if-eqz v6, :cond_1b

    .line 634
    iput v11, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->fingersInUse:I

    .line 636
    iget-object v6, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->pointers:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/brakefield/infinitestudio/sketchbook/Pointer;

    .line 637
    iget-object v7, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->pointers:Ljava/util/List;

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/brakefield/infinitestudio/sketchbook/Pointer;

    .line 639
    new-instance v8, Lcom/brakefield/infinitestudio/geometry/Point;

    iget v9, v6, Lcom/brakefield/infinitestudio/sketchbook/Pointer;->x:F

    iget v6, v6, Lcom/brakefield/infinitestudio/sketchbook/Pointer;->y:F

    invoke-direct {v8, v9, v6}, Lcom/brakefield/infinitestudio/geometry/Point;-><init>(FF)V

    iput-object v8, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->downPoint1:Lcom/brakefield/infinitestudio/geometry/Point;

    .line 640
    new-instance v6, Lcom/brakefield/infinitestudio/geometry/Point;

    iget v8, v7, Lcom/brakefield/infinitestudio/sketchbook/Pointer;->x:F

    iget v7, v7, Lcom/brakefield/infinitestudio/sketchbook/Pointer;->y:F

    invoke-direct {v6, v8, v7}, Lcom/brakefield/infinitestudio/geometry/Point;-><init>(FF)V

    iput-object v6, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->downPoint2:Lcom/brakefield/infinitestudio/geometry/Point;

    .line 642
    iput-boolean v4, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->twoFingerClick:Z

    .line 649
    :cond_1b
    :goto_6
    iput v2, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->previousPCount:I

    goto/16 :goto_a

    :cond_1c
    if-eqz v1, :cond_34

    if-eq v1, v4, :cond_31

    if-eq v1, v11, :cond_1e

    if-eq v1, v10, :cond_1d

    goto/16 :goto_a

    .line 833
    :cond_1d
    invoke-virtual {p0, v7}, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->onOneCancel(Lcom/brakefield/infinitestudio/sketchbook/Pointer;)V

    goto/16 :goto_a

    :cond_1e
    if-ne v2, v4, :cond_24

    if-nez v6, :cond_24

    .line 716
    iget v6, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->previousPCount:I

    if-ge v2, v6, :cond_1f

    return-void

    .line 719
    :cond_1f
    iget v6, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->historySize:I

    if-lez v6, :cond_23

    .line 720
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v6

    .line 723
    iget v8, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->historySize:I

    if-le v6, v8, :cond_20

    .line 724
    div-int v8, v6, v8

    add-int/2addr v8, v4

    goto :goto_7

    :cond_20
    move v8, v4

    :goto_7
    move v9, v0

    :goto_8
    if-gt v9, v6, :cond_35

    if-ne v9, v6, :cond_21

    .line 729
    invoke-virtual {v7, p1, v5}, Lcom/brakefield/infinitestudio/sketchbook/Pointer;->update(Landroid/view/MotionEvent;I)V

    goto :goto_9

    .line 731
    :cond_21
    invoke-virtual {v7, p1, v5, v9}, Lcom/brakefield/infinitestudio/sketchbook/Pointer;->updateFromHistory(Landroid/view/MotionEvent;II)V

    .line 733
    :goto_9
    iget v10, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->fingersInUse:I

    if-ne v10, v4, :cond_22

    .line 734
    invoke-virtual {p0, v7, v9, v6}, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->onOneMove(Lcom/brakefield/infinitestudio/sketchbook/Pointer;II)V

    :cond_22
    add-int/2addr v9, v8

    goto :goto_8

    .line 737
    :cond_23
    invoke-virtual {v7, p1, v5}, Lcom/brakefield/infinitestudio/sketchbook/Pointer;->update(Landroid/view/MotionEvent;I)V

    .line 739
    iget v6, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->fingersInUse:I

    if-ne v6, v4, :cond_35

    .line 740
    invoke-virtual {p0, v7, v0, v0}, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->onOneMove(Lcom/brakefield/infinitestudio/sketchbook/Pointer;II)V

    goto/16 :goto_a

    :cond_24
    if-le v2, v4, :cond_35

    if-ne v5, v3, :cond_35

    .line 745
    iget-object v6, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->pointers:Ljava/util/List;

    invoke-direct {p0, v6}, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->getAverageX(Ljava/util/List;)F

    move-result v6

    .line 746
    iget-object v7, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->pointers:Ljava/util/List;

    invoke-direct {p0, v7}, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->getAverageY(Ljava/util/List;)F

    move-result v7

    if-eq v2, v11, :cond_2e

    if-eq v2, v10, :cond_29

    if-eq v2, v12, :cond_26

    if-eq v2, v9, :cond_25

    goto/16 :goto_a

    .line 750
    :cond_25
    iget v8, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->fingersInUse:I

    if-ne v8, v9, :cond_26

    .line 751
    iget-object v8, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->fiveFingerListener:Lcom/brakefield/infinitestudio/gestures/listeners/FiveFingerListener;

    if-eqz v8, :cond_26

    .line 752
    iget-object v6, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->pointers:Ljava/util/List;

    invoke-interface {v8, v6}, Lcom/brakefield/infinitestudio/gestures/listeners/FiveFingerListener;->onMove(Ljava/util/List;)V

    goto/16 :goto_a

    .line 757
    :cond_26
    iget v8, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->fingersInUse:I

    if-ne v8, v12, :cond_29

    .line 758
    iget-object v8, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->fourFingerListener:Lcom/brakefield/infinitestudio/gestures/listeners/FourFingerListener;

    if-eqz v8, :cond_29

    .line 760
    iget-boolean v8, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->fourFingerClick:Z

    if-eqz v8, :cond_28

    .line 761
    iget v8, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->multiDownX:F

    sub-float v8, v6, v8

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    iget v9, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->dp10:F

    cmpl-float v8, v8, v9

    if-gtz v8, :cond_27

    iget v8, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->multiDownY:F

    sub-float v8, v7, v8

    .line 762
    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    iget v9, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->dp10:F

    cmpl-float v8, v8, v9

    if-gtz v8, :cond_27

    iget v8, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->multiDownX:F

    sub-float/2addr v6, v8

    .line 763
    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    iget v8, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->dp10:F

    cmpl-float v6, v6, v8

    if-gtz v6, :cond_27

    iget v6, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->multiDownY:F

    sub-float/2addr v7, v6

    .line 764
    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v6

    iget v7, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->dp10:F

    cmpl-float v6, v6, v7

    if-lez v6, :cond_28

    .line 765
    :cond_27
    iput-boolean v0, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->fourFingerClick:Z

    .line 766
    iget-object v6, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->fourFingerListener:Lcom/brakefield/infinitestudio/gestures/listeners/FourFingerListener;

    iget-object v7, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->pointers:Ljava/util/List;

    invoke-interface {v6, v7}, Lcom/brakefield/infinitestudio/gestures/listeners/FourFingerListener;->onDown(Ljava/util/List;)V

    .line 770
    :cond_28
    iget-boolean v6, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->fourFingerClick:Z

    if-nez v6, :cond_35

    .line 771
    iget-object v6, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->fourFingerListener:Lcom/brakefield/infinitestudio/gestures/listeners/FourFingerListener;

    iget-object v7, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->pointers:Ljava/util/List;

    invoke-interface {v6, v7}, Lcom/brakefield/infinitestudio/gestures/listeners/FourFingerListener;->onMove(Ljava/util/List;)V

    goto/16 :goto_a

    .line 776
    :cond_29
    iget v8, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->fingersInUse:I

    if-ne v8, v10, :cond_35

    .line 778
    iget-boolean v8, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->threeSlideVertical:Z

    if-nez v8, :cond_2a

    iget-boolean v8, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->threeSlideHorizontal:Z

    if-nez v8, :cond_2a

    iget-object v8, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->threeFingerSlideHorizontalListener:Lcom/brakefield/infinitestudio/gestures/listeners/ThreeFingerSlideHorizontalListener;

    if-eqz v8, :cond_2a

    .line 781
    iget v8, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->multiDownX:F

    sub-float v8, v6, v8

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    iget v9, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->dp10:F

    cmpl-float v8, v8, v9

    if-lez v8, :cond_2a

    .line 782
    iput-boolean v4, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->threeSlideHorizontal:Z

    .line 783
    iput-boolean v0, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->threeFingerClick:Z

    .line 784
    iget-object v8, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->threeFingerSlideHorizontalListener:Lcom/brakefield/infinitestudio/gestures/listeners/ThreeFingerSlideHorizontalListener;

    invoke-interface {v8, v6, v7}, Lcom/brakefield/infinitestudio/gestures/listeners/ThreeFingerSlideHorizontalListener;->onDown(FF)V

    .line 785
    iput v6, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->downSlideX:F

    .line 786
    iput v7, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->downSlideY:F

    .line 790
    :cond_2a
    iget-boolean v8, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->threeSlideHorizontal:Z

    if-nez v8, :cond_2b

    iget-boolean v8, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->threeSlideVertical:Z

    if-nez v8, :cond_2b

    iget-object v8, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->threeFingerSlideVerticalListener:Lcom/brakefield/infinitestudio/gestures/listeners/ThreeFingerSlideVerticalListener;

    if-eqz v8, :cond_2b

    .line 791
    iget v8, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->multiDownY:F

    sub-float v8, v7, v8

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    iget v9, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->dp10:F

    cmpl-float v8, v8, v9

    if-lez v8, :cond_2b

    .line 792
    iput-boolean v4, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->threeSlideVertical:Z

    .line 793
    iput-boolean v0, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->threeFingerClick:Z

    .line 794
    iget-object v8, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->threeFingerSlideVerticalListener:Lcom/brakefield/infinitestudio/gestures/listeners/ThreeFingerSlideVerticalListener;

    invoke-interface {v8, v6, v7}, Lcom/brakefield/infinitestudio/gestures/listeners/ThreeFingerSlideVerticalListener;->onDown(FF)V

    .line 795
    iput v6, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->downSlideX:F

    .line 796
    iput v7, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->downSlideY:F

    .line 800
    :cond_2b
    iget-object v8, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->threeFingerSlideHorizontalListener:Lcom/brakefield/infinitestudio/gestures/listeners/ThreeFingerSlideHorizontalListener;

    if-eqz v8, :cond_2c

    iget-boolean v9, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->threeSlideHorizontal:Z

    if-eqz v9, :cond_2c

    .line 801
    iget v7, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->downSlideX:F

    sub-float/2addr v6, v7

    invoke-interface {v8, v6}, Lcom/brakefield/infinitestudio/gestures/listeners/ThreeFingerSlideHorizontalListener;->onMove(F)V

    goto/16 :goto_a

    .line 802
    :cond_2c
    iget-object v6, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->threeFingerSlideVerticalListener:Lcom/brakefield/infinitestudio/gestures/listeners/ThreeFingerSlideVerticalListener;

    if-eqz v6, :cond_2d

    iget-boolean v8, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->threeSlideVertical:Z

    if-eqz v8, :cond_2d

    .line 803
    iget v8, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->downSlideY:F

    sub-float/2addr v7, v8

    invoke-interface {v6, v7}, Lcom/brakefield/infinitestudio/gestures/listeners/ThreeFingerSlideVerticalListener;->onMove(F)V

    goto/16 :goto_a

    .line 804
    :cond_2d
    iget-object v6, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->threeFingerListener:Lcom/brakefield/infinitestudio/gestures/listeners/ThreeFingerListener;

    if-eqz v6, :cond_35

    iget-object v7, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->pointers:Ljava/util/List;

    invoke-interface {v6, v7}, Lcom/brakefield/infinitestudio/gestures/listeners/ThreeFingerListener;->onMove(Ljava/util/List;)V

    goto/16 :goto_a

    .line 808
    :cond_2e
    iget v6, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->fingersInUse:I

    if-ne v6, v11, :cond_35

    iget-object v6, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->twoFingerListener:Lcom/brakefield/infinitestudio/gestures/listeners/TwoFingerListener;

    if-eqz v6, :cond_35

    .line 810
    iget-object v6, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->pointers:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/brakefield/infinitestudio/sketchbook/Pointer;

    .line 811
    iget-object v7, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->pointers:Ljava/util/List;

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/brakefield/infinitestudio/sketchbook/Pointer;

    .line 813
    iget-boolean v8, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->twoFingerClick:Z

    if-eqz v8, :cond_30

    .line 814
    iget v8, v6, Lcom/brakefield/infinitestudio/sketchbook/Pointer;->x:F

    iget-object v9, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->downPoint1:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v9, v9, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    sub-float/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    iget v9, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->dp10:F

    cmpl-float v8, v8, v9

    if-gtz v8, :cond_2f

    iget v6, v6, Lcom/brakefield/infinitestudio/sketchbook/Pointer;->y:F

    iget-object v8, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->downPoint1:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v8, v8, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    sub-float/2addr v6, v8

    .line 815
    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    iget v8, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->dp10:F

    cmpl-float v6, v6, v8

    if-gtz v6, :cond_2f

    iget v6, v7, Lcom/brakefield/infinitestudio/sketchbook/Pointer;->x:F

    iget-object v8, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->downPoint2:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v8, v8, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    sub-float/2addr v6, v8

    .line 816
    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    iget v8, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->dp10:F

    cmpl-float v6, v6, v8

    if-gtz v6, :cond_2f

    iget v6, v7, Lcom/brakefield/infinitestudio/sketchbook/Pointer;->y:F

    iget-object v7, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->downPoint2:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v7, v7, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    sub-float/2addr v6, v7

    .line 817
    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    iget v7, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->dp10:F

    cmpl-float v6, v6, v7

    if-lez v6, :cond_30

    .line 818
    :cond_2f
    iput-boolean v0, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->twoFingerClick:Z

    .line 819
    iget-object v6, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->twoFingerListener:Lcom/brakefield/infinitestudio/gestures/listeners/TwoFingerListener;

    iget-object v7, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->pointers:Ljava/util/List;

    invoke-interface {v6, v7}, Lcom/brakefield/infinitestudio/gestures/listeners/TwoFingerListener;->onDown(Ljava/util/List;)V

    .line 823
    :cond_30
    iget-boolean v6, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->twoFingerClick:Z

    if-nez v6, :cond_35

    .line 824
    iget-object v6, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->twoFingerListener:Lcom/brakefield/infinitestudio/gestures/listeners/TwoFingerListener;

    iget-object v7, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->pointers:Ljava/util/List;

    invoke-interface {v6, v7}, Lcom/brakefield/infinitestudio/gestures/listeners/TwoFingerListener;->onMove(Ljava/util/List;)V

    goto :goto_a

    .line 838
    :cond_31
    iget v6, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->previousPCount:I

    if-ge v2, v6, :cond_32

    return-void

    .line 840
    :cond_32
    iget v6, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->fingersInUse:I

    if-eq v6, v4, :cond_33

    iget-object v6, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->downPointer:Lcom/brakefield/infinitestudio/sketchbook/Pointer;

    invoke-virtual {p0, v6}, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->onOneDown(Lcom/brakefield/infinitestudio/sketchbook/Pointer;)V

    .line 841
    :cond_33
    invoke-virtual {p0, v7}, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->onOneUp(Lcom/brakefield/infinitestudio/sketchbook/Pointer;)V

    .line 843
    invoke-direct {p0}, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->reset()V

    goto :goto_a

    .line 698
    :cond_34
    invoke-direct {p0}, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->reset()V

    .line 700
    iput-boolean v0, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->floatClick:Z

    .line 702
    iget v6, v7, Lcom/brakefield/infinitestudio/sketchbook/Pointer;->x:F

    iput v6, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->downX:F

    .line 703
    iget v6, v7, Lcom/brakefield/infinitestudio/sketchbook/Pointer;->y:F

    iput v6, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->downY:F

    .line 704
    invoke-virtual {v7}, Lcom/brakefield/infinitestudio/sketchbook/Pointer;->copy()Lcom/brakefield/infinitestudio/sketchbook/Pointer;

    move-result-object v6

    iput-object v6, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->downPointer:Lcom/brakefield/infinitestudio/sketchbook/Pointer;

    .line 706
    invoke-virtual {p0, v6}, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->onOneDown(Lcom/brakefield/infinitestudio/sketchbook/Pointer;)V

    .line 707
    iput v4, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->fingersInUse:I

    .line 709
    iput v4, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->previousPCount:I

    :cond_35
    :goto_a
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_2

    :cond_36
    return-void
.end method

.method synthetic lambda$bind$0$com-brakefield-infinitestudio-gestures-GestureViewController(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 219
    invoke-virtual {p0, p2}, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method synthetic lambda$bind$1$com-brakefield-infinitestudio-gestures-GestureViewController(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 220
    invoke-virtual {p0, p2}, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method synthetic lambda$bind$2$com-brakefield-infinitestudio-gestures-GestureViewController(Landroid/view/View;Z)V
    .locals 1

    .line 222
    iget-object v0, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->focusChangeListener:Lcom/brakefield/infinitestudio/gestures/listeners/FocusChangeListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/brakefield/infinitestudio/gestures/listeners/FocusChangeListener;->onFocusChanged(Landroid/view/View;Z)V

    :cond_0
    return-void
.end method

.method synthetic lambda$setOnClickListener$3$com-brakefield-infinitestudio-gestures-GestureViewController(Landroid/view/View$OnClickListener;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 268
    iget-object p2, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->view:Landroid/view/View;

    invoke-interface {p1, p2}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    const/4 p1, 0x1

    return p1
.end method

.method public onBottomEdgeDown()V
    .locals 1

    const/4 v0, 0x1

    .line 939
    iput-boolean v0, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->inBottomEdge:Z

    return-void
.end method

.method public onBottomLeftCornerDown()V
    .locals 1

    const/4 v0, 0x1

    .line 923
    iput-boolean v0, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->inBottomLeftCorner:Z

    return-void
.end method

.method public onBottomRightCornerDown()V
    .locals 1

    const/4 v0, 0x1

    .line 919
    iput-boolean v0, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->inBottomRightCorner:Z

    return-void
.end method

.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onDoubleTapEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 356
    iget-object v0, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->doubleTapListener:Lcom/brakefield/infinitestudio/gestures/listeners/DoubleTapListener;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 357
    :cond_0
    new-instance v0, Lcom/brakefield/infinitestudio/sketchbook/Pointer;

    invoke-direct {v0, v1}, Lcom/brakefield/infinitestudio/sketchbook/Pointer;-><init>(I)V

    .line 358
    invoke-virtual {v0, p1, v1}, Lcom/brakefield/infinitestudio/sketchbook/Pointer;->update(Landroid/view/MotionEvent;I)V

    .line 359
    invoke-virtual {v0}, Lcom/brakefield/infinitestudio/sketchbook/Pointer;->isFinger()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->doubleTapListener:Lcom/brakefield/infinitestudio/gestures/listeners/DoubleTapListener;

    invoke-interface {v0, p1}, Lcom/brakefield/infinitestudio/gestures/listeners/DoubleTapListener;->onDoubleTap(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_1
    return v1
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 2

    .line 383
    iget-object v0, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->flingListener:Lcom/brakefield/infinitestudio/gestures/listeners/FlingListener;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 385
    :cond_0
    new-instance v0, Lcom/brakefield/infinitestudio/sketchbook/Pointer;

    invoke-direct {v0, v1}, Lcom/brakefield/infinitestudio/sketchbook/Pointer;-><init>(I)V

    .line 386
    invoke-virtual {v0, p1, v1}, Lcom/brakefield/infinitestudio/sketchbook/Pointer;->update(Landroid/view/MotionEvent;I)V

    .line 388
    new-instance p1, Lcom/brakefield/infinitestudio/sketchbook/Pointer;

    invoke-direct {p1, v1}, Lcom/brakefield/infinitestudio/sketchbook/Pointer;-><init>(I)V

    .line 389
    invoke-virtual {p1, p2, v1}, Lcom/brakefield/infinitestudio/sketchbook/Pointer;->update(Landroid/view/MotionEvent;I)V

    .line 391
    iget-object p2, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->flingListener:Lcom/brakefield/infinitestudio/gestures/listeners/FlingListener;

    invoke-interface {p2, v0, p1, p3, p4}, Lcom/brakefield/infinitestudio/gestures/listeners/FlingListener;->onFling(Lcom/brakefield/infinitestudio/sketchbook/Pointer;Lcom/brakefield/infinitestudio/sketchbook/Pointer;FF)Z

    move-result p1

    return p1
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 228
    iget-object v0, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->mouseScrollListener:Lcom/brakefield/infinitestudio/gestures/listeners/MouseScrollListener;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/16 v2, 0x8

    if-ne v0, v2, :cond_1

    .line 235
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    .line 237
    invoke-direct {p0, v0}, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->getPointerFromPointerId(I)Lcom/brakefield/infinitestudio/sketchbook/Pointer;

    move-result-object v1

    if-nez v1, :cond_0

    .line 240
    new-instance v1, Lcom/brakefield/infinitestudio/sketchbook/Pointer;

    invoke-direct {v1, v0}, Lcom/brakefield/infinitestudio/sketchbook/Pointer;-><init>(I)V

    .line 241
    iget-object v0, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->pointers:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 244
    :cond_0
    iget-object v0, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->mouseScrollListener:Lcom/brakefield/infinitestudio/gestures/listeners/MouseScrollListener;

    const/16 v2, 0x9

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v2

    const/16 v3, 0xa

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result p1

    invoke-interface {v0, v1, v2, p1}, Lcom/brakefield/infinitestudio/gestures/listeners/MouseScrollListener;->onScroll(Lcom/brakefield/infinitestudio/sketchbook/Pointer;FF)V

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 298
    iget-object v0, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->stylusListener:Lcom/brakefield/infinitestudio/gestures/listeners/StylusListener;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->stylusButtonListener:Lcom/brakefield/infinitestudio/gestures/listeners/StylusButtonListener;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    goto :goto_3

    .line 304
    :cond_1
    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v0

    .line 305
    iget v3, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->oldStylusButtonState:I

    not-int v3, v3

    and-int/2addr v3, v0

    .line 306
    iput v0, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->oldStylusButtonState:I

    and-int/lit8 v3, v3, 0x20

    if-eqz v3, :cond_2

    .line 309
    iput-boolean v1, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->stylusPrimaryButtonPressed:Z

    .line 310
    iput-boolean v1, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->floatClick:Z

    goto :goto_1

    .line 312
    :cond_2
    iget-boolean v3, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->stylusPrimaryButtonPressed:Z

    if-eqz v3, :cond_3

    iget-boolean v3, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->floatClick:Z

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->stylusButtonListener:Lcom/brakefield/infinitestudio/gestures/listeners/StylusButtonListener;

    invoke-interface {v3}, Lcom/brakefield/infinitestudio/gestures/listeners/StylusButtonListener;->onPrimaryButtonClicked()V

    .line 313
    :cond_3
    iput-boolean v2, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->stylusPrimaryButtonPressed:Z

    :goto_1
    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_4

    .line 316
    iput-boolean v1, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->stylusSecondaryButtonPressed:Z

    .line 317
    iput-boolean v1, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->floatClick:Z

    goto :goto_2

    .line 319
    :cond_4
    iget-boolean v0, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->stylusSecondaryButtonPressed:Z

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->floatClick:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->stylusButtonListener:Lcom/brakefield/infinitestudio/gestures/listeners/StylusButtonListener;

    invoke-interface {v0}, Lcom/brakefield/infinitestudio/gestures/listeners/StylusButtonListener;->onSecondaryButtonClicked()V

    .line 320
    :cond_5
    iput-boolean v2, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->stylusSecondaryButtonPressed:Z

    :goto_2
    move v0, v1

    .line 324
    :goto_3
    iget-object v3, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->hoverListener:Lcom/brakefield/infinitestudio/gestures/listeners/HoverListener;

    if-eqz v3, :cond_9

    .line 327
    new-instance v0, Lcom/brakefield/infinitestudio/sketchbook/Pointer;

    invoke-direct {v0, v2}, Lcom/brakefield/infinitestudio/sketchbook/Pointer;-><init>(I)V

    .line 328
    invoke-virtual {v0, p1, v2}, Lcom/brakefield/infinitestudio/sketchbook/Pointer;->update(Landroid/view/MotionEvent;I)V

    .line 330
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v3, 0x7

    if-eq p1, v3, :cond_8

    const/16 v3, 0x9

    if-eq p1, v3, :cond_7

    const/16 v0, 0xa

    if-eq p1, v0, :cond_6

    goto :goto_4

    .line 340
    :cond_6
    iput-boolean v2, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->hovering:Z

    .line 341
    iget-object p1, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->hoverListener:Lcom/brakefield/infinitestudio/gestures/listeners/HoverListener;

    invoke-interface {p1}, Lcom/brakefield/infinitestudio/gestures/listeners/HoverListener;->onExit()V

    goto :goto_4

    .line 333
    :cond_7
    iput-boolean v1, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->hovering:Z

    .line 334
    iget-object p1, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->hoverListener:Lcom/brakefield/infinitestudio/gestures/listeners/HoverListener;

    invoke-interface {p1, v0}, Lcom/brakefield/infinitestudio/gestures/listeners/HoverListener;->onEnter(Lcom/brakefield/infinitestudio/sketchbook/Pointer;)V

    goto :goto_4

    .line 337
    :cond_8
    iget-boolean p1, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->hovering:Z

    if-eqz p1, :cond_a

    iget-object p1, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->hoverListener:Lcom/brakefield/infinitestudio/gestures/listeners/HoverListener;

    invoke-interface {p1, v0}, Lcom/brakefield/infinitestudio/gestures/listeners/HoverListener;->onMove(Lcom/brakefield/infinitestudio/sketchbook/Pointer;)V

    goto :goto_4

    :cond_9
    move v1, v0

    :cond_a
    :goto_4
    return v1
.end method

.method public onLeftEdgeDown()V
    .locals 1

    const/4 v0, 0x1

    .line 927
    iput-boolean v0, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->inLeftEdge:Z

    return-void
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 4

    .line 397
    iget-object v0, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->longpressListener:Lcom/brakefield/infinitestudio/gestures/listeners/LongpressListener;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->longpressDragListener:Lcom/brakefield/infinitestudio/gestures/listeners/LongpressDragListener;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 399
    iput-boolean v0, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->longpressDrag:Z

    const/4 v1, 0x1

    .line 400
    iput-boolean v1, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->longpressed:Z

    .line 402
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    sget v3, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->RIGHT_EDGE:I

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_3

    .line 403
    iget-object v2, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->rightEdgeClickListener:Lcom/brakefield/infinitestudio/gestures/listeners/ClickListener;

    if-eqz v2, :cond_1

    .line 404
    invoke-interface {v2}, Lcom/brakefield/infinitestudio/gestures/listeners/ClickListener;->onClick()V

    .line 405
    iput-boolean v0, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->longpressed:Z

    return-void

    .line 408
    :cond_1
    iget-object v2, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->rightEdgeSlideListener:Lcom/brakefield/infinitestudio/gestures/listeners/SlideListener;

    if-eqz v2, :cond_2

    return-void

    .line 410
    :cond_2
    iget-object v2, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->rightEdgePullListener:Lcom/brakefield/infinitestudio/gestures/listeners/PullListener;

    if-eqz v2, :cond_3

    return-void

    .line 414
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    sget v3, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->LEFT_EDGE:I

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_6

    .line 415
    iget-object v2, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->leftEdgeClickListener:Lcom/brakefield/infinitestudio/gestures/listeners/ClickListener;

    if-eqz v2, :cond_4

    .line 416
    invoke-interface {v2}, Lcom/brakefield/infinitestudio/gestures/listeners/ClickListener;->onClick()V

    .line 417
    iput-boolean v0, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->longpressed:Z

    return-void

    .line 420
    :cond_4
    iget-object v2, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->leftEdgeSlideListener:Lcom/brakefield/infinitestudio/gestures/listeners/SlideListener;

    if-eqz v2, :cond_5

    return-void

    .line 422
    :cond_5
    iget-object v2, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->leftEdgePullListener:Lcom/brakefield/infinitestudio/gestures/listeners/PullListener;

    if-eqz v2, :cond_6

    return-void

    .line 426
    :cond_6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    sget v3, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->BOTTOM_EDGE:I

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_9

    .line 427
    iget-object v2, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->bottomEdgeClickListener:Lcom/brakefield/infinitestudio/gestures/listeners/ClickListener;

    if-eqz v2, :cond_7

    .line 428
    invoke-interface {v2}, Lcom/brakefield/infinitestudio/gestures/listeners/ClickListener;->onClick()V

    .line 429
    iput-boolean v0, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->longpressed:Z

    return-void

    .line 432
    :cond_7
    iget-object v2, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->bottomEdgeSlideListener:Lcom/brakefield/infinitestudio/gestures/listeners/SlideListener;

    if-eqz v2, :cond_8

    return-void

    .line 434
    :cond_8
    iget-object v2, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->bottomEdgePullListener:Lcom/brakefield/infinitestudio/gestures/listeners/PullListener;

    if-eqz v2, :cond_9

    return-void

    .line 438
    :cond_9
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    sget v3, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->TOP_EDGE:I

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_c

    .line 439
    iget-object v2, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->topEdgeClickListener:Lcom/brakefield/infinitestudio/gestures/listeners/ClickListener;

    if-eqz v2, :cond_a

    .line 440
    invoke-interface {v2}, Lcom/brakefield/infinitestudio/gestures/listeners/ClickListener;->onClick()V

    .line 441
    iput-boolean v0, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->longpressed:Z

    return-void

    .line 444
    :cond_a
    iget-object v2, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->topEdgeSlideListener:Lcom/brakefield/infinitestudio/gestures/listeners/SlideListener;

    if-eqz v2, :cond_b

    return-void

    .line 446
    :cond_b
    iget-object v2, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->topEdgePullListener:Lcom/brakefield/infinitestudio/gestures/listeners/PullListener;

    if-eqz v2, :cond_c

    return-void

    .line 450
    :cond_c
    new-instance v2, Lcom/brakefield/infinitestudio/sketchbook/Pointer;

    invoke-direct {v2, v0}, Lcom/brakefield/infinitestudio/sketchbook/Pointer;-><init>(I)V

    .line 451
    invoke-virtual {v2, p1, v0}, Lcom/brakefield/infinitestudio/sketchbook/Pointer;->update(Landroid/view/MotionEvent;I)V

    .line 453
    iget-object p1, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->longpressDragListener:Lcom/brakefield/infinitestudio/gestures/listeners/LongpressDragListener;

    if-eqz p1, :cond_d

    .line 454
    iput v1, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->fingersInUse:I

    .line 455
    invoke-interface {p1, v2}, Lcom/brakefield/infinitestudio/gestures/listeners/LongpressDragListener;->onDown(Lcom/brakefield/infinitestudio/sketchbook/Pointer;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->longpressDrag:Z

    .line 458
    :cond_d
    invoke-virtual {v2}, Lcom/brakefield/infinitestudio/sketchbook/Pointer;->isFinger()Z

    move-result p1

    if-eqz p1, :cond_e

    iget-object p1, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->longpressListener:Lcom/brakefield/infinitestudio/gestures/listeners/LongpressListener;

    if-eqz p1, :cond_e

    iget-boolean v0, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->longpressDrag:Z

    if-nez v0, :cond_e

    .line 459
    invoke-interface {p1, v2}, Lcom/brakefield/infinitestudio/gestures/listeners/LongpressListener;->onLongpress(Lcom/brakefield/infinitestudio/sketchbook/Pointer;)Z

    :cond_e
    return-void
.end method

.method public onOneCancel(Lcom/brakefield/infinitestudio/sketchbook/Pointer;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 1176
    iput-boolean v0, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->longpressed:Z

    .line 1178
    iput-boolean v0, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->inTopLeftCorner:Z

    .line 1179
    iput-boolean v0, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->inTopRightCorner:Z

    .line 1180
    iput-boolean v0, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->inBottomRightCorner:Z

    .line 1181
    iput-boolean v0, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->inBottomLeftCorner:Z

    .line 1182
    iput-boolean v0, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->inLeftEdge:Z

    .line 1183
    iput-boolean v0, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->inTopEdge:Z

    .line 1184
    iput-boolean v0, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->inRightEdge:Z

    .line 1185
    iput-boolean v0, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->inBottomEdge:Z

    .line 1186
    iput-boolean v0, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->slide:Z

    .line 1187
    iput-boolean v0, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->out:Z

    .line 1189
    invoke-virtual {p1}, Lcom/brakefield/infinitestudio/sketchbook/Pointer;->isStylus()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->stylusListener:Lcom/brakefield/infinitestudio/gestures/listeners/StylusListener;

    if-eqz v0, :cond_1

    .line 1190
    invoke-interface {v0}, Lcom/brakefield/infinitestudio/gestures/listeners/StylusListener;->onCancel()V

    goto :goto_0

    .line 1191
    :cond_1
    invoke-virtual {p1}, Lcom/brakefield/infinitestudio/sketchbook/Pointer;->isEraser()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->eraserListener:Lcom/brakefield/infinitestudio/gestures/listeners/EraserListener;

    if-eqz p1, :cond_2

    .line 1192
    invoke-interface {p1}, Lcom/brakefield/infinitestudio/gestures/listeners/EraserListener;->onCancel()V

    goto :goto_0

    .line 1194
    :cond_2
    iget-object p1, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->fingerListener:Lcom/brakefield/infinitestudio/gestures/listeners/FingerListener;

    if-eqz p1, :cond_3

    invoke-interface {p1}, Lcom/brakefield/infinitestudio/gestures/listeners/FingerListener;->onCancel()V

    :cond_3
    :goto_0
    return-void
.end method

.method public onOneDown(Lcom/brakefield/infinitestudio/sketchbook/Pointer;)V
    .locals 5

    const/4 v0, 0x0

    .line 944
    iput-boolean v0, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->longpressed:Z

    .line 946
    iget v0, p1, Lcom/brakefield/infinitestudio/sketchbook/Pointer;->x:F

    .line 947
    iget v1, p1, Lcom/brakefield/infinitestudio/sketchbook/Pointer;->y:F

    .line 949
    iget-object v2, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->topLeftCornerClickListener:Lcom/brakefield/infinitestudio/gestures/listeners/ClickListener;

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->topLeftCornerPullListener:Lcom/brakefield/infinitestudio/gestures/listeners/PullListener;

    if-eqz v2, :cond_1

    :cond_0
    sget v2, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->LEFT_EDGE:I

    int-to-float v2, v2

    cmpg-float v2, v0, v2

    if-gez v2, :cond_1

    sget v2, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->TOP_EDGE:I

    int-to-float v2, v2

    cmpg-float v2, v1, v2

    if-gez v2, :cond_1

    .line 950
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->onTopLeftCornerDown()V

    goto/16 :goto_0

    .line 951
    :cond_1
    iget-object v2, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->topRightCornerClickListener:Lcom/brakefield/infinitestudio/gestures/listeners/ClickListener;

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->topRightCornerPullListener:Lcom/brakefield/infinitestudio/gestures/listeners/PullListener;

    if-eqz v2, :cond_3

    :cond_2
    sget v2, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->RIGHT_EDGE:I

    int-to-float v2, v2

    cmpl-float v2, v0, v2

    if-lez v2, :cond_3

    sget v2, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->TOP_EDGE:I

    int-to-float v2, v2

    cmpg-float v2, v1, v2

    if-gez v2, :cond_3

    .line 952
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->onTopRightCornerDown()V

    goto/16 :goto_0

    .line 953
    :cond_3
    iget-object v2, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->bottomRightCornerClickListener:Lcom/brakefield/infinitestudio/gestures/listeners/ClickListener;

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->bottomRightCornerPullListener:Lcom/brakefield/infinitestudio/gestures/listeners/PullListener;

    if-eqz v2, :cond_5

    :cond_4
    sget v2, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->RIGHT_EDGE:I

    int-to-float v2, v2

    cmpl-float v2, v0, v2

    if-lez v2, :cond_5

    sget v2, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->BOTTOM_EDGE:I

    int-to-float v2, v2

    cmpl-float v2, v1, v2

    if-lez v2, :cond_5

    .line 954
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->onBottomRightCornerDown()V

    goto/16 :goto_0

    .line 955
    :cond_5
    iget-object v2, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->bottomLeftCornerClickListener:Lcom/brakefield/infinitestudio/gestures/listeners/ClickListener;

    if-nez v2, :cond_6

    iget-object v2, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->bottomLeftCornerPullListener:Lcom/brakefield/infinitestudio/gestures/listeners/PullListener;

    if-eqz v2, :cond_7

    :cond_6
    sget v2, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->LEFT_EDGE:I

    int-to-float v2, v2

    cmpg-float v2, v0, v2

    if-gez v2, :cond_7

    sget v2, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->BOTTOM_EDGE:I

    int-to-float v2, v2

    cmpl-float v2, v1, v2

    if-lez v2, :cond_7

    .line 956
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->onBottomLeftCornerDown()V

    goto/16 :goto_0

    .line 957
    :cond_7
    iget-object v2, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->leftEdgeClickListener:Lcom/brakefield/infinitestudio/gestures/listeners/ClickListener;

    if-nez v2, :cond_8

    iget-object v2, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->leftEdgePullListener:Lcom/brakefield/infinitestudio/gestures/listeners/PullListener;

    if-nez v2, :cond_8

    iget-object v2, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->leftEdgeSlideListener:Lcom/brakefield/infinitestudio/gestures/listeners/SlideListener;

    if-eqz v2, :cond_9

    :cond_8
    sget v2, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->LEFT_EDGE:I

    int-to-float v2, v2

    cmpg-float v2, v0, v2

    if-gez v2, :cond_9

    .line 958
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->onLeftEdgeDown()V

    goto/16 :goto_0

    .line 959
    :cond_9
    iget-object v2, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->topEdgeClickListener:Lcom/brakefield/infinitestudio/gestures/listeners/ClickListener;

    if-nez v2, :cond_a

    iget-object v2, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->topEdgePullListener:Lcom/brakefield/infinitestudio/gestures/listeners/PullListener;

    if-nez v2, :cond_a

    iget-object v2, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->topEdgeSlideListener:Lcom/brakefield/infinitestudio/gestures/listeners/SlideListener;

    if-eqz v2, :cond_b

    :cond_a
    sget v2, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->TOP_EDGE:I

    int-to-float v2, v2

    cmpg-float v2, v1, v2

    if-gez v2, :cond_b

    .line 960
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->onTopEdgeDown()V

    goto :goto_0

    .line 961
    :cond_b
    iget-object v2, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->rightEdgeClickListener:Lcom/brakefield/infinitestudio/gestures/listeners/ClickListener;

    if-nez v2, :cond_c

    iget-object v2, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->rightEdgePullListener:Lcom/brakefield/infinitestudio/gestures/listeners/PullListener;

    if-nez v2, :cond_c

    iget-object v2, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->rightEdgeSlideListener:Lcom/brakefield/infinitestudio/gestures/listeners/SlideListener;

    if-eqz v2, :cond_d

    :cond_c
    sget v2, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->RIGHT_EDGE:I

    int-to-float v2, v2

    cmpl-float v2, v0, v2

    if-lez v2, :cond_d

    .line 962
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->onRightEdgeDown()V

    goto :goto_0

    .line 963
    :cond_d
    iget-object v2, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->bottomEdgeClickListener:Lcom/brakefield/infinitestudio/gestures/listeners/ClickListener;

    if-nez v2, :cond_e

    iget-object v2, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->bottomEdgePullListener:Lcom/brakefield/infinitestudio/gestures/listeners/PullListener;

    if-nez v2, :cond_e

    iget-object v2, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->bottomEdgeSlideListener:Lcom/brakefield/infinitestudio/gestures/listeners/SlideListener;

    if-eqz v2, :cond_f

    :cond_e
    sget v2, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->BOTTOM_EDGE:I

    int-to-float v2, v2

    cmpl-float v2, v1, v2

    if-lez v2, :cond_f

    .line 964
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->onBottomEdgeDown()V

    goto :goto_0

    .line 966
    :cond_f
    invoke-virtual {p1}, Lcom/brakefield/infinitestudio/sketchbook/Pointer;->isStylus()Z

    move-result v2

    if-eqz v2, :cond_10

    iget-object v2, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->stylusListener:Lcom/brakefield/infinitestudio/gestures/listeners/StylusListener;

    if-eqz v2, :cond_10

    .line 967
    iget-boolean v3, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->stylusPrimaryButtonPressed:Z

    iget-boolean v4, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->stylusSecondaryButtonPressed:Z

    invoke-interface {v2, p1, v3, v4}, Lcom/brakefield/infinitestudio/gestures/listeners/StylusListener;->onDown(Lcom/brakefield/infinitestudio/sketchbook/Pointer;ZZ)V

    goto :goto_0

    .line 968
    :cond_10
    invoke-virtual {p1}, Lcom/brakefield/infinitestudio/sketchbook/Pointer;->isEraser()Z

    move-result v2

    if-eqz v2, :cond_11

    iget-object v2, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->eraserListener:Lcom/brakefield/infinitestudio/gestures/listeners/EraserListener;

    if-eqz v2, :cond_11

    .line 969
    invoke-interface {v2, p1}, Lcom/brakefield/infinitestudio/gestures/listeners/EraserListener;->onDown(Lcom/brakefield/infinitestudio/sketchbook/Pointer;)V

    goto :goto_0

    .line 970
    :cond_11
    iget-object v2, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->fingerListener:Lcom/brakefield/infinitestudio/gestures/listeners/FingerListener;

    if-eqz v2, :cond_12

    invoke-interface {v2, p1}, Lcom/brakefield/infinitestudio/gestures/listeners/FingerListener;->onDown(Lcom/brakefield/infinitestudio/sketchbook/Pointer;)V

    .line 973
    :cond_12
    :goto_0
    iput v0, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->downX:F

    .line 974
    iput v1, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->downY:F

    return-void
.end method

.method public onOneMove(Lcom/brakefield/infinitestudio/sketchbook/Pointer;II)V
    .locals 12

    .line 979
    iget v0, p1, Lcom/brakefield/infinitestudio/sketchbook/Pointer;->x:F

    iget v1, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->downX:F

    sub-float/2addr v0, v1

    .line 980
    iget v1, p1, Lcom/brakefield/infinitestudio/sketchbook/Pointer;->y:F

    iget v2, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->downY:F

    sub-float/2addr v1, v2

    .line 981
    iget v3, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->downX:F

    iget v4, p1, Lcom/brakefield/infinitestudio/sketchbook/Pointer;->x:F

    iget v5, p1, Lcom/brakefield/infinitestudio/sketchbook/Pointer;->y:F

    invoke-static {v3, v2, v4, v5}, Lcom/brakefield/infinitestudio/utils/UsefulMethods;->dist(FFFF)F

    move-result v2

    .line 983
    iget-boolean v3, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->inTopLeftCorner:Z

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_2

    .line 985
    sget p2, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->MOVE_DISTANCE:I

    int-to-float p3, p2

    cmpl-float p3, v2, p3

    if-lez p3, :cond_0

    iput-boolean v4, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->out:Z

    .line 986
    :cond_0
    iget-boolean p3, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->out:Z

    if-eqz p3, :cond_23

    iget-object v6, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->topLeftCornerPullListener:Lcom/brakefield/infinitestudio/gestures/listeners/PullListener;

    if-eqz v6, :cond_23

    int-to-float p3, p2

    sub-float p3, v2, p3

    cmpg-float p3, p3, v5

    if-gez p3, :cond_1

    goto :goto_0

    :cond_1
    int-to-float p2, p2

    sub-float v5, v2, p2

    :goto_0
    move v7, v5

    .line 987
    iget v8, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->downX:F

    iget v9, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->downY:F

    iget v10, p1, Lcom/brakefield/infinitestudio/sketchbook/Pointer;->x:F

    iget v11, p1, Lcom/brakefield/infinitestudio/sketchbook/Pointer;->y:F

    invoke-interface/range {v6 .. v11}, Lcom/brakefield/infinitestudio/gestures/listeners/PullListener;->onPull(FFFFF)V

    goto/16 :goto_8

    .line 989
    :cond_2
    iget-boolean v3, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->inTopRightCorner:Z

    if-eqz v3, :cond_5

    .line 991
    sget p2, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->MOVE_DISTANCE:I

    int-to-float p3, p2

    cmpl-float p3, v2, p3

    if-lez p3, :cond_3

    iput-boolean v4, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->out:Z

    .line 992
    :cond_3
    iget-boolean p3, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->out:Z

    if-eqz p3, :cond_23

    iget-object v6, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->topRightCornerPullListener:Lcom/brakefield/infinitestudio/gestures/listeners/PullListener;

    if-eqz v6, :cond_23

    int-to-float p3, p2

    sub-float p3, v2, p3

    cmpg-float p3, p3, v5

    if-gez p3, :cond_4

    goto :goto_1

    :cond_4
    int-to-float p2, p2

    sub-float v5, v2, p2

    :goto_1
    move v7, v5

    .line 993
    iget v8, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->downX:F

    iget v9, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->downY:F

    iget v10, p1, Lcom/brakefield/infinitestudio/sketchbook/Pointer;->x:F

    iget v11, p1, Lcom/brakefield/infinitestudio/sketchbook/Pointer;->y:F

    invoke-interface/range {v6 .. v11}, Lcom/brakefield/infinitestudio/gestures/listeners/PullListener;->onPull(FFFFF)V

    goto/16 :goto_8

    .line 995
    :cond_5
    iget-boolean v3, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->inBottomRightCorner:Z

    if-eqz v3, :cond_8

    .line 997
    sget p2, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->MOVE_DISTANCE:I

    int-to-float p3, p2

    cmpl-float p3, v2, p3

    if-lez p3, :cond_6

    iput-boolean v4, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->out:Z

    .line 998
    :cond_6
    iget-boolean p3, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->out:Z

    if-eqz p3, :cond_23

    iget-object v6, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->bottomRightCornerPullListener:Lcom/brakefield/infinitestudio/gestures/listeners/PullListener;

    if-eqz v6, :cond_23

    int-to-float p3, p2

    sub-float p3, v2, p3

    cmpg-float p3, p3, v5

    if-gez p3, :cond_7

    goto :goto_2

    :cond_7
    int-to-float p2, p2

    sub-float v5, v2, p2

    :goto_2
    move v7, v5

    .line 999
    iget v8, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->downX:F

    iget v9, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->downY:F

    iget v10, p1, Lcom/brakefield/infinitestudio/sketchbook/Pointer;->x:F

    iget v11, p1, Lcom/brakefield/infinitestudio/sketchbook/Pointer;->y:F

    invoke-interface/range {v6 .. v11}, Lcom/brakefield/infinitestudio/gestures/listeners/PullListener;->onPull(FFFFF)V

    goto/16 :goto_8

    .line 1001
    :cond_8
    iget-boolean v3, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->inBottomLeftCorner:Z

    if-eqz v3, :cond_b

    .line 1003
    sget p2, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->MOVE_DISTANCE:I

    int-to-float p3, p2

    cmpl-float p3, v2, p3

    if-lez p3, :cond_9

    iput-boolean v4, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->out:Z

    .line 1004
    :cond_9
    iget-boolean p3, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->out:Z

    if-eqz p3, :cond_23

    iget-object v6, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->bottomLeftCornerPullListener:Lcom/brakefield/infinitestudio/gestures/listeners/PullListener;

    if-eqz v6, :cond_23

    int-to-float p3, p2

    sub-float p3, v2, p3

    cmpg-float p3, p3, v5

    if-gez p3, :cond_a

    goto :goto_3

    :cond_a
    int-to-float p2, p2

    sub-float v5, v2, p2

    :goto_3
    move v7, v5

    .line 1005
    iget v8, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->downX:F

    iget v9, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->downY:F

    iget v10, p1, Lcom/brakefield/infinitestudio/sketchbook/Pointer;->x:F

    iget v11, p1, Lcom/brakefield/infinitestudio/sketchbook/Pointer;->y:F

    invoke-interface/range {v6 .. v11}, Lcom/brakefield/infinitestudio/gestures/listeners/PullListener;->onPull(FFFFF)V

    goto/16 :goto_8

    .line 1007
    :cond_b
    iget-boolean v2, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->inLeftEdge:Z

    if-eqz v2, :cond_10

    .line 1009
    iget-boolean p2, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->slide:Z

    if-nez p2, :cond_c

    iget-boolean p2, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->out:Z

    if-nez p2, :cond_c

    .line 1010
    iget-object p2, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->leftEdgeSlideListener:Lcom/brakefield/infinitestudio/gestures/listeners/SlideListener;

    if-eqz p2, :cond_c

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result p2

    sget p3, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->MOVE_DISTANCE:I

    int-to-float p3, p3

    cmpl-float p2, p2, p3

    if-lez p2, :cond_c

    .line 1011
    iget-boolean p2, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->longpressed:Z

    if-eqz p2, :cond_c

    .line 1012
    iput-boolean v4, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->slide:Z

    .line 1013
    iget-object p2, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->leftEdgeSlideListener:Lcom/brakefield/infinitestudio/gestures/listeners/SlideListener;

    invoke-interface {p2}, Lcom/brakefield/infinitestudio/gestures/listeners/SlideListener;->onSlideStart()V

    .line 1016
    :cond_c
    iget-boolean p2, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->slide:Z

    if-nez p2, :cond_d

    iget-boolean p2, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->out:Z

    if-nez p2, :cond_d

    .line 1017
    iget-object p2, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->leftEdgePullListener:Lcom/brakefield/infinitestudio/gestures/listeners/PullListener;

    if-eqz p2, :cond_d

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result p2

    sget p3, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->MOVE_DISTANCE:I

    int-to-float p3, p3

    cmpl-float p2, p2, p3

    if-lez p2, :cond_d

    .line 1018
    iget-boolean p2, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->longpressed:Z

    if-eqz p2, :cond_d

    .line 1019
    iput-boolean v4, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->out:Z

    .line 1020
    iget-object p2, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->leftEdgePullListener:Lcom/brakefield/infinitestudio/gestures/listeners/PullListener;

    invoke-interface {p2}, Lcom/brakefield/infinitestudio/gestures/listeners/PullListener;->onPullStart()V

    .line 1024
    :cond_d
    iget-boolean p2, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->slide:Z

    if-eqz p2, :cond_e

    .line 1025
    iget-object p2, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->leftEdgeSlideListener:Lcom/brakefield/infinitestudio/gestures/listeners/SlideListener;

    iget p3, p1, Lcom/brakefield/infinitestudio/sketchbook/Pointer;->y:F

    iget v0, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->height:I

    int-to-float v0, v0

    invoke-interface {p2, p3, v0, v1}, Lcom/brakefield/infinitestudio/gestures/listeners/SlideListener;->onSlide(FFF)V

    goto/16 :goto_8

    .line 1026
    :cond_e
    iget-boolean p2, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->out:Z

    if-eqz p2, :cond_23

    .line 1027
    iget-object v6, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->leftEdgePullListener:Lcom/brakefield/infinitestudio/gestures/listeners/PullListener;

    sget p2, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->MOVE_DISTANCE:I

    int-to-float p3, p2

    sub-float p3, v0, p3

    cmpg-float p3, p3, v5

    if-gez p3, :cond_f

    goto :goto_4

    :cond_f
    int-to-float p2, p2

    sub-float v5, v0, p2

    :goto_4
    move v7, v5

    iget v8, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->downX:F

    iget v9, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->downY:F

    iget v10, p1, Lcom/brakefield/infinitestudio/sketchbook/Pointer;->x:F

    iget v11, p1, Lcom/brakefield/infinitestudio/sketchbook/Pointer;->y:F

    invoke-interface/range {v6 .. v11}, Lcom/brakefield/infinitestudio/gestures/listeners/PullListener;->onPull(FFFFF)V

    goto/16 :goto_8

    .line 1030
    :cond_10
    iget-boolean v2, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->inTopEdge:Z

    if-eqz v2, :cond_15

    .line 1032
    iget-boolean p2, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->slide:Z

    if-nez p2, :cond_11

    iget-boolean p2, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->out:Z

    if-nez p2, :cond_11

    .line 1033
    iget-object p2, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->topEdgeSlideListener:Lcom/brakefield/infinitestudio/gestures/listeners/SlideListener;

    if-eqz p2, :cond_11

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result p2

    sget p3, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->MOVE_DISTANCE:I

    int-to-float p3, p3

    cmpl-float p2, p2, p3

    if-lez p2, :cond_11

    .line 1034
    iget-boolean p2, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->longpressed:Z

    if-eqz p2, :cond_11

    .line 1035
    iput-boolean v4, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->slide:Z

    .line 1036
    iget-object p2, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->topEdgeSlideListener:Lcom/brakefield/infinitestudio/gestures/listeners/SlideListener;

    invoke-interface {p2}, Lcom/brakefield/infinitestudio/gestures/listeners/SlideListener;->onSlideStart()V

    .line 1039
    :cond_11
    iget-boolean p2, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->slide:Z

    if-nez p2, :cond_12

    iget-boolean p2, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->out:Z

    if-nez p2, :cond_12

    .line 1040
    iget-object p2, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->topEdgePullListener:Lcom/brakefield/infinitestudio/gestures/listeners/PullListener;

    if-eqz p2, :cond_12

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result p2

    sget p3, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->MOVE_DISTANCE:I

    int-to-float p3, p3

    cmpl-float p2, p2, p3

    if-lez p2, :cond_12

    .line 1041
    iget-boolean p2, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->longpressed:Z

    if-eqz p2, :cond_12

    .line 1042
    iput-boolean v4, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->out:Z

    .line 1043
    iget-object p2, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->topEdgePullListener:Lcom/brakefield/infinitestudio/gestures/listeners/PullListener;

    invoke-interface {p2}, Lcom/brakefield/infinitestudio/gestures/listeners/PullListener;->onPullStart()V

    .line 1047
    :cond_12
    iget-boolean p2, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->slide:Z

    if-eqz p2, :cond_13

    .line 1048
    iget-object p2, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->topEdgeSlideListener:Lcom/brakefield/infinitestudio/gestures/listeners/SlideListener;

    iget p3, p1, Lcom/brakefield/infinitestudio/sketchbook/Pointer;->x:F

    iget v1, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->width:I

    int-to-float v1, v1

    invoke-interface {p2, p3, v1, v0}, Lcom/brakefield/infinitestudio/gestures/listeners/SlideListener;->onSlide(FFF)V

    goto/16 :goto_8

    .line 1049
    :cond_13
    iget-boolean p2, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->out:Z

    if-eqz p2, :cond_23

    .line 1050
    iget-object v6, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->topEdgePullListener:Lcom/brakefield/infinitestudio/gestures/listeners/PullListener;

    sget p2, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->MOVE_DISTANCE:I

    int-to-float p3, p2

    sub-float p3, v1, p3

    cmpg-float p3, p3, v5

    if-gez p3, :cond_14

    goto :goto_5

    :cond_14
    int-to-float p2, p2

    sub-float v5, v1, p2

    :goto_5
    move v7, v5

    iget v8, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->downX:F

    iget v9, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->downY:F

    iget v10, p1, Lcom/brakefield/infinitestudio/sketchbook/Pointer;->x:F

    iget v11, p1, Lcom/brakefield/infinitestudio/sketchbook/Pointer;->y:F

    invoke-interface/range {v6 .. v11}, Lcom/brakefield/infinitestudio/gestures/listeners/PullListener;->onPull(FFFFF)V

    goto/16 :goto_8

    .line 1053
    :cond_15
    iget-boolean v2, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->inRightEdge:Z

    if-eqz v2, :cond_1a

    .line 1055
    iget-boolean p2, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->slide:Z

    if-nez p2, :cond_16

    iget-boolean p2, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->out:Z

    if-nez p2, :cond_16

    .line 1056
    iget-object p2, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->rightEdgeSlideListener:Lcom/brakefield/infinitestudio/gestures/listeners/SlideListener;

    if-eqz p2, :cond_16

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result p2

    sget p3, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->MOVE_DISTANCE:I

    int-to-float p3, p3

    cmpl-float p2, p2, p3

    if-lez p2, :cond_16

    .line 1057
    iget-boolean p2, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->longpressed:Z

    if-eqz p2, :cond_16

    .line 1058
    iput-boolean v4, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->slide:Z

    .line 1059
    iget-object p2, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->rightEdgeSlideListener:Lcom/brakefield/infinitestudio/gestures/listeners/SlideListener;

    invoke-interface {p2}, Lcom/brakefield/infinitestudio/gestures/listeners/SlideListener;->onSlideStart()V

    .line 1062
    :cond_16
    iget-boolean p2, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->slide:Z

    if-nez p2, :cond_17

    iget-boolean p2, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->out:Z

    if-nez p2, :cond_17

    .line 1063
    iget-object p2, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->rightEdgePullListener:Lcom/brakefield/infinitestudio/gestures/listeners/PullListener;

    if-eqz p2, :cond_17

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result p2

    sget p3, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->MOVE_DISTANCE:I

    int-to-float p3, p3

    cmpl-float p2, p2, p3

    if-lez p2, :cond_17

    .line 1064
    iget-boolean p2, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->longpressed:Z

    if-eqz p2, :cond_17

    .line 1065
    iput-boolean v4, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->out:Z

    .line 1066
    iget-object p2, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->rightEdgePullListener:Lcom/brakefield/infinitestudio/gestures/listeners/PullListener;

    invoke-interface {p2}, Lcom/brakefield/infinitestudio/gestures/listeners/PullListener;->onPullStart()V

    .line 1070
    :cond_17
    iget-boolean p2, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->slide:Z

    if-eqz p2, :cond_18

    .line 1071
    iget-object p2, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->rightEdgeSlideListener:Lcom/brakefield/infinitestudio/gestures/listeners/SlideListener;

    iget p3, p1, Lcom/brakefield/infinitestudio/sketchbook/Pointer;->y:F

    iget v0, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->height:I

    int-to-float v0, v0

    invoke-interface {p2, p3, v0, v1}, Lcom/brakefield/infinitestudio/gestures/listeners/SlideListener;->onSlide(FFF)V

    goto/16 :goto_8

    .line 1072
    :cond_18
    iget-boolean p2, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->out:Z

    if-eqz p2, :cond_23

    .line 1073
    iget-object v6, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->rightEdgePullListener:Lcom/brakefield/infinitestudio/gestures/listeners/PullListener;

    sget p2, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->MOVE_DISTANCE:I

    int-to-float p3, p2

    sub-float p3, v0, p3

    neg-float p3, p3

    cmpg-float p3, p3, v5

    if-gez p3, :cond_19

    goto :goto_6

    :cond_19
    int-to-float p2, p2

    sub-float/2addr v0, p2

    neg-float v5, v0

    :goto_6
    move v7, v5

    iget v8, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->downX:F

    iget v9, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->downY:F

    iget v10, p1, Lcom/brakefield/infinitestudio/sketchbook/Pointer;->x:F

    iget v11, p1, Lcom/brakefield/infinitestudio/sketchbook/Pointer;->y:F

    invoke-interface/range {v6 .. v11}, Lcom/brakefield/infinitestudio/gestures/listeners/PullListener;->onPull(FFFFF)V

    goto/16 :goto_8

    .line 1076
    :cond_1a
    iget-boolean v2, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->inBottomEdge:Z

    if-eqz v2, :cond_1f

    .line 1078
    iget-boolean p2, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->slide:Z

    if-nez p2, :cond_1b

    iget-boolean p2, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->out:Z

    if-nez p2, :cond_1b

    .line 1079
    iget-object p2, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->bottomEdgeSlideListener:Lcom/brakefield/infinitestudio/gestures/listeners/SlideListener;

    if-eqz p2, :cond_1b

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result p2

    sget p3, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->MOVE_DISTANCE:I

    int-to-float p3, p3

    cmpl-float p2, p2, p3

    if-lez p2, :cond_1b

    .line 1080
    iget-boolean p2, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->longpressed:Z

    if-eqz p2, :cond_1b

    .line 1081
    iput-boolean v4, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->slide:Z

    .line 1082
    iget-object p2, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->bottomEdgeSlideListener:Lcom/brakefield/infinitestudio/gestures/listeners/SlideListener;

    invoke-interface {p2}, Lcom/brakefield/infinitestudio/gestures/listeners/SlideListener;->onSlideStart()V

    .line 1085
    :cond_1b
    iget-boolean p2, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->slide:Z

    if-nez p2, :cond_1c

    iget-boolean p2, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->out:Z

    if-nez p2, :cond_1c

    .line 1086
    iget-object p2, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->bottomEdgePullListener:Lcom/brakefield/infinitestudio/gestures/listeners/PullListener;

    if-eqz p2, :cond_1c

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result p2

    sget p3, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->MOVE_DISTANCE:I

    int-to-float p3, p3

    cmpl-float p2, p2, p3

    if-lez p2, :cond_1c

    .line 1087
    iget-boolean p2, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->longpressed:Z

    if-eqz p2, :cond_1c

    .line 1088
    iput-boolean v4, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->out:Z

    .line 1089
    iget-object p2, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->bottomEdgePullListener:Lcom/brakefield/infinitestudio/gestures/listeners/PullListener;

    invoke-interface {p2}, Lcom/brakefield/infinitestudio/gestures/listeners/PullListener;->onPullStart()V

    .line 1093
    :cond_1c
    iget-boolean p2, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->slide:Z

    if-eqz p2, :cond_1d

    .line 1094
    iget-object p2, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->bottomEdgeSlideListener:Lcom/brakefield/infinitestudio/gestures/listeners/SlideListener;

    iget p3, p1, Lcom/brakefield/infinitestudio/sketchbook/Pointer;->x:F

    iget v1, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->width:I

    int-to-float v1, v1

    invoke-interface {p2, p3, v1, v0}, Lcom/brakefield/infinitestudio/gestures/listeners/SlideListener;->onSlide(FFF)V

    goto :goto_8

    .line 1095
    :cond_1d
    iget-boolean p2, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->out:Z

    if-eqz p2, :cond_23

    .line 1096
    iget-object v6, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->bottomEdgePullListener:Lcom/brakefield/infinitestudio/gestures/listeners/PullListener;

    sget p2, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->MOVE_DISTANCE:I

    int-to-float p3, p2

    sub-float p3, v1, p3

    neg-float p3, p3

    cmpg-float p3, p3, v5

    if-gez p3, :cond_1e

    goto :goto_7

    :cond_1e
    int-to-float p2, p2

    sub-float/2addr v1, p2

    neg-float v5, v1

    :goto_7
    move v7, v5

    iget v8, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->downX:F

    iget v9, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->downY:F

    iget v10, p1, Lcom/brakefield/infinitestudio/sketchbook/Pointer;->x:F

    iget v11, p1, Lcom/brakefield/infinitestudio/sketchbook/Pointer;->y:F

    invoke-interface/range {v6 .. v11}, Lcom/brakefield/infinitestudio/gestures/listeners/PullListener;->onPull(FFFFF)V

    goto :goto_8

    .line 1098
    :cond_1f
    iget-boolean v0, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->longpressed:Z

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->longpressDragListener:Lcom/brakefield/infinitestudio/gestures/listeners/LongpressDragListener;

    if-eqz v0, :cond_20

    iget-boolean v1, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->longpressDrag:Z

    if-eqz v1, :cond_20

    .line 1099
    invoke-interface {v0, p1}, Lcom/brakefield/infinitestudio/gestures/listeners/LongpressDragListener;->onMove(Lcom/brakefield/infinitestudio/sketchbook/Pointer;)V

    goto :goto_8

    .line 1101
    :cond_20
    invoke-virtual {p1}, Lcom/brakefield/infinitestudio/sketchbook/Pointer;->isStylus()Z

    move-result v0

    if-eqz v0, :cond_21

    iget-object v1, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->stylusListener:Lcom/brakefield/infinitestudio/gestures/listeners/StylusListener;

    if-eqz v1, :cond_21

    .line 1102
    iget-boolean v5, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->stylusPrimaryButtonPressed:Z

    iget-boolean v6, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->stylusSecondaryButtonPressed:Z

    move-object v2, p1

    move v3, p2

    move v4, p3

    invoke-interface/range {v1 .. v6}, Lcom/brakefield/infinitestudio/gestures/listeners/StylusListener;->onMove(Lcom/brakefield/infinitestudio/sketchbook/Pointer;IIZZ)V

    goto :goto_8

    .line 1103
    :cond_21
    invoke-virtual {p1}, Lcom/brakefield/infinitestudio/sketchbook/Pointer;->isEraser()Z

    move-result v0

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->eraserListener:Lcom/brakefield/infinitestudio/gestures/listeners/EraserListener;

    if-eqz v0, :cond_22

    .line 1104
    invoke-interface {v0, p1, p2, p3}, Lcom/brakefield/infinitestudio/gestures/listeners/EraserListener;->onMove(Lcom/brakefield/infinitestudio/sketchbook/Pointer;II)V

    goto :goto_8

    .line 1105
    :cond_22
    iget-object v0, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->fingerListener:Lcom/brakefield/infinitestudio/gestures/listeners/FingerListener;

    if-eqz v0, :cond_23

    invoke-interface {v0, p1, p2, p3}, Lcom/brakefield/infinitestudio/gestures/listeners/FingerListener;->onMove(Lcom/brakefield/infinitestudio/sketchbook/Pointer;II)V

    .line 1108
    :cond_23
    :goto_8
    iget p2, p1, Lcom/brakefield/infinitestudio/sketchbook/Pointer;->x:F

    iput p2, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->prevX:F

    .line 1109
    iget p1, p1, Lcom/brakefield/infinitestudio/sketchbook/Pointer;->y:F

    iput p1, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->prevY:F

    return-void
.end method

.method public onOneUp(Lcom/brakefield/infinitestudio/sketchbook/Pointer;)V
    .locals 3

    .line 1114
    iget-boolean v0, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->inTopLeftCorner:Z

    if-eqz v0, :cond_1

    .line 1115
    iget-boolean p1, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->out:Z

    if-nez p1, :cond_0

    .line 1116
    iget-object p1, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->topLeftCornerClickListener:Lcom/brakefield/infinitestudio/gestures/listeners/ClickListener;

    if-eqz p1, :cond_14

    invoke-interface {p1}, Lcom/brakefield/infinitestudio/gestures/listeners/ClickListener;->onClick()V

    goto/16 :goto_0

    .line 1117
    :cond_0
    iget-object p1, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->topLeftCornerPullListener:Lcom/brakefield/infinitestudio/gestures/listeners/PullListener;

    if-eqz p1, :cond_14

    invoke-interface {p1}, Lcom/brakefield/infinitestudio/gestures/listeners/PullListener;->onPullFinish()V

    goto/16 :goto_0

    .line 1118
    :cond_1
    iget-boolean v0, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->inTopRightCorner:Z

    if-eqz v0, :cond_3

    .line 1119
    iget-boolean p1, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->out:Z

    if-nez p1, :cond_2

    .line 1120
    iget-object p1, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->topRightCornerClickListener:Lcom/brakefield/infinitestudio/gestures/listeners/ClickListener;

    if-eqz p1, :cond_14

    invoke-interface {p1}, Lcom/brakefield/infinitestudio/gestures/listeners/ClickListener;->onClick()V

    goto/16 :goto_0

    .line 1121
    :cond_2
    iget-object p1, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->topRightCornerPullListener:Lcom/brakefield/infinitestudio/gestures/listeners/PullListener;

    if-eqz p1, :cond_14

    invoke-interface {p1}, Lcom/brakefield/infinitestudio/gestures/listeners/PullListener;->onPullFinish()V

    goto/16 :goto_0

    .line 1122
    :cond_3
    iget-boolean v0, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->inBottomRightCorner:Z

    if-eqz v0, :cond_5

    .line 1123
    iget-boolean p1, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->out:Z

    if-nez p1, :cond_4

    .line 1124
    iget-object p1, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->bottomRightCornerClickListener:Lcom/brakefield/infinitestudio/gestures/listeners/ClickListener;

    if-eqz p1, :cond_14

    invoke-interface {p1}, Lcom/brakefield/infinitestudio/gestures/listeners/ClickListener;->onClick()V

    goto/16 :goto_0

    .line 1125
    :cond_4
    iget-object p1, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->bottomRightCornerPullListener:Lcom/brakefield/infinitestudio/gestures/listeners/PullListener;

    if-eqz p1, :cond_14

    .line 1126
    invoke-interface {p1}, Lcom/brakefield/infinitestudio/gestures/listeners/PullListener;->onPullFinish()V

    goto/16 :goto_0

    .line 1127
    :cond_5
    iget-boolean v0, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->inBottomLeftCorner:Z

    if-eqz v0, :cond_7

    .line 1128
    iget-boolean p1, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->out:Z

    if-nez p1, :cond_6

    .line 1129
    iget-object p1, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->topLeftCornerClickListener:Lcom/brakefield/infinitestudio/gestures/listeners/ClickListener;

    if-eqz p1, :cond_14

    iget-object p1, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->bottomLeftCornerClickListener:Lcom/brakefield/infinitestudio/gestures/listeners/ClickListener;

    invoke-interface {p1}, Lcom/brakefield/infinitestudio/gestures/listeners/ClickListener;->onClick()V

    goto/16 :goto_0

    .line 1130
    :cond_6
    iget-object p1, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->topLeftCornerPullListener:Lcom/brakefield/infinitestudio/gestures/listeners/PullListener;

    if-eqz p1, :cond_14

    iget-object p1, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->bottomLeftCornerPullListener:Lcom/brakefield/infinitestudio/gestures/listeners/PullListener;

    invoke-interface {p1}, Lcom/brakefield/infinitestudio/gestures/listeners/PullListener;->onPullFinish()V

    goto/16 :goto_0

    .line 1131
    :cond_7
    iget-boolean v0, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->inLeftEdge:Z

    if-eqz v0, :cond_9

    .line 1132
    iget-boolean p1, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->out:Z

    iget-boolean v0, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->slide:Z

    if-eqz v0, :cond_8

    .line 1134
    iget-object v0, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->leftEdgeSlideListener:Lcom/brakefield/infinitestudio/gestures/listeners/SlideListener;

    if-eqz v0, :cond_8

    .line 1135
    invoke-interface {v0}, Lcom/brakefield/infinitestudio/gestures/listeners/SlideListener;->onSlideFinish()V

    goto/16 :goto_0

    :cond_8
    if-eqz p1, :cond_14

    .line 1136
    iget-object p1, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->leftEdgePullListener:Lcom/brakefield/infinitestudio/gestures/listeners/PullListener;

    if-eqz p1, :cond_14

    .line 1137
    invoke-interface {p1}, Lcom/brakefield/infinitestudio/gestures/listeners/PullListener;->onPullFinish()V

    goto/16 :goto_0

    .line 1138
    :cond_9
    iget-boolean v0, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->inTopEdge:Z

    if-eqz v0, :cond_b

    .line 1139
    iget-boolean p1, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->out:Z

    iget-boolean v0, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->slide:Z

    if-eqz v0, :cond_a

    .line 1141
    iget-object v0, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->topEdgeSlideListener:Lcom/brakefield/infinitestudio/gestures/listeners/SlideListener;

    if-eqz v0, :cond_a

    .line 1142
    invoke-interface {v0}, Lcom/brakefield/infinitestudio/gestures/listeners/SlideListener;->onSlideFinish()V

    goto/16 :goto_0

    :cond_a
    if-eqz p1, :cond_14

    .line 1143
    iget-object p1, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->topEdgePullListener:Lcom/brakefield/infinitestudio/gestures/listeners/PullListener;

    if-eqz p1, :cond_14

    .line 1144
    invoke-interface {p1}, Lcom/brakefield/infinitestudio/gestures/listeners/PullListener;->onPullFinish()V

    goto/16 :goto_0

    .line 1145
    :cond_b
    iget-boolean v0, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->inRightEdge:Z

    if-eqz v0, :cond_d

    .line 1146
    iget-boolean p1, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->out:Z

    iget-boolean v0, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->slide:Z

    if-eqz v0, :cond_c

    .line 1148
    iget-object v0, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->rightEdgeSlideListener:Lcom/brakefield/infinitestudio/gestures/listeners/SlideListener;

    if-eqz v0, :cond_c

    .line 1149
    invoke-interface {v0}, Lcom/brakefield/infinitestudio/gestures/listeners/SlideListener;->onSlideFinish()V

    goto/16 :goto_0

    :cond_c
    if-eqz p1, :cond_14

    .line 1150
    iget-object p1, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->rightEdgePullListener:Lcom/brakefield/infinitestudio/gestures/listeners/PullListener;

    if-eqz p1, :cond_14

    .line 1151
    invoke-interface {p1}, Lcom/brakefield/infinitestudio/gestures/listeners/PullListener;->onPullFinish()V

    goto :goto_0

    .line 1152
    :cond_d
    iget-boolean v0, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->inBottomEdge:Z

    if-eqz v0, :cond_f

    .line 1153
    iget-boolean p1, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->out:Z

    iget-boolean v0, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->slide:Z

    if-eqz v0, :cond_e

    .line 1155
    iget-object v0, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->bottomEdgeSlideListener:Lcom/brakefield/infinitestudio/gestures/listeners/SlideListener;

    if-eqz v0, :cond_e

    .line 1156
    invoke-interface {v0}, Lcom/brakefield/infinitestudio/gestures/listeners/SlideListener;->onSlideFinish()V

    goto :goto_0

    :cond_e
    if-eqz p1, :cond_14

    .line 1157
    iget-object p1, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->bottomEdgePullListener:Lcom/brakefield/infinitestudio/gestures/listeners/PullListener;

    if-eqz p1, :cond_14

    .line 1158
    invoke-interface {p1}, Lcom/brakefield/infinitestudio/gestures/listeners/PullListener;->onPullFinish()V

    goto :goto_0

    .line 1159
    :cond_f
    iget-boolean v0, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->longpressed:Z

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->longpressDragListener:Lcom/brakefield/infinitestudio/gestures/listeners/LongpressDragListener;

    if-eqz v0, :cond_10

    iget-boolean v1, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->longpressDrag:Z

    if-eqz v1, :cond_10

    .line 1160
    invoke-interface {v0, p1}, Lcom/brakefield/infinitestudio/gestures/listeners/LongpressDragListener;->onUp(Lcom/brakefield/infinitestudio/sketchbook/Pointer;)V

    goto :goto_0

    .line 1161
    :cond_10
    iget-object v0, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->doubleTapListener:Lcom/brakefield/infinitestudio/gestures/listeners/DoubleTapListener;

    if-nez v0, :cond_11

    iget-object v0, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->singleTapListener:Lcom/brakefield/infinitestudio/gestures/listeners/SingleTapListener;

    if-eqz v0, :cond_11

    const/4 p1, 0x0

    .line 1162
    invoke-interface {v0, p1}, Lcom/brakefield/infinitestudio/gestures/listeners/SingleTapListener;->onTap(Landroid/view/MotionEvent;)Z

    goto :goto_0

    .line 1164
    :cond_11
    invoke-virtual {p1}, Lcom/brakefield/infinitestudio/sketchbook/Pointer;->isStylus()Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->stylusListener:Lcom/brakefield/infinitestudio/gestures/listeners/StylusListener;

    if-eqz v0, :cond_12

    .line 1165
    iget-boolean v1, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->stylusPrimaryButtonPressed:Z

    iget-boolean v2, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->stylusSecondaryButtonPressed:Z

    invoke-interface {v0, p1, v1, v2}, Lcom/brakefield/infinitestudio/gestures/listeners/StylusListener;->onUp(Lcom/brakefield/infinitestudio/sketchbook/Pointer;ZZ)V

    goto :goto_0

    .line 1166
    :cond_12
    invoke-virtual {p1}, Lcom/brakefield/infinitestudio/sketchbook/Pointer;->isEraser()Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->eraserListener:Lcom/brakefield/infinitestudio/gestures/listeners/EraserListener;

    if-eqz v0, :cond_13

    .line 1167
    invoke-interface {v0, p1}, Lcom/brakefield/infinitestudio/gestures/listeners/EraserListener;->onUp(Lcom/brakefield/infinitestudio/sketchbook/Pointer;)V

    goto :goto_0

    .line 1168
    :cond_13
    iget-object v0, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->fingerListener:Lcom/brakefield/infinitestudio/gestures/listeners/FingerListener;

    if-eqz v0, :cond_14

    invoke-interface {v0, p1}, Lcom/brakefield/infinitestudio/gestures/listeners/FingerListener;->onUp(Lcom/brakefield/infinitestudio/sketchbook/Pointer;)V

    :cond_14
    :goto_0
    return-void
.end method

.method public onRightEdgeDown()V
    .locals 1

    const/4 v0, 0x1

    .line 935
    iput-boolean v0, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->inRightEdge:Z

    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 3

    .line 469
    iget-object v0, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->mouseScrollListener:Lcom/brakefield/infinitestudio/gestures/listeners/MouseScrollListener;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_3

    .line 475
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    .line 477
    invoke-direct {p0, v0}, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->getPointerFromPointerId(I)Lcom/brakefield/infinitestudio/sketchbook/Pointer;

    move-result-object v2

    if-nez v2, :cond_0

    .line 480
    new-instance v2, Lcom/brakefield/infinitestudio/sketchbook/Pointer;

    invoke-direct {v2, v0}, Lcom/brakefield/infinitestudio/sketchbook/Pointer;-><init>(I)V

    .line 481
    iget-object v0, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->pointers:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 488
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    move p1, v0

    goto :goto_0

    :cond_1
    move p1, v1

    .line 489
    :goto_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getButtonState()I

    move-result p2

    if-eqz p2, :cond_2

    move p1, v0

    :cond_2
    if-nez p1, :cond_3

    .line 492
    invoke-virtual {p0, v2}, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->onOneCancel(Lcom/brakefield/infinitestudio/sketchbook/Pointer;)V

    .line 493
    iget-object p1, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->mouseScrollListener:Lcom/brakefield/infinitestudio/gestures/listeners/MouseScrollListener;

    invoke-interface {p1, v2, p3, p4}, Lcom/brakefield/infinitestudio/gestures/listeners/MouseScrollListener;->onPan(Lcom/brakefield/infinitestudio/sketchbook/Pointer;FF)V

    return v0

    :cond_3
    return v1
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 1

    .line 503
    iget-object v0, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->pressDownListener:Lcom/brakefield/infinitestudio/gestures/listeners/PressDownListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/brakefield/infinitestudio/gestures/listeners/PressDownListener;->onPressDown(Landroid/view/MotionEvent;)V

    :cond_0
    return-void
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 368
    iget-object v0, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->doubleTapListener:Lcom/brakefield/infinitestudio/gestures/listeners/DoubleTapListener;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->singleTapListener:Lcom/brakefield/infinitestudio/gestures/listeners/SingleTapListener;

    if-nez v0, :cond_0

    goto :goto_0

    .line 370
    :cond_0
    new-instance v0, Lcom/brakefield/infinitestudio/sketchbook/Pointer;

    invoke-direct {v0, v1}, Lcom/brakefield/infinitestudio/sketchbook/Pointer;-><init>(I)V

    .line 371
    invoke-virtual {v0, p1, v1}, Lcom/brakefield/infinitestudio/sketchbook/Pointer;->update(Landroid/view/MotionEvent;I)V

    .line 373
    iget-object v0, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->singleTapListener:Lcom/brakefield/infinitestudio/gestures/listeners/SingleTapListener;

    invoke-interface {v0, p1}, Lcom/brakefield/infinitestudio/gestures/listeners/SingleTapListener;->onTap(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_1
    :goto_0
    return v1
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onTopEdgeDown()V
    .locals 1

    const/4 v0, 0x1

    .line 931
    iput-boolean v0, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->inTopEdge:Z

    return-void
.end method

.method public onTopLeftCornerDown()V
    .locals 1

    const/4 v0, 0x1

    .line 911
    iput-boolean v0, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->inTopLeftCorner:Z

    return-void
.end method

.method public onTopRightCornerDown()V
    .locals 1

    const/4 v0, 0x1

    .line 915
    iput-boolean v0, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->inTopRightCorner:Z

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 279
    iget-object v0, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->touchListener:Landroid/view/View$OnTouchListener;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->view:Landroid/view/View;

    invoke-interface {v0, v2, p1}, Landroid/view/View$OnTouchListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    .line 282
    :cond_0
    iget-object v0, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->gestureDetector:Landroidx/core/view/GestureDetectorCompat;

    if-nez v0, :cond_1

    .line 283
    new-instance v0, Landroidx/core/view/GestureDetectorCompat;

    iget-object v2, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->view:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2, p0}, Landroidx/core/view/GestureDetectorCompat;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->gestureDetector:Landroidx/core/view/GestureDetectorCompat;

    .line 284
    iget-object v2, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->doubleTapListener:Lcom/brakefield/infinitestudio/gestures/listeners/DoubleTapListener;

    if-eqz v2, :cond_1

    .line 285
    invoke-virtual {v0, p0}, Landroidx/core/view/GestureDetectorCompat;->setOnDoubleTapListener(Landroid/view/GestureDetector$OnDoubleTapListener;)V

    :cond_1
    const/4 v0, 0x0

    .line 289
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_2

    iget-object v0, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->gestureDetector:Landroidx/core/view/GestureDetectorCompat;

    invoke-virtual {v0, p1}, Landroidx/core/view/GestureDetectorCompat;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 290
    :cond_2
    invoke-virtual {p0, p1}, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->handleTouchEvent(Landroid/view/MotionEvent;)V

    :cond_3
    return v1
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1

    .line 253
    iget-object p1, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->view:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    iput p1, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->width:I

    .line 254
    iget-object p1, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->view:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    iput p1, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->height:I

    const/high16 p1, 0x41f00000    # 30.0f

    .line 256
    invoke-static {p1}, Lcom/brakefield/infinitestudio/ResourceHelper;->dp(F)F

    move-result p1

    const/high16 v0, 0x40a00000    # 5.0f

    .line 258
    invoke-static {v0}, Lcom/brakefield/infinitestudio/ResourceHelper;->dp(F)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->MOVE_DISTANCE:I

    float-to-int v0, p1

    .line 260
    sput v0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->LEFT_EDGE:I

    .line 261
    sput v0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->TOP_EDGE:I

    .line 262
    iget v0, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->width:I

    int-to-float v0, v0

    sub-float/2addr v0, p1

    float-to-int v0, v0

    sput v0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->RIGHT_EDGE:I

    .line 263
    iget v0, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->height:I

    int-to-float v0, v0

    sub-float/2addr v0, p1

    float-to-int p1, v0

    sput p1, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->BOTTOM_EDGE:I

    return-void
.end method

.method public setBottomEdgeClickListener(Lcom/brakefield/infinitestudio/gestures/listeners/ClickListener;)V
    .locals 0

    .line 1229
    iput-object p1, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->bottomEdgeClickListener:Lcom/brakefield/infinitestudio/gestures/listeners/ClickListener;

    return-void
.end method

.method public setBottomEdgePullListener(Lcom/brakefield/infinitestudio/gestures/listeners/PullListener;)V
    .locals 0

    .line 1233
    iput-object p1, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->bottomEdgePullListener:Lcom/brakefield/infinitestudio/gestures/listeners/PullListener;

    return-void
.end method

.method public setBottomEdgeSlideListener(Lcom/brakefield/infinitestudio/gestures/listeners/SlideListener;)V
    .locals 0

    .line 1237
    iput-object p1, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->bottomEdgeSlideListener:Lcom/brakefield/infinitestudio/gestures/listeners/SlideListener;

    return-void
.end method

.method public setBottomLeftClickListener(Lcom/brakefield/infinitestudio/gestures/listeners/ClickListener;)V
    .locals 0

    .line 1221
    iput-object p1, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->bottomLeftCornerClickListener:Lcom/brakefield/infinitestudio/gestures/listeners/ClickListener;

    return-void
.end method

.method public setBottomLeftClickListener(Lcom/brakefield/infinitestudio/gestures/listeners/PullListener;)V
    .locals 0

    .line 1225
    iput-object p1, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->bottomLeftCornerPullListener:Lcom/brakefield/infinitestudio/gestures/listeners/PullListener;

    return-void
.end method

.method public setBottomRightCornerClickListener(Lcom/brakefield/infinitestudio/gestures/listeners/ClickListener;)V
    .locals 0

    .line 1220
    iput-object p1, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->bottomRightCornerClickListener:Lcom/brakefield/infinitestudio/gestures/listeners/ClickListener;

    return-void
.end method

.method public setBottomRightPullListener(Lcom/brakefield/infinitestudio/gestures/listeners/PullListener;)V
    .locals 0

    .line 1224
    iput-object p1, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->bottomRightCornerPullListener:Lcom/brakefield/infinitestudio/gestures/listeners/PullListener;

    return-void
.end method

.method public setEraserListener(Lcom/brakefield/infinitestudio/gestures/listeners/EraserListener;)V
    .locals 0

    .line 1209
    iput-object p1, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->eraserListener:Lcom/brakefield/infinitestudio/gestures/listeners/EraserListener;

    return-void
.end method

.method public setFingerListener(Lcom/brakefield/infinitestudio/gestures/listeners/FingerListener;)V
    .locals 0

    .line 1207
    iput-object p1, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->fingerListener:Lcom/brakefield/infinitestudio/gestures/listeners/FingerListener;

    return-void
.end method

.method public setFiveFingerListener(Lcom/brakefield/infinitestudio/gestures/listeners/FiveFingerListener;)V
    .locals 0

    .line 1217
    iput-object p1, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->fiveFingerListener:Lcom/brakefield/infinitestudio/gestures/listeners/FiveFingerListener;

    return-void
.end method

.method public setFocusChangeListener(Lcom/brakefield/infinitestudio/gestures/listeners/FocusChangeListener;)V
    .locals 0

    .line 1240
    iput-object p1, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->focusChangeListener:Lcom/brakefield/infinitestudio/gestures/listeners/FocusChangeListener;

    return-void
.end method

.method public setFourFingerListener(Lcom/brakefield/infinitestudio/gestures/listeners/FourFingerListener;)V
    .locals 0

    .line 1216
    iput-object p1, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->fourFingerListener:Lcom/brakefield/infinitestudio/gestures/listeners/FourFingerListener;

    return-void
.end method

.method public setHoverListener(Lcom/brakefield/infinitestudio/gestures/listeners/HoverListener;)V
    .locals 0

    .line 1208
    iput-object p1, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->hoverListener:Lcom/brakefield/infinitestudio/gestures/listeners/HoverListener;

    return-void
.end method

.method public setLeftEdgeClickListener(Lcom/brakefield/infinitestudio/gestures/listeners/ClickListener;)V
    .locals 0

    .line 1226
    iput-object p1, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->leftEdgeClickListener:Lcom/brakefield/infinitestudio/gestures/listeners/ClickListener;

    return-void
.end method

.method public setLeftEdgePullListener(Lcom/brakefield/infinitestudio/gestures/listeners/PullListener;)V
    .locals 0

    .line 1230
    iput-object p1, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->leftEdgePullListener:Lcom/brakefield/infinitestudio/gestures/listeners/PullListener;

    return-void
.end method

.method public setLeftEdgeSlideListener(Lcom/brakefield/infinitestudio/gestures/listeners/SlideListener;)V
    .locals 0

    .line 1234
    iput-object p1, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->leftEdgeSlideListener:Lcom/brakefield/infinitestudio/gestures/listeners/SlideListener;

    return-void
.end method

.method public setMouseScrollListener(Lcom/brakefield/infinitestudio/gestures/listeners/MouseScrollListener;)V
    .locals 0

    .line 1238
    iput-object p1, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->mouseScrollListener:Lcom/brakefield/infinitestudio/gestures/listeners/MouseScrollListener;

    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    .line 267
    new-instance v0, Lcom/brakefield/infinitestudio/gestures/GestureViewController$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0, p1}, Lcom/brakefield/infinitestudio/gestures/GestureViewController$$ExternalSyntheticLambda3;-><init>(Lcom/brakefield/infinitestudio/gestures/GestureViewController;Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0, v0}, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->setOnSingleTapListener(Lcom/brakefield/infinitestudio/gestures/listeners/SingleTapListener;)V

    return-void
.end method

.method public setOnDoubleTapListener(Lcom/brakefield/infinitestudio/gestures/listeners/DoubleTapListener;)V
    .locals 0

    .line 1205
    iput-object p1, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->doubleTapListener:Lcom/brakefield/infinitestudio/gestures/listeners/DoubleTapListener;

    return-void
.end method

.method public setOnLongpressDragListener(Lcom/brakefield/infinitestudio/gestures/listeners/LongpressDragListener;)V
    .locals 0

    .line 1204
    iput-object p1, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->longpressDragListener:Lcom/brakefield/infinitestudio/gestures/listeners/LongpressDragListener;

    return-void
.end method

.method public setOnLongpressListener(Lcom/brakefield/infinitestudio/gestures/listeners/LongpressListener;)V
    .locals 0

    .line 1203
    iput-object p1, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->longpressListener:Lcom/brakefield/infinitestudio/gestures/listeners/LongpressListener;

    return-void
.end method

.method public setOnSingleTapListener(Lcom/brakefield/infinitestudio/gestures/listeners/SingleTapListener;)V
    .locals 0

    .line 1206
    iput-object p1, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->singleTapListener:Lcom/brakefield/infinitestudio/gestures/listeners/SingleTapListener;

    return-void
.end method

.method public setOnTouchListener(Landroid/view/View$OnTouchListener;)V
    .locals 0

    .line 274
    iput-object p1, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->touchListener:Landroid/view/View$OnTouchListener;

    return-void
.end method

.method public setPressDownListener(Lcom/brakefield/infinitestudio/gestures/listeners/PressDownListener;)V
    .locals 0

    .line 1239
    iput-object p1, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->pressDownListener:Lcom/brakefield/infinitestudio/gestures/listeners/PressDownListener;

    return-void
.end method

.method public setRightEdgeClickListener(Lcom/brakefield/infinitestudio/gestures/listeners/ClickListener;)V
    .locals 0

    .line 1228
    iput-object p1, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->rightEdgeClickListener:Lcom/brakefield/infinitestudio/gestures/listeners/ClickListener;

    return-void
.end method

.method public setRightEdgePullListener(Lcom/brakefield/infinitestudio/gestures/listeners/PullListener;)V
    .locals 0

    .line 1232
    iput-object p1, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->rightEdgePullListener:Lcom/brakefield/infinitestudio/gestures/listeners/PullListener;

    return-void
.end method

.method public setRightEdgeSlideListener(Lcom/brakefield/infinitestudio/gestures/listeners/SlideListener;)V
    .locals 0

    .line 1236
    iput-object p1, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->rightEdgeSlideListener:Lcom/brakefield/infinitestudio/gestures/listeners/SlideListener;

    return-void
.end method

.method public setStylusButtonListener(Lcom/brakefield/infinitestudio/gestures/listeners/StylusButtonListener;)V
    .locals 0

    .line 1211
    iput-object p1, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->stylusButtonListener:Lcom/brakefield/infinitestudio/gestures/listeners/StylusButtonListener;

    return-void
.end method

.method public setStylusListener(Lcom/brakefield/infinitestudio/gestures/listeners/StylusListener;)V
    .locals 0

    .line 1210
    iput-object p1, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->stylusListener:Lcom/brakefield/infinitestudio/gestures/listeners/StylusListener;

    return-void
.end method

.method public setThreeFingerListener(Lcom/brakefield/infinitestudio/gestures/listeners/ThreeFingerListener;)V
    .locals 0

    .line 1213
    iput-object p1, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->threeFingerListener:Lcom/brakefield/infinitestudio/gestures/listeners/ThreeFingerListener;

    return-void
.end method

.method public setThreeFingerSlideHorizontalListener(Lcom/brakefield/infinitestudio/gestures/listeners/ThreeFingerSlideHorizontalListener;)V
    .locals 0

    .line 1214
    iput-object p1, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->threeFingerSlideHorizontalListener:Lcom/brakefield/infinitestudio/gestures/listeners/ThreeFingerSlideHorizontalListener;

    return-void
.end method

.method public setThreeFingerSlideVerticalListener(Lcom/brakefield/infinitestudio/gestures/listeners/ThreeFingerSlideVerticalListener;)V
    .locals 0

    .line 1215
    iput-object p1, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->threeFingerSlideVerticalListener:Lcom/brakefield/infinitestudio/gestures/listeners/ThreeFingerSlideVerticalListener;

    return-void
.end method

.method public setTopEdgeClickListener(Lcom/brakefield/infinitestudio/gestures/listeners/ClickListener;)V
    .locals 0

    .line 1227
    iput-object p1, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->topEdgeClickListener:Lcom/brakefield/infinitestudio/gestures/listeners/ClickListener;

    return-void
.end method

.method public setTopEdgePullListener(Lcom/brakefield/infinitestudio/gestures/listeners/PullListener;)V
    .locals 0

    .line 1231
    iput-object p1, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->topEdgePullListener:Lcom/brakefield/infinitestudio/gestures/listeners/PullListener;

    return-void
.end method

.method public setTopEdgeSlideListener(Lcom/brakefield/infinitestudio/gestures/listeners/SlideListener;)V
    .locals 0

    .line 1235
    iput-object p1, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->topEdgeSlideListener:Lcom/brakefield/infinitestudio/gestures/listeners/SlideListener;

    return-void
.end method

.method public setTopLeftCornerClickListener(Lcom/brakefield/infinitestudio/gestures/listeners/ClickListener;)V
    .locals 0

    .line 1218
    iput-object p1, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->topLeftCornerClickListener:Lcom/brakefield/infinitestudio/gestures/listeners/ClickListener;

    return-void
.end method

.method public setTopLeftPullListener(Lcom/brakefield/infinitestudio/gestures/listeners/PullListener;)V
    .locals 0

    .line 1222
    iput-object p1, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->topLeftCornerPullListener:Lcom/brakefield/infinitestudio/gestures/listeners/PullListener;

    return-void
.end method

.method public setTopRightCornerClickListener(Lcom/brakefield/infinitestudio/gestures/listeners/ClickListener;)V
    .locals 0

    .line 1219
    iput-object p1, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->topRightCornerClickListener:Lcom/brakefield/infinitestudio/gestures/listeners/ClickListener;

    return-void
.end method

.method public setTopRightCornerPullListener(Lcom/brakefield/infinitestudio/gestures/listeners/PullListener;)V
    .locals 0

    .line 1223
    iput-object p1, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->topRightCornerPullListener:Lcom/brakefield/infinitestudio/gestures/listeners/PullListener;

    return-void
.end method

.method public setTwoFingerListener(Lcom/brakefield/infinitestudio/gestures/listeners/TwoFingerListener;)V
    .locals 0

    .line 1212
    iput-object p1, p0, Lcom/brakefield/infinitestudio/gestures/GestureViewController;->twoFingerListener:Lcom/brakefield/infinitestudio/gestures/listeners/TwoFingerListener;

    return-void
.end method
