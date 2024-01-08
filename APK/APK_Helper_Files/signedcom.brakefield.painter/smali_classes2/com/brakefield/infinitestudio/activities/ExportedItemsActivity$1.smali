.class Lcom/brakefield/infinitestudio/activities/ExportedItemsActivity$1;
.super Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController$CollectionViewControllerDelegate;
.source "ExportedItemsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/brakefield/infinitestudio/activities/ExportedItemsActivity;->getCollectionViewControllerDelegate()Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController$CollectionViewControllerDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController$CollectionViewControllerDelegate<",
        "Lcom/brakefield/infinitestudio/activities/ExportedItemsActivity$ExportItem;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/brakefield/infinitestudio/activities/ExportedItemsActivity;


# direct methods
.method constructor <init>(Lcom/brakefield/infinitestudio/activities/ExportedItemsActivity;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/brakefield/infinitestudio/activities/ExportedItemsActivity$1;->this$0:Lcom/brakefield/infinitestudio/activities/ExportedItemsActivity;

    invoke-direct {p0}, Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController$CollectionViewControllerDelegate;-><init>()V

    return-void
.end method


# virtual methods
.method public addSections(Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionedRecyclerViewAdapter;)V
    .locals 3

    .line 47
    new-instance v0, Lcom/brakefield/infinitestudio/activities/ExportedItemsActivity$ExportItemsSection;

    iget-object v1, p0, Lcom/brakefield/infinitestudio/activities/ExportedItemsActivity$1;->this$0:Lcom/brakefield/infinitestudio/activities/ExportedItemsActivity;

    invoke-virtual {v1}, Lcom/brakefield/infinitestudio/activities/ExportedItemsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/brakefield/infinitestudio/activities/ExportedItemsActivity$1;->this$0:Lcom/brakefield/infinitestudio/activities/ExportedItemsActivity;

    invoke-static {v2}, Lcom/brakefield/infinitestudio/activities/ExportedItemsActivity;->access$000(Lcom/brakefield/infinitestudio/activities/ExportedItemsActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-direct {v0, v1, v2, p0}, Lcom/brakefield/infinitestudio/activities/ExportedItemsActivity$ExportItemsSection;-><init>(Landroid/content/res/Resources;Ljava/util/List;Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController$CollectionViewControllerDelegate;)V

    invoke-virtual {p1, v0}, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionedRecyclerViewAdapter;->addSection(Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/Section;)Ljava/lang/String;

    return-void
.end method

.method synthetic lambda$onItemLongClick$0$com-brakefield-infinitestudio-activities-ExportedItemsActivity$1(Lcom/brakefield/infinitestudio/activities/ExportedItemsActivity$ExportItem;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 58
    invoke-static {}, Lcom/brakefield/infinitestudio/FileManager;->getExportPath()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Lcom/brakefield/infinitestudio/activities/ExportedItemsActivity$ExportItem;->getFileName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/brakefield/infinitestudio/FileManager;->delete(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    iget-object p1, p0, Lcom/brakefield/infinitestudio/activities/ExportedItemsActivity$1;->this$0:Lcom/brakefield/infinitestudio/activities/ExportedItemsActivity;

    invoke-virtual {p1}, Lcom/brakefield/infinitestudio/activities/ExportedItemsActivity;->refreshCollection()V

    return-void
.end method

.method public onItemClick(Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroid/view/View;Lcom/brakefield/infinitestudio/activities/ExportedItemsActivity$ExportItem;)V
    .locals 0

    .line 51
    sget-object p1, Lcom/brakefield/infinitestudio/activities/ExportedItemsActivity;->listener:Lcom/brakefield/infinitestudio/activities/ExportedItemsActivity$OnExportSelectedListener;

    if-eqz p1, :cond_0

    sget-object p1, Lcom/brakefield/infinitestudio/activities/ExportedItemsActivity;->listener:Lcom/brakefield/infinitestudio/activities/ExportedItemsActivity$OnExportSelectedListener;

    iget-object p2, p0, Lcom/brakefield/infinitestudio/activities/ExportedItemsActivity$1;->this$0:Lcom/brakefield/infinitestudio/activities/ExportedItemsActivity;

    invoke-virtual {p3}, Lcom/brakefield/infinitestudio/activities/ExportedItemsActivity$ExportItem;->getLocation()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p1, p2, p3}, Lcom/brakefield/infinitestudio/activities/ExportedItemsActivity$OnExportSelectedListener;->shareExport(Landroid/app/Activity;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onItemClick(Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroid/view/View;Ljava/lang/Object;)V
    .locals 0

    .line 44
    check-cast p3, Lcom/brakefield/infinitestudio/activities/ExportedItemsActivity$ExportItem;

    invoke-virtual {p0, p1, p2, p3}, Lcom/brakefield/infinitestudio/activities/ExportedItemsActivity$1;->onItemClick(Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroid/view/View;Lcom/brakefield/infinitestudio/activities/ExportedItemsActivity$ExportItem;)V

    return-void
.end method

.method public onItemLongClick(Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroid/view/View;Lcom/brakefield/infinitestudio/activities/ExportedItemsActivity$ExportItem;)Z
    .locals 1

    .line 55
    new-instance p1, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    iget-object p2, p0, Lcom/brakefield/infinitestudio/activities/ExportedItemsActivity$1;->this$0:Lcom/brakefield/infinitestudio/activities/ExportedItemsActivity;

    invoke-direct {p1, p2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;)V

    .line 56
    sget p2, Lcom/brakefield/infinitestudio/R$string;->prompt_delete_item:I

    invoke-static {p2}, Lcom/brakefield/infinitestudio/Strings;->get(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setMessage(Ljava/lang/CharSequence;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 57
    sget p2, Lcom/brakefield/infinitestudio/R$string;->delete:I

    invoke-static {p2}, Lcom/brakefield/infinitestudio/Strings;->get(I)Ljava/lang/String;

    move-result-object p2

    new-instance v0, Lcom/brakefield/infinitestudio/activities/ExportedItemsActivity$1$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p3}, Lcom/brakefield/infinitestudio/activities/ExportedItemsActivity$1$$ExternalSyntheticLambda0;-><init>(Lcom/brakefield/infinitestudio/activities/ExportedItemsActivity$1;Lcom/brakefield/infinitestudio/activities/ExportedItemsActivity$ExportItem;)V

    invoke-virtual {p1, p2, v0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 61
    sget p2, Lcom/brakefield/infinitestudio/R$string;->cancel:I

    invoke-static {p2}, Lcom/brakefield/infinitestudio/Strings;->get(I)Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 62
    invoke-virtual {p1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog;->show()V

    const/4 p1, 0x1

    return p1
.end method

.method public bridge synthetic onItemLongClick(Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroid/view/View;Ljava/lang/Object;)Z
    .locals 0

    .line 44
    check-cast p3, Lcom/brakefield/infinitestudio/activities/ExportedItemsActivity$ExportItem;

    invoke-virtual {p0, p1, p2, p3}, Lcom/brakefield/infinitestudio/activities/ExportedItemsActivity$1;->onItemLongClick(Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroid/view/View;Lcom/brakefield/infinitestudio/activities/ExportedItemsActivity$ExportItem;)Z

    move-result p1

    return p1
.end method
