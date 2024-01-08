.class public final enum Lcom/brakefield/infinitestudio/FileManager$StorageType;
.super Ljava/lang/Enum;
.source "FileManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/brakefield/infinitestudio/FileManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "StorageType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/brakefield/infinitestudio/FileManager$StorageType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/brakefield/infinitestudio/FileManager$StorageType;

.field public static final enum EXTERNAL_STORAGE:Lcom/brakefield/infinitestudio/FileManager$StorageType;

.field public static final enum INTERNAL_STORAGE:Lcom/brakefield/infinitestudio/FileManager$StorageType;

.field public static final enum SCOPED_STORAGE:Lcom/brakefield/infinitestudio/FileManager$StorageType;


# direct methods
.method private static synthetic $values()[Lcom/brakefield/infinitestudio/FileManager$StorageType;
    .locals 3

    .line 86
    sget-object v0, Lcom/brakefield/infinitestudio/FileManager$StorageType;->INTERNAL_STORAGE:Lcom/brakefield/infinitestudio/FileManager$StorageType;

    sget-object v1, Lcom/brakefield/infinitestudio/FileManager$StorageType;->EXTERNAL_STORAGE:Lcom/brakefield/infinitestudio/FileManager$StorageType;

    sget-object v2, Lcom/brakefield/infinitestudio/FileManager$StorageType;->SCOPED_STORAGE:Lcom/brakefield/infinitestudio/FileManager$StorageType;

    filled-new-array {v0, v1, v2}, [Lcom/brakefield/infinitestudio/FileManager$StorageType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 87
    new-instance v0, Lcom/brakefield/infinitestudio/FileManager$StorageType;

    const-string v1, "INTERNAL_STORAGE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/brakefield/infinitestudio/FileManager$StorageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/brakefield/infinitestudio/FileManager$StorageType;->INTERNAL_STORAGE:Lcom/brakefield/infinitestudio/FileManager$StorageType;

    new-instance v0, Lcom/brakefield/infinitestudio/FileManager$StorageType;

    const-string v1, "EXTERNAL_STORAGE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/brakefield/infinitestudio/FileManager$StorageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/brakefield/infinitestudio/FileManager$StorageType;->EXTERNAL_STORAGE:Lcom/brakefield/infinitestudio/FileManager$StorageType;

    new-instance v0, Lcom/brakefield/infinitestudio/FileManager$StorageType;

    const-string v1, "SCOPED_STORAGE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/brakefield/infinitestudio/FileManager$StorageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/brakefield/infinitestudio/FileManager$StorageType;->SCOPED_STORAGE:Lcom/brakefield/infinitestudio/FileManager$StorageType;

    .line 86
    invoke-static {}, Lcom/brakefield/infinitestudio/FileManager$StorageType;->$values()[Lcom/brakefield/infinitestudio/FileManager$StorageType;

    move-result-object v0

    sput-object v0, Lcom/brakefield/infinitestudio/FileManager$StorageType;->$VALUES:[Lcom/brakefield/infinitestudio/FileManager$StorageType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 86
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/brakefield/infinitestudio/FileManager$StorageType;
    .locals 1

    .line 86
    const-class v0, Lcom/brakefield/infinitestudio/FileManager$StorageType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/brakefield/infinitestudio/FileManager$StorageType;

    return-object p0
.end method

.method public static values()[Lcom/brakefield/infinitestudio/FileManager$StorageType;
    .locals 1

    .line 86
    sget-object v0, Lcom/brakefield/infinitestudio/FileManager$StorageType;->$VALUES:[Lcom/brakefield/infinitestudio/FileManager$StorageType;

    invoke-virtual {v0}, [Lcom/brakefield/infinitestudio/FileManager$StorageType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/brakefield/infinitestudio/FileManager$StorageType;

    return-object v0
.end method
