.class synthetic Lcom/brakefield/infinitestudio/FileManager$1;
.super Ljava/lang/Object;
.source "FileManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/brakefield/infinitestudio/FileManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$brakefield$infinitestudio$FileManager$StorageType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 750
    invoke-static {}, Lcom/brakefield/infinitestudio/FileManager$StorageType;->values()[Lcom/brakefield/infinitestudio/FileManager$StorageType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/brakefield/infinitestudio/FileManager$1;->$SwitchMap$com$brakefield$infinitestudio$FileManager$StorageType:[I

    :try_start_0
    sget-object v1, Lcom/brakefield/infinitestudio/FileManager$StorageType;->INTERNAL_STORAGE:Lcom/brakefield/infinitestudio/FileManager$StorageType;

    invoke-virtual {v1}, Lcom/brakefield/infinitestudio/FileManager$StorageType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/brakefield/infinitestudio/FileManager$1;->$SwitchMap$com$brakefield$infinitestudio$FileManager$StorageType:[I

    sget-object v1, Lcom/brakefield/infinitestudio/FileManager$StorageType;->EXTERNAL_STORAGE:Lcom/brakefield/infinitestudio/FileManager$StorageType;

    invoke-virtual {v1}, Lcom/brakefield/infinitestudio/FileManager$StorageType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lcom/brakefield/infinitestudio/FileManager$1;->$SwitchMap$com$brakefield$infinitestudio$FileManager$StorageType:[I

    sget-object v1, Lcom/brakefield/infinitestudio/FileManager$StorageType;->SCOPED_STORAGE:Lcom/brakefield/infinitestudio/FileManager$StorageType;

    invoke-virtual {v1}, Lcom/brakefield/infinitestudio/FileManager$StorageType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    return-void
.end method
