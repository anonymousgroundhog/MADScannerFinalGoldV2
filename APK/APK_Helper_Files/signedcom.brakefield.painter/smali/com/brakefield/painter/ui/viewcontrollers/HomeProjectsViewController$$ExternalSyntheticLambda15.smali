.class public final synthetic Lcom/brakefield/painter/ui/viewcontrollers/HomeProjectsViewController$$ExternalSyntheticLambda15;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/brakefield/infinitestudio/gestures/LongpressDragGesture$Listener;


# instance fields
.field public final synthetic f$0:Lcom/brakefield/painter/ui/viewcontrollers/HomeProjectsViewController;

.field public final synthetic f$1:Landroidx/recyclerview/widget/RecyclerView;

.field public final synthetic f$2:Lcom/brakefield/painter/ui/viewcontrollers/HomeProjectsViewController$ProjectsSectionedRecyclerViewAdapter;

.field public final synthetic f$3:Lcom/brakefield/infinitestudio/ui/collections/CollectionItemDragListener;


# direct methods
.method public synthetic constructor <init>(Lcom/brakefield/painter/ui/viewcontrollers/HomeProjectsViewController;Landroidx/recyclerview/widget/RecyclerView;Lcom/brakefield/painter/ui/viewcontrollers/HomeProjectsViewController$ProjectsSectionedRecyclerViewAdapter;Lcom/brakefield/infinitestudio/ui/collections/CollectionItemDragListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/HomeProjectsViewController$$ExternalSyntheticLambda15;->f$0:Lcom/brakefield/painter/ui/viewcontrollers/HomeProjectsViewController;

    iput-object p2, p0, Lcom/brakefield/painter/ui/viewcontrollers/HomeProjectsViewController$$ExternalSyntheticLambda15;->f$1:Landroidx/recyclerview/widget/RecyclerView;

    iput-object p3, p0, Lcom/brakefield/painter/ui/viewcontrollers/HomeProjectsViewController$$ExternalSyntheticLambda15;->f$2:Lcom/brakefield/painter/ui/viewcontrollers/HomeProjectsViewController$ProjectsSectionedRecyclerViewAdapter;

    iput-object p4, p0, Lcom/brakefield/painter/ui/viewcontrollers/HomeProjectsViewController$$ExternalSyntheticLambda15;->f$3:Lcom/brakefield/infinitestudio/ui/collections/CollectionItemDragListener;

    return-void
.end method


# virtual methods
.method public final onUpdate(Lcom/brakefield/infinitestudio/gestures/LongpressDragGesture;Landroid/graphics/PointF;Landroid/graphics/PointF;Z)V
    .locals 8

    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/HomeProjectsViewController$$ExternalSyntheticLambda15;->f$0:Lcom/brakefield/painter/ui/viewcontrollers/HomeProjectsViewController;

    iget-object v1, p0, Lcom/brakefield/painter/ui/viewcontrollers/HomeProjectsViewController$$ExternalSyntheticLambda15;->f$1:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v2, p0, Lcom/brakefield/painter/ui/viewcontrollers/HomeProjectsViewController$$ExternalSyntheticLambda15;->f$2:Lcom/brakefield/painter/ui/viewcontrollers/HomeProjectsViewController$ProjectsSectionedRecyclerViewAdapter;

    iget-object v3, p0, Lcom/brakefield/painter/ui/viewcontrollers/HomeProjectsViewController$$ExternalSyntheticLambda15;->f$3:Lcom/brakefield/infinitestudio/ui/collections/CollectionItemDragListener;

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move v7, p4

    invoke-virtual/range {v0 .. v7}, Lcom/brakefield/painter/ui/viewcontrollers/HomeProjectsViewController;->lambda$setup$0$com-brakefield-painter-ui-viewcontrollers-HomeProjectsViewController(Landroidx/recyclerview/widget/RecyclerView;Lcom/brakefield/painter/ui/viewcontrollers/HomeProjectsViewController$ProjectsSectionedRecyclerViewAdapter;Lcom/brakefield/infinitestudio/ui/collections/CollectionItemDragListener;Lcom/brakefield/infinitestudio/gestures/LongpressDragGesture;Landroid/graphics/PointF;Landroid/graphics/PointF;Z)V

    return-void
.end method
