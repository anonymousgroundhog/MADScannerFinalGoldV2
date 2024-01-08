.class Lcom/brakefield/painter/ui/viewcontrollers/BrushFilterEffectsLayerViewController$1;
.super Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController$CollectionViewControllerDelegate;
.source "BrushFilterEffectsLayerViewController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/brakefield/painter/ui/viewcontrollers/BrushFilterEffectsLayerViewController;->bind(Landroid/app/Activity;Landroid/view/View;Lcom/brakefield/painter/ui/SimpleUI;Lcom/brakefield/painter/ui/viewcontrollers/BrushFiltersViewController$OnFilterEffectSelectedListener;)V
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
.field final synthetic this$0:Lcom/brakefield/painter/ui/viewcontrollers/BrushFilterEffectsLayerViewController;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$colorAdjustments:Ljava/util/List;

.field final synthetic val$filters:Ljava/util/List;

.field final synthetic val$listener:Lcom/brakefield/painter/ui/viewcontrollers/BrushFiltersViewController$OnFilterEffectSelectedListener;

.field final synthetic val$ui:Lcom/brakefield/painter/ui/SimpleUI;


# direct methods
.method constructor <init>(Lcom/brakefield/painter/ui/viewcontrollers/BrushFilterEffectsLayerViewController;Ljava/util/List;Ljava/util/List;Lcom/brakefield/painter/ui/viewcontrollers/BrushFiltersViewController$OnFilterEffectSelectedListener;Lcom/brakefield/painter/ui/SimpleUI;Landroid/app/Activity;)V
    .locals 0

    .line 88
    iput-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/BrushFilterEffectsLayerViewController$1;->this$0:Lcom/brakefield/painter/ui/viewcontrollers/BrushFilterEffectsLayerViewController;

    iput-object p2, p0, Lcom/brakefield/painter/ui/viewcontrollers/BrushFilterEffectsLayerViewController$1;->val$colorAdjustments:Ljava/util/List;

    iput-object p3, p0, Lcom/brakefield/painter/ui/viewcontrollers/BrushFilterEffectsLayerViewController$1;->val$filters:Ljava/util/List;

    iput-object p4, p0, Lcom/brakefield/painter/ui/viewcontrollers/BrushFilterEffectsLayerViewController$1;->val$listener:Lcom/brakefield/painter/ui/viewcontrollers/BrushFiltersViewController$OnFilterEffectSelectedListener;

    iput-object p5, p0, Lcom/brakefield/painter/ui/viewcontrollers/BrushFilterEffectsLayerViewController$1;->val$ui:Lcom/brakefield/painter/ui/SimpleUI;

    iput-object p6, p0, Lcom/brakefield/painter/ui/viewcontrollers/BrushFilterEffectsLayerViewController$1;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController$CollectionViewControllerDelegate;-><init>()V

    return-void
.end method


