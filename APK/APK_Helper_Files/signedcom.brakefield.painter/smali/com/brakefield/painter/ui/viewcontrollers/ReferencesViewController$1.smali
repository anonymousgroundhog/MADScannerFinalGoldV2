.class Lcom/brakefield/painter/ui/viewcontrollers/ReferencesViewController$1;
.super Lcom/brakefield/painter/ui/viewcontrollers/ReferencesViewController$ReferencesCollectionViewControllerDelegate;
.source "ReferencesViewController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/brakefield/painter/ui/viewcontrollers/ReferencesViewController;->getView(Landroid/app/Activity;Lcom/brakefield/painter/ui/SimpleUI;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/brakefield/painter/ui/viewcontrollers/ReferencesViewController;

.field final synthetic val$referenceManager:Lcom/brakefield/painter/nativeobjs/ReferenceManagerNative;

.field final synthetic val$ui:Lcom/brakefield/painter/ui/SimpleUI;


# direct methods
.method constructor <init>(Lcom/brakefield/painter/ui/viewcontrollers/ReferencesViewController;Lcom/brakefield/painter/nativeobjs/ReferenceManagerNative;Lcom/brakefield/painter/ui/SimpleUI;)V
    .locals 0

    .line 87
    iput-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/ReferencesViewController$1;->this$0:Lcom/brakefield/painter/ui/viewcontrollers/ReferencesViewController;

    iput-object p2, p0, Lcom/brakefield/painter/ui/viewcontrollers/ReferencesViewController$1;->val$referenceManager:Lcom/brakefield/painter/nativeobjs/ReferenceManagerNative;

    iput-object p3, p0, Lcom/brakefield/painter/ui/viewcontrollers/ReferencesViewController$1;->val$ui:Lcom/brakefield/painter/ui/SimpleUI;

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Lcom/brakefield/painter/ui/viewcontrollers/ReferencesViewController$ReferencesCollectionViewControllerDelegate;-><init>(Lcom/brakefield/painter/ui/viewcontrollers/ReferencesViewController;Lcom/brakefield/painter/ui/viewcontrollers/ReferencesViewController$1;)V

    return-void
.end method


# virtual methods
.method public addSections(Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionedRecyclerViewAdapter;)V
    .locals 3

    .line 90
    new-instance v0, Lcom/brakefield/painter/ui/viewcontrollers/ReferencesViewController$ReferenceImagesSection;

    iget-object v1, p0, Lcom/brakefield/painter/ui/viewcontrollers/ReferencesViewController$1;->this$0:Lcom/brakefield/painter/ui/viewcontrollers/ReferencesViewController;

    invoke-static {v1}, Lcom/brakefield/painter/ui/viewcontrollers/ReferencesViewController;->access$200(Lcom/brakefield/painter/ui/viewcontrollers/ReferencesViewController;)Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/brakefield/painter/ui/viewcontrollers/ReferencesViewController$1;->this$0:Lcom/brakefield/painter/ui/viewcontrollers/ReferencesViewController;

    invoke-static {v2}, Lcom/brakefield/painter/ui/viewcontrollers/ReferencesViewController;->access$300(Lcom/brakefield/painter/ui/viewcontrollers/ReferencesViewController;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v1, v2, p0}, Lcom/brakefield/painter/ui/viewcontrollers/ReferencesViewController$ReferenceImagesSection;-><init>(Landroid/content/res/Resources;Ljava/util/List;Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController$CollectionViewControllerDelegate;)V

    invoke-virtual {p1, v0}, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionedRecyclerViewAdapter;->addSection(Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/Section;)Ljava/lang/String;

    return-void
.end method

