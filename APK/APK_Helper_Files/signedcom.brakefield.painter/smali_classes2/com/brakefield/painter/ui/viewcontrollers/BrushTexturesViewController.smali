.class public Lcom/brakefield/painter/ui/viewcontrollers/BrushTexturesViewController;
.super Lcom/brakefield/painter/ui/viewcontrollers/ResourcesViewController;
.source "BrushTexturesViewController.java"


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

    .line 73
    invoke-static {}, Lcom/brakefield/infinitestudio/FileManager;->getBrushTexturesPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getPresetResources()[I
    .locals 1

    const/16 v0, 0x32

    new-array v0, v0, [I

    .line 16
    fill-array-data v0, :array_0

    return-object v0

    :array_0
    .array-data 4
        0x7f0804aa
        0x7f0804b2
        0x7f0804b3
        0x7f0804b4
        0x7f0804b5
        0x7f0804b6
        0x7f0804b7
        0x7f0804b8
        0x7f0804b9
        0x7f0804ab
        0x7f0804ac
        0x7f0804ad
        0x7f0804ae
        0x7f0804af
        0x7f0804b0
        0x7f0804b1
        0x7f0800cb
        0x7f0800cc
        0x7f0800cd
        0x7f0800ce
        0x7f0800cf
        0x7f0800d0
        0x7f0800d1
        0x7f0800d2
        0x7f0800d4
        0x7f0800d3
        0x7f0800d5
        0x7f0800d6
        0x7f0800d7
        0x7f0800d8
        0x7f0800d9
        0x7f0800da
        0x7f0800db
        0x7f0800dc
        0x7f0800dd
        0x7f0800de
        0x7f0800df
        0x7f0800e0
        0x7f0800e1
        0x7f0800e2
        0x7f0800e3
        0x7f0800e4
        0x7f0800e5
        0x7f0800e6
        0x7f0800e7
        0x7f0800e8
        0x7f0800e9
        0x7f0800ea
        0x7f0800eb
        0x7f0800ec
    .end array-data
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    const v0, 0x7f120091

    .line 11
    invoke-static {v0}, Lcom/brakefield/infinitestudio/Strings;->get(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getUIBindingKey()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "texture"

    return-object v0
.end method
