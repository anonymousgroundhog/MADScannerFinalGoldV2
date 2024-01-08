.class public Lcom/brakefield/infinitestudio/FileManager$MigrationTask;
.super Ljava/lang/Object;
.source "FileManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/brakefield/infinitestudio/FileManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MigrationTask"
.end annotation


# instance fields
.field externalStorageFiles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field logFile:Ljava/io/File;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 771
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 772
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/brakefield/infinitestudio/FileManager$MigrationTask;->externalStorageFiles:Ljava/util/List;

    const/4 v0, 0x0

    .line 773
    iput-object v0, p0, Lcom/brakefield/infinitestudio/FileManager$MigrationTask;->logFile:Ljava/io/File;

    return-void
.end method


# virtual methods
.method public needsMigration()Z
    .locals 1

    .line 775
    iget-object v0, p0, Lcom/brakefield/infinitestudio/FileManager$MigrationTask;->externalStorageFiles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method
