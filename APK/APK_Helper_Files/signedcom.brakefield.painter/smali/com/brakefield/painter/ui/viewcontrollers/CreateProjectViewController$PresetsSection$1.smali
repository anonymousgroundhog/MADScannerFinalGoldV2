.class Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$PresetsSection$1;
.super Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController$CollectionViewControllerDelegate;
.source "CreateProjectViewController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$PresetsSection;->setup(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController$CollectionViewControllerDelegate<",
        "Lcom/brakefield/painter/nativeobjs/data/DimensionPresetNative;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$PresetsSection;

.field final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$PresetsSection;Landroid/app/Activity;)V
    .locals 0

    .line 802
    iput-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$PresetsSection$1;->this$1:Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$PresetsSection;

    iput-object p2, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$PresetsSection$1;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController$CollectionViewControllerDelegate;-><init>()V

    return-void
.end method


# virtual methods
.method public addSections(Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionedRecyclerViewAdapter;)V
    .locals 5

    .line 805
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$PresetsSection$1;->this$1:Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$PresetsSection;

    invoke-static {v0}, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$PresetsSection;->access$2000(Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$PresetsSection;)Lcom/brakefield/painter/nativeobjs/data/DimensionPresetSetsNative;

    move-result-object v0

    invoke-virtual {v0}, Lcom/brakefield/painter/nativeobjs/data/DimensionPresetSetsNative;->numberOfPresets()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 807
    new-instance v2, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$PresetsCollectionSection;

    iget-object v3, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$PresetsSection$1;->this$1:Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$PresetsSection;

    iget-object v3, v3, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$PresetsSection;->this$0:Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;

    invoke-static {v3}, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;->access$2200(Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController;)Landroid/content/res/Resources;

    move-result-object v3

    iget-object v4, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$PresetsSection$1;->this$1:Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$PresetsSection;

    invoke-static {v4}, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$PresetsSection;->access$2000(Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$PresetsSection;)Lcom/brakefield/painter/nativeobjs/data/DimensionPresetSetsNative;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/brakefield/painter/nativeobjs/data/DimensionPresetSetsNative;->getPresets(I)Lcom/brakefield/painter/nativeobjs/data/DimensionPresetSetNative;

    move-result-object v4

    invoke-direct {v2, v3, v4, p0}, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$PresetsCollectionSection;-><init>(Landroid/content/res/Resources;Lcom/brakefield/painter/nativeobjs/data/DimensionPresetSetNative;Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController$CollectionViewControllerDelegate;)V

    invoke-virtual {p1, v2}, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionedRecyclerViewAdapter;->addSection(Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/Section;)Ljava/lang/String;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onItemClick(Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroid/view/View;Lcom/brakefield/painter/nativeobjs/data/DimensionPresetNative;)V
    .locals 0

    .line 812
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$PresetsSection$1;->this$1:Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$PresetsSection;

    invoke-static {p1}, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$PresetsSection;->access$2300(Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$PresetsSection;)Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$OnPresetSelected;

    move-result-object p1

    invoke-interface {p1, p3}, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$OnPresetSelected;->applyPreset(Lcom/brakefield/painter/nativeobjs/data/DimensionPresetNative;)V

    return-void
.end method

.method public bridge synthetic onItemClick(Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroid/view/View;Ljava/lang/Object;)V
    .locals 0

    .line 802
    check-cast p3, Lcom/brakefield/painter/nativeobjs/data/DimensionPresetNative;

    invoke-virtual {p0, p1, p2, p3}, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$PresetsSection$1;->onItemClick(Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroid/view/View;Lcom/brakefield/painter/nativeobjs/data/DimensionPresetNative;)V

    return-void
.end method

.method public onItemLongClick(Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroid/view/View;Lcom/brakefield/painter/nativeobjs/data/DimensionPresetNative;)Z
    .locals 1

    .line 816
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$PresetsSection$1;->this$1:Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$PresetsSection;

    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$PresetsSection$1;->val$activity:Landroid/app/Activity;

    invoke-static {p1, v0, p2, p3}, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$PresetsSection;->access$2400(Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$PresetsSection;Landroid/content/Context;Landroid/view/View;Lcom/brakefield/painter/nativeobjs/data/DimensionPresetNative;)V

    const/4 p1, 0x0

    return p1
.end method

.method public bridge synthetic onItemLongClick(Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroid/view/View;Ljava/lang/Object;)Z
    .locals 0

    .line 802
    check-cast p3, Lcom/brakefield/painter/nativeobjs/data/DimensionPresetNative;

    invoke-virtual {p0, p1, p2, p3}, Lcom/brakefield/painter/ui/viewcontrollers/CreateProjectViewController$PresetsSection$1;->onItemLongClick(Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroid/view/View;Lcom/brakefield/painter/nativeobjs/data/DimensionPresetNative;)Z

    move-result p1

    return p1
.end method
