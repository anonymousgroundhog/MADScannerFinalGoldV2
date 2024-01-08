.class public Lcom/brakefield/painter/ui/viewcontrollers/BrushHeadsViewController;
.super Lcom/brakefield/painter/ui/viewcontrollers/ResourcesViewController;
.source "BrushHeadsViewController.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Lcom/brakefield/painter/ui/viewcontrollers/ResourcesViewController;-><init>()V

    return-void
.end method


# virtual methods
.method getImportedResourcesFilePath()Ljava/lang/String;
    .locals 1

    .line 92
    invoke-static {}, Lcom/brakefield/infinitestudio/FileManager;->getBrushHeadsPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getPresetResources()[I
    .locals 1

    const/16 v0, 0x45

    new-array v0, v0, [I

    .line 16
    fill-array-data v0, :array_0

    return-object v0

    :array_0
    .array-data 4
        0x7f0801f9
        0x7f0801fa
        0x7f0801fb
        0x7f0801fd
        0x7f0801fe
        0x7f080202
        0x7f0801fc
        0x7f08020d
        0x7f080208
        0x7f080209
        0x7f08020c
        0x7f08020e
        0x7f08020f
        0x7f080210
        0x7f080211
        0x7f080213
        0x7f080214
        0x7f080215
        0x7f080216
        0x7f080212
        0x7f080218
        0x7f08021d
        0x7f080220
        0x7f080221
        0x7f080226
        0x7f080227
        0x7f080228
        0x7f08022a
        0x7f08022b
        0x7f080233
        0x7f080232
        0x7f080235
        0x7f080236
        0x7f080239
        0x7f08023a
        0x7f0800a3
        0x7f0800a4
        0x7f0800a5
        0x7f0800a6
        0x7f0800a7
        0x7f0800a8
        0x7f0800a9
        0x7f0800aa
        0x7f0800ab
        0x7f0800ac
        0x7f0800ad
        0x7f0800ae
        0x7f0800af
        0x7f0800b0
        0x7f0800b1
        0x7f0800b2
        0x7f0800b3
        0x7f0800b4
        0x7f0800b5
        0x7f0800b6
        0x7f0800b7
        0x7f0800b8
        0x7f0800b9
        0x7f0800ba
        0x7f0800bb
        0x7f0800bc
        0x7f0800bd
        0x7f0800be
        0x7f0800bf
        0x7f0800c0
        0x7f0800c1
        0x7f0800c3
        0x7f0800c4
        0x7f0800c5
    .end array-data
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    const v0, 0x7f12007c

    .line 11
    invoke-static {v0}, Lcom/brakefield/infinitestudio/Strings;->get(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getUIBindingKey()Ljava/lang/String;
    .locals 1

    const-string v0, "brush_head"

    return-object v0
.end method
