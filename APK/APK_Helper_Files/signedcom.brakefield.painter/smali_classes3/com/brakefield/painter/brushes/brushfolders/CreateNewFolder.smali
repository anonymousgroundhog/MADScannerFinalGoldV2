.class public Lcom/brakefield/painter/brushes/brushfolders/CreateNewFolder;
.super Lcom/brakefield/painter/brushes/brushfolders/BrushFolder;
.source "CreateNewFolder.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Lcom/brakefield/painter/brushes/brushfolders/BrushFolder;-><init>()V

    return-void
.end method


# virtual methods
.method public canDropInBrushes()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getId()I
    .locals 1

    const/16 v0, 0xc8

    return v0
.end method

.method public init()V
    .locals 1

    const v0, 0x7f1209a4

    .line 9
    invoke-static {v0}, Lcom/brakefield/infinitestudio/Strings;->get(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/brakefield/painter/brushes/brushfolders/CreateNewFolder;->name:Ljava/lang/String;

    const v0, 0x7f080079

    .line 10
    iput v0, p0, Lcom/brakefield/painter/brushes/brushfolders/CreateNewFolder;->iconId:I

    .line 11
    invoke-super {p0}, Lcom/brakefield/painter/brushes/brushfolders/BrushFolder;->init()V

    return-void
.end method
