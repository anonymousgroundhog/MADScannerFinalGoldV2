.class public final synthetic Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# instance fields
.field public final synthetic f$0:Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController;

.field public final synthetic f$1:Landroidx/recyclerview/widget/RecyclerView;

.field public final synthetic f$2:Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController$CollectionViewControllerDelegate;


# direct methods
.method public synthetic constructor <init>(Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController;Landroidx/recyclerview/widget/RecyclerView;Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController$CollectionViewControllerDelegate;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController$$ExternalSyntheticLambda0;->f$0:Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController;

    iput-object p2, p0, Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController$$ExternalSyntheticLambda0;->f$1:Landroidx/recyclerview/widget/RecyclerView;

    iput-object p3, p0, Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController$$ExternalSyntheticLambda0;->f$2:Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController$CollectionViewControllerDelegate;

    return-void
.end method


# virtual methods
.method public final onGlobalLayout()V
    .locals 3

    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController$$ExternalSyntheticLambda0;->f$0:Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController;

    iget-object v1, p0, Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController$$ExternalSyntheticLambda0;->f$1:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v2, p0, Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController$$ExternalSyntheticLambda0;->f$2:Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController$CollectionViewControllerDelegate;

    invoke-virtual {v0, v1, v2}, Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController;->lambda$setup$0$com-brakefield-infinitestudio-ui-collections-CollectionViewController(Landroidx/recyclerview/widget/RecyclerView;Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController$CollectionViewControllerDelegate;)V

    return-void
.end method