.method public onItemClick(Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroid/view/View;Lcom/brakefield/painter/ui/viewcontrollers/ReferencesViewController$ReferenceImage;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic onItemClick(Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroid/view/View;Ljava/lang/Object;)V
    .locals 0

    .line 87
    check-cast p3, Lcom/brakefield/painter/ui/viewcontrollers/ReferencesViewController$ReferenceImage;

    invoke-virtual {p0, p1, p2, p3}, Lcom/brakefield/painter/ui/viewcontrollers/ReferencesViewController$1;->onItemClick(Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroid/view/View;Lcom/brakefield/painter/ui/viewcontrollers/ReferencesViewController$ReferenceImage;)V

    return-void
.end method

.method public onItemDeleteClick(Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroid/view/View;Lcom/brakefield/painter/ui/viewcontrollers/ReferencesViewController$ReferenceImage;)V
    .locals 1

    .line 107
    iget-object p2, p0, Lcom/brakefield/painter/ui/viewcontrollers/ReferencesViewController$1;->val$referenceManager:Lcom/brakefield/painter/nativeobjs/ReferenceManagerNative;

    iget v0, p3, Lcom/brakefield/painter/ui/viewcontrollers/ReferencesViewController$ReferenceImage;->index:I

    invoke-virtual {p2, v0}, Lcom/brakefield/painter/nativeobjs/ReferenceManagerNative;->deleteReferenceImage(I)V

    .line 108
    iget-object p2, p0, Lcom/brakefield/painter/ui/viewcontrollers/ReferencesViewController$1;->this$0:Lcom/brakefield/painter/ui/viewcontrollers/ReferencesViewController;

    invoke-static {p2}, Lcom/brakefield/painter/ui/viewcontrollers/ReferencesViewController;->access$300(Lcom/brakefield/painter/ui/viewcontrollers/ReferencesViewController;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, p3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 109
    iget p2, p3, Lcom/brakefield/painter/ui/viewcontrollers/ReferencesViewController$ReferenceImage;->index:I

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRemoved(I)V

    .line 110
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/ReferencesViewController$1;->val$ui:Lcom/brakefield/painter/ui/SimpleUI;

    invoke-virtual {p1}, Lcom/brakefield/painter/ui/SimpleUI;->requestRender()V

    .line 111
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/ReferencesViewController$1;->this$0:Lcom/brakefield/painter/ui/viewcontrollers/ReferencesViewController;

    invoke-static {p1}, Lcom/brakefield/painter/ui/viewcontrollers/ReferencesViewController;->access$300(Lcom/brakefield/painter/ui/viewcontrollers/ReferencesViewController;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/ReferencesViewController$1;->val$ui:Lcom/brakefield/painter/ui/SimpleUI;

    invoke-virtual {p1}, Lcom/brakefield/painter/ui/SimpleUI;->dismissPopup()V

    :cond_0
    return-void
.end method

.method public onItemLongClick(Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroid/view/View;Lcom/brakefield/painter/ui/viewcontrollers/ReferencesViewController$ReferenceImage;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public bridge synthetic onItemLongClick(Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroid/view/View;Ljava/lang/Object;)Z
    .locals 0

    .line 87
    check-cast p3, Lcom/brakefield/painter/ui/viewcontrollers/ReferencesViewController$ReferenceImage;

    invoke-virtual {p0, p1, p2, p3}, Lcom/brakefield/painter/ui/viewcontrollers/ReferencesViewController$1;->onItemLongClick(Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroid/view/View;Lcom/brakefield/painter/ui/viewcontrollers/ReferencesViewController$ReferenceImage;)Z

    move-result p1

    return p1
.end method

.method public onItemVisibilityClick(Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroid/view/View;Lcom/brakefield/painter/ui/viewcontrollers/ReferencesViewController$ReferenceImage;)V
    .locals 2

    .line 100
    iget-boolean p2, p3, Lcom/brakefield/painter/ui/viewcontrollers/ReferencesViewController$ReferenceImage;->visible:Z

    xor-int/lit8 p2, p2, 0x1

    iput-boolean p2, p3, Lcom/brakefield/painter/ui/viewcontrollers/ReferencesViewController$ReferenceImage;->visible:Z

    .line 101
    iget-object p2, p0, Lcom/brakefield/painter/ui/viewcontrollers/ReferencesViewController$1;->val$referenceManager:Lcom/brakefield/painter/nativeobjs/ReferenceManagerNative;

    iget v0, p3, Lcom/brakefield/painter/ui/viewcontrollers/ReferencesViewController$ReferenceImage;->index:I

    iget-boolean v1, p3, Lcom/brakefield/painter/ui/viewcontrollers/ReferencesViewController$ReferenceImage;->visible:Z

    invoke-virtual {p2, v0, v1}, Lcom/brakefield/painter/nativeobjs/ReferenceManagerNative;->setReferenceVisible(IZ)V

    .line 102
    iget p2, p3, Lcom/brakefield/painter/ui/viewcontrollers/ReferencesViewController$ReferenceImage;->index:I

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 103
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/ReferencesViewController$1;->val$ui:Lcom/brakefield/painter/ui/SimpleUI;

    invoke-virtual {p1}, Lcom/brakefield/painter/ui/SimpleUI;->requestRender()V

    return-void
.end method
