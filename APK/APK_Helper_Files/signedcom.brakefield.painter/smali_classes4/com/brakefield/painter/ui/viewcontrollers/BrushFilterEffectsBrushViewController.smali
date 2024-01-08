.class public Lcom/brakefield/painter/ui/viewcontrollers/BrushFilterEffectsBrushViewController;
.super Lcom/brakefield/painter/ui/viewcontrollers/ViewController;
.source "BrushFilterEffectsBrushViewController.java"


# instance fields
.field private collectionViewController:Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private res:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 22
    invoke-direct {p0}, Lcom/brakefield/painter/ui/viewcontrollers/ViewController;-><init>()V

    .line 24
    new-instance v0, Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController;

    invoke-direct {v0}, Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController;-><init>()V

    iput-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/BrushFilterEffectsBrushViewController;->collectionViewController:Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController;

    return-void
.end method

.method static synthetic access$000(Lcom/brakefield/painter/ui/viewcontrollers/BrushFilterEffectsBrushViewController;)Landroid/content/res/Resources;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/brakefield/painter/ui/viewcontrollers/BrushFilterEffectsBrushViewController;->res:Landroid/content/res/Resources;

    return-object p0
.end method


# virtual methods
.method public bind(Landroid/app/Activity;Landroid/view/View;Lcom/brakefield/painter/ui/SimpleUI;Lcom/brakefield/painter/ui/viewcontrollers/BrushFiltersViewController$OnFilterEffectSelectedListener;)V
    .locals 8

    .line 29
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/BrushFilterEffectsBrushViewController;->res:Landroid/content/res/Resources;

    .line 31
    invoke-static {p2}, Lcom/brakefield/painter/databinding/LayerAdjustmentsViewControllerBinding;->bind(Landroid/view/View;)Lcom/brakefield/painter/databinding/LayerAdjustmentsViewControllerBinding;

    move-result-object p2

    .line 33
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/16 v0, 0xf

    .line 34
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/16 v0, 0x1d

    .line 35
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/16 v0, 0x1f

    .line 36
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/16 v0, 0x20

    .line 37
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/16 v0, 0x28

    .line 38
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/16 v0, 0x29

    .line 39
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/16 v0, 0x2a

    .line 40
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/16 v0, 0x2c

    .line 41
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/16 v0, 0x2d

    .line 42
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/16 v0, 0x2e

    .line 43
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/16 v0, 0x2f

    .line 44
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 46
    iget-object v6, p0, Lcom/brakefield/painter/ui/viewcontrollers/BrushFilterEffectsBrushViewController;->collectionViewController:Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController;

    iget-object p2, p2, Lcom/brakefield/painter/databinding/LayerAdjustmentsViewControllerBinding;->grid:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v7, Lcom/brakefield/painter/ui/viewcontrollers/BrushFilterEffectsBrushViewController$1;

    move-object v0, v7

    move-object v1, p0

    move-object v3, p4

    move-object v4, p3

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/brakefield/painter/ui/viewcontrollers/BrushFilterEffectsBrushViewController$1;-><init>(Lcom/brakefield/painter/ui/viewcontrollers/BrushFilterEffectsBrushViewController;Ljava/util/List;Lcom/brakefield/painter/ui/viewcontrollers/BrushFiltersViewController$OnFilterEffectSelectedListener;Lcom/brakefield/painter/ui/SimpleUI;Landroid/app/Activity;)V

    invoke-virtual {v6, p2, v7}, Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController;->setup(Landroidx/recyclerview/widget/RecyclerView;Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController$CollectionViewControllerDelegate;)V

    return-void
.end method
