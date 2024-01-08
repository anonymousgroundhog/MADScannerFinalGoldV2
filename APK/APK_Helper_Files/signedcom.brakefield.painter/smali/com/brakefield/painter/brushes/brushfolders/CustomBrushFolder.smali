.class public Lcom/brakefield/painter/brushes/brushfolders/CustomBrushFolder;
.super Lcom/brakefield/painter/brushes/brushfolders/BrushFolder;
.source "CustomBrushFolder.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 8
    invoke-direct {p0}, Lcom/brakefield/painter/brushes/brushfolders/BrushFolder;-><init>()V

    const v0, 0x7f08009a

    .line 9
    iput v0, p0, Lcom/brakefield/painter/brushes/brushfolders/CustomBrushFolder;->iconId:I

    return-void
.end method


# virtual methods
.method public canRestore()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getFolderLocation()Ljava/lang/String;
    .locals 1

    .line 13
    invoke-static {}, Lcom/brakefield/infinitestudio/FileManager;->getCustomBrushFoldersPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getId()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
