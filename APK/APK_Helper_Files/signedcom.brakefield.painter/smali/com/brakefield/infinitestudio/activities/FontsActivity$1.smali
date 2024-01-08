.class Lcom/brakefield/infinitestudio/activities/FontsActivity$1;
.super Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController$CollectionViewControllerDelegate;
.source "FontsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/brakefield/infinitestudio/activities/FontsActivity;->getCollectionViewControllerDelegate()Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController$CollectionViewControllerDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController$CollectionViewControllerDelegate<",
        "Lcom/brakefield/infinitestudio/FontFamily;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/brakefield/infinitestudio/activities/FontsActivity;

.field final synthetic val$res:Landroid/content/res/Resources;


# direct methods
.method constructor <init>(Lcom/brakefield/infinitestudio/activities/FontsActivity;Landroid/content/res/Resources;)V
    .locals 0

    .line 93
    iput-object p1, p0, Lcom/brakefield/infinitestudio/activities/FontsActivity$1;->this$0:Lcom/brakefield/infinitestudio/activities/FontsActivity;

    iput-object p2, p0, Lcom/brakefield/infinitestudio/activities/FontsActivity$1;->val$res:Landroid/content/res/Resources;

    invoke-direct {p0}, Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController$CollectionViewControllerDelegate;-><init>()V

    return-void
.end method


# virtual methods
.method public addSections(Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionedRecyclerViewAdapter;)V
    .locals 4

    .line 96
    new-instance v0, Lcom/brakefield/infinitestudio/activities/FontsActivity$FontsSection;

    iget-object v1, p0, Lcom/brakefield/infinitestudio/activities/FontsActivity$1;->val$res:Landroid/content/res/Resources;

    iget-object v2, p0, Lcom/brakefield/infinitestudio/activities/FontsActivity$1;->this$0:Lcom/brakefield/infinitestudio/activities/FontsActivity;

    iget-object v2, v2, Lcom/brakefield/infinitestudio/activities/FontsActivity;->favoriteFonts:Ljava/util/List;

    const-string v3, "Favorites"

    invoke-direct {v0, v1, v3, v2, p0}, Lcom/brakefield/infinitestudio/activities/FontsActivity$FontsSection;-><init>(Landroid/content/res/Resources;Ljava/lang/String;Ljava/util/List;Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController$CollectionViewControllerDelegate;)V

    invoke-virtual {p1, v0}, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionedRecyclerViewAdapter;->addSection(Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/Section;)Ljava/lang/String;

    .line 97
    new-instance v0, Lcom/brakefield/infinitestudio/activities/FontsActivity$FontsSection;

    iget-object v1, p0, Lcom/brakefield/infinitestudio/activities/FontsActivity$1;->val$res:Landroid/content/res/Resources;

    iget-object v2, p0, Lcom/brakefield/infinitestudio/activities/FontsActivity$1;->this$0:Lcom/brakefield/infinitestudio/activities/FontsActivity;

    iget-object v2, v2, Lcom/brakefield/infinitestudio/activities/FontsActivity;->googleFonts:Ljava/util/List;

    const-string v3, "Google Fonts"

    invoke-direct {v0, v1, v3, v2, p0}, Lcom/brakefield/infinitestudio/activities/FontsActivity$FontsSection;-><init>(Landroid/content/res/Resources;Ljava/lang/String;Ljava/util/List;Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController$CollectionViewControllerDelegate;)V

    invoke-virtual {p1, v0}, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionedRecyclerViewAdapter;->addSection(Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/Section;)Ljava/lang/String;

    return-void
.end method

.method public getSidePadding()Lcom/brakefield/infinitestudio/ui/layout/Padding;
    .locals 1

    .line 110
    invoke-static {}, Lcom/brakefield/infinitestudio/ui/collections/CollectionPadding;->NormalPadding()Lcom/brakefield/infinitestudio/ui/layout/Padding;

    move-result-object v0

    return-object v0
.end method

.method public onItemClick(Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroid/view/View;Lcom/brakefield/infinitestudio/FontFamily;)V
    .locals 0

    .line 102
    iget-object p1, p0, Lcom/brakefield/infinitestudio/activities/FontsActivity$1;->this$0:Lcom/brakefield/infinitestudio/activities/FontsActivity;

    invoke-virtual {p1}, Lcom/brakefield/infinitestudio/activities/FontsActivity;->finish()V

    return-void
.end method

.method public bridge synthetic onItemClick(Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroid/view/View;Ljava/lang/Object;)V
    .locals 0

    .line 93
    check-cast p3, Lcom/brakefield/infinitestudio/FontFamily;

    invoke-virtual {p0, p1, p2, p3}, Lcom/brakefield/infinitestudio/activities/FontsActivity$1;->onItemClick(Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroid/view/View;Lcom/brakefield/infinitestudio/FontFamily;)V

    return-void
.end method

.method public onItemLongClick(Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroid/view/View;Lcom/brakefield/infinitestudio/FontFamily;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public bridge synthetic onItemLongClick(Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroid/view/View;Ljava/lang/Object;)Z
    .locals 0

    .line 93
    check-cast p3, Lcom/brakefield/infinitestudio/FontFamily;

    invoke-virtual {p0, p1, p2, p3}, Lcom/brakefield/infinitestudio/activities/FontsActivity$1;->onItemLongClick(Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroid/view/View;Lcom/brakefield/infinitestudio/FontFamily;)Z

    move-result p1

    return p1
.end method
