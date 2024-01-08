.class public Lcom/brakefield/painter/ui/LayersBar;
.super Ljava/lang/Object;
.source "LayersBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/brakefield/painter/ui/LayersBar$LayersAdapter;,
        Lcom/brakefield/painter/ui/LayersBar$LayerRef;,
        Lcom/brakefield/painter/ui/LayersBar$LoadLayerThumbTask;,
        Lcom/brakefield/painter/ui/LayersBar$LayerViewDelegate;,
        Lcom/brakefield/painter/ui/LayersBar$UpdateHandler;,
        Lcom/brakefield/painter/ui/LayersBar$ItemMoveCallback;,
        Lcom/brakefield/painter/ui/LayersBar$ItemTouchHelperContract;,
        Lcom/brakefield/painter/ui/LayersBar$LayerItemDecoration;,
        Lcom/brakefield/painter/ui/LayersBar$LoadMaskThumbTask;
    }
.end annotation


# instance fields
.field private final UpdateLayers:Lcom/brakefield/infinitestudio/MessageHandler$HandleData;

.field private activity:Landroid/app/Activity;

.field private adapter:Lcom/brakefield/painter/ui/LayersBar$LayersAdapter;

.field private binding:Lcom/brakefield/painter/databinding/LayersPanelBinding;

.field private final delegate:Lcom/brakefield/painter/ui/LayersBar$LayerViewDelegate;

.field private expanded:Z

.field private isPinching:Z

.field private final layers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/brakefield/painter/ui/LayersBar$LayerRef;",
            ">;"
        }
    .end annotation
.end field

.field private layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

.field public messages:[Lcom/brakefield/infinitestudio/MessageHandler$HandleData;

.field private panel:Landroid/view/View;

.field private pinchingAt:F

.field private pinchingBottom:I

.field private pinchingFromDistance:F

.field private pinchingToDistance:F

.field private pinchingTop:I

.field private queuedUpdateTask:Lcom/brakefield/painter/ui/LayersBar$LoadLayerThumbTask;

.field private queuedUpdateTasks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/brakefield/painter/ui/LayersBar$LoadLayerThumbTask;",
            ">;"
        }
    .end annotation
.end field

.field private res:Landroid/content/res/Resources;

.field private ui:Lcom/brakefield/painter/ui/SimpleUI;

