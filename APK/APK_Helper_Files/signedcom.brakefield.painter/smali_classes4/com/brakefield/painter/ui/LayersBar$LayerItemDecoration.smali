.class public Lcom/brakefield/painter/ui/LayersBar$LayerItemDecoration;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "LayersBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/brakefield/painter/ui/LayersBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LayerItemDecoration"
.end annotation


# instance fields
.field private final groupOffset:F

.field private final inset:F

.field private final paint:Landroid/graphics/Paint;

.field private final radius:F

.field final synthetic this$0:Lcom/brakefield/painter/ui/LayersBar;

.field private final width:F


# direct methods
.method public constructor <init>(Lcom/brakefield/painter/ui/LayersBar;Landroid/content/res/Resources;)V
    .locals 1

    .line 1322
    iput-object p1, p0, Lcom/brakefield/painter/ui/LayersBar$LayerItemDecoration;->this$0:Lcom/brakefield/painter/ui/LayersBar;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    .line 1316
    new-instance p1, Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/brakefield/painter/ui/LayersBar$LayerItemDecoration;->paint:Landroid/graphics/Paint;

    const/high16 p2, 0x40800000    # 4.0f

    .line 1323
    invoke-static {p2}, Lcom/brakefield/infinitestudio/ResourceHelper;->dp(F)F

    move-result v0

    iput v0, p0, Lcom/brakefield/painter/ui/LayersBar$LayerItemDecoration;->radius:F

    .line 1324
    invoke-static {p2}, Lcom/brakefield/infinitestudio/ResourceHelper;->dp(F)F

    move-result p2

    iput p2, p0, Lcom/brakefield/painter/ui/LayersBar$LayerItemDecoration;->groupOffset:F

    const/high16 p2, 0x40000000    # 2.0f

    .line 1325
    invoke-static {p2}, Lcom/brakefield/infinitestudio/ResourceHelper;->dp(F)F

    move-result p2

    iput p2, p0, Lcom/brakefield/painter/ui/LayersBar$LayerItemDecoration;->inset:F

    const/high16 p2, 0x43a00000    # 320.0f

    .line 1326
    invoke-static {p2}, Lcom/brakefield/infinitestudio/ResourceHelper;->dp(F)F

    move-result p2

    iput p2, p0, Lcom/brakefield/painter/ui/LayersBar$LayerItemDecoration;->width:F

    .line 1327
    sget-object p2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/high16 p2, 0x3f800000    # 1.0f

    .line 1328
    invoke-static {p2}, Lcom/brakefield/infinitestudio/ResourceHelper;->dp(F)F

    move-result p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    const p2, -0x777778

    .line 1329
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method private calculateFrameRange(Landroidx/recyclerview/widget/RecyclerView;Lcom/brakefield/painter/ui/LayersBar$LayerRef;ILandroid/graphics/Rect;Landroid/view/View;II)Z
    .locals 3

    .line 1358
    invoke-virtual {p1, p5, p4}, Landroidx/recyclerview/widget/RecyclerView;->getDecoratedBoundsWithMargins(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1359
    invoke-virtual {p5}, Landroid/view/View;->getTranslationY()F

    move-result p5

    float-to-int p5, p5

    const/4 v0, 0x0

    invoke-virtual {p4, v0, p5}, Landroid/graphics/Rect;->offset(II)V

    .line 1361
    invoke-static {p2}, Lcom/brakefield/painter/ui/LayersBar$LayerRef;->access$2300(Lcom/brakefield/painter/ui/LayersBar$LayerRef;)Z

    move-result p2

    const/4 p5, 0x1

    if-nez p2, :cond_3

    add-int/2addr p6, p5

    :goto_0
    if-ge p6, p7, :cond_2

    .line 1363
    invoke-virtual {p1, p6}, Landroidx/recyclerview/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    .line 1364
    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 1366
    iget-object v2, p0, Lcom/brakefield/painter/ui/LayersBar$LayerItemDecoration;->this$0:Lcom/brakefield/painter/ui/LayersBar;

    invoke-static {v2}, Lcom/brakefield/painter/ui/LayersBar;->access$2400(Lcom/brakefield/painter/ui/LayersBar;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/brakefield/painter/ui/LayersBar$LayerRef;

    .line 1367
    invoke-static {v1}, Lcom/brakefield/painter/ui/LayersBar$LayerRef;->access$2600(Lcom/brakefield/painter/ui/LayersBar$LayerRef;)I

    move-result v1

    if-gt v1, p3, :cond_0

    return p5

    .line 1368
    :cond_0
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 1369
    invoke-virtual {p1, p2, v1}, Landroidx/recyclerview/widget/RecyclerView;->getDecoratedBoundsWithMargins(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1370
    invoke-virtual {p2}, Landroid/view/View;->getTranslationY()F

    move-result p2

    float-to-int p2, p2

    invoke-virtual {v1, v0, p2}, Landroid/graphics/Rect;->offset(II)V

    .line 1371
    invoke-virtual {p4, v1}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    :cond_1
    add-int/lit8 p6, p6, 0x1

    goto :goto_0

    :cond_2
    return v0

    :cond_3
    return p5
.end method

.method private drawFrame(Landroid/graphics/Canvas;Landroid/graphics/Rect;ZZI)V
    .locals 3

    const/4 v0, 0x4

    if-le p5, v0, :cond_0

    move p5, v0

    .line 1381
    :cond_0
    iget v1, p2, Landroid/graphics/Rect;->left:I

    int-to-float p5, p5

    iget v2, p0, Lcom/brakefield/painter/ui/LayersBar$LayerItemDecoration;->groupOffset:F

    mul-float/2addr p5, v2

    float-to-int p5, p5

    add-int/2addr v1, p5

    iput v1, p2, Landroid/graphics/Rect;->left:I

    .line 1382
    iget p5, p0, Lcom/brakefield/painter/ui/LayersBar$LayerItemDecoration;->inset:F

    float-to-int v1, p5

    float-to-int p5, p5

    invoke-virtual {p2, v1, p5}, Landroid/graphics/Rect;->inset(II)V

    .line 1383
    iget p5, p2, Landroid/graphics/Rect;->left:I

    int-to-float p5, p5

    iget v1, p0, Lcom/brakefield/painter/ui/LayersBar$LayerItemDecoration;->width:F

    add-float/2addr p5, v1

    float-to-int p5, p5

    iput p5, p2, Landroid/graphics/Rect;->right:I

    .line 1384
    iget p5, p0, Lcom/brakefield/painter/ui/LayersBar$LayerItemDecoration;->radius:F

    const/4 v1, 0x0

    if-nez p3, :cond_1

    .line 1388
    iget p3, p2, Landroid/graphics/Rect;->top:I

    int-to-float p3, p3

    iget v2, p0, Lcom/brakefield/painter/ui/LayersBar$LayerItemDecoration;->inset:F

    sub-float/2addr p3, v2

    float-to-int p3, p3

    iput p3, p2, Landroid/graphics/Rect;->top:I

    move p3, v1

    goto :goto_0

    :cond_1
    move p3, p5

    :goto_0
    if-nez p4, :cond_2

    .line 1392
    iget p4, p2, Landroid/graphics/Rect;->bottom:I

    int-to-float p4, p4

    iget p5, p0, Lcom/brakefield/painter/ui/LayersBar$LayerItemDecoration;->inset:F

    add-float/2addr p4, p5

    float-to-int p4, p4

    iput p4, p2, Landroid/graphics/Rect;->bottom:I

    move p5, v1

    .line 1394
    :cond_2
    new-instance p4, Landroid/graphics/Path;

    invoke-direct {p4}, Landroid/graphics/Path;-><init>()V

    .line 1395
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1, p2}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    const/16 p2, 0x8

    new-array p2, p2, [F

    const/4 v2, 0x0

    aput p3, p2, v2

    const/4 v2, 0x1

    aput p3, p2, v2

    const/4 v2, 0x2

    aput p3, p2, v2

    const/4 v2, 0x3

    aput p3, p2, v2

    aput p5, p2, v0

    const/4 p3, 0x5

    aput p5, p2, p3

    const/4 p3, 0x6

    aput p5, p2, p3

    const/4 p3, 0x7

    aput p5, p2, p3

    sget-object p3, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {p4, v1, p2, p3}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    .line 1396
    iget-object p2, p0, Lcom/brakefield/painter/ui/LayersBar$LayerItemDecoration;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, p4, p2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 0

    .line 1400
    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p2

    const/4 p3, -0x1

    if-eq p2, p3, :cond_2

    .line 1401
    iget-object p3, p0, Lcom/brakefield/painter/ui/LayersBar$LayerItemDecoration;->this$0:Lcom/brakefield/painter/ui/LayersBar;

    invoke-static {p3}, Lcom/brakefield/painter/ui/LayersBar;->access$2400(Lcom/brakefield/painter/ui/LayersBar;)Ljava/util/List;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    if-lt p2, p3, :cond_0

    goto :goto_0

    .line 1402
    :cond_0
    iget-object p3, p0, Lcom/brakefield/painter/ui/LayersBar$LayerItemDecoration;->this$0:Lcom/brakefield/painter/ui/LayersBar;

    invoke-static {p3}, Lcom/brakefield/painter/ui/LayersBar;->access$2400(Lcom/brakefield/painter/ui/LayersBar;)Ljava/util/List;

    move-result-object p3

    invoke-interface {p3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/brakefield/painter/ui/LayersBar$LayerRef;

    .line 1403
    invoke-static {p2}, Lcom/brakefield/painter/ui/LayersBar$LayerRef;->access$2600(Lcom/brakefield/painter/ui/LayersBar$LayerRef;)I

    move-result p2

    const/4 p3, 0x4

    if-le p2, p3, :cond_1

    move p2, p3

    :cond_1
    int-to-float p2, p2

    .line 1405
    iget p3, p0, Lcom/brakefield/painter/ui/LayersBar$LayerItemDecoration;->groupOffset:F

    mul-float/2addr p2, p3

    float-to-int p2, p2

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3, p3, p3}, Landroid/graphics/Rect;->set(IIII)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 16

    move-object/from16 v8, p2

    .line 1333
    invoke-virtual/range {p2 .. p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildCount()I

    move-result v9

    const/4 v0, 0x0

    move v10, v0

    :goto_0
    if-ge v10, v9, :cond_3

    .line 1335
    invoke-virtual {v8, v10}, Landroidx/recyclerview/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    .line 1336
    invoke-virtual {v8, v11}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v0

    const/4 v1, -0x1

    move-object/from16 v12, p0

    if-eq v0, v1, :cond_2

    .line 1338
    iget-object v1, v12, Lcom/brakefield/painter/ui/LayersBar$LayerItemDecoration;->this$0:Lcom/brakefield/painter/ui/LayersBar;

    invoke-static {v1}, Lcom/brakefield/painter/ui/LayersBar;->access$2400(Lcom/brakefield/painter/ui/LayersBar;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Lcom/brakefield/painter/ui/LayersBar$LayerRef;

    if-nez v10, :cond_1

    .line 1339
    invoke-static {v13}, Lcom/brakefield/painter/ui/LayersBar$LayerRef;->access$2600(Lcom/brakefield/painter/ui/LayersBar$LayerRef;)I

    move-result v0

    if-lez v0, :cond_1

    .line 1340
    invoke-static {v13}, Lcom/brakefield/painter/ui/LayersBar$LayerRef;->access$2600(Lcom/brakefield/painter/ui/LayersBar$LayerRef;)I

    move-result v0

    .line 1341
    invoke-static {v13}, Lcom/brakefield/painter/ui/LayersBar$LayerRef;->access$2700(Lcom/brakefield/painter/ui/LayersBar$LayerRef;)Z

    move-result v1

    if-nez v1, :cond_0

    add-int/lit8 v0, v0, -0x1

    :cond_0
    move v14, v0

    :goto_1
    if-ltz v14, :cond_2

    .line 1343
    new-instance v15, Landroid/graphics/Rect;

    invoke-direct {v15}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object v2, v13

    move v3, v14

    move-object v4, v15

    move-object v5, v11

    move v6, v10

    move v7, v9

    .line 1344
    invoke-direct/range {v0 .. v7}, Lcom/brakefield/painter/ui/LayersBar$LayerItemDecoration;->calculateFrameRange(Landroidx/recyclerview/widget/RecyclerView;Lcom/brakefield/painter/ui/LayersBar$LayerRef;ILandroid/graphics/Rect;Landroid/view/View;II)Z

    move-result v6

    const/4 v5, 0x0

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move v7, v14

    .line 1345
    invoke-direct/range {v2 .. v7}, Lcom/brakefield/painter/ui/LayersBar$LayerItemDecoration;->drawFrame(Landroid/graphics/Canvas;Landroid/graphics/Rect;ZZI)V

    add-int/lit8 v14, v14, -0x1

    goto :goto_1

    .line 1347
    :cond_1
    invoke-static {v13}, Lcom/brakefield/painter/ui/LayersBar$LayerRef;->access$2700(Lcom/brakefield/painter/ui/LayersBar$LayerRef;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1348
    new-instance v14, Landroid/graphics/Rect;

    invoke-direct {v14}, Landroid/graphics/Rect;-><init>()V

    .line 1349
    invoke-static {v13}, Lcom/brakefield/painter/ui/LayersBar$LayerRef;->access$2600(Lcom/brakefield/painter/ui/LayersBar$LayerRef;)I

    move-result v3

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object v2, v13

    move-object v4, v14

    move-object v5, v11

    move v6, v10

    move v7, v9

    invoke-direct/range {v0 .. v7}, Lcom/brakefield/painter/ui/LayersBar$LayerItemDecoration;->calculateFrameRange(Landroidx/recyclerview/widget/RecyclerView;Lcom/brakefield/painter/ui/LayersBar$LayerRef;ILandroid/graphics/Rect;Landroid/view/View;II)Z

    move-result v6

    const/4 v5, 0x1

    .line 1350
    invoke-static {v13}, Lcom/brakefield/painter/ui/LayersBar$LayerRef;->access$2600(Lcom/brakefield/painter/ui/LayersBar$LayerRef;)I

    move-result v7

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    invoke-direct/range {v2 .. v7}, Lcom/brakefield/painter/ui/LayersBar$LayerItemDecoration;->drawFrame(Landroid/graphics/Canvas;Landroid/graphics/Rect;ZZI)V

    :cond_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_3
    move-object/from16 v12, p0

    return-void
.end method
