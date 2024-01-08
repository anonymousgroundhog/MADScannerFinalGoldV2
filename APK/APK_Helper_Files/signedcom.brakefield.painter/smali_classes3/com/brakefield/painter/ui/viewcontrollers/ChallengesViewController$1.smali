.class Lcom/brakefield/painter/ui/viewcontrollers/ChallengesViewController$1;
.super Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController$CollectionViewControllerDelegate;
.source "ChallengesViewController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/brakefield/painter/ui/viewcontrollers/ChallengesViewController;->getView(Landroid/app/Activity;Lcom/brakefield/painter/ui/SimpleUI;Lcom/brakefield/painter/ui/viewcontrollers/ChallengesViewController$OnOpenChallengeListener;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController$CollectionViewControllerDelegate<",
        "Lcom/brakefield/painter/ui/viewcontrollers/ChallengesViewController$ChallengeItem;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/brakefield/painter/ui/viewcontrollers/ChallengesViewController;

.field final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/brakefield/painter/ui/viewcontrollers/ChallengesViewController;Landroid/app/Activity;)V
    .locals 0

    .line 85
    iput-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/ChallengesViewController$1;->this$0:Lcom/brakefield/painter/ui/viewcontrollers/ChallengesViewController;

    iput-object p2, p0, Lcom/brakefield/painter/ui/viewcontrollers/ChallengesViewController$1;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController$CollectionViewControllerDelegate;-><init>()V

    return-void
.end method


# virtual methods
.method public addSections(Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionedRecyclerViewAdapter;)V
    .locals 3

    .line 88
    new-instance v0, Lcom/brakefield/painter/ui/viewcontrollers/ChallengesViewController$ChallengesSection;

    iget-object v1, p0, Lcom/brakefield/painter/ui/viewcontrollers/ChallengesViewController$1;->this$0:Lcom/brakefield/painter/ui/viewcontrollers/ChallengesViewController;

    invoke-static {v1}, Lcom/brakefield/painter/ui/viewcontrollers/ChallengesViewController;->access$000(Lcom/brakefield/painter/ui/viewcontrollers/ChallengesViewController;)Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/brakefield/painter/ui/viewcontrollers/ChallengesViewController$1;->this$0:Lcom/brakefield/painter/ui/viewcontrollers/ChallengesViewController;

    invoke-static {v2}, Lcom/brakefield/painter/ui/viewcontrollers/ChallengesViewController;->access$100(Lcom/brakefield/painter/ui/viewcontrollers/ChallengesViewController;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v1, v2, p0}, Lcom/brakefield/painter/ui/viewcontrollers/ChallengesViewController$ChallengesSection;-><init>(Landroid/content/res/Resources;Ljava/util/List;Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController$CollectionViewControllerDelegate;)V

    invoke-virtual {p1, v0}, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionedRecyclerViewAdapter;->addSection(Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/Section;)Ljava/lang/String;

    return-void
.end method

.method public onItemClick(Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroid/view/View;Lcom/brakefield/painter/ui/viewcontrollers/ChallengesViewController$ChallengeItem;)V
    .locals 0

    .line 92
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/ChallengesViewController$1;->this$0:Lcom/brakefield/painter/ui/viewcontrollers/ChallengesViewController;

    iget-object p2, p0, Lcom/brakefield/painter/ui/viewcontrollers/ChallengesViewController$1;->val$activity:Landroid/app/Activity;

    invoke-virtual {p1, p2, p3}, Lcom/brakefield/painter/ui/viewcontrollers/ChallengesViewController;->openChallengeInfo(Landroid/app/Activity;Lcom/brakefield/painter/ui/viewcontrollers/ChallengesViewController$ChallengeItem;)V

    return-void
.end method

.method public bridge synthetic onItemClick(Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroid/view/View;Ljava/lang/Object;)V
    .locals 0

    .line 85
    check-cast p3, Lcom/brakefield/painter/ui/viewcontrollers/ChallengesViewController$ChallengeItem;

    invoke-virtual {p0, p1, p2, p3}, Lcom/brakefield/painter/ui/viewcontrollers/ChallengesViewController$1;->onItemClick(Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroid/view/View;Lcom/brakefield/painter/ui/viewcontrollers/ChallengesViewController$ChallengeItem;)V

    return-void
.end method

.method public onItemLongClick(Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroid/view/View;Lcom/brakefield/painter/ui/viewcontrollers/ChallengesViewController$ChallengeItem;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public bridge synthetic onItemLongClick(Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroid/view/View;Ljava/lang/Object;)Z
    .locals 0

    .line 85
    check-cast p3, Lcom/brakefield/painter/ui/viewcontrollers/ChallengesViewController$ChallengeItem;

    invoke-virtual {p0, p1, p2, p3}, Lcom/brakefield/painter/ui/viewcontrollers/ChallengesViewController$1;->onItemLongClick(Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroid/view/View;Lcom/brakefield/painter/ui/viewcontrollers/ChallengesViewController$ChallengeItem;)Z

    move-result p1

    return p1
.end method