.field private updateHandler:Lcom/brakefield/painter/ui/LayersBar$UpdateHandler;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 81
    iput-boolean v0, p0, Lcom/brakefield/painter/ui/LayersBar;->expanded:Z

    .line 83
    new-instance v1, Lcom/brakefield/painter/ui/LayersBar$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0}, Lcom/brakefield/painter/ui/LayersBar$$ExternalSyntheticLambda5;-><init>(Lcom/brakefield/painter/ui/LayersBar;)V

    iput-object v1, p0, Lcom/brakefield/painter/ui/LayersBar;->UpdateLayers:Lcom/brakefield/infinitestudio/MessageHandler$HandleData;

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/brakefield/infinitestudio/MessageHandler$HandleData;

    aput-object v1, v2, v0

    .line 94
    iput-object v2, p0, Lcom/brakefield/painter/ui/LayersBar;->messages:[Lcom/brakefield/infinitestudio/MessageHandler$HandleData;

    .line 98
    new-instance v0, Lcom/brakefield/painter/ui/LayersBar$1;

    invoke-direct {v0, p0}, Lcom/brakefield/painter/ui/LayersBar$1;-><init>(Lcom/brakefield/painter/ui/LayersBar;)V

    iput-object v0, p0, Lcom/brakefield/painter/ui/LayersBar;->delegate:Lcom/brakefield/painter/ui/LayersBar$LayerViewDelegate;

    .line 596
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/brakefield/painter/ui/LayersBar;->layers:Ljava/util/List;

    return-void
.end method

.method static synthetic access$1200(Lcom/brakefield/painter/ui/LayersBar;)Landroid/content/res/Resources;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/brakefield/painter/ui/LayersBar;->res:Landroid/content/res/Resources;

    return-object p0
.end method

.method static synthetic access$200(Lcom/brakefield/painter/ui/LayersBar;)Landroid/app/Activity;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/brakefield/painter/ui/LayersBar;->activity:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic access$2400(Lcom/brakefield/painter/ui/LayersBar;)Ljava/util/List;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/brakefield/painter/ui/LayersBar;->layers:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$2500(Lcom/brakefield/painter/ui/LayersBar;)Lcom/brakefield/painter/ui/LayersBar$LayersAdapter;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/brakefield/painter/ui/LayersBar;->adapter:Lcom/brakefield/painter/ui/LayersBar$LayersAdapter;

    return-object p0
.end method

.method static synthetic access$300(Lcom/brakefield/painter/ui/LayersBar;)Lcom/brakefield/painter/ui/SimpleUI;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/brakefield/painter/ui/LayersBar;->ui:Lcom/brakefield/painter/ui/SimpleUI;

    return-object p0
.end method

.method static synthetic access$400(Lcom/brakefield/painter/ui/LayersBar;)Lcom/brakefield/painter/ui/LayersBar$LoadLayerThumbTask;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/brakefield/painter/ui/LayersBar;->queuedUpdateTask:Lcom/brakefield/painter/ui/LayersBar$LoadLayerThumbTask;

    return-object p0
.end method

.method static synthetic access$402(Lcom/brakefield/painter/ui/LayersBar;Lcom/brakefield/painter/ui/LayersBar$LoadLayerThumbTask;)Lcom/brakefield/painter/ui/LayersBar$LoadLayerThumbTask;
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/brakefield/painter/ui/LayersBar;->queuedUpdateTask:Lcom/brakefield/painter/ui/LayersBar$LoadLayerThumbTask;

    return-object p1
.end method

.method static synthetic access$500(Lcom/brakefield/painter/ui/LayersBar;)Ljava/util/ArrayList;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/brakefield/painter/ui/LayersBar;->queuedUpdateTasks:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$600(Lcom/brakefield/painter/ui/LayersBar;I)Lcom/brakefield/painter/ui/LayersBar$LayerRef;
    .locals 0

    .line 68
    invoke-direct {p0, p1}, Lcom/brakefield/painter/ui/LayersBar;->findLayerById(I)Lcom/brakefield/painter/ui/LayersBar$LayerRef;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$800(Lcom/brakefield/painter/ui/LayersBar;Lcom/brakefield/painter/ui/LayersBar$LayerRef;)V
    .locals 0

    .line 68
    invoke-direct {p0, p1}, Lcom/brakefield/painter/ui/LayersBar;->invalidateLayerListForTarget(Lcom/brakefield/painter/ui/LayersBar$LayerRef;)V

    return-void
.end method

.method private expandOrCollapsePanel(F)V
    .locals 8

    .line 373
    iget-object v0, p0, Lcom/brakefield/painter/ui/LayersBar;->res:Landroid/content/res/Resources;

    const v1, 0x7f0700f6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    .line 374
    iget-object v1, p0, Lcom/brakefield/painter/ui/LayersBar;->res:Landroid/content/res/Resources;

    const v2, 0x7f0700f7

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    .line 376
    iget-object v3, p0, Lcom/brakefield/painter/ui/LayersBar;->res:Landroid/content/res/Resources;

    const v4, 0x7f070061

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 377
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v4

    int-to-float v3, v3

    cmpl-float v3, v4, v3

    if-lez v3, :cond_3

    .line 381
    iget-object v3, p0, Lcom/brakefield/painter/ui/LayersBar;->res:Landroid/content/res/Resources;

    const v4, 0x7f0700f8

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    .line 382
    iget-object v4, p0, Lcom/brakefield/painter/ui/LayersBar;->res:Landroid/content/res/Resources;

    invoke-virtual {v4, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    .line 383
    iget-object v4, p0, Lcom/brakefield/painter/ui/LayersBar;->panel:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    const/4 v5, 0x0

    cmpg-float v6, p1, v5

    const/4 v7, 0x0

    if-gez v6, :cond_0

    .line 388
    iget-object v3, p0, Lcom/brakefield/painter/ui/LayersBar;->binding:Lcom/brakefield/painter/databinding/LayersPanelBinding;

    iget-object v3, v3, Lcom/brakefield/painter/databinding/LayersPanelBinding;->layersExpandedOptions:Landroidx/constraintlayout/helper/widget/Layer;

    invoke-virtual {v3, v7}, Landroidx/constraintlayout/helper/widget/Layer;->setVisibility(I)V

    const/4 v3, 0x1

    .line 389
    iput-boolean v3, p0, Lcom/brakefield/painter/ui/LayersBar;->expanded:Z

    move v3, v2

    goto :goto_0

    .line 392
    :cond_0
    iget-object v2, p0, Lcom/brakefield/painter/ui/LayersBar;->binding:Lcom/brakefield/painter/databinding/LayersPanelBinding;

    iget-object v2, v2, Lcom/brakefield/painter/databinding/LayersPanelBinding;->layersExpandedOptions:Landroidx/constraintlayout/helper/widget/Layer;

    const/16 v6, 0x8

    invoke-virtual {v2, v6}, Landroidx/constraintlayout/helper/widget/Layer;->setVisibility(I)V

    .line 393
    iput-boolean v7, p0, Lcom/brakefield/painter/ui/LayersBar;->expanded:Z

    .line 396
    :goto_0
    invoke-virtual {p0}, Lcom/brakefield/painter/ui/LayersBar;->update()V

    .line 397
    invoke-virtual {p0}, Lcom/brakefield/painter/ui/LayersBar;->updateLayerList()V

    if-ne v3, v4, :cond_1

    return-void

    :cond_1
    cmpl-float p1, p1, v5

    if-lez p1, :cond_2

    goto :goto_1

    :cond_2
    move v0, v1

    .line 402
    :goto_1
    iget-object p1, p0, Lcom/brakefield/painter/ui/LayersBar;->panel:Landroid/view/View;

    float-to-int v0, v0

    int-to-float v0, v0

    invoke-static {p1, v0}, Lcom/brakefield/infinitestudio/ui/animation/SpringAnimationHelper;->changeWidth(Landroid/view/View;F)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 403
    invoke-virtual {p1}, Landroidx/dynamicanimation/animation/SpringAnimation;->start()V

    :cond_3
    return-void
.end method

.method private findLayerById(I)Lcom/brakefield/painter/ui/LayersBar$LayerRef;
    .locals 3

    .line 464
    iget-object v0, p0, Lcom/brakefield/painter/ui/LayersBar;->layers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/brakefield/painter/ui/LayersBar$LayerRef;

    .line 465
    invoke-static {v1}, Lcom/brakefield/painter/ui/LayersBar$LayerRef;->access$000(Lcom/brakefield/painter/ui/LayersBar$LayerRef;)I

    move-result v2

    if-ne v2, p1, :cond_0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private getSelectedIndex(I)I
    .locals 2

    const/4 v0, 0x0

    .line 753
    :goto_0
    iget-object v1, p0, Lcom/brakefield/painter/ui/LayersBar;->layers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 754
    iget-object v1, p0, Lcom/brakefield/painter/ui/LayersBar;->layers:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/brakefield/painter/ui/LayersBar$LayerRef;

    .line 755
    invoke-static {v1}, Lcom/brakefield/painter/ui/LayersBar$LayerRef;->access$000(Lcom/brakefield/painter/ui/LayersBar$LayerRef;)I

    move-result v1

    if-ne v1, p1, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    :goto_1
    return v0
.end method

.method private invalidateLayerListForTarget(Lcom/brakefield/painter/ui/LayersBar$LayerRef;)V
    .locals 1

    .line 706
    invoke-static {p1}, Lcom/brakefield/painter/ui/LayersBar$LayerRef;->access$000(Lcom/brakefield/painter/ui/LayersBar$LayerRef;)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/brakefield/painter/ui/LayersBar;->findLayerById(I)Lcom/brakefield/painter/ui/LayersBar$LayerRef;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 708
    :cond_0
    iget-object v0, p0, Lcom/brakefield/painter/ui/LayersBar;->layers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    .line 709
    iget-object v0, p0, Lcom/brakefield/painter/ui/LayersBar;->adapter:Lcom/brakefield/painter/ui/LayersBar$LayersAdapter;

    invoke-virtual {v0, p1}, Lcom/brakefield/painter/ui/LayersBar$LayersAdapter;->notifyItemChanged(I)V

    :cond_1
    return-void
.end method

.method static synthetic lambda$setup$1(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method static synthetic lambda$setup$2(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method private pinchLayers([Lcom/brakefield/infinitestudio/sketchbook/Pointer;[Lcom/brakefield/infinitestudio/sketchbook/Pointer;)V
    .locals 12

    .line 409
    iget-boolean v0, p0, Lcom/brakefield/painter/ui/LayersBar;->isPinching:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_6

    .line 410
    iget-object v0, p0, Lcom/brakefield/painter/ui/LayersBar;->layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v0

    .line 411
    iget-object v3, p0, Lcom/brakefield/painter/ui/LayersBar;->layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v3}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result v3

    const/4 v4, -0x1

    move v5, v4

    :goto_0
    if-gt v0, v3, :cond_3

    .line 417
    iget-object v6, p0, Lcom/brakefield/painter/ui/LayersBar;->layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v6, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 419
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    .line 420
    invoke-virtual {v6, v7}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 421
    aget-object v6, p1, v1

    iget v6, v6, Lcom/brakefield/infinitestudio/sketchbook/Pointer;->x:F

    float-to-int v6, v6

    .line 422
    aget-object v8, p1, v1

    iget v8, v8, Lcom/brakefield/infinitestudio/sketchbook/Pointer;->y:F

    float-to-int v8, v8

    .line 423
    aget-object v9, p1, v2

    iget v9, v9, Lcom/brakefield/infinitestudio/sketchbook/Pointer;->x:F

    float-to-int v9, v9

    .line 424
    aget-object v10, p1, v2

    iget v10, v10, Lcom/brakefield/infinitestudio/sketchbook/Pointer;->y:F

    float-to-int v10, v10

    .line 425
    iget-object v11, p0, Lcom/brakefield/painter/ui/LayersBar;->panel:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getTop()I

    move-result v11

    sub-int/2addr v8, v11

    .line 426
    iget-object v11, p0, Lcom/brakefield/painter/ui/LayersBar;->panel:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getTop()I

    move-result v11

    sub-int/2addr v10, v11

    if-ne v5, v4, :cond_1

    .line 427
    invoke-virtual {v7, v6, v8}, Landroid/graphics/Rect;->contains(II)Z

    move-result v11

    if-nez v11, :cond_0

    invoke-virtual {v7, v9, v10}, Landroid/graphics/Rect;->contains(II)Z

    move-result v11

    if-eqz v11, :cond_1

    :cond_0
    move v5, v0

    goto :goto_1

    .line 429
    :cond_1
    invoke-virtual {v7, v6, v8}, Landroid/graphics/Rect;->contains(II)Z

    move-result v6

    if-nez v6, :cond_4

    invoke-virtual {v7, v9, v10}, Landroid/graphics/Rect;->contains(II)Z

    move-result v6

    if-eqz v6, :cond_2

    goto :goto_2

    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    move v0, v4

    :cond_4
    :goto_2
    if-eq v5, v4, :cond_5

    if-eq v0, v4, :cond_5

    move v3, v2

    goto :goto_3

    :cond_5
    move v3, v1

    .line 436
    :goto_3
    iput-boolean v3, p0, Lcom/brakefield/painter/ui/LayersBar;->isPinching:Z

    .line 437
    aget-object v3, p1, v1

    iget v3, v3, Lcom/brakefield/infinitestudio/sketchbook/Pointer;->x:F

    aget-object v4, p1, v1

    iget v4, v4, Lcom/brakefield/infinitestudio/sketchbook/Pointer;->y:F

    aget-object v6, p1, v2

    iget v6, v6, Lcom/brakefield/infinitestudio/sketchbook/Pointer;->x:F

    aget-object v7, p1, v2

    iget v7, v7, Lcom/brakefield/infinitestudio/sketchbook/Pointer;->y:F

    invoke-static {v3, v4, v6, v7}, Lcom/brakefield/infinitestudio/utils/UsefulMethods;->dist(FFFF)F

    move-result v3

    iput v3, p0, Lcom/brakefield/painter/ui/LayersBar;->pinchingFromDistance:F

    .line 438
    aget-object v3, p1, v1

    iget v3, v3, Lcom/brakefield/infinitestudio/sketchbook/Pointer;->y:F

    aget-object p1, p1, v2

    iget p1, p1, Lcom/brakefield/infinitestudio/sketchbook/Pointer;->y:F

    add-float/2addr v3, p1

    const/high16 p1, 0x40000000    # 2.0f

    div-float/2addr v3, p1

    iput v3, p0, Lcom/brakefield/painter/ui/LayersBar;->pinchingAt:F

    .line 439
    iput v5, p0, Lcom/brakefield/painter/ui/LayersBar;->pinchingTop:I

    .line 440
    iput v0, p0, Lcom/brakefield/painter/ui/LayersBar;->pinchingBottom:I

    .line 443
    :cond_6
    iget-boolean p1, p0, Lcom/brakefield/painter/ui/LayersBar;->isPinching:Z

    if-eqz p1, :cond_8

    .line 444
    aget-object p1, p2, v1

    iget p1, p1, Lcom/brakefield/infinitestudio/sketchbook/Pointer;->x:F

    aget-object v0, p2, v1

    iget v0, v0, Lcom/brakefield/infinitestudio/sketchbook/Pointer;->y:F

    aget-object v1, p2, v2

    iget v1, v1, Lcom/brakefield/infinitestudio/sketchbook/Pointer;->x:F

    aget-object p2, p2, v2

    iget p2, p2, Lcom/brakefield/infinitestudio/sketchbook/Pointer;->y:F

    invoke-static {p1, v0, v1, p2}, Lcom/brakefield/infinitestudio/utils/UsefulMethods;->dist(FFFF)F

    move-result p1

    iput p1, p0, Lcom/brakefield/painter/ui/LayersBar;->pinchingToDistance:F

    .line 445
    iget p2, p0, Lcom/brakefield/painter/ui/LayersBar;->pinchingFromDistance:F

    iget-object v0, p0, Lcom/brakefield/painter/ui/LayersBar;->res:Landroid/content/res/Resources;

    const v1, 0x7f07005d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    add-float/2addr p2, v0

    invoke-static {p1, p2}, Ljava/lang/Math;->min(FF)F

    move-result p1

    iput p1, p0, Lcom/brakefield/painter/ui/LayersBar;->pinchingToDistance:F

    .line 447
    iget p1, p0, Lcom/brakefield/painter/ui/LayersBar;->pinchingTop:I

    :goto_4
    iget p2, p0, Lcom/brakefield/painter/ui/LayersBar;->pinchingBottom:I

    if-gt p1, p2, :cond_8

    .line 448
    iget-object p2, p0, Lcom/brakefield/painter/ui/LayersBar;->layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_7

    .line 450
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    .line 451
    iget v1, p0, Lcom/brakefield/painter/ui/LayersBar;->pinchingAt:F

    sub-float v1, v0, v1

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v2

    add-float/2addr v1, v3

    .line 453
    iget v3, p0, Lcom/brakefield/painter/ui/LayersBar;->pinchingToDistance:F

    iget v4, p0, Lcom/brakefield/painter/ui/LayersBar;->pinchingFromDistance:F

    div-float/2addr v3, v4

    mul-float/2addr v1, v3

    .line 454
    iget v3, p0, Lcom/brakefield/painter/ui/LayersBar;->pinchingAt:F

    add-float/2addr v3, v1

    sub-float/2addr v3, v0

    .line 455
    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v2

    sub-float/2addr v3, v0

    .line 457
    invoke-virtual {p2, v3}, Landroid/view/View;->setTranslationY(F)V

    :cond_7
    add-int/lit8 p1, p1, 0x1

    goto :goto_4

    :cond_8
    return-void
.end method

.method private setupButtons(Landroid/app/Activity;Lcom/brakefield/painter/ui/SimpleUI;)V
    .locals 1

    .line 331
    iget-object p1, p0, Lcom/brakefield/painter/ui/LayersBar;->binding:Lcom/brakefield/painter/databinding/LayersPanelBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/LayersPanelBinding;->layersAddButton:Landroid/widget/ImageView;

    invoke-static {p1}, Lcom/brakefield/infinitestudio/ui/UIManager;->setPressAction(Landroid/view/View;)V

    .line 332
    iget-object p1, p0, Lcom/brakefield/painter/ui/LayersBar;->binding:Lcom/brakefield/painter/databinding/LayersPanelBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/LayersPanelBinding;->layersAddButton:Landroid/widget/ImageView;

    invoke-static {}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->getIconColor()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 334
    iget-object p1, p0, Lcom/brakefield/painter/ui/LayersBar;->binding:Lcom/brakefield/painter/databinding/LayersPanelBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/LayersPanelBinding;->layersAddAdjustmentButton:Landroid/widget/FrameLayout;

    invoke-static {p1}, Lcom/brakefield/infinitestudio/ui/UIManager;->setPressAction(Landroid/view/View;)V

    .line 335
    iget-object p1, p0, Lcom/brakefield/painter/ui/LayersBar;->binding:Lcom/brakefield/painter/databinding/LayersPanelBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/LayersPanelBinding;->layersAddAdjustmentImage:Landroid/widget/ImageView;

    invoke-static {}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->getIconColor()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 337
    iget-object p1, p0, Lcom/brakefield/painter/ui/LayersBar;->binding:Lcom/brakefield/painter/databinding/LayersPanelBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/LayersPanelBinding;->layersAddGroupButton:Landroid/widget/FrameLayout;

    invoke-static {p1}, Lcom/brakefield/infinitestudio/ui/UIManager;->setPressAction(Landroid/view/View;)V

    .line 338
    iget-object p1, p0, Lcom/brakefield/painter/ui/LayersBar;->binding:Lcom/brakefield/painter/databinding/LayersPanelBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/LayersPanelBinding;->layersAddGroupImage:Landroid/widget/ImageView;

    invoke-static {}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->getIconColor()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 340
    iget-object p1, p0, Lcom/brakefield/painter/ui/LayersBar;->binding:Lcom/brakefield/painter/databinding/LayersPanelBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/LayersPanelBinding;->layersRenderingButton:Landroid/widget/ImageView;

    invoke-static {p1}, Lcom/brakefield/infinitestudio/ui/UIManager;->setPressAction(Landroid/view/View;)V

    .line 341
    iget-object p1, p0, Lcom/brakefield/painter/ui/LayersBar;->binding:Lcom/brakefield/painter/databinding/LayersPanelBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/LayersPanelBinding;->layersRenderingButton:Landroid/widget/ImageView;

    invoke-static {}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->getIconColor()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 343
    iget-object p1, p0, Lcom/brakefield/painter/ui/LayersBar;->binding:Lcom/brakefield/painter/databinding/LayersPanelBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/LayersPanelBinding;->backgroundColorButton:Lcom/brakefield/infinitestudio/ui/RoundButton;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/brakefield/infinitestudio/ui/RoundButton;->setBorder(Z)V

    .line 345
    iget-object p1, p0, Lcom/brakefield/painter/ui/LayersBar;->binding:Lcom/brakefield/painter/databinding/LayersPanelBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/LayersPanelBinding;->backgroundTrayVisibility:Landroid/widget/ImageView;

    invoke-static {p1}, Lcom/brakefield/infinitestudio/ui/UIManager;->setPressAction(Landroid/view/View;)V

    .line 346
    iget-object p1, p0, Lcom/brakefield/painter/ui/LayersBar;->binding:Lcom/brakefield/painter/databinding/LayersPanelBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/LayersPanelBinding;->backgroundTrayVisibility:Landroid/widget/ImageView;

    invoke-static {}, Lcom/brakefield/infinitestudio/ui/ThemeManager;->getIconColor()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 349
    iget-object p1, p0, Lcom/brakefield/painter/ui/LayersBar;->binding:Lcom/brakefield/painter/databinding/LayersPanelBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/LayersPanelBinding;->layersAddButton:Landroid/widget/ImageView;

    invoke-virtual {p2, p1}, Lcom/brakefield/painter/ui/SimpleUI;->bindUI(Landroid/view/View;)V

    .line 350
    iget-object p1, p0, Lcom/brakefield/painter/ui/LayersBar;->binding:Lcom/brakefield/painter/databinding/LayersPanelBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/LayersPanelBinding;->layersAddAdjustmentButton:Landroid/widget/FrameLayout;

    invoke-virtual {p2, p1}, Lcom/brakefield/painter/ui/SimpleUI;->bindUI(Landroid/view/View;)V

    .line 351
    iget-object p1, p0, Lcom/brakefield/painter/ui/LayersBar;->binding:Lcom/brakefield/painter/databinding/LayersPanelBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/LayersPanelBinding;->layersAddGroupButton:Landroid/widget/FrameLayout;

    invoke-virtual {p2, p1}, Lcom/brakefield/painter/ui/SimpleUI;->bindUI(Landroid/view/View;)V

    .line 352
    iget-object p1, p0, Lcom/brakefield/painter/ui/LayersBar;->binding:Lcom/brakefield/painter/databinding/LayersPanelBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/LayersPanelBinding;->layersRenderingButton:Landroid/widget/ImageView;

    invoke-virtual {p2, p1}, Lcom/brakefield/painter/ui/SimpleUI;->bindUI(Landroid/view/View;)V

    .line 353
    iget-object p1, p0, Lcom/brakefield/painter/ui/LayersBar;->binding:Lcom/brakefield/painter/databinding/LayersPanelBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/LayersPanelBinding;->backgroundColorButton:Lcom/brakefield/infinitestudio/ui/RoundButton;

    invoke-virtual {p2, p1}, Lcom/brakefield/painter/ui/SimpleUI;->bindUI(Landroid/view/View;)V

    .line 354
    iget-object p1, p0, Lcom/brakefield/painter/ui/LayersBar;->binding:Lcom/brakefield/painter/databinding/LayersPanelBinding;

    iget-object p1, p1, Lcom/brakefield/painter/databinding/LayersPanelBinding;->backgroundTrayVisibility:Landroid/widget/ImageView;

    invoke-virtual {p2, p1}, Lcom/brakefield/painter/ui/SimpleUI;->bindUI(Landroid/view/View;)V

    return-void
.end method

.method private setupLayerList()V
    .locals 3

    .line 359
    iget-object v0, p0, Lcom/brakefield/painter/ui/LayersBar;->layers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 360
    iget-object v0, p0, Lcom/brakefield/painter/ui/LayersBar;->queuedUpdateTasks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    .line 361
    iput-object v0, p0, Lcom/brakefield/painter/ui/LayersBar;->queuedUpdateTask:Lcom/brakefield/painter/ui/LayersBar$LoadLayerThumbTask;

    .line 363
    new-instance v0, Lcom/brakefield/painter/ui/LayersBar$ItemMoveCallback;

    iget-object v1, p0, Lcom/brakefield/painter/ui/LayersBar;->adapter:Lcom/brakefield/painter/ui/LayersBar$LayersAdapter;

    invoke-direct {v0, p0, v1}, Lcom/brakefield/painter/ui/LayersBar$ItemMoveCallback;-><init>(Lcom/brakefield/painter/ui/LayersBar;Lcom/brakefield/painter/ui/LayersBar$ItemTouchHelperContract;)V

    .line 364
    new-instance v1, Landroidx/recyclerview/widget/ItemTouchHelper;

    invoke-direct {v1, v0}, Landroidx/recyclerview/widget/ItemTouchHelper;-><init>(Landroidx/recyclerview/widget/ItemTouchHelper$Callback;)V

    .line 365
    iget-object v0, p0, Lcom/brakefield/painter/ui/LayersBar;->binding:Lcom/brakefield/painter/databinding/LayersPanelBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/LayersPanelBinding;->container:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/ItemTouchHelper;->attachToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 367
    iget-object v0, p0, Lcom/brakefield/painter/ui/LayersBar;->binding:Lcom/brakefield/painter/databinding/LayersPanelBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/LayersPanelBinding;->container:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/brakefield/painter/ui/LayersBar;->adapter:Lcom/brakefield/painter/ui/LayersBar$LayersAdapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 368
    iget-object v0, p0, Lcom/brakefield/painter/ui/LayersBar;->binding:Lcom/brakefield/painter/databinding/LayersPanelBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/LayersPanelBinding;->container:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Lcom/brakefield/painter/ui/LayersBar$LayerItemDecoration;

    iget-object v2, p0, Lcom/brakefield/painter/ui/LayersBar;->res:Landroid/content/res/Resources;

    invoke-direct {v1, p0, v2}, Lcom/brakefield/painter/ui/LayersBar$LayerItemDecoration;-><init>(Lcom/brakefield/painter/ui/LayersBar;Landroid/content/res/Resources;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    return-void
.end method


# virtual methods
.method public clearLayers()V
    .locals 1

    .line 713
    iget-object v0, p0, Lcom/brakefield/painter/ui/LayersBar;->layers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 714
    iget-object v0, p0, Lcom/brakefield/painter/ui/LayersBar;->queuedUpdateTasks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    .line 715
    iput-object v0, p0, Lcom/brakefield/painter/ui/LayersBar;->queuedUpdateTask:Lcom/brakefield/painter/ui/LayersBar$LoadLayerThumbTask;

    .line 716
    invoke-virtual {p0}, Lcom/brakefield/painter/ui/LayersBar;->updateLayerList()V

    .line 717
    iget-object v0, p0, Lcom/brakefield/painter/ui/LayersBar;->adapter:Lcom/brakefield/painter/ui/LayersBar$LayersAdapter;

    invoke-virtual {v0}, Lcom/brakefield/painter/ui/LayersBar$LayersAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public hide()V
    .locals 3

    .line 772
    iget-object v0, p0, Lcom/brakefield/painter/ui/LayersBar;->panel:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    return-void

    .line 773
    :cond_0
    iget-object v0, p0, Lcom/brakefield/painter/ui/LayersBar;->activity:Landroid/app/Activity;

    const v2, 0x7f010043

    invoke-static {v0, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 774
    iget-object v2, p0, Lcom/brakefield/painter/ui/LayersBar;->panel:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 775
    iget-object v0, p0, Lcom/brakefield/painter/ui/LayersBar;->panel:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public isShowing()Z
    .locals 1

    .line 779
    iget-object v0, p0, Lcom/brakefield/painter/ui/LayersBar;->panel:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method synthetic lambda$new$0$com-brakefield-painter-ui-LayersBar(Ljava/lang/Object;II)V
    .locals 0

    .line 83
    invoke-virtual {p0}, Lcom/brakefield/painter/ui/LayersBar;->updateLayerList()V

    return-void
.end method

.method synthetic lambda$setup$3$com-brakefield-painter-ui-LayersBar(Lcom/brakefield/infinitestudio/gestures/TwoFingerGesture;[Lcom/brakefield/infinitestudio/sketchbook/Pointer;[Lcom/brakefield/infinitestudio/sketchbook/Pointer;)V
    .locals 0

    .line 294
    invoke-direct {p0, p2, p3}, Lcom/brakefield/painter/ui/LayersBar;->pinchLayers([Lcom/brakefield/infinitestudio/sketchbook/Pointer;[Lcom/brakefield/infinitestudio/sketchbook/Pointer;)V

    return-void
.end method

.method synthetic lambda$setup$4$com-brakefield-painter-ui-LayersBar(Landroid/app/Activity;)V
    .locals 6

    .line 296
    iget-boolean v0, p0, Lcom/brakefield/painter/ui/LayersBar;->isPinching:Z

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    .line 297
    iput-boolean v0, p0, Lcom/brakefield/painter/ui/LayersBar;->isPinching:Z

    .line 298
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 299
    iget v2, p0, Lcom/brakefield/painter/ui/LayersBar;->pinchingTop:I

    :goto_0
    iget v3, p0, Lcom/brakefield/painter/ui/LayersBar;->pinchingBottom:I

    if-gt v2, v3, :cond_1

    .line 300
    iget-object v3, p0, Lcom/brakefield/painter/ui/LayersBar;->layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v3, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_0

    const/4 v4, 0x0

    .line 302
    invoke-virtual {v3, v4}, Landroid/view/View;->setTranslationY(F)V

    .line 303
    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/brakefield/painter/ui/LayersBar$LayerRef;

    .line 304
    invoke-static {v3}, Lcom/brakefield/painter/ui/LayersBar$LayerRef;->access$000(Lcom/brakefield/painter/ui/LayersBar$LayerRef;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 307
    :cond_1
    iget v2, p0, Lcom/brakefield/painter/ui/LayersBar;->pinchingToDistance:F

    const/high16 v3, 0x42a00000    # 80.0f

    invoke-static {v3}, Lcom/brakefield/infinitestudio/ResourceHelper;->dp(F)F

    move-result v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_4

    .line 308
    invoke-static {}, Lcom/brakefield/painter/PurchaseManager;->hasMaster()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 309
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 311
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [I

    .line 312
    :goto_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ge v0, v3, :cond_2

    .line 313
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 314
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    sub-int/2addr v5, v0

    sub-int/2addr v5, v4

    aput v3, v2, v5

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 316
    :cond_2
    invoke-static {v2, p1, v4}, Lcom/brakefield/painter/PainterLib;->groupLayers([IIZ)V

    .line 317
    invoke-virtual {p0}, Lcom/brakefield/painter/ui/LayersBar;->updateLayerList()V

    goto :goto_2

    :cond_3
    const-string v0, "Grouping layers"

    .line 318
    invoke-static {p1, v0}, Lcom/brakefield/painter/PurchaseManager;->showPurchaseSplash(Landroid/app/Activity;Ljava/lang/String;)V

    :cond_4
    :goto_2
    return-void
.end method

.method synthetic lambda$setup$5$com-brakefield-painter-ui-LayersBar(Lcom/brakefield/infinitestudio/gestures/SlideGesture;Landroid/graphics/PointF;F)V
    .locals 0

    .line 324
    invoke-direct {p0, p3}, Lcom/brakefield/painter/ui/LayersBar;->expandOrCollapsePanel(F)V

    return-void
.end method

.method public selectLayerAbove()V
    .locals 2

    .line 721
    invoke-static {}, Lcom/brakefield/painter/PainterLib;->selectedLayerId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/brakefield/painter/ui/LayersBar;->getSelectedIndex(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    if-lez v0, :cond_1

    add-int/lit8 v0, v0, -0x1

    .line 725
    iget-object v1, p0, Lcom/brakefield/painter/ui/LayersBar;->layers:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/brakefield/painter/ui/LayersBar$LayerRef;

    .line 726
    invoke-static {v0}, Lcom/brakefield/painter/ui/LayersBar$LayerRef;->access$000(Lcom/brakefield/painter/ui/LayersBar$LayerRef;)I

    move-result v0

    invoke-static {v0}, Lcom/brakefield/painter/PainterLib;->selectLayer(I)V

    .line 727
    iget-object v0, p0, Lcom/brakefield/painter/ui/LayersBar;->ui:Lcom/brakefield/painter/ui/SimpleUI;

    iget-object v1, p0, Lcom/brakefield/painter/ui/LayersBar;->activity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/brakefield/painter/ui/SimpleUI;->update(Landroid/app/Activity;)V

    .line 728
    iget-object v0, p0, Lcom/brakefield/painter/ui/LayersBar;->ui:Lcom/brakefield/painter/ui/SimpleUI;

    const v1, 0x7f12095a

    invoke-static {v1}, Lcom/brakefield/infinitestudio/Strings;->get(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/brakefield/painter/ui/SimpleUI;->showMessage(Ljava/lang/String;)V

    .line 729
    iget-object v0, p0, Lcom/brakefield/painter/ui/LayersBar;->ui:Lcom/brakefield/painter/ui/SimpleUI;

    invoke-virtual {v0}, Lcom/brakefield/painter/ui/SimpleUI;->requestRender()V

    goto :goto_0

    .line 731
    :cond_1
    iget-object v0, p0, Lcom/brakefield/painter/ui/LayersBar;->ui:Lcom/brakefield/painter/ui/SimpleUI;

    const v1, 0x7f12004d

    invoke-static {v1}, Lcom/brakefield/infinitestudio/Strings;->get(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/brakefield/painter/ui/SimpleUI;->showMessage(Ljava/lang/String;)V

    .line 732
    :goto_0
    iget-object v0, p0, Lcom/brakefield/painter/ui/LayersBar;->ui:Lcom/brakefield/painter/ui/SimpleUI;

    invoke-virtual {v0}, Lcom/brakefield/painter/ui/SimpleUI;->requestRender()V

    .line 733
    iget-object v0, p0, Lcom/brakefield/painter/ui/LayersBar;->ui:Lcom/brakefield/painter/ui/SimpleUI;

    invoke-virtual {v0}, Lcom/brakefield/painter/ui/SimpleUI;->updateLayers()V

    return-void
.end method

.method public selectLayerBelow()V
    .locals 2

    .line 737
    invoke-static {}, Lcom/brakefield/painter/PainterLib;->selectedLayerId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/brakefield/painter/ui/LayersBar;->getSelectedIndex(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return-void

    .line 739
    :cond_0
    invoke-static {}, Lcom/brakefield/painter/PainterLib;->numberOfLayers()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_1

    add-int/lit8 v0, v0, 0x1

    .line 741
    iget-object v1, p0, Lcom/brakefield/painter/ui/LayersBar;->layers:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/brakefield/painter/ui/LayersBar$LayerRef;

    .line 742
    invoke-static {v0}, Lcom/brakefield/painter/ui/LayersBar$LayerRef;->access$000(Lcom/brakefield/painter/ui/LayersBar$LayerRef;)I

    move-result v0

    invoke-static {v0}, Lcom/brakefield/painter/PainterLib;->selectLayer(I)V

    .line 743
    iget-object v0, p0, Lcom/brakefield/painter/ui/LayersBar;->ui:Lcom/brakefield/painter/ui/SimpleUI;

    iget-object v1, p0, Lcom/brakefield/painter/ui/LayersBar;->activity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/brakefield/painter/ui/SimpleUI;->update(Landroid/app/Activity;)V

    .line 744
    iget-object v0, p0, Lcom/brakefield/painter/ui/LayersBar;->ui:Lcom/brakefield/painter/ui/SimpleUI;

    const v1, 0x7f120959

    invoke-static {v1}, Lcom/brakefield/infinitestudio/Strings;->get(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/brakefield/painter/ui/SimpleUI;->showMessage(Ljava/lang/String;)V

    goto :goto_0

    .line 746
    :cond_1
    iget-object v0, p0, Lcom/brakefield/painter/ui/LayersBar;->ui:Lcom/brakefield/painter/ui/SimpleUI;

    const v1, 0x7f12004c

    invoke-static {v1}, Lcom/brakefield/infinitestudio/Strings;->get(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/brakefield/painter/ui/SimpleUI;->showMessage(Ljava/lang/String;)V

    .line 747
    :goto_0
    iget-object v0, p0, Lcom/brakefield/painter/ui/LayersBar;->ui:Lcom/brakefield/painter/ui/SimpleUI;

    invoke-virtual {v0}, Lcom/brakefield/painter/ui/SimpleUI;->requestRender()V

    .line 748
    iget-object v0, p0, Lcom/brakefield/painter/ui/LayersBar;->ui:Lcom/brakefield/painter/ui/SimpleUI;

    invoke-virtual {v0}, Lcom/brakefield/painter/ui/SimpleUI;->updateLayers()V

    return-void
.end method

.method public setup(Landroid/app/Activity;Lcom/brakefield/painter/ui/SimpleUI;Lcom/brakefield/painter/databinding/LayersPanelBinding;Landroid/view/View;)V
    .locals 3

    .line 271
    iput-object p1, p0, Lcom/brakefield/painter/ui/LayersBar;->activity:Landroid/app/Activity;

    .line 272
    iput-object p2, p0, Lcom/brakefield/painter/ui/LayersBar;->ui:Lcom/brakefield/painter/ui/SimpleUI;

    .line 273
    iput-object p3, p0, Lcom/brakefield/painter/ui/LayersBar;->binding:Lcom/brakefield/painter/databinding/LayersPanelBinding;

    .line 274
    iput-object p4, p0, Lcom/brakefield/painter/ui/LayersBar;->panel:Landroid/view/View;

    .line 276
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/brakefield/painter/ui/LayersBar;->res:Landroid/content/res/Resources;

    .line 278
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/brakefield/painter/ui/LayersBar;->queuedUpdateTasks:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 279
    iput-object v0, p0, Lcom/brakefield/painter/ui/LayersBar;->queuedUpdateTask:Lcom/brakefield/painter/ui/LayersBar$LoadLayerThumbTask;

    .line 281
    new-instance v1, Lcom/brakefield/painter/ui/LayersBar$LayersAdapter;

    iget-object v2, p0, Lcom/brakefield/painter/ui/LayersBar;->delegate:Lcom/brakefield/painter/ui/LayersBar$LayerViewDelegate;

    invoke-direct {v1, p0, v2}, Lcom/brakefield/painter/ui/LayersBar$LayersAdapter;-><init>(Lcom/brakefield/painter/ui/LayersBar;Lcom/brakefield/painter/ui/LayersBar$LayerViewDelegate;)V

    iput-object v1, p0, Lcom/brakefield/painter/ui/LayersBar;->adapter:Lcom/brakefield/painter/ui/LayersBar$LayersAdapter;

    .line 282
    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v1, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/brakefield/painter/ui/LayersBar;->layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 283
    new-instance v1, Lcom/brakefield/painter/ui/LayersBar$UpdateHandler;

    iget-object v2, p0, Lcom/brakefield/painter/ui/LayersBar;->UpdateLayers:Lcom/brakefield/infinitestudio/MessageHandler$HandleData;

    invoke-direct {v1, p3, v2, p2}, Lcom/brakefield/painter/ui/LayersBar$UpdateHandler;-><init>(Lcom/brakefield/painter/databinding/LayersPanelBinding;Lcom/brakefield/infinitestudio/MessageHandler$HandleData;Lcom/brakefield/painter/ui/SimpleUI;)V

    iput-object v1, p0, Lcom/brakefield/painter/ui/LayersBar;->updateHandler:Lcom/brakefield/painter/ui/LayersBar$UpdateHandler;

    .line 284
    iget-object v1, p3, Lcom/brakefield/painter/databinding/LayersPanelBinding;->container:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v2, p0, Lcom/brakefield/painter/ui/LayersBar;->layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 285
    iget-object v1, p3, Lcom/brakefield/painter/databinding/LayersPanelBinding;->container:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 287
    new-instance v0, Lcom/brakefield/infinitestudio/ui/BarDrawable;

    invoke-direct {v0, p4}, Lcom/brakefield/infinitestudio/ui/BarDrawable;-><init>(Landroid/view/View;)V

    invoke-virtual {p4, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 288
    new-instance v0, Lcom/brakefield/painter/ui/LayersBar$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/brakefield/painter/ui/LayersBar$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {p4, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 289
    new-instance v0, Lcom/brakefield/painter/ui/LayersBar$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/brakefield/painter/ui/LayersBar$$ExternalSyntheticLambda1;-><init>()V

    invoke-virtual {p4, v0}, Landroid/view/View;->setOnGenericMotionListener(Landroid/view/View$OnGenericMotionListener;)V

    .line 291
    invoke-direct {p0, p1, p2}, Lcom/brakefield/painter/ui/LayersBar;->setupButtons(Landroid/app/Activity;Lcom/brakefield/painter/ui/SimpleUI;)V

    .line 292
    invoke-direct {p0}, Lcom/brakefield/painter/ui/LayersBar;->setupLayerList()V

    .line 294
    new-instance p2, Lcom/brakefield/infinitestudio/gestures/TwoFingerGesture;

    iget-object p4, p0, Lcom/brakefield/painter/ui/LayersBar;->res:Landroid/content/res/Resources;

    new-instance v0, Lcom/brakefield/painter/ui/LayersBar$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/brakefield/painter/ui/LayersBar$$ExternalSyntheticLambda2;-><init>(Lcom/brakefield/painter/ui/LayersBar;)V

    invoke-direct {p2, p4, v0}, Lcom/brakefield/infinitestudio/gestures/TwoFingerGesture;-><init>(Landroid/content/res/Resources;Lcom/brakefield/infinitestudio/gestures/TwoFingerGesture$Listener;)V

    .line 295
    new-instance p4, Lcom/brakefield/painter/ui/LayersBar$$ExternalSyntheticLambda3;

    invoke-direct {p4, p0, p1}, Lcom/brakefield/painter/ui/LayersBar$$ExternalSyntheticLambda3;-><init>(Lcom/brakefield/painter/ui/LayersBar;Landroid/app/Activity;)V

    invoke-virtual {p2, p4}, Lcom/brakefield/infinitestudio/gestures/TwoFingerGesture;->setOnEndedListener(Ljava/lang/Runnable;)V

    .line 323
    invoke-virtual {p3}, Lcom/brakefield/painter/databinding/LayersPanelBinding;->getRoot()Lcom/brakefield/infinitestudio/gestures/GestureLayout;

    move-result-object p1

    .line 324
    new-instance p3, Lcom/brakefield/infinitestudio/gestures/SlideGesture$Single$Horizontal;

    iget-object p4, p0, Lcom/brakefield/painter/ui/LayersBar;->res:Landroid/content/res/Resources;

    new-instance v0, Lcom/brakefield/painter/ui/LayersBar$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Lcom/brakefield/painter/ui/LayersBar$$ExternalSyntheticLambda4;-><init>(Lcom/brakefield/painter/ui/LayersBar;)V

    invoke-direct {p3, p4, v0}, Lcom/brakefield/infinitestudio/gestures/SlideGesture$Single$Horizontal;-><init>(Landroid/content/res/Resources;Lcom/brakefield/infinitestudio/gestures/SlideGesture$Listener;)V

    invoke-virtual {p1, p3}, Lcom/brakefield/infinitestudio/gestures/GestureLayout;->addGesture(Lcom/brakefield/infinitestudio/gestures/Gesture;)V

    .line 325
    invoke-virtual {p1, p2}, Lcom/brakefield/infinitestudio/gestures/GestureLayout;->addGesture(Lcom/brakefield/infinitestudio/gestures/Gesture;)V

    .line 326
    invoke-virtual {p0}, Lcom/brakefield/painter/ui/LayersBar;->update()V

    return-void
.end method

.method public show()V
    .locals 2

    .line 764
    iget-object v0, p0, Lcom/brakefield/painter/ui/LayersBar;->panel:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 765
    :cond_0
    iget-object v0, p0, Lcom/brakefield/painter/ui/LayersBar;->activity:Landroid/app/Activity;

    const v1, 0x7f010025

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 766
    iget-object v1, p0, Lcom/brakefield/painter/ui/LayersBar;->panel:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 767
    iget-object v0, p0, Lcom/brakefield/painter/ui/LayersBar;->panel:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 768
    invoke-virtual {p0}, Lcom/brakefield/painter/ui/LayersBar;->updateLayerList()V

    return-void
.end method

.method public update()V
    .locals 2

    .line 656
    iget-object v0, p0, Lcom/brakefield/painter/ui/LayersBar;->updateHandler:Lcom/brakefield/painter/ui/LayersBar$UpdateHandler;

    iget-boolean v1, p0, Lcom/brakefield/painter/ui/LayersBar;->expanded:Z

    invoke-virtual {v0, v1}, Lcom/brakefield/painter/ui/LayersBar$UpdateHandler;->update(Z)V

    return-void
.end method

.method public updateLayerList()V
    .locals 9

    .line 660
    iget-object v0, p0, Lcom/brakefield/painter/ui/LayersBar;->panel:Landroid/view/View;

    if-eqz v0, :cond_4

    .line 661
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_4

    .line 663
    iget-boolean v0, p0, Lcom/brakefield/painter/ui/LayersBar;->expanded:Z

    .line 664
    invoke-static {}, Lcom/brakefield/painter/PainterLib;->numberOfLayers()I

    move-result v1

    add-int/lit8 v2, v1, -0x1

    .line 667
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v1, :cond_1

    .line 669
    invoke-static {v5}, Lcom/brakefield/painter/PainterLib;->getLayerId(I)I

    move-result v6

    .line 670
    invoke-direct {p0, v6}, Lcom/brakefield/painter/ui/LayersBar;->findLayerById(I)Lcom/brakefield/painter/ui/LayersBar$LayerRef;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 672
    new-instance v8, Lcom/brakefield/painter/ui/LayersBar$LayerRef;

    invoke-direct {v8, p0, v6, v0}, Lcom/brakefield/painter/ui/LayersBar$LayerRef;-><init>(Lcom/brakefield/painter/ui/LayersBar;IZ)V

    .line 673
    invoke-virtual {v8, v7}, Lcom/brakefield/painter/ui/LayersBar$LayerRef;->copyThumbs(Lcom/brakefield/painter/ui/LayersBar$LayerRef;)V

    .line 674
    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 676
    :cond_0
    new-instance v7, Lcom/brakefield/painter/ui/LayersBar$LayerRef;

    invoke-direct {v7, p0, v6, v0}, Lcom/brakefield/painter/ui/LayersBar$LayerRef;-><init>(Lcom/brakefield/painter/ui/LayersBar;IZ)V

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 679
    :cond_1
    invoke-static {v3}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 681
    :goto_2
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v4, v0, :cond_2

    sub-int v0, v2, v4

    .line 683
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/brakefield/painter/ui/LayersBar$LayerRef;

    .line 684
    invoke-virtual {v1, v0}, Lcom/brakefield/painter/ui/LayersBar$LayerRef;->updateThumbs(I)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 687
    :cond_2
    new-instance v0, Lcom/brakefield/infinitestudio/ui/collections/AdapterListUpdateCallback;

    iget-object v1, p0, Lcom/brakefield/painter/ui/LayersBar;->adapter:Lcom/brakefield/painter/ui/LayersBar$LayersAdapter;

    invoke-direct {v0, v1}, Lcom/brakefield/infinitestudio/ui/collections/AdapterListUpdateCallback;-><init>(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 688
    new-instance v1, Lcom/brakefield/infinitestudio/ui/collections/ListDiffCallback;

    iget-object v2, p0, Lcom/brakefield/painter/ui/LayersBar;->layers:Ljava/util/List;

    invoke-direct {v1, v2, v3}, Lcom/brakefield/infinitestudio/ui/collections/ListDiffCallback;-><init>(Ljava/util/List;Ljava/util/List;)V

    invoke-static {v1}, Landroidx/recyclerview/widget/DiffUtil;->calculateDiff(Landroidx/recyclerview/widget/DiffUtil$Callback;)Landroidx/recyclerview/widget/DiffUtil$DiffResult;

    move-result-object v1

    .line 689
    iget-object v2, p0, Lcom/brakefield/painter/ui/LayersBar;->layers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 690
    iget-object v2, p0, Lcom/brakefield/painter/ui/LayersBar;->layers:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 691
    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->dispatchUpdatesTo(Landroidx/recyclerview/widget/ListUpdateCallback;)V

    .line 694
    invoke-static {}, Lcom/brakefield/painter/PainterLib;->isBackgroundVisible()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 695
    iget-object v0, p0, Lcom/brakefield/painter/ui/LayersBar;->binding:Lcom/brakefield/painter/databinding/LayersPanelBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/LayersPanelBinding;->backgroundTrayVisibility:Landroid/widget/ImageView;

    const v1, 0x7f0804d7

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 696
    iget-object v0, p0, Lcom/brakefield/painter/ui/LayersBar;->binding:Lcom/brakefield/painter/databinding/LayersPanelBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/LayersPanelBinding;->backgroundTrayVisibility:Landroid/widget/ImageView;

    const v1, 0x7f1201f8

    invoke-static {v1}, Lcom/brakefield/infinitestudio/Strings;->get(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 698
    :cond_3
    iget-object v0, p0, Lcom/brakefield/painter/ui/LayersBar;->binding:Lcom/brakefield/painter/databinding/LayersPanelBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/LayersPanelBinding;->backgroundTrayVisibility:Landroid/widget/ImageView;

    const v1, 0x7f0804d6

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 699
    iget-object v0, p0, Lcom/brakefield/painter/ui/LayersBar;->binding:Lcom/brakefield/painter/databinding/LayersPanelBinding;

    iget-object v0, v0, Lcom/brakefield/painter/databinding/LayersPanelBinding;->backgroundTrayVisibility:Landroid/widget/ImageView;

    const v1, 0x7f120a96

    invoke-static {v1}, Lcom/brakefield/infinitestudio/Strings;->get(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_4
    :goto_3
    return-void
.end method
