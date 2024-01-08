.class Lcom/brakefield/infinitestudio/activities/PatternsActivity$1;
.super Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController$CollectionViewControllerDelegate;
.source "PatternsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/brakefield/infinitestudio/activities/PatternsActivity;->getCollectionViewControllerDelegate()Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController$CollectionViewControllerDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController$CollectionViewControllerDelegate<",
        "Lcom/brakefield/infinitestudio/activities/PatternsActivity$PatternItem;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/brakefield/infinitestudio/activities/PatternsActivity;


# direct methods
.method constructor <init>(Lcom/brakefield/infinitestudio/activities/PatternsActivity;)V
    .locals 0

    .line 107
    iput-object p1, p0, Lcom/brakefield/infinitestudio/activities/PatternsActivity$1;->this$0:Lcom/brakefield/infinitestudio/activities/PatternsActivity;

    invoke-direct {p0}, Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController$CollectionViewControllerDelegate;-><init>()V

    return-void
.end method

.method private synthetic lambda$onItemLongClick$0(Lcom/brakefield/infinitestudio/activities/PatternsActivity$PatternItem;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 136
    new-instance p2, Lcom/brakefield/infinitestudio/account/UserFunctions$AdminDeletePattern;

    iget-object p3, p1, Lcom/brakefield/infinitestudio/activities/PatternsActivity$PatternItem;->id:Ljava/lang/String;

    invoke-direct {p2, p3}, Lcom/brakefield/infinitestudio/account/UserFunctions$AdminDeletePattern;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Lcom/brakefield/infinitestudio/account/UserFunctions;->callAsync(Lcom/brakefield/infinitestudio/account/UserFunctions$APICall;)V

    .line 138
    iget-object p2, p0, Lcom/brakefield/infinitestudio/activities/PatternsActivity$1;->this$0:Lcom/brakefield/infinitestudio/activities/PatternsActivity;

    invoke-static {p2}, Lcom/brakefield/infinitestudio/activities/PatternsActivity;->access$000(Lcom/brakefield/infinitestudio/activities/PatternsActivity;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 139
    iget-object p1, p0, Lcom/brakefield/infinitestudio/activities/PatternsActivity$1;->this$0:Lcom/brakefield/infinitestudio/activities/PatternsActivity;

    invoke-virtual {p1}, Lcom/brakefield/infinitestudio/activities/PatternsActivity;->refreshCollection()V

    return-void
.end method


# virtual methods
.method public addSections(Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionedRecyclerViewAdapter;)V
    .locals 3

    .line 111
    new-instance v0, Lcom/brakefield/infinitestudio/activities/PatternsActivity$PatternItemsSection;

    iget-object v1, p0, Lcom/brakefield/infinitestudio/activities/PatternsActivity$1;->this$0:Lcom/brakefield/infinitestudio/activities/PatternsActivity;

    invoke-virtual {v1}, Lcom/brakefield/infinitestudio/activities/PatternsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/brakefield/infinitestudio/activities/PatternsActivity$1;->this$0:Lcom/brakefield/infinitestudio/activities/PatternsActivity;

    invoke-static {v2}, Lcom/brakefield/infinitestudio/activities/PatternsActivity;->access$000(Lcom/brakefield/infinitestudio/activities/PatternsActivity;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v1, v2, p0}, Lcom/brakefield/infinitestudio/activities/PatternsActivity$PatternItemsSection;-><init>(Landroid/content/res/Resources;Ljava/util/List;Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController$CollectionViewControllerDelegate;)V

    invoke-virtual {p1, v0}, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionedRecyclerViewAdapter;->addSection(Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/Section;)Ljava/lang/String;

    .line 112
    new-instance p1, Lcom/brakefield/infinitestudio/activities/PatternsActivity$GetPatternsTask;

    iget-object v0, p0, Lcom/brakefield/infinitestudio/activities/PatternsActivity$1;->this$0:Lcom/brakefield/infinitestudio/activities/PatternsActivity;

    invoke-static {v0}, Lcom/brakefield/infinitestudio/activities/PatternsActivity;->access$000(Lcom/brakefield/infinitestudio/activities/PatternsActivity;)Ljava/util/List;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lcom/brakefield/infinitestudio/activities/PatternsActivity$GetPatternsTask;-><init>(Lcom/brakefield/infinitestudio/activities/PatternsActivity;Ljava/util/List;)V

    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {p1, v0, v1}, Lcom/brakefield/infinitestudio/activities/PatternsActivity$GetPatternsTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public onItemClick(Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroid/view/View;Lcom/brakefield/infinitestudio/activities/PatternsActivity$PatternItem;)V
    .locals 0

    .line 117
    invoke-virtual {p3}, Lcom/brakefield/infinitestudio/activities/PatternsActivity$PatternItem;->isLocal()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 118
    sget-object p1, Lcom/brakefield/infinitestudio/activities/PatternsActivity;->listener:Lcom/brakefield/infinitestudio/activities/PatternsActivity$OnPatternSelectedListener;

    if-eqz p1, :cond_0

    .line 119
    sget-object p1, Lcom/brakefield/infinitestudio/activities/PatternsActivity;->listener:Lcom/brakefield/infinitestudio/activities/PatternsActivity$OnPatternSelectedListener;

    invoke-virtual {p3}, Lcom/brakefield/infinitestudio/activities/PatternsActivity$PatternItem;->getImageUrl()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/brakefield/infinitestudio/activities/PatternsActivity$OnPatternSelectedListener;->loadPattern(Ljava/lang/String;)V

    .line 121
    :cond_0
    iget-object p1, p0, Lcom/brakefield/infinitestudio/activities/PatternsActivity$1;->this$0:Lcom/brakefield/infinitestudio/activities/PatternsActivity;

    invoke-virtual {p1}, Lcom/brakefield/infinitestudio/activities/PatternsActivity;->finish()V

    goto :goto_0

    .line 122
    :cond_1
    new-instance p1, Lcom/brakefield/infinitestudio/activities/PatternsActivity$RetrievePatternTask;

    iget-object p2, p0, Lcom/brakefield/infinitestudio/activities/PatternsActivity$1;->this$0:Lcom/brakefield/infinitestudio/activities/PatternsActivity;

    invoke-direct {p1, p2, p3}, Lcom/brakefield/infinitestudio/activities/PatternsActivity$RetrievePatternTask;-><init>(Lcom/brakefield/infinitestudio/activities/PatternsActivity;Lcom/brakefield/infinitestudio/activities/PatternsActivity$PatternItem;)V

    sget-object p2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 p3, 0x0

    new-array p3, p3, [Ljava/lang/Void;

    invoke-virtual {p1, p2, p3}, Lcom/brakefield/infinitestudio/activities/PatternsActivity$RetrievePatternTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    :goto_0
    return-void
.end method

.method public bridge synthetic onItemClick(Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroid/view/View;Ljava/lang/Object;)V
    .locals 0

    .line 107
    check-cast p3, Lcom/brakefield/infinitestudio/activities/PatternsActivity$PatternItem;

    invoke-virtual {p0, p1, p2, p3}, Lcom/brakefield/infinitestudio/activities/PatternsActivity$1;->onItemClick(Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroid/view/View;Lcom/brakefield/infinitestudio/activities/PatternsActivity$PatternItem;)V

    return-void
.end method

.method public onItemLongClick(Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroid/view/View;Lcom/brakefield/infinitestudio/activities/PatternsActivity$PatternItem;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public bridge synthetic onItemLongClick(Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroid/view/View;Ljava/lang/Object;)Z
    .locals 0

    .line 107
    check-cast p3, Lcom/brakefield/infinitestudio/activities/PatternsActivity$PatternItem;

    invoke-virtual {p0, p1, p2, p3}, Lcom/brakefield/infinitestudio/activities/PatternsActivity$1;->onItemLongClick(Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroid/view/View;Lcom/brakefield/infinitestudio/activities/PatternsActivity$PatternItem;)Z

    move-result p1

    return p1
.end method
