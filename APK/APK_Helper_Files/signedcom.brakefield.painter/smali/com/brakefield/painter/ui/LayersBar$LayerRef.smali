.class Lcom/brakefield/painter/ui/LayersBar$LayerRef;
.super Ljava/lang/Object;
.source "LayersBar.java"

# interfaces
.implements Lcom/brakefield/infinitestudio/ui/collections/Diffable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/brakefield/painter/ui/LayersBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LayerRef"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/brakefield/infinitestudio/ui/collections/Diffable<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field private final blendingMode:I

.field private final clippingMask:Z

.field private final groupDepth:I

.field private final id:I

.field private final isExpanded:Z

.field private final isLayerGroup:Z

.field private final isLayerGroupCollapsed:Z

.field private final isMaskSelected:Z

.field private final isMaskVisible:Z

.field private final isMultiSelected:Z

.field private final isParentVisible:Z

.field private final isSelected:Z

.field private final isTarget:Z

.field private final isVisible:Z

.field private layerThumb:Landroid/graphics/Bitmap;

.field private final maskId:I

.field private maskThumb:Landroid/graphics/Bitmap;

.field private final name:Ljava/lang/String;

.field private final opacity:F

.field final synthetic this$0:Lcom/brakefield/painter/ui/LayersBar;


# direct methods
.method constructor <init>(Lcom/brakefield/painter/ui/LayersBar;IZ)V
    .locals 5

    .line 493
    iput-object p1, p0, Lcom/brakefield/painter/ui/LayersBar$LayerRef;->this$0:Lcom/brakefield/painter/ui/LayersBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 494
    iput p2, p0, Lcom/brakefield/painter/ui/LayersBar$LayerRef;->id:I

    .line 495
    invoke-static {}, Lcom/brakefield/painter/PainterLib;->selectedLayerId()I

    move-result p1

    .line 496
    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getToolType()I

    move-result v0

    .line 497
    invoke-static {p2}, Lcom/brakefield/painter/PainterLib;->getLayerOpacity(I)F

    move-result v1

    iput v1, p0, Lcom/brakefield/painter/ui/LayersBar$LayerRef;->opacity:F

    .line 498
    invoke-static {p2}, Lcom/brakefield/painter/PainterLib;->getLayerBlendingMode(I)I

    move-result v1

    iput v1, p0, Lcom/brakefield/painter/ui/LayersBar$LayerRef;->blendingMode:I

    .line 499
    invoke-static {p2}, Lcom/brakefield/painter/PainterLib;->getLayerName(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/brakefield/painter/ui/LayersBar$LayerRef;->name:Ljava/lang/String;

    .line 500
    invoke-static {p2}, Lcom/brakefield/painter/PainterLib;->getLayerVisibility(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/brakefield/painter/ui/LayersBar$LayerRef;->isVisible:Z

    .line 501
    invoke-static {p2}, Lcom/brakefield/painter/PainterLib;->getLayerParentVisibility(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/brakefield/painter/ui/LayersBar$LayerRef;->isParentVisible:Z

    .line 502
    invoke-static {p2}, Lcom/brakefield/painter/PainterLib;->getLayerClippingMask(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/brakefield/painter/ui/LayersBar$LayerRef;->clippingMask:Z

    .line 503
    invoke-static {p2}, Lcom/brakefield/painter/PainterLib;->getLayerGroupDepth(I)I

    move-result v1

    iput v1, p0, Lcom/brakefield/painter/ui/LayersBar$LayerRef;->groupDepth:I

    .line 504
    invoke-static {p2}, Lcom/brakefield/painter/PainterLib;->isLayerGroup(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/brakefield/painter/ui/LayersBar$LayerRef;->isLayerGroup:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    .line 505
    invoke-static {p2}, Lcom/brakefield/painter/PainterLib;->isLayerGroupSelected(I)Z

    move-result v4

    iput-boolean v4, p0, Lcom/brakefield/painter/ui/LayersBar$LayerRef;->isSelected:Z

    goto :goto_1

    :cond_0
    if-ne p1, p2, :cond_1

    move v4, v2

    goto :goto_0

    :cond_1
    move v4, v3

    .line 506
    :goto_0
    iput-boolean v4, p0, Lcom/brakefield/painter/ui/LayersBar$LayerRef;->isSelected:Z

    :goto_1
    if-ne v0, v2, :cond_2

    .line 507
    invoke-static {p2}, Lcom/brakefield/painter/PainterLib;->isLayerMultiSelected(I)Z

    move-result v4

    if-eqz v4, :cond_2

    move v4, v2

    goto :goto_2

    :cond_2
    move v4, v3

    :goto_2
    iput-boolean v4, p0, Lcom/brakefield/painter/ui/LayersBar$LayerRef;->isMultiSelected:Z

    const/4 v4, 0x2

    if-eq v0, v4, :cond_4

    const/4 v4, 0x3

    if-eq v0, v4, :cond_4

    const/16 v4, 0xd

    if-eq v0, v4, :cond_4

    .line 508
    invoke-static {}, Lcom/brakefield/painter/PainterLib;->isCloning()Z

    move-result v4

    if-eqz v4, :cond_3

    if-nez v0, :cond_3

    goto :goto_3

    :cond_3
    move v0, v3

    goto :goto_4

    :cond_4
    :goto_3
    move v0, v2

    :goto_4
    if-eqz v0, :cond_5

    .line 509
    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getTargetLayerId()I

    move-result v0

    if-ne v0, p2, :cond_5

    move v0, v2

    goto :goto_5

    :cond_5
    move v0, v3

    :goto_5
    iput-boolean v0, p0, Lcom/brakefield/painter/ui/LayersBar$LayerRef;->isTarget:Z

    .line 510
    invoke-static {p2}, Lcom/brakefield/painter/PainterLib;->getLayerMaskId(I)I

    move-result v0

    iput v0, p0, Lcom/brakefield/painter/ui/LayersBar$LayerRef;->maskId:I

    if-eqz v0, :cond_7

    .line 512
    invoke-static {v0}, Lcom/brakefield/painter/PainterLib;->getLayerVisibility(I)Z

    move-result v4

    iput-boolean v4, p0, Lcom/brakefield/painter/ui/LayersBar$LayerRef;->isMaskVisible:Z

    if-ne p1, v0, :cond_6

    move p1, v2

    goto :goto_6

    :cond_6
    move p1, v3

    .line 513
    :goto_6
    iput-boolean p1, p0, Lcom/brakefield/painter/ui/LayersBar$LayerRef;->isMaskSelected:Z

    goto :goto_7

    .line 515
    :cond_7
    iput-boolean v3, p0, Lcom/brakefield/painter/ui/LayersBar$LayerRef;->isMaskVisible:Z

    .line 516
    iput-boolean v3, p0, Lcom/brakefield/painter/ui/LayersBar$LayerRef;->isMaskSelected:Z

    :goto_7
    if-eqz v1, :cond_8

    .line 518
    invoke-static {p2}, Lcom/brakefield/painter/PainterLib;->isLayerGroupCollapsed(I)Z

    move-result p1

    if-eqz p1, :cond_8

    goto :goto_8

    :cond_8
    move v2, v3

    :goto_8
    iput-boolean v2, p0, Lcom/brakefield/painter/ui/LayersBar$LayerRef;->isLayerGroupCollapsed:Z

    .line 519
    iput-boolean p3, p0, Lcom/brakefield/painter/ui/LayersBar$LayerRef;->isExpanded:Z

    return-void
.end method

.method static synthetic access$000(Lcom/brakefield/painter/ui/LayersBar$LayerRef;)I
    .locals 0

    .line 470
    iget p0, p0, Lcom/brakefield/painter/ui/LayersBar$LayerRef;->id:I

    return p0
.end method

.method static synthetic access$100(Lcom/brakefield/painter/ui/LayersBar$LayerRef;)Z
    .locals 0

    .line 470
    iget-boolean p0, p0, Lcom/brakefield/painter/ui/LayersBar$LayerRef;->isMultiSelected:Z

    return p0
.end method

.method static synthetic access$1000(Lcom/brakefield/painter/ui/LayersBar$LayerRef;)I
    .locals 0

    .line 470
    iget p0, p0, Lcom/brakefield/painter/ui/LayersBar$LayerRef;->maskId:I

    return p0
.end method

.method static synthetic access$1100(Lcom/brakefield/painter/ui/LayersBar$LayerRef;)Z
    .locals 0

    .line 470
    iget-boolean p0, p0, Lcom/brakefield/painter/ui/LayersBar$LayerRef;->isMaskSelected:Z

    return p0
.end method

.method static synthetic access$1300(Lcom/brakefield/painter/ui/LayersBar$LayerRef;)Z
    .locals 0

    .line 470
    iget-boolean p0, p0, Lcom/brakefield/painter/ui/LayersBar$LayerRef;->isMaskVisible:Z

    return p0
.end method

.method static synthetic access$1400(Lcom/brakefield/painter/ui/LayersBar$LayerRef;)Z
    .locals 0

    .line 470
    iget-boolean p0, p0, Lcom/brakefield/painter/ui/LayersBar$LayerRef;->isParentVisible:Z

    return p0
.end method

.method static synthetic access$1500(Lcom/brakefield/painter/ui/LayersBar$LayerRef;)Z
    .locals 0

    .line 470
    iget-boolean p0, p0, Lcom/brakefield/painter/ui/LayersBar$LayerRef;->isSelected:Z

    return p0
.end method

.method static synthetic access$1600(Lcom/brakefield/painter/ui/LayersBar$LayerRef;)Z
    .locals 0

    .line 470
    iget-boolean p0, p0, Lcom/brakefield/painter/ui/LayersBar$LayerRef;->isTarget:Z

    return p0
.end method

.method static synthetic access$1700(Lcom/brakefield/painter/ui/LayersBar$LayerRef;)Z
    .locals 0

    .line 470
    iget-boolean p0, p0, Lcom/brakefield/painter/ui/LayersBar$LayerRef;->clippingMask:Z

    return p0
.end method

.method static synthetic access$1800(Lcom/brakefield/painter/ui/LayersBar$LayerRef;)I
    .locals 0

    .line 470
    iget p0, p0, Lcom/brakefield/painter/ui/LayersBar$LayerRef;->blendingMode:I

    return p0
.end method

.method static synthetic access$1900(Lcom/brakefield/painter/ui/LayersBar$LayerRef;)Z
    .locals 0

    .line 470
    iget-boolean p0, p0, Lcom/brakefield/painter/ui/LayersBar$LayerRef;->isVisible:Z

    return p0
.end method

.method static synthetic access$2000(Lcom/brakefield/painter/ui/LayersBar$LayerRef;)F
    .locals 0

    .line 470
    iget p0, p0, Lcom/brakefield/painter/ui/LayersBar$LayerRef;->opacity:F

    return p0
.end method

.method static synthetic access$2100(Lcom/brakefield/painter/ui/LayersBar$LayerRef;)Ljava/lang/String;
    .locals 0

    .line 470
    iget-object p0, p0, Lcom/brakefield/painter/ui/LayersBar$LayerRef;->name:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$2200(Lcom/brakefield/painter/ui/LayersBar$LayerRef;)Z
    .locals 0

    .line 470
    iget-boolean p0, p0, Lcom/brakefield/painter/ui/LayersBar$LayerRef;->isExpanded:Z

    return p0
.end method

.method static synthetic access$2300(Lcom/brakefield/painter/ui/LayersBar$LayerRef;)Z
    .locals 0

    .line 470
    iget-boolean p0, p0, Lcom/brakefield/painter/ui/LayersBar$LayerRef;->isLayerGroupCollapsed:Z

    return p0
.end method

.method static synthetic access$2600(Lcom/brakefield/painter/ui/LayersBar$LayerRef;)I
    .locals 0

    .line 470
    iget p0, p0, Lcom/brakefield/painter/ui/LayersBar$LayerRef;->groupDepth:I

    return p0
.end method

.method static synthetic access$2700(Lcom/brakefield/painter/ui/LayersBar$LayerRef;)Z
    .locals 0

    .line 470
    iget-boolean p0, p0, Lcom/brakefield/painter/ui/LayersBar$LayerRef;->isLayerGroup:Z

    return p0
.end method

.method static synthetic access$700(Lcom/brakefield/painter/ui/LayersBar$LayerRef;)Landroid/graphics/Bitmap;
    .locals 0

    .line 470
    iget-object p0, p0, Lcom/brakefield/painter/ui/LayersBar$LayerRef;->layerThumb:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method static synthetic access$702(Lcom/brakefield/painter/ui/LayersBar$LayerRef;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    .line 470
    iput-object p1, p0, Lcom/brakefield/painter/ui/LayersBar$LayerRef;->layerThumb:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$900(Lcom/brakefield/painter/ui/LayersBar$LayerRef;)Landroid/graphics/Bitmap;
    .locals 0

    .line 470
    iget-object p0, p0, Lcom/brakefield/painter/ui/LayersBar$LayerRef;->maskThumb:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method static synthetic access$902(Lcom/brakefield/painter/ui/LayersBar$LayerRef;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    .line 470
    iput-object p1, p0, Lcom/brakefield/painter/ui/LayersBar$LayerRef;->maskThumb:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method private addOrExecute(Lcom/brakefield/painter/ui/LayersBar$LoadLayerThumbTask;)V
    .locals 3

    .line 529
    iget-object v0, p0, Lcom/brakefield/painter/ui/LayersBar$LayerRef;->this$0:Lcom/brakefield/painter/ui/LayersBar;

    invoke-static {v0}, Lcom/brakefield/painter/ui/LayersBar;->access$400(Lcom/brakefield/painter/ui/LayersBar;)Lcom/brakefield/painter/ui/LayersBar$LoadLayerThumbTask;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 530
    iget-object v0, p0, Lcom/brakefield/painter/ui/LayersBar$LayerRef;->this$0:Lcom/brakefield/painter/ui/LayersBar;

    invoke-static {v0}, Lcom/brakefield/painter/ui/LayersBar;->access$500(Lcom/brakefield/painter/ui/LayersBar;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/brakefield/painter/ui/LayersBar$LoadLayerThumbTask;

    .line 531
    invoke-virtual {v1}, Lcom/brakefield/painter/ui/LayersBar$LoadLayerThumbTask;->getId()I

    move-result v1

    invoke-virtual {p1}, Lcom/brakefield/painter/ui/LayersBar$LoadLayerThumbTask;->getId()I

    move-result v2

    if-ne v1, v2, :cond_0

    return-void

    .line 533
    :cond_1
    iget-object v0, p0, Lcom/brakefield/painter/ui/LayersBar$LayerRef;->this$0:Lcom/brakefield/painter/ui/LayersBar;

    invoke-static {v0}, Lcom/brakefield/painter/ui/LayersBar;->access$500(Lcom/brakefield/painter/ui/LayersBar;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 535
    :cond_2
    iget-object v0, p0, Lcom/brakefield/painter/ui/LayersBar$LayerRef;->this$0:Lcom/brakefield/painter/ui/LayersBar;

    invoke-static {v0, p1}, Lcom/brakefield/painter/ui/LayersBar;->access$402(Lcom/brakefield/painter/ui/LayersBar;Lcom/brakefield/painter/ui/LayersBar$LoadLayerThumbTask;)Lcom/brakefield/painter/ui/LayersBar$LoadLayerThumbTask;

    .line 536
    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {p1, v0, v1}, Lcom/brakefield/painter/ui/LayersBar$LoadLayerThumbTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    :goto_0
    return-void
.end method


# virtual methods
.method public copyThumbs(Lcom/brakefield/painter/ui/LayersBar$LayerRef;)V
    .locals 1

    .line 559
    iget-object v0, p1, Lcom/brakefield/painter/ui/LayersBar$LayerRef;->layerThumb:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/brakefield/painter/ui/LayersBar$LayerRef;->layerThumb:Landroid/graphics/Bitmap;

    .line 560
    iget-object p1, p1, Lcom/brakefield/painter/ui/LayersBar$LayerRef;->maskThumb:Landroid/graphics/Bitmap;

    iput-object p1, p0, Lcom/brakefield/painter/ui/LayersBar$LayerRef;->maskThumb:Landroid/graphics/Bitmap;

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 570
    instance-of v0, p1, Lcom/brakefield/painter/ui/LayersBar$LayerRef;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 571
    check-cast p1, Lcom/brakefield/painter/ui/LayersBar$LayerRef;

    .line 572
    iget v0, p0, Lcom/brakefield/painter/ui/LayersBar$LayerRef;->id:I

    iget v2, p1, Lcom/brakefield/painter/ui/LayersBar$LayerRef;->id:I

    if-ne v0, v2, :cond_0

    iget v0, p0, Lcom/brakefield/painter/ui/LayersBar$LayerRef;->opacity:F

    iget v2, p1, Lcom/brakefield/painter/ui/LayersBar$LayerRef;->opacity:F

    cmpl-float v0, v0, v2

    if-nez v0, :cond_0

    iget v0, p0, Lcom/brakefield/painter/ui/LayersBar$LayerRef;->blendingMode:I

    iget v2, p1, Lcom/brakefield/painter/ui/LayersBar$LayerRef;->blendingMode:I

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/brakefield/painter/ui/LayersBar$LayerRef;->name:Ljava/lang/String;

    iget-object v2, p1, Lcom/brakefield/painter/ui/LayersBar$LayerRef;->name:Ljava/lang/String;

    .line 575
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/brakefield/painter/ui/LayersBar$LayerRef;->isVisible:Z

    iget-boolean v2, p1, Lcom/brakefield/painter/ui/LayersBar$LayerRef;->isVisible:Z

    if-ne v0, v2, :cond_0

    iget-boolean v0, p0, Lcom/brakefield/painter/ui/LayersBar$LayerRef;->isParentVisible:Z

    iget-boolean v2, p1, Lcom/brakefield/painter/ui/LayersBar$LayerRef;->isParentVisible:Z

    if-ne v0, v2, :cond_0

    iget-boolean v0, p0, Lcom/brakefield/painter/ui/LayersBar$LayerRef;->clippingMask:Z

    iget-boolean v2, p1, Lcom/brakefield/painter/ui/LayersBar$LayerRef;->clippingMask:Z

    if-ne v0, v2, :cond_0

    iget-boolean v0, p0, Lcom/brakefield/painter/ui/LayersBar$LayerRef;->isSelected:Z

    iget-boolean v2, p1, Lcom/brakefield/painter/ui/LayersBar$LayerRef;->isSelected:Z

    if-ne v0, v2, :cond_0

    iget-boolean v0, p0, Lcom/brakefield/painter/ui/LayersBar$LayerRef;->isMultiSelected:Z

    iget-boolean v2, p1, Lcom/brakefield/painter/ui/LayersBar$LayerRef;->isMultiSelected:Z

    if-ne v0, v2, :cond_0

    iget-boolean v0, p0, Lcom/brakefield/painter/ui/LayersBar$LayerRef;->isTarget:Z

    iget-boolean v2, p1, Lcom/brakefield/painter/ui/LayersBar$LayerRef;->isTarget:Z

    if-ne v0, v2, :cond_0

    iget v0, p0, Lcom/brakefield/painter/ui/LayersBar$LayerRef;->groupDepth:I

    iget v2, p1, Lcom/brakefield/painter/ui/LayersBar$LayerRef;->groupDepth:I

    if-ne v0, v2, :cond_0

    iget v0, p0, Lcom/brakefield/painter/ui/LayersBar$LayerRef;->maskId:I

    iget v2, p1, Lcom/brakefield/painter/ui/LayersBar$LayerRef;->maskId:I

    if-ne v0, v2, :cond_0

    iget-boolean v0, p0, Lcom/brakefield/painter/ui/LayersBar$LayerRef;->isMaskVisible:Z

    iget-boolean v2, p1, Lcom/brakefield/painter/ui/LayersBar$LayerRef;->isMaskVisible:Z

    if-ne v0, v2, :cond_0

    iget-boolean v0, p0, Lcom/brakefield/painter/ui/LayersBar$LayerRef;->isMaskSelected:Z

    iget-boolean v2, p1, Lcom/brakefield/painter/ui/LayersBar$LayerRef;->isMaskSelected:Z

    if-ne v0, v2, :cond_0

    iget-boolean v0, p0, Lcom/brakefield/painter/ui/LayersBar$LayerRef;->isLayerGroup:Z

    iget-boolean v2, p1, Lcom/brakefield/painter/ui/LayersBar$LayerRef;->isLayerGroup:Z

    if-ne v0, v2, :cond_0

    iget-boolean v0, p0, Lcom/brakefield/painter/ui/LayersBar$LayerRef;->isLayerGroupCollapsed:Z

    iget-boolean v2, p1, Lcom/brakefield/painter/ui/LayersBar$LayerRef;->isLayerGroupCollapsed:Z

    if-ne v0, v2, :cond_0

    iget-boolean v0, p0, Lcom/brakefield/painter/ui/LayersBar$LayerRef;->isExpanded:Z

    iget-boolean v2, p1, Lcom/brakefield/painter/ui/LayersBar$LayerRef;->isExpanded:Z

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/brakefield/painter/ui/LayersBar$LayerRef;->layerThumb:Landroid/graphics/Bitmap;

    iget-object v2, p1, Lcom/brakefield/painter/ui/LayersBar$LayerRef;->layerThumb:Landroid/graphics/Bitmap;

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/brakefield/painter/ui/LayersBar$LayerRef;->maskThumb:Landroid/graphics/Bitmap;

    iget-object p1, p1, Lcom/brakefield/painter/ui/LayersBar$LayerRef;->maskThumb:Landroid/graphics/Bitmap;

    if-ne v0, p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public id()Ljava/lang/Integer;
    .locals 1

    .line 565
    iget v0, p0, Lcom/brakefield/painter/ui/LayersBar$LayerRef;->id:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic id()Ljava/lang/Object;
    .locals 1

    .line 470
    invoke-virtual {p0}, Lcom/brakefield/painter/ui/LayersBar$LayerRef;->id()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public refreshLayerThumb()V
    .locals 4

    .line 541
    iget v0, p0, Lcom/brakefield/painter/ui/LayersBar$LayerRef;->id:I

    invoke-static {v0}, Lcom/brakefield/painter/PainterLib;->getLayerThumbWidth(I)I

    move-result v0

    .line 542
    iget v1, p0, Lcom/brakefield/painter/ui/LayersBar$LayerRef;->id:I

    invoke-static {v1}, Lcom/brakefield/painter/PainterLib;->getLayerThumbHeight(I)I

    move-result v1

    .line 543
    iget v2, p0, Lcom/brakefield/painter/ui/LayersBar$LayerRef;->id:I

    invoke-static {v2}, Lcom/brakefield/painter/PainterLib;->getLayerThumb(I)[I

    move-result-object v2

    .line 544
    array-length v3, v2

    if-nez v3, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/brakefield/painter/ui/LayersBar$LayerRef;->layerThumb:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 545
    :cond_0
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v0, v1, v3}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/brakefield/painter/ui/LayersBar$LayerRef;->layerThumb:Landroid/graphics/Bitmap;

    :goto_0
    return-void
.end method

.method public refreshMaskThumb()V
    .locals 4

    .line 549
    iget v0, p0, Lcom/brakefield/painter/ui/LayersBar$LayerRef;->maskId:I

    if-eqz v0, :cond_1

    .line 550
    invoke-static {v0}, Lcom/brakefield/painter/PainterLib;->getLayerThumbWidth(I)I

    move-result v0

    .line 551
    iget v1, p0, Lcom/brakefield/painter/ui/LayersBar$LayerRef;->maskId:I

    invoke-static {v1}, Lcom/brakefield/painter/PainterLib;->getLayerThumbHeight(I)I

    move-result v1

    .line 552
    iget v2, p0, Lcom/brakefield/painter/ui/LayersBar$LayerRef;->maskId:I

    invoke-static {v2}, Lcom/brakefield/painter/PainterLib;->getLayerThumb(I)[I

    move-result-object v2

    .line 553
    array-length v3, v2

    if-nez v3, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/brakefield/painter/ui/LayersBar$LayerRef;->maskThumb:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 554
    :cond_0
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v0, v1, v3}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/brakefield/painter/ui/LayersBar$LayerRef;->maskThumb:Landroid/graphics/Bitmap;

    :cond_1
    :goto_0
    return-void
.end method

.method public updateThumbs(I)V
    .locals 2

    .line 523
    invoke-static {p1}, Lcom/brakefield/painter/PainterLib;->refreshLayerView(I)Z

    move-result p1

    .line 524
    iget-object v0, p0, Lcom/brakefield/painter/ui/LayersBar$LayerRef;->layerThumb:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    :cond_0
    new-instance v0, Lcom/brakefield/painter/ui/LayersBar$LoadLayerThumbTask;

    iget-object v1, p0, Lcom/brakefield/painter/ui/LayersBar$LayerRef;->this$0:Lcom/brakefield/painter/ui/LayersBar;

    invoke-direct {v0, v1, p0}, Lcom/brakefield/painter/ui/LayersBar$LoadLayerThumbTask;-><init>(Lcom/brakefield/painter/ui/LayersBar;Lcom/brakefield/painter/ui/LayersBar$LayerRef;)V

    invoke-direct {p0, v0}, Lcom/brakefield/painter/ui/LayersBar$LayerRef;->addOrExecute(Lcom/brakefield/painter/ui/LayersBar$LoadLayerThumbTask;)V

    .line 525
    :cond_1
    iget v0, p0, Lcom/brakefield/painter/ui/LayersBar$LayerRef;->maskId:I

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/brakefield/painter/ui/LayersBar$LayerRef;->maskThumb:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    if-eqz p1, :cond_3

    :cond_2
    new-instance p1, Lcom/brakefield/painter/ui/LayersBar$LoadMaskThumbTask;

    iget-object v0, p0, Lcom/brakefield/painter/ui/LayersBar$LayerRef;->this$0:Lcom/brakefield/painter/ui/LayersBar;

    invoke-direct {p1, v0, p0}, Lcom/brakefield/painter/ui/LayersBar$LoadMaskThumbTask;-><init>(Lcom/brakefield/painter/ui/LayersBar;Lcom/brakefield/painter/ui/LayersBar$LayerRef;)V

    invoke-direct {p0, p1}, Lcom/brakefield/painter/ui/LayersBar$LayerRef;->addOrExecute(Lcom/brakefield/painter/ui/LayersBar$LoadLayerThumbTask;)V

    :cond_3
    return-void
.end method
