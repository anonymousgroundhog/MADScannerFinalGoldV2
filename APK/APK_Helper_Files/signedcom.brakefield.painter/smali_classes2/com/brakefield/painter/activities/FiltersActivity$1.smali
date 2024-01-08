.class Lcom/brakefield/painter/activities/FiltersActivity$1;
.super Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController$CollectionViewControllerDelegate;
.source "FiltersActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/brakefield/painter/activities/FiltersActivity;->getCollectionViewControllerDelegate()Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController$CollectionViewControllerDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController$CollectionViewControllerDelegate<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/brakefield/painter/activities/FiltersActivity;

.field final synthetic val$motionFilters:Ljava/util/List;

.field final synthetic val$photoFilters:Ljava/util/List;

.field final synthetic val$res:Landroid/content/res/Resources;

.field final synthetic val$structureFilters:Ljava/util/List;

.field final synthetic val$styleFilters:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/brakefield/painter/activities/FiltersActivity;Landroid/content/res/Resources;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 0

    .line 141
    iput-object p1, p0, Lcom/brakefield/painter/activities/FiltersActivity$1;->this$0:Lcom/brakefield/painter/activities/FiltersActivity;

    iput-object p2, p0, Lcom/brakefield/painter/activities/FiltersActivity$1;->val$res:Landroid/content/res/Resources;

    iput-object p3, p0, Lcom/brakefield/painter/activities/FiltersActivity$1;->val$photoFilters:Ljava/util/List;

    iput-object p4, p0, Lcom/brakefield/painter/activities/FiltersActivity$1;->val$structureFilters:Ljava/util/List;

    iput-object p5, p0, Lcom/brakefield/painter/activities/FiltersActivity$1;->val$styleFilters:Ljava/util/List;

    iput-object p6, p0, Lcom/brakefield/painter/activities/FiltersActivity$1;->val$motionFilters:Ljava/util/List;

    invoke-direct {p0}, Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController$CollectionViewControllerDelegate;-><init>()V

    return-void
.end method


