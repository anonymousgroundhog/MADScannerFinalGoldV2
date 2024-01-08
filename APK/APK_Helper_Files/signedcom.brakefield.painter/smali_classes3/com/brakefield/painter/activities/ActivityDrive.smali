.class public Lcom/brakefield/painter/activities/ActivityDrive;
.super Lcom/brakefield/infinitestudio/activities/CollectionActivity;
.source "ActivityDrive.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/brakefield/painter/activities/ActivityDrive$DriveFilesSection;,
        Lcom/brakefield/painter/activities/ActivityDrive$DriveFileViewHolder;,
        Lcom/brakefield/painter/activities/ActivityDrive$OnDriveFileSelectedListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/brakefield/infinitestudio/activities/CollectionActivity<",
        "Lcom/brakefield/infinitestudio/apis/google/drive/DriveFile;",
        ">;"
    }
.end annotation


# instance fields
.field private driveFiles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/brakefield/infinitestudio/apis/google/drive/DriveFile;",
            ">;"
        }
    .end annotation
.end field

.field public driveProjectsFolder:Lcom/brakefield/infinitestudio/apis/google/drive/DriveFile;

.field public googleDrive:Lcom/brakefield/infinitestudio/apis/google/drive/GoogleDrive;

.field public listener:Lcom/brakefield/painter/activities/ActivityDrive$OnDriveFileSelectedListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 32
    invoke-direct {p0}, Lcom/brakefield/infinitestudio/activities/CollectionActivity;-><init>()V

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/brakefield/painter/activities/ActivityDrive;->driveFiles:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Lcom/brakefield/painter/activities/ActivityDrive;)Ljava/util/List;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/brakefield/painter/activities/ActivityDrive;->driveFiles:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$100(Lcom/brakefield/painter/activities/ActivityDrive;)V
    .locals 0

    .line 32
    invoke-virtual {p0}, Lcom/brakefield/painter/activities/ActivityDrive;->refreshCollection()V

    return-void
.end method

.method static synthetic access$200(Lcom/brakefield/painter/activities/ActivityDrive;)V
    .locals 0

    .line 32
    invoke-virtual {p0}, Lcom/brakefield/painter/activities/ActivityDrive;->refreshCollection()V

    return-void
.end method


# virtual methods
.method protected getCollectionViewControllerDelegate()Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController$CollectionViewControllerDelegate;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController$CollectionViewControllerDelegate<",
            "Lcom/brakefield/infinitestudio/apis/google/drive/DriveFile;",
            ">;"
        }
    .end annotation

    .line 51
    new-instance v0, Lcom/brakefield/painter/activities/ActivityDrive$1;

    invoke-direct {v0, p0}, Lcom/brakefield/painter/activities/ActivityDrive$1;-><init>(Lcom/brakefield/painter/activities/ActivityDrive;)V

    return-object v0
.end method

.method protected getTitleText()Ljava/lang/String;
    .locals 1

    const v0, 0x7f120124

    .line 46
    invoke-static {v0}, Lcom/brakefield/infinitestudio/Strings;->get(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
