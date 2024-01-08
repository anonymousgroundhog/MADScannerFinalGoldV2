.class Lcom/brakefield/painter/ui/viewcontrollers/HomeProjectsViewController$4;
.super Lcom/brakefield/infinitestudio/ui/collections/CollectionItemDragListener;
.source "HomeProjectsViewController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/brakefield/painter/ui/viewcontrollers/HomeProjectsViewController;->setup(Landroid/app/Activity;Lcom/brakefield/painter/ui/SimpleUI;Landroidx/recyclerview/widget/RecyclerView;Lcom/brakefield/infinitestudio/gestures/GestureLayout;Lcom/brakefield/infinitestudio/ImportIntentLaunchers;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/brakefield/painter/ui/viewcontrollers/HomeProjectsViewController;


# direct methods
.method constructor <init>(Lcom/brakefield/painter/ui/viewcontrollers/HomeProjectsViewController;Landroidx/recyclerview/widget/RecyclerView;Lcom/brakefield/infinitestudio/ui/collections/CollectionItemDragListener$AdapterContract;Lcom/brakefield/infinitestudio/ui/collections/CollectionItemDragListener$DropHandler;Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController$CollectionViewControllerDelegate;)V
    .locals 0

    .line 171
    iput-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/HomeProjectsViewController$4;->this$0:Lcom/brakefield/painter/ui/viewcontrollers/HomeProjectsViewController;

    invoke-direct {p0, p2, p3, p4, p5}, Lcom/brakefield/infinitestudio/ui/collections/CollectionItemDragListener;-><init>(Landroidx/recyclerview/widget/RecyclerView;Lcom/brakefield/infinitestudio/ui/collections/CollectionItemDragListener$AdapterContract;Lcom/brakefield/infinitestudio/ui/collections/CollectionItemDragListener$DropHandler;Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController$CollectionViewControllerDelegate;)V

    return-void
.end method


# virtual methods
.method protected handles(Lcom/brakefield/infinitestudio/ui/collections/CollectionItemDragListener$DragView;)Z
    .locals 0

    .line 174
    instance-of p1, p1, Lcom/brakefield/painter/ui/viewcontrollers/HomeProjectsViewController$ProjectDragView;

    return p1
.end method
