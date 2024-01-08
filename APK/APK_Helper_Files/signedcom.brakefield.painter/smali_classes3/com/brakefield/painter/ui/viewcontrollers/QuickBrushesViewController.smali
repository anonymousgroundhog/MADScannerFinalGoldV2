.class public Lcom/brakefield/painter/ui/viewcontrollers/QuickBrushesViewController;
.super Lcom/brakefield/painter/ui/viewcontrollers/ViewController;
.source "QuickBrushesViewController.java"


# instance fields
.field private collectionViewController:Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController<",
            "Lcom/brakefield/painter/brushes/brushfolders/Brush;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 19
    invoke-direct {p0}, Lcom/brakefield/painter/ui/viewcontrollers/ViewController;-><init>()V

    .line 21
    new-instance v0, Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController;

    invoke-direct {v0}, Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController;-><init>()V

    iput-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/QuickBrushesViewController;->collectionViewController:Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController;

    return-void
.end method


# virtual methods
.method public getView(Landroid/app/Activity;Lcom/brakefield/painter/ui/SimpleUI;Lcom/brakefield/painter/brushes/brushfolders/BrushFolder;)Landroid/view/View;
    .locals 10

    .line 25
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 27
    invoke-virtual {p1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d0041

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    const v0, 0x7f0a0277

    .line 29
    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Landroidx/recyclerview/widget/RecyclerView;

    const v0, 0x7f070052

    .line 31
    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    const v1, 0x7f070322

    .line 32
    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    .line 34
    iget-object v3, p3, Lcom/brakefield/painter/brushes/brushfolders/BrushFolder;->brushes:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    mul-int/2addr v3, v0

    mul-int/lit8 v0, v0, 0x7

    if-le v3, v0, :cond_0

    move v3, v0

    :cond_0
    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v3, v1

    .line 38
    invoke-virtual {v7}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 39
    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 40
    invoke-virtual {v7, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 42
    iget-object v8, p0, Lcom/brakefield/painter/ui/viewcontrollers/QuickBrushesViewController;->collectionViewController:Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController;

    new-instance v9, Lcom/brakefield/painter/ui/viewcontrollers/QuickBrushesViewController$1;

    move-object v0, v9

    move-object v1, p0

    move-object v3, p3

    move-object v4, p2

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/brakefield/painter/ui/viewcontrollers/QuickBrushesViewController$1;-><init>(Lcom/brakefield/painter/ui/viewcontrollers/QuickBrushesViewController;Landroid/content/res/Resources;Lcom/brakefield/painter/brushes/brushfolders/BrushFolder;Lcom/brakefield/painter/ui/SimpleUI;Landroid/app/Activity;)V

    invoke-virtual {v8, v7, v9}, Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController;->setup(Landroidx/recyclerview/widget/RecyclerView;Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController$CollectionViewControllerDelegate;)V

    return-object v6
.end method
