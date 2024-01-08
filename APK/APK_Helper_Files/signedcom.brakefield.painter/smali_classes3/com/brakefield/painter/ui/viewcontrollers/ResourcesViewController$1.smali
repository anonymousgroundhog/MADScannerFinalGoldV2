.class Lcom/brakefield/painter/ui/viewcontrollers/ResourcesViewController$1;
.super Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController$CollectionViewControllerDelegate;
.source "ResourcesViewController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/brakefield/painter/ui/viewcontrollers/ResourcesViewController;->getCollectionViewControllerDelegate(Landroid/app/Activity;Lcom/brakefield/painter/ui/viewcontrollers/ResourcesViewController$OnResourceSelectedListener;)Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController$CollectionViewControllerDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController$CollectionViewControllerDelegate<",
        "Lcom/brakefield/painter/ui/viewcontrollers/ResourcesViewController$Resource;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/brakefield/painter/ui/viewcontrollers/ResourcesViewController;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$listener:Lcom/brakefield/painter/ui/viewcontrollers/ResourcesViewController$OnResourceSelectedListener;


# direct methods
.method constructor <init>(Lcom/brakefield/painter/ui/viewcontrollers/ResourcesViewController;Lcom/brakefield/painter/ui/viewcontrollers/ResourcesViewController$OnResourceSelectedListener;Landroid/app/Activity;)V
    .locals 0

    .line 211
    iput-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/ResourcesViewController$1;->this$0:Lcom/brakefield/painter/ui/viewcontrollers/ResourcesViewController;

    iput-object p2, p0, Lcom/brakefield/painter/ui/viewcontrollers/ResourcesViewController$1;->val$listener:Lcom/brakefield/painter/ui/viewcontrollers/ResourcesViewController$OnResourceSelectedListener;

    iput-object p3, p0, Lcom/brakefield/painter/ui/viewcontrollers/ResourcesViewController$1;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController$CollectionViewControllerDelegate;-><init>()V

    return-void
.end method


# virtual methods
.method public addSections(Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionedRecyclerViewAdapter;)V
    .locals 13

    .line 214
    new-instance v6, Lcom/brakefield/painter/ui/viewcontrollers/ResourcesViewController$ResourceSection;

    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/ResourcesViewController$1;->this$0:Lcom/brakefield/painter/ui/viewcontrollers/ResourcesViewController;

    invoke-static {v0}, Lcom/brakefield/painter/ui/viewcontrollers/ResourcesViewController;->access$000(Lcom/brakefield/painter/ui/viewcontrollers/ResourcesViewController;)Landroid/content/res/Resources;

    move-result-object v1

    const v0, 0x7f120212

    invoke-static {v0}, Lcom/brakefield/infinitestudio/Strings;->get(I)Ljava/lang/String;

    move-result-object v2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/brakefield/painter/ui/viewcontrollers/ResourcesViewController$1;->this$0:Lcom/brakefield/painter/ui/viewcontrollers/ResourcesViewController;

    invoke-virtual {v3}, Lcom/brakefield/painter/ui/viewcontrollers/ResourcesViewController;->getUIBindingKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, "s_imported"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/ResourcesViewController$1;->this$0:Lcom/brakefield/painter/ui/viewcontrollers/ResourcesViewController;

    invoke-static {v0}, Lcom/brakefield/painter/ui/viewcontrollers/ResourcesViewController;->access$100(Lcom/brakefield/painter/ui/viewcontrollers/ResourcesViewController;)Ljava/util/List;

    move-result-object v4

    move-object v0, v6

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/brakefield/painter/ui/viewcontrollers/ResourcesViewController$ResourceSection;-><init>(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController$CollectionViewControllerDelegate;)V

    invoke-virtual {p1, v6}, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionedRecyclerViewAdapter;->addSection(Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/Section;)Ljava/lang/String;

    .line 215
    new-instance v0, Lcom/brakefield/painter/ui/viewcontrollers/ResourcesViewController$ResourceSection;

    iget-object v1, p0, Lcom/brakefield/painter/ui/viewcontrollers/ResourcesViewController$1;->this$0:Lcom/brakefield/painter/ui/viewcontrollers/ResourcesViewController;

    invoke-static {v1}, Lcom/brakefield/painter/ui/viewcontrollers/ResourcesViewController;->access$000(Lcom/brakefield/painter/ui/viewcontrollers/ResourcesViewController;)Landroid/content/res/Resources;

    move-result-object v8

    const v1, 0x7f1209fc

    invoke-static {v1}, Lcom/brakefield/infinitestudio/Strings;->get(I)Ljava/lang/String;

    move-result-object v9

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/brakefield/painter/ui/viewcontrollers/ResourcesViewController$1;->this$0:Lcom/brakefield/painter/ui/viewcontrollers/ResourcesViewController;

    invoke-virtual {v2}, Lcom/brakefield/painter/ui/viewcontrollers/ResourcesViewController;->getUIBindingKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "s_presets"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    iget-object v1, p0, Lcom/brakefield/painter/ui/viewcontrollers/ResourcesViewController$1;->this$0:Lcom/brakefield/painter/ui/viewcontrollers/ResourcesViewController;

    invoke-static {v1}, Lcom/brakefield/painter/ui/viewcontrollers/ResourcesViewController;->access$200(Lcom/brakefield/painter/ui/viewcontrollers/ResourcesViewController;)Ljava/util/List;

    move-result-object v11

    move-object v7, v0

    move-object v12, p0

    invoke-direct/range {v7 .. v12}, Lcom/brakefield/painter/ui/viewcontrollers/ResourcesViewController$ResourceSection;-><init>(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController$CollectionViewControllerDelegate;)V

    invoke-virtual {p1, v0}, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionedRecyclerViewAdapter;->addSection(Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/Section;)Ljava/lang/String;

    return-void