# virtual methods
.method public addSections(Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionedRecyclerViewAdapter;)V
    .locals 4

    .line 144
    new-instance v0, Lcom/brakefield/painter/activities/FiltersActivity$FiltersSection;

    iget-object v1, p0, Lcom/brakefield/painter/activities/FiltersActivity$1;->val$res:Landroid/content/res/Resources;

    const v2, 0x7f1209eb

    invoke-static {v2}, Lcom/brakefield/infinitestudio/Strings;->get(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/brakefield/painter/activities/FiltersActivity$1;->val$photoFilters:Ljava/util/List;

    invoke-direct {v0, v1, v2, v3, p0}, Lcom/brakefield/painter/activities/FiltersActivity$FiltersSection;-><init>(Landroid/content/res/Resources;Ljava/lang/String;Ljava/util/List;Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController$CollectionViewControllerDelegate;)V

    invoke-virtual {p1, v0}, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionedRecyclerViewAdapter;->addSection(Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/Section;)Ljava/lang/String;

    .line 145
    new-instance v0, Lcom/brakefield/painter/activities/FiltersActivity$FiltersSection;

    iget-object v1, p0, Lcom/brakefield/painter/activities/FiltersActivity$1;->val$res:Landroid/content/res/Resources;

    const v2, 0x7f120ad3

    invoke-static {v2}, Lcom/brakefield/infinitestudio/Strings;->get(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/brakefield/painter/activities/FiltersActivity$1;->val$structureFilters:Ljava/util/List;

    invoke-direct {v0, v1, v2, v3, p0}, Lcom/brakefield/painter/activities/FiltersActivity$FiltersSection;-><init>(Landroid/content/res/Resources;Ljava/lang/String;Ljava/util/List;Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController$CollectionViewControllerDelegate;)V

    invoke-virtual {p1, v0}, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionedRecyclerViewAdapter;->addSection(Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/Section;)Ljava/lang/String;

    .line 146
    new-instance v0, Lcom/brakefield/painter/activities/FiltersActivity$FiltersSection;

    iget-object v1, p0, Lcom/brakefield/painter/activities/FiltersActivity$1;->val$res:Landroid/content/res/Resources;

    const v2, 0x7f12004b

    invoke-static {v2}, Lcom/brakefield/infinitestudio/Strings;->get(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/brakefield/painter/activities/FiltersActivity$1;->val$styleFilters:Ljava/util/List;

    invoke-direct {v0, v1, v2, v3, p0}, Lcom/brakefield/painter/activities/FiltersActivity$FiltersSection;-><init>(Landroid/content/res/Resources;Ljava/lang/String;Ljava/util/List;Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController$CollectionViewControllerDelegate;)V

    invoke-virtual {p1, v0}, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionedRecyclerViewAdapter;->addSection(Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/Section;)Ljava/lang/String;

    .line 147
    new-instance v0, Lcom/brakefield/painter/activities/FiltersActivity$FiltersSection;

    iget-object v1, p0, Lcom/brakefield/painter/activities/FiltersActivity$1;->val$res:Landroid/content/res/Resources;

    const v2, 0x7f120956

    invoke-static {v2}, Lcom/brakefield/infinitestudio/Strings;->get(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/brakefield/painter/activities/FiltersActivity$1;->val$motionFilters:Ljava/util/List;

    invoke-direct {v0, v1, v2, v3, p0}, Lcom/brakefield/painter/activities/FiltersActivity$FiltersSection;-><init>(Landroid/content/res/Resources;Ljava/lang/String;Ljava/util/List;Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController$CollectionViewControllerDelegate;)V

    invoke-virtual {p1, v0}, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionedRecyclerViewAdapter;->addSection(Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/Section;)Ljava/lang/String;

    return-void
.end method

.method public getSidePadding()Lcom/brakefield/infinitestudio/ui/layout/Padding;
    .locals 1

    .line 162
    invoke-static {}, Lcom/brakefield/infinitestudio/ui/collections/CollectionPadding;->NormalPadding()Lcom/brakefield/infinitestudio/ui/layout/Padding;

    move-result-object v0

    return-object v0
.end method

.method public onItemClick(Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroid/view/View;Ljava/lang/Integer;)V
    .locals 0

    .line 151
    iget-object p1, p0, Lcom/brakefield/painter/activities/FiltersActivity$1;->this$0:Lcom/brakefield/painter/activities/FiltersActivity;

    invoke-virtual {p1}, Lcom/brakefield/painter/activities/FiltersActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string p2, "EXTRA_PICKED_ITEM"

    .line 152
    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 153
    iget-object p2, p0, Lcom/brakefield/painter/activities/FiltersActivity$1;->this$0:Lcom/brakefield/painter/activities/FiltersActivity;

    const/4 p3, -0x1

    invoke-virtual {p2, p3, p1}, Lcom/brakefield/painter/activities/FiltersActivity;->setResult(ILandroid/content/Intent;)V

    .line 154
    iget-object p1, p0, Lcom/brakefield/painter/activities/FiltersActivity$1;->this$0:Lcom/brakefield/painter/activities/FiltersActivity;

    invoke-virtual {p1}, Lcom/brakefield/painter/activities/FiltersActivity;->finish()V

    return-void
.end method

.method public bridge synthetic onItemClick(Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroid/view/View;Ljava/lang/Object;)V
    .locals 0

    .line 141
    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p0, p1, p2, p3}, Lcom/brakefield/painter/activities/FiltersActivity$1;->onItemClick(Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroid/view/View;Ljava/lang/Integer;)V

    return-void
.end method

.method public onItemLongClick(Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroid/view/View;Ljava/lang/Integer;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public bridge synthetic onItemLongClick(Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroid/view/View;Ljava/lang/Object;)Z
    .locals 0

    .line 141
    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p0, p1, p2, p3}, Lcom/brakefield/painter/activities/FiltersActivity$1;->onItemLongClick(Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroid/view/View;Ljava/lang/Integer;)Z

    move-result p1

    return p1
.end method
