.class Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController$3;
.super Lcom/brakefield/infinitestudio/ui/collections/CollectionItemDragListener;
.source "BrushesViewController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController;->setupBrushCollection(Landroidx/recyclerview/widget/RecyclerView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController;


# direct methods
.method constructor <init>(Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController;Landroidx/recyclerview/widget/RecyclerView;Lcom/brakefield/infinitestudio/ui/collections/CollectionItemDragListener$AdapterContract;Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController$CollectionViewControllerDelegate;)V
    .locals 0

    .line 260
    iput-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController$3;->this$0:Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController;

    invoke-direct {p0, p2, p3, p4}, Lcom/brakefield/infinitestudio/ui/collections/CollectionItemDragListener;-><init>(Landroidx/recyclerview/widget/RecyclerView;Lcom/brakefield/infinitestudio/ui/collections/CollectionItemDragListener$AdapterContract;Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController$CollectionViewControllerDelegate;)V

    return-void
.end method


# virtual methods
.method protected handles(Lcom/brakefield/infinitestudio/ui/collections/CollectionItemDragListener$DragView;)Z
    .locals 0

    .line 263
    instance-of p1, p1, Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController$BrushDragView;

    return p1
.end method
