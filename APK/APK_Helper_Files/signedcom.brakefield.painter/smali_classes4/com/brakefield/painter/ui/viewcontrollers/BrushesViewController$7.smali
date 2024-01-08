.class Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController$7;
.super Lcom/brakefield/infinitestudio/ui/collections/CollectionItemDragListener;
.source "BrushesViewController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController;->setupFolderCollection(Landroidx/recyclerview/widget/RecyclerView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController;


# direct methods
.method constructor <init>(Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController;Landroidx/recyclerview/widget/RecyclerView;Lcom/brakefield/infinitestudio/ui/collections/CollectionItemDragListener$AdapterContract;Lcom/brakefield/infinitestudio/ui/collections/CollectionItemDragListener$DropHandler;Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController$CollectionViewControllerDelegate;)V
    .locals 0

    .line 461
    iput-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController$7;->this$0:Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController;

    invoke-direct {p0, p2, p3, p4, p5}, Lcom/brakefield/infinitestudio/ui/collections/CollectionItemDragListener;-><init>(Landroidx/recyclerview/widget/RecyclerView;Lcom/brakefield/infinitestudio/ui/collections/CollectionItemDragListener$AdapterContract;Lcom/brakefield/infinitestudio/ui/collections/CollectionItemDragListener$DropHandler;Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController$CollectionViewControllerDelegate;)V

    return-void
.end method


# virtual methods
.method protected handles(Lcom/brakefield/infinitestudio/ui/collections/CollectionItemDragListener$DragView;)Z
    .locals 1

    .line 464
    instance-of v0, p1, Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController$BrushFolderDragView;

    if-nez v0, :cond_1

    instance-of p1, p1, Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController$BrushDragView;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method