.end method

.method public getSidePadding()Lcom/brakefield/infinitestudio/ui/layout/Padding;
    .locals 1

    .line 235
    invoke-static {}, Lcom/brakefield/infinitestudio/ui/collections/CollectionPadding;->ThinPadding()Lcom/brakefield/infinitestudio/ui/layout/Padding;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$onItemLongClick$0$com-brakefield-painter-ui-viewcontrollers-ResourcesViewController$1(Lcom/brakefield/painter/ui/viewcontrollers/ResourcesViewController$Resource;Ljava/lang/String;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 226
    iget-object p3, p0, Lcom/brakefield/painter/ui/viewcontrollers/ResourcesViewController$1;->this$0:Lcom/brakefield/painter/ui/viewcontrollers/ResourcesViewController;

    invoke-static {p3}, Lcom/brakefield/painter/ui/viewcontrollers/ResourcesViewController;->access$100(Lcom/brakefield/painter/ui/viewcontrollers/ResourcesViewController;)Ljava/util/List;

    move-result-object p3

    invoke-interface {p3, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 227
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/ResourcesViewController$1;->this$0:Lcom/brakefield/painter/ui/viewcontrollers/ResourcesViewController;

    invoke-static {p1}, Lcom/brakefield/painter/ui/viewcontrollers/ResourcesViewController;->access$300(Lcom/brakefield/painter/ui/viewcontrollers/ResourcesViewController;)Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController;->refreshCollection()V

    .line 228
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 229
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    return-void
.end method

.method public onItemClick(Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroid/view/View;Lcom/brakefield/painter/ui/viewcontrollers/ResourcesViewController$Resource;)V
    .locals 0

    .line 219
    iget-object p1, p0, Lcom/brakefield/painter/ui/viewcontrollers/ResourcesViewController$1;->val$listener:Lcom/brakefield/painter/ui/viewcontrollers/ResourcesViewController$OnResourceSelectedListener;

    invoke-interface {p1, p3}, Lcom/brakefield/painter/ui/viewcontrollers/ResourcesViewController$OnResourceSelectedListener;->resourceSelected(Lcom/brakefield/painter/ui/viewcontrollers/ResourcesViewController$Resource;)V

    return-void
.end method

.method public bridge synthetic onItemClick(Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroid/view/View;Ljava/lang/Object;)V
    .locals 0

    .line 211
    check-cast p3, Lcom/brakefield/painter/ui/viewcontrollers/ResourcesViewController$Resource;

    invoke-virtual {p0, p1, p2, p3}, Lcom/brakefield/painter/ui/viewcontrollers/ResourcesViewController$1;->onItemClick(Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroid/view/View;Lcom/brakefield/painter/ui/viewcontrollers/ResourcesViewController$Resource;)V

    return-void
.end method

.method public onItemLongClick(Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroid/view/View;Lcom/brakefield/painter/ui/viewcontrollers/ResourcesViewController$Resource;)Z
    .locals 6

    .line 223
    iget-object p1, p3, Lcom/brakefield/painter/ui/viewcontrollers/ResourcesViewController$Resource;->item:Ljava/lang/Object;

    instance-of p1, p1, Ljava/lang/String;

    if-eqz p1, :cond_0

    .line 224
    iget-object p1, p3, Lcom/brakefield/painter/ui/viewcontrollers/ResourcesViewController$Resource;->item:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    .line 225
    iget-object v0, p0, Lcom/brakefield/painter/ui/viewcontrollers/ResourcesViewController$1;->val$activity:Landroid/app/Activity;

    const v1, 0x7f120a11

    const v2, 0x7f1200fd

    const v3, 0x7f12009e

    new-instance v4, Lcom/brakefield/painter/ui/viewcontrollers/ResourcesViewController$1$$ExternalSyntheticLambda0;

    invoke-direct {v4, p0, p3, p1}, Lcom/brakefield/painter/ui/viewcontrollers/ResourcesViewController$1$$ExternalSyntheticLambda0;-><init>(Lcom/brakefield/painter/ui/viewcontrollers/ResourcesViewController$1;Lcom/brakefield/painter/ui/viewcontrollers/ResourcesViewController$Resource;Ljava/lang/String;)V

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/brakefield/infinitestudio/Dialogs;->showAlert(Landroid/content/Context;IIILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public bridge synthetic onItemLongClick(Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroid/view/View;Ljava/lang/Object;)Z
    .locals 0

    .line 211
    check-cast p3, Lcom/brakefield/painter/ui/viewcontrollers/ResourcesViewController$Resource;

    invoke-virtual {p0, p1, p2, p3}, Lcom/brakefield/painter/ui/viewcontrollers/ResourcesViewController$1;->onItemLongClick(Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroid/view/View;Lcom/brakefield/painter/ui/viewcontrollers/ResourcesViewController$Resource;)Z

    move-result p1

    return p1
.end method