# virtual methods
.method public addSections(Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionedRecyclerViewAdapter;)V
    .locals 4

    .line 91
    new-instance v0, Lcom/brakefield/painter/ui/viewcontrollers/LayerAdjustmentsViewController$ColorAdjustmentsSection;

    iget-object v1, p0, Lcom/brakefield/painter/ui/viewcontrollers/BrushFilterEffectsLayerViewController$1;->this$0:Lcom/brakefield/painter/ui/viewcontrollers/BrushFilterEffectsLayerViewController;

    invoke-static {v1}, Lcom/brakefield/painter/ui/viewcontrollers/BrushFilterEffectsLayerViewController;->access$000(Lcom/brakefield/painter/ui/viewcontrollers/BrushFilterEffectsLayerViewController;)Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1200bc

    invoke-static {v2}, Lcom/brakefield/infinitestudio/Strings;->get(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/brakefield/painter/ui/viewcontrollers/BrushFilterEffectsLayerViewController$1;->val$colorAdjustments:Ljava/util/List;

    invoke-direct {v0, v1, v2, v3, p0}, Lcom/brakefield/painter/ui/viewcontrollers/LayerAdjustmentsViewController$ColorAdjustmentsSection;-><init>(Landroid/content/res/Resources;Ljava/lang/String;Ljava/util/List;Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController$CollectionViewControllerDelegate;)V

    invoke-virtual {p1, v0}, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionedRecyclerViewAdapter;->addSection(Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/Section;)Ljava/lang/String;

    .line 92
    new-instance v0, Lcom/brakefield/painter/ui/viewcontrollers/FiltersViewController$FiltersSection;

    iget-object v1, p0, Lcom/brakefield/painter/ui/viewcontrollers/BrushFilterEffectsLayerViewController$1;->this$0:Lcom/brakefield/painter/ui/viewcontrollers/BrushFilterEffectsLayerViewController;

    invoke-static {v1}, Lcom/brakefield/painter/ui/viewcontrollers/BrushFilterEffectsLayerViewController;->access$000(Lcom/brakefield/painter/ui/viewcontrollers/BrushFilterEffectsLayerViewController;)Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f120190

    invoke-static {v2}, Lcom/brakefield/infinitestudio/Strings;->get(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/brakefield/painter/ui/viewcontrollers/BrushFilterEffectsLayerViewController$1;->val$filters:Ljava/util/List;

    invoke-direct {v0, v1, v2, v3, p0}, Lcom/brakefield/painter/ui/viewcontrollers/FiltersViewController$FiltersSection;-><init>(Landroid/content/res/Resources;Ljava/lang/String;Ljava/util/List;Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController$CollectionViewControllerDelegate;)V

    invoke-virtual {p1, v0}, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionedRecyclerViewAdapter;->addSection(Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/Section;)Ljava/lang/String;

    return-void
.end method

.method public onItemClick(Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroid/view/View;Ljava/lang/Integer;)V
    .locals 0

    .line 96
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/BrushFilterEffectsLayerViewController$1;->val$listener:Lcom/brakefield/painter/ui/viewcontrollers/BrushFiltersViewController$OnFilterEffectSelectedListener;

    const/4 p2, 0x0

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    invoke-interface {p1, p2, p3}, Lcom/brakefield/painter/ui/viewcontrollers/BrushFiltersViewController$OnFilterEffectSelectedListener;->onFilterEffectSelected(II)V

    .line 97
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/BrushFilterEffectsLayerViewController$1;->val$ui:Lcom/brakefield/painter/ui/SimpleUI;

    iget-object p2, p0, Lcom/brakefield/painter/ui/viewcontrollers/BrushFilterEffectsLayerViewController$1;->val$activity:Landroid/app/Activity;

    invoke-virtual {p1, p2}, Lcom/brakefield/painter/ui/SimpleUI;->update(Landroid/app/Activity;)V

    .line 98
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/BrushFilterEffectsLayerViewController$1;->val$ui:Lcom/brakefield/painter/ui/SimpleUI;

    invoke-virtual {p1}, Lcom/brakefield/painter/ui/SimpleUI;->dismissPopup()V

    return-void
.end method

.method public bridge synthetic onItemClick(Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroid/view/View;Ljava/lang/Object;)V
    .locals 0

    .line 88
    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p0, p1, p2, p3}, Lcom/brakefield/painter/ui/viewcontrollers/BrushFilterEffectsLayerViewController$1;->onItemClick(Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroid/view/View;Ljava/lang/Integer;)V

    return-void
.end method

.method public onItemLongClick(Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroid/view/View;Ljava/lang/Integer;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public bridge synthetic onItemLongClick(Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroid/view/View;Ljava/lang/Object;)Z
    .locals 0

    .line 88
    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p0, p1, p2, p3}, Lcom/brakefield/painter/ui/viewcontrollers/BrushFilterEffectsLayerViewController$1;->onItemLongClick(Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroid/view/View;Ljava/lang/Integer;)Z

    move-result p1

    return p1
.end method
