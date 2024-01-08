.class Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController$1;
.super Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;
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

.field final synthetic val$recyclerView:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method constructor <init>(Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController;Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    .line 225
    iput-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController$1;->this$0:Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController;

    iput-object p2, p0, Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController$1;->val$recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemRangeMoved(III)V
    .locals 0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 228
    :cond_0
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/BrushesViewController$1;->val$recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    :cond_1
    return-void
.end method
