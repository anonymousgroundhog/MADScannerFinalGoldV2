.class public Lcom/brakefield/infinitestudio/activities/ExportedItemsActivity$ExportItem;
.super Ljava/lang/Object;
.source "ExportedItemsActivity.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/brakefield/infinitestudio/activities/ExportedItemsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "ExportItem"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/brakefield/infinitestudio/activities/ExportedItemsActivity$ExportItem;",
        ">;"
    }
.end annotation


# instance fields
.field filename:Ljava/lang/String;

.field final synthetic this$0:Lcom/brakefield/infinitestudio/activities/ExportedItemsActivity;

.field type:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/brakefield/infinitestudio/activities/ExportedItemsActivity;Ljava/lang/String;)V
    .locals 1

    .line 167
    iput-object p1, p0, Lcom/brakefield/infinitestudio/activities/ExportedItemsActivity$ExportItem;->this$0:Lcom/brakefield/infinitestudio/activities/ExportedItemsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 168
    iput-object p2, p0, Lcom/brakefield/infinitestudio/activities/ExportedItemsActivity$ExportItem;->filename:Ljava/lang/String;

    const-string p1, "\\."

    const/4 v0, 0x2

    .line 169
    invoke-virtual {p2, p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p1

    .line 170
    array-length p2, p1

    const/4 v0, 0x1

    if-le p2, v0, :cond_0

    aget-object p1, p1, v0

    iput-object p1, p0, Lcom/brakefield/infinitestudio/activities/ExportedItemsActivity$ExportItem;->type:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method static synthetic access$100(Lcom/brakefield/infinitestudio/activities/ExportedItemsActivity$ExportItem;)Z
    .locals 0

    .line 162
    invoke-direct {p0}, Lcom/brakefield/infinitestudio/activities/ExportedItemsActivity$ExportItem;->isProjectType()Z

    move-result p0

    return p0
.end method

.method private isProjectType()Z
    .locals 2

    .line 182
    iget-object v0, p0, Lcom/brakefield/infinitestudio/activities/ExportedItemsActivity$ExportItem;->type:Ljava/lang/String;

    const-string v1, "pntr"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/brakefield/infinitestudio/activities/ExportedItemsActivity$ExportItem;->type:Ljava/lang/String;

    const-string v1, "dsgn"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method


# virtual methods
.method public compareTo(Lcom/brakefield/infinitestudio/activities/ExportedItemsActivity$ExportItem;)I
    .locals 5

    .line 188
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/activities/ExportedItemsActivity$ExportItem;->getLocation()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 189
    new-instance v1, Ljava/io/File;

    invoke-virtual {p1}, Lcom/brakefield/infinitestudio/activities/ExportedItemsActivity$ExportItem;->getLocation()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 191
    invoke-virtual {v1}, Ljava/io/File;->lastModified()J

    move-result-wide v1

    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v3

    sub-long/2addr v1, v3

    long-to-int v0, v1

    if-gez v0, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    if-lez v0, :cond_1

    const/4 p1, 0x1

    return p1

    .line 194
    :cond_1
    iget-object p1, p1, Lcom/brakefield/infinitestudio/activities/ExportedItemsActivity$ExportItem;->filename:Ljava/lang/String;

    iget-object v0, p0, Lcom/brakefield/infinitestudio/activities/ExportedItemsActivity$ExportItem;->filename:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 162
    check-cast p1, Lcom/brakefield/infinitestudio/activities/ExportedItemsActivity$ExportItem;

    invoke-virtual {p0, p1}, Lcom/brakefield/infinitestudio/activities/ExportedItemsActivity$ExportItem;->compareTo(Lcom/brakefield/infinitestudio/activities/ExportedItemsActivity$ExportItem;)I

    move-result p1

    return p1
.end method

.method public getFileName()Ljava/lang/String;
    .locals 1

    .line 174
    iget-object v0, p0, Lcom/brakefield/infinitestudio/activities/ExportedItemsActivity$ExportItem;->filename:Ljava/lang/String;

    return-object v0
.end method

.method public getLocation()Ljava/lang/String;
    .locals 2

    .line 178
    invoke-static {}, Lcom/brakefield/infinitestudio/FileManager;->getExportPath()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/brakefield/infinitestudio/activities/ExportedItemsActivity$ExportItem;->filename:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/brakefield/infinitestudio/FileManager;->getFilePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
