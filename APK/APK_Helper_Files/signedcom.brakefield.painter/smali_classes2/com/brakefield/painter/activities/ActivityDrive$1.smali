.class Lcom/brakefield/painter/activities/ActivityDrive$1;
.super Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController$CollectionViewControllerDelegate;
.source "ActivityDrive.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/brakefield/painter/activities/ActivityDrive;->getCollectionViewControllerDelegate()Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController$CollectionViewControllerDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController$CollectionViewControllerDelegate<",
        "Lcom/brakefield/infinitestudio/apis/google/drive/DriveFile;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/brakefield/painter/activities/ActivityDrive;


# direct methods
.method constructor <init>(Lcom/brakefield/painter/activities/ActivityDrive;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/brakefield/painter/activities/ActivityDrive$1;->this$0:Lcom/brakefield/painter/activities/ActivityDrive;

    invoke-direct {p0}, Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController$CollectionViewControllerDelegate;-><init>()V

    return-void
.end method


# virtual methods
.method public addSections(Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionedRecyclerViewAdapter;)V
    .locals 3

    .line 54
    new-instance v0, Lcom/brakefield/painter/activities/ActivityDrive$DriveFilesSection;

    iget-object v1, p0, Lcom/brakefield/painter/activities/ActivityDrive$1;->this$0:Lcom/brakefield/painter/activities/ActivityDrive;

    invoke-virtual {v1}, Lcom/brakefield/painter/activities/ActivityDrive;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/brakefield/painter/activities/ActivityDrive$1;->this$0:Lcom/brakefield/painter/activities/ActivityDrive;

    invoke-static {v2}, Lcom/brakefield/painter/activities/ActivityDrive;->access$000(Lcom/brakefield/painter/activities/ActivityDrive;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v1, v2, p0}, Lcom/brakefield/painter/activities/ActivityDrive$DriveFilesSection;-><init>(Landroid/content/res/Resources;Ljava/util/List;Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController$CollectionViewControllerDelegate;)V

    invoke-virtual {p1, v0}, Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/SectionedRecyclerViewAdapter;->addSection(Lcom/brakefield/infinitestudio/ui/sectionedrecyclerviewadapter/Section;)Ljava/lang/String;

    .line 55
    iget-object p1, p0, Lcom/brakefield/painter/activities/ActivityDrive$1;->this$0:Lcom/brakefield/painter/activities/ActivityDrive;

    iget-object p1, p1, Lcom/brakefield/painter/activities/ActivityDrive;->googleDrive:Lcom/brakefield/infinitestudio/apis/google/drive/GoogleDrive;

    iget-object v0, p0, Lcom/brakefield/painter/activities/ActivityDrive$1;->this$0:Lcom/brakefield/painter/activities/ActivityDrive;

    iget-object v0, v0, Lcom/brakefield/painter/activities/ActivityDrive;->driveProjectsFolder:Lcom/brakefield/infinitestudio/apis/google/drive/DriveFile;

    invoke-virtual {v0}, Lcom/brakefield/infinitestudio/apis/google/drive/DriveFile;->getId()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/brakefield/painter/activities/ActivityDrive$1$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/brakefield/painter/activities/ActivityDrive$1$$ExternalSyntheticLambda1;-><init>(Lcom/brakefield/painter/activities/ActivityDrive$1;)V

    invoke-virtual {p1, v0, v1}, Lcom/brakefield/infinitestudio/apis/google/drive/GoogleDrive;->queryFiles(Ljava/lang/String;Lcom/google/android/gms/tasks/OnSuccessListener;)V

    return-void
.end method

.method synthetic lambda$addSections$0$com-brakefield-painter-activities-ActivityDrive$1(Ljava/util/List;)V
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/brakefield/painter/activities/ActivityDrive$1;->this$0:Lcom/brakefield/painter/activities/ActivityDrive;

    invoke-static {v0}, Lcom/brakefield/painter/activities/ActivityDrive;->access$000(Lcom/brakefield/painter/activities/ActivityDrive;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 57
    iget-object v0, p0, Lcom/brakefield/painter/activities/ActivityDrive$1;->this$0:Lcom/brakefield/painter/activities/ActivityDrive;

    invoke-static {v0}, Lcom/brakefield/painter/activities/ActivityDrive;->access$000(Lcom/brakefield/painter/activities/ActivityDrive;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 58
    iget-object p1, p0, Lcom/brakefield/painter/activities/ActivityDrive$1;->this$0:Lcom/brakefield/painter/activities/ActivityDrive;

    invoke-static {p1}, Lcom/brakefield/painter/activities/ActivityDrive;->access$200(Lcom/brakefield/painter/activities/ActivityDrive;)V

    return-void
.end method

.method synthetic lambda$onItemLongClick$1$com-brakefield-painter-activities-ActivityDrive$1(Lcom/brakefield/infinitestudio/apis/google/drive/DriveFile;Ljava/lang/Void;)V
    .locals 0

    .line 72
    iget-object p2, p0, Lcom/brakefield/painter/activities/ActivityDrive$1;->this$0:Lcom/brakefield/painter/activities/ActivityDrive;

    invoke-static {p2}, Lcom/brakefield/painter/activities/ActivityDrive;->access$000(Lcom/brakefield/painter/activities/ActivityDrive;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 73
    iget-object p1, p0, Lcom/brakefield/painter/activities/ActivityDrive$1;->this$0:Lcom/brakefield/painter/activities/ActivityDrive;

    invoke-static {p1}, Lcom/brakefield/painter/activities/ActivityDrive;->access$100(Lcom/brakefield/painter/activities/ActivityDrive;)V

    return-void
.end method

.method synthetic lambda$onItemLongClick$2$com-brakefield-painter-activities-ActivityDrive$1(Lcom/brakefield/infinitestudio/apis/google/drive/DriveFile;Landroid/content/DialogInterface;I)V
    .locals 1

    .line 71
    iget-object p2, p0, Lcom/brakefield/painter/activities/ActivityDrive$1;->this$0:Lcom/brakefield/painter/activities/ActivityDrive;

    iget-object p2, p2, Lcom/brakefield/painter/activities/ActivityDrive;->googleDrive:Lcom/brakefield/infinitestudio/apis/google/drive/GoogleDrive;

    invoke-virtual {p1}, Lcom/brakefield/infinitestudio/apis/google/drive/DriveFile;->getId()Ljava/lang/String;

    move-result-object p3

    new-instance v0, Lcom/brakefield/painter/activities/ActivityDrive$1$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lcom/brakefield/painter/activities/ActivityDrive$1$$ExternalSyntheticLambda0;-><init>(Lcom/brakefield/painter/activities/ActivityDrive$1;Lcom/brakefield/infinitestudio/apis/google/drive/DriveFile;)V

    invoke-virtual {p2, p3, v0}, Lcom/brakefield/infinitestudio/apis/google/drive/GoogleDrive;->deleteFolderFile(Ljava/lang/String;Lcom/google/android/gms/tasks/OnSuccessListener;)V

    return-void
.end method

.method public onItemClick(Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroid/view/View;Lcom/brakefield/infinitestudio/apis/google/drive/DriveFile;)V
    .locals 0

    .line 63
    iget-object p1, p0, Lcom/brakefield/painter/activities/ActivityDrive$1;->this$0:Lcom/brakefield/painter/activities/ActivityDrive;

    iget-object p1, p1, Lcom/brakefield/painter/activities/ActivityDrive;->listener:Lcom/brakefield/painter/activities/ActivityDrive$OnDriveFileSelectedListener;

    if-eqz p1, :cond_0

    .line 64
    iget-object p1, p0, Lcom/brakefield/painter/activities/ActivityDrive$1;->this$0:Lcom/brakefield/painter/activities/ActivityDrive;

    iget-object p1, p1, Lcom/brakefield/painter/activities/ActivityDrive;->listener:Lcom/brakefield/painter/activities/ActivityDrive$OnDriveFileSelectedListener;

    iget-object p2, p0, Lcom/brakefield/painter/activities/ActivityDrive$1;->this$0:Lcom/brakefield/painter/activities/ActivityDrive;

    invoke-interface {p1, p2, p3}, Lcom/brakefield/painter/activities/ActivityDrive$OnDriveFileSelectedListener;->open(Landroid/app/Activity;Lcom/brakefield/infinitestudio/apis/google/drive/DriveFile;)V

    .line 65
    iget-object p1, p0, Lcom/brakefield/painter/activities/ActivityDrive$1;->this$0:Lcom/brakefield/painter/activities/ActivityDrive;

    invoke-virtual {p1}, Lcom/brakefield/painter/activities/ActivityDrive;->finish()V

    :cond_0
    return-void
.end method

.method public bridge synthetic onItemClick(Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroid/view/View;Ljava/lang/Object;)V
    .locals 0

    .line 51
    check-cast p3, Lcom/brakefield/infinitestudio/apis/google/drive/DriveFile;

    invoke-virtual {p0, p1, p2, p3}, Lcom/brakefield/painter/activities/ActivityDrive$1;->onItemClick(Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroid/view/View;Lcom/brakefield/infinitestudio/apis/google/drive/DriveFile;)V

    return-void
.end method

.method public onItemLongClick(Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroid/view/View;Lcom/brakefield/infinitestudio/apis/google/drive/DriveFile;)Z
    .locals 6

    .line 70
    iget-object v0, p0, Lcom/brakefield/painter/activities/ActivityDrive$1;->this$0:Lcom/brakefield/painter/activities/ActivityDrive;

    const v1, 0x7f120a11

    const v2, 0x7f1200fd

    const v3, 0x7f12009e

    new-instance v4, Lcom/brakefield/painter/activities/ActivityDrive$1$$ExternalSyntheticLambda2;

    invoke-direct {v4, p0, p3}, Lcom/brakefield/painter/activities/ActivityDrive$1$$ExternalSyntheticLambda2;-><init>(Lcom/brakefield/painter/activities/ActivityDrive$1;Lcom/brakefield/infinitestudio/apis/google/drive/DriveFile;)V

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/brakefield/infinitestudio/Dialogs;->showAlert(Landroid/content/Context;IIILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)V

    const/4 p1, 0x1

    return p1
.end method

.method public bridge synthetic onItemLongClick(Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroid/view/View;Ljava/lang/Object;)Z
    .locals 0

    .line 51
    check-cast p3, Lcom/brakefield/infinitestudio/apis/google/drive/DriveFile;

    invoke-virtual {p0, p1, p2, p3}, Lcom/brakefield/painter/activities/ActivityDrive$1;->onItemLongClick(Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroid/view/View;Lcom/brakefield/infinitestudio/apis/google/drive/DriveFile;)Z

    move-result p1

    return p1
.end method
