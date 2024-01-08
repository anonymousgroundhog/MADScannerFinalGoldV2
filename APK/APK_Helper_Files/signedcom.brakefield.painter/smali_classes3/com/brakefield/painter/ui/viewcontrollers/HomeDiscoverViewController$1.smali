.class Lcom/brakefield/painter/ui/viewcontrollers/HomeDiscoverViewController$1;
.super Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController$CollectionViewControllerDelegate;
.source "HomeDiscoverViewController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/brakefield/painter/ui/viewcontrollers/HomeDiscoverViewController;->setup(Landroid/app/Activity;Landroidx/recyclerview/widget/RecyclerView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController$CollectionViewControllerDelegate<",
        "Lcom/brakefield/painter/ui/viewcontrollers/HomeDiscoverViewController$DiscoverCard;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/brakefield/painter/ui/viewcontrollers/HomeDiscoverViewController;

.field final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/brakefield/painter/ui/viewcontrollers/HomeDiscoverViewController;Landroid/app/Activity;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/HomeDiscoverViewController$1;->this$0:Lcom/brakefield/painter/ui/viewcontrollers/HomeDiscoverViewController;

    iput-object p2, p0, Lcom/brakefield/painter/ui/viewcontrollers/HomeDiscoverViewController$1;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController$CollectionViewControllerDelegate;-><init>()V

    return-void
.end method


# virtual methods
.method public addSections(Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionedRecyclerViewAdapter;)V
    .locals 3

    .line 66
    new-instance v0, Lcom/brakefield/painter/ui/viewcontrollers/HomeDiscoverViewController$DiscoversSection;

    iget-object v1, p0, Lcom/brakefield/painter/ui/viewcontrollers/HomeDiscoverViewController$1;->this$0:Lcom/brakefield/painter/ui/viewcontrollers/HomeDiscoverViewController;

    invoke-static {v1}, Lcom/brakefield/painter/ui/viewcontrollers/HomeDiscoverViewController;->access$000(Lcom/brakefield/painter/ui/viewcontrollers/HomeDiscoverViewController;)Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/brakefield/painter/ui/viewcontrollers/HomeDiscoverViewController$1;->this$0:Lcom/brakefield/painter/ui/viewcontrollers/HomeDiscoverViewController;

    invoke-static {v2}, Lcom/brakefield/painter/ui/viewcontrollers/HomeDiscoverViewController;->access$100(Lcom/brakefield/painter/ui/viewcontrollers/HomeDiscoverViewController;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v1, v2, p0}, Lcom/brakefield/painter/ui/viewcontrollers/HomeDiscoverViewController$DiscoversSection;-><init>(Landroid/content/res/Resources;Ljava/util/List;Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController$CollectionViewControllerDelegate;)V

    invoke-virtual {p1, v0}, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionedRecyclerViewAdapter;->addSection(Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/Section;)Ljava/lang/String;

    return-void
.end method

.method public onItemClick(Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroid/view/View;Lcom/brakefield/painter/ui/viewcontrollers/HomeDiscoverViewController$DiscoverCard;)V
    .locals 0

    .line 70
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/HomeDiscoverViewController$1;->val$activity:Landroid/app/Activity;

    invoke-virtual {p3, p1}, Lcom/brakefield/painter/ui/viewcontrollers/HomeDiscoverViewController$DiscoverCard;->open(Landroid/app/Activity;)V

    return-void
.end method

.method public bridge synthetic onItemClick(Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroid/view/View;Ljava/lang/Object;)V
    .locals 0

    .line 63
    check-cast p3, Lcom/brakefield/painter/ui/viewcontrollers/HomeDiscoverViewController$DiscoverCard;

    invoke-virtual {p0, p1, p2, p3}, Lcom/brakefield/painter/ui/viewcontrollers/HomeDiscoverViewController$1;->onItemClick(Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroid/view/View;Lcom/brakefield/painter/ui/viewcontrollers/HomeDiscoverViewController$DiscoverCard;)V

    return-void
.end method

.method public onItemLongClick(Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroid/view/View;Lcom/brakefield/painter/ui/viewcontrollers/HomeDiscoverViewController$DiscoverCard;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public bridge synthetic onItemLongClick(Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroid/view/View;Ljava/lang/Object;)Z
    .locals 0

    .line 63
    check-cast p3, Lcom/brakefield/painter/ui/viewcontrollers/HomeDiscoverViewController$DiscoverCard;

    invoke-virtual {p0, p1, p2, p3}, Lcom/brakefield/painter/ui/viewcontrollers/HomeDiscoverViewController$1;->onItemLongClick(Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroid/view/View;Lcom/brakefield/painter/ui/viewcontrollers/HomeDiscoverViewController$DiscoverCard;)Z

    move-result p1

    return p1
.end method
