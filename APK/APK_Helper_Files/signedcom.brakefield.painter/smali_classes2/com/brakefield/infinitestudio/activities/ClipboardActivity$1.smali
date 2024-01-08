.class Lcom/brakefield/infinitestudio/activities/ClipboardActivity$1;
.super Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController$CollectionViewControllerDelegate;
.source "ClipboardActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/brakefield/infinitestudio/activities/ClipboardActivity;->getCollectionViewControllerDelegate()Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController$CollectionViewControllerDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController$CollectionViewControllerDelegate<",
        "Lcom/brakefield/infinitestudio/activities/ClipboardActivity$Clipping;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/brakefield/infinitestudio/activities/ClipboardActivity;


# direct methods
.method constructor <init>(Lcom/brakefield/infinitestudio/activities/ClipboardActivity;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/brakefield/infinitestudio/activities/ClipboardActivity$1;->this$0:Lcom/brakefield/infinitestudio/activities/ClipboardActivity;

    invoke-direct {p0}, Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController$CollectionViewControllerDelegate;-><init>()V

    return-void
.end method


# virtual methods
.method public addSections(Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionedRecyclerViewAdapter;)V
    .locals 3

    .line 54
    new-instance v0, Lcom/brakefield/infinitestudio/activities/ClipboardActivity$ClipboardSection;

    iget-object v1, p0, Lcom/brakefield/infinitestudio/activities/ClipboardActivity$1;->this$0:Lcom/brakefield/infinitestudio/activities/ClipboardActivity;

    invoke-virtual {v1}, Lcom/brakefield/infinitestudio/activities/ClipboardActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {}, Lcom/brakefield/infinitestudio/activities/ClipboardActivity;->getClippings()Ljava/util/ArrayList;

    move-result-object v2

    invoke-direct {v0, v1, v2, p0}, Lcom/brakefield/infinitestudio/activities/ClipboardActivity$ClipboardSection;-><init>(Landroid/content/res/Resources;Ljava/util/List;Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController$CollectionViewControllerDelegate;)V

    invoke-virtual {p1, v0}, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionedRecyclerViewAdapter;->addSection(Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/Section;)Ljava/lang/String;

    return-void
.end method

.method synthetic lambda$onItemLongClick$0$com-brakefield-infinitestudio-activities-ClipboardActivity$1(Lcom/brakefield/infinitestudio/activities/ClipboardActivity$Clipping;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 76
    invoke-static {}, Lcom/brakefield/infinitestudio/FileManager;->getClipboardPath()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Lcom/brakefield/infinitestudio/activities/ClipboardActivity$Clipping;->getFileName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/brakefield/infinitestudio/FileManager;->delete(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    iget-object p1, p0, Lcom/brakefield/infinitestudio/activities/ClipboardActivity$1;->this$0:Lcom/brakefield/infinitestudio/activities/ClipboardActivity;

    invoke-virtual {p1}, Lcom/brakefield/infinitestudio/activities/ClipboardActivity;->refreshCollection()V

    return-void
.end method

.method public onItemClick(Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroid/view/View;Lcom/brakefield/infinitestudio/activities/ClipboardActivity$Clipping;)V
    .locals 2

    .line 58
    iget-object p1, p0, Lcom/brakefield/infinitestudio/activities/ClipboardActivity$1;->this$0:Lcom/brakefield/infinitestudio/activities/ClipboardActivity;

    invoke-virtual {p1}, Lcom/brakefield/infinitestudio/activities/ClipboardActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string p2, "output"

    invoke-virtual {p1, p2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/net/Uri;

    .line 59
    :try_start_0
    invoke-static {}, Lcom/brakefield/infinitestudio/FileManager;->getClipboardPath()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3}, Lcom/brakefield/infinitestudio/activities/ClipboardActivity$Clipping;->getFileName()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/brakefield/infinitestudio/FileManager;->getFileInputStream(Ljava/lang/String;Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    :try_start_1
    iget-object p3, p0, Lcom/brakefield/infinitestudio/activities/ClipboardActivity$1;->this$0:Lcom/brakefield/infinitestudio/activities/ClipboardActivity;

    invoke-virtual {p3}, Lcom/brakefield/infinitestudio/activities/ClipboardActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p3

    invoke-virtual {p3, p1}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 61
    :try_start_2
    invoke-static {p2, p3}, Lcom/brakefield/infinitestudio/FileManager;->copyStreams(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 62
    iget-object v0, p0, Lcom/brakefield/infinitestudio/activities/ClipboardActivity$1;->this$0:Lcom/brakefield/infinitestudio/activities/ClipboardActivity;

    invoke-virtual {v0}, Lcom/brakefield/infinitestudio/activities/ClipboardActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 63
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 64
    iget-object p1, p0, Lcom/brakefield/infinitestudio/activities/ClipboardActivity$1;->this$0:Lcom/brakefield/infinitestudio/activities/ClipboardActivity;

    const/4 v1, -0x1

    invoke-virtual {p1, v1, v0}, Lcom/brakefield/infinitestudio/activities/ClipboardActivity;->setResult(ILandroid/content/Intent;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz p3, :cond_0

    .line 65
    :try_start_3
    invoke-virtual {p3}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :cond_0
    if-eqz p2, :cond_3

    :try_start_4
    invoke-virtual {p2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_2

    :catchall_0
    move-exception p1

    if-eqz p3, :cond_1

    .line 59
    :try_start_5
    invoke-virtual {p3}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p3

    :try_start_6
    invoke-virtual {p1, p3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catchall_2
    move-exception p1

    if-eqz p2, :cond_2

    :try_start_7
    invoke-virtual {p2}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_1

    :catchall_3
    move-exception p2

    :try_start_8
    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_1
    throw p1
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    :catch_0
    move-exception p1

    .line 66
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 67
    iget-object p1, p0, Lcom/brakefield/infinitestudio/activities/ClipboardActivity$1;->this$0:Lcom/brakefield/infinitestudio/activities/ClipboardActivity;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/brakefield/infinitestudio/activities/ClipboardActivity;->setResult(I)V

    .line 69
    :cond_3
    :goto_2
    iget-object p1, p0, Lcom/brakefield/infinitestudio/activities/ClipboardActivity$1;->this$0:Lcom/brakefield/infinitestudio/activities/ClipboardActivity;

    invoke-virtual {p1}, Lcom/brakefield/infinitestudio/activities/ClipboardActivity;->finish()V

    return-void
.end method

.method public bridge synthetic onItemClick(Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroid/view/View;Ljava/lang/Object;)V
    .locals 0

    .line 51
    check-cast p3, Lcom/brakefield/infinitestudio/activities/ClipboardActivity$Clipping;

    invoke-virtual {p0, p1, p2, p3}, Lcom/brakefield/infinitestudio/activities/ClipboardActivity$1;->onItemClick(Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroid/view/View;Lcom/brakefield/infinitestudio/activities/ClipboardActivity$Clipping;)V

    return-void
.end method

.method public onItemLongClick(Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroid/view/View;Lcom/brakefield/infinitestudio/activities/ClipboardActivity$Clipping;)Z
    .locals 1

    .line 73
    new-instance p1, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    iget-object p2, p0, Lcom/brakefield/infinitestudio/activities/ClipboardActivity$1;->this$0:Lcom/brakefield/infinitestudio/activities/ClipboardActivity;

    invoke-direct {p1, p2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;)V

    .line 74
    sget p2, Lcom/brakefield/infinitestudio/R$string;->prompt_delete_item:I

    invoke-static {p2}, Lcom/brakefield/infinitestudio/Strings;->get(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setMessage(Ljava/lang/CharSequence;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 75
    sget p2, Lcom/brakefield/infinitestudio/R$string;->delete:I

    invoke-static {p2}, Lcom/brakefield/infinitestudio/Strings;->get(I)Ljava/lang/String;

    move-result-object p2

    new-instance v0, Lcom/brakefield/infinitestudio/activities/ClipboardActivity$1$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p3}, Lcom/brakefield/infinitestudio/activities/ClipboardActivity$1$$ExternalSyntheticLambda0;-><init>(Lcom/brakefield/infinitestudio/activities/ClipboardActivity$1;Lcom/brakefield/infinitestudio/activities/ClipboardActivity$Clipping;)V

    invoke-virtual {p1, p2, v0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 79
    sget p2, Lcom/brakefield/infinitestudio/R$string;->cancel:I

    invoke-static {p2}, Lcom/brakefield/infinitestudio/Strings;->get(I)Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 80
    invoke-virtual {p1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog;->show()V

    const/4 p1, 0x1

    return p1
.end method

.method public bridge synthetic onItemLongClick(Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroid/view/View;Ljava/lang/Object;)Z
    .locals 0

    .line 51
    check-cast p3, Lcom/brakefield/infinitestudio/activities/ClipboardActivity$Clipping;

    invoke-virtual {p0, p1, p2, p3}, Lcom/brakefield/infinitestudio/activities/ClipboardActivity$1;->onItemLongClick(Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroid/view/View;Lcom/brakefield/infinitestudio/activities/ClipboardActivity$Clipping;)Z

    move-result p1

    return p1
.end method
