.class public Lcom/brakefield/infinitestudio/activities/ExportedItemsActivity;
.super Lcom/brakefield/infinitestudio/activities/CollectionActivity;
.source "ExportedItemsActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/brakefield/infinitestudio/activities/ExportedItemsActivity$ExportItem;,
        Lcom/brakefield/infinitestudio/activities/ExportedItemsActivity$GetProjectThumbTask;,
        Lcom/brakefield/infinitestudio/activities/ExportedItemsActivity$GetThumbTask;,
        Lcom/brakefield/infinitestudio/activities/ExportedItemsActivity$ExportItemsSection;,
        Lcom/brakefield/infinitestudio/activities/ExportedItemsActivity$ExportItemViewHolder;,
        Lcom/brakefield/infinitestudio/activities/ExportedItemsActivity$OnExportSelectedListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/brakefield/infinitestudio/activities/CollectionActivity<",
        "Lcom/brakefield/infinitestudio/activities/ExportedItemsActivity$ExportItem;",
        ">;"
    }
.end annotation


# static fields
.field public static listener:Lcom/brakefield/infinitestudio/activities/ExportedItemsActivity$OnExportSelectedListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Lcom/brakefield/infinitestudio/activities/CollectionActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/brakefield/infinitestudio/activities/ExportedItemsActivity;)Ljava/util/ArrayList;
    .locals 0

    .line 40
    invoke-direct {p0}, Lcom/brakefield/infinitestudio/activities/ExportedItemsActivity;->getExportItems()Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method private getExportItems()Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/brakefield/infinitestudio/activities/ExportedItemsActivity$ExportItem;",
            ">;"
        }
    .end annotation

    .line 148
    invoke-static {}, Lcom/brakefield/infinitestudio/FileManager;->getExportPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/brakefield/infinitestudio/FileManager;->getFilesSorted(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 149
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-eqz v0, :cond_1

    .line 151
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v0, v3

    .line 152
    new-instance v5, Ljava/io/File;

    invoke-static {}, Lcom/brakefield/infinitestudio/FileManager;->getExportPath()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v4}, Lcom/brakefield/infinitestudio/FileManager;->getFilePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 153
    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-nez v5, :cond_0

    .line 154
    new-instance v5, Lcom/brakefield/infinitestudio/activities/ExportedItemsActivity$ExportItem;

    invoke-direct {v5, p0, v4}, Lcom/brakefield/infinitestudio/activities/ExportedItemsActivity$ExportItem;-><init>(Lcom/brakefield/infinitestudio/activities/ExportedItemsActivity;Ljava/lang/String;)V

    .line 155
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public static getThumbnail(Landroid/content/ContentResolver;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 7

    .line 200
    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string v6, "_id"

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v2

    const-string v3, "_data=?"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    .line 204
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 205
    invoke-interface {p1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    int-to-long v2, v0

    const/4 v0, 0x1

    .line 206
    invoke-static {p0, v2, v3, v0, v1}, Landroid/provider/MediaStore$Images$Thumbnails;->getThumbnail(Landroid/content/ContentResolver;JILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 208
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_0
    return-object p0

    :cond_1
    if-eqz p1, :cond_2

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_2
    return-object v1

    :catchall_0
    move-exception p0

    if-eqz p1, :cond_3

    .line 200
    :try_start_1
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_0
    throw p0
.end method


# virtual methods
.method protected getCollectionViewControllerDelegate()Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController$CollectionViewControllerDelegate;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/brakefield/infinitestudio/ui/collections/CollectionViewController$CollectionViewControllerDelegate<",
            "Lcom/brakefield/infinitestudio/activities/ExportedItemsActivity$ExportItem;",
            ">;"
        }
    .end annotation

    .line 44
    new-instance v0, Lcom/brakefield/infinitestudio/activities/ExportedItemsActivity$1;

    invoke-direct {v0, p0}, Lcom/brakefield/infinitestudio/activities/ExportedItemsActivity$1;-><init>(Lcom/brakefield/infinitestudio/activities/ExportedItemsActivity;)V

    return-object v0
.end method

.method protected getTitleText()Ljava/lang/String;
    .locals 1

    .line 76
    sget v0, Lcom/brakefield/infinitestudio/R$string;->export:I

    invoke-static {v0}, Lcom/brakefield/infinitestudio/Strings;->get(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
