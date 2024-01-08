.class public Lcom/brakefield/painter/ui/viewcontrollers/PatternsViewController;
.super Lcom/brakefield/painter/ui/viewcontrollers/ResourcesViewController;
.source "PatternsViewController.java"


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

    .line 61
    invoke-static {}, Lcom/brakefield/infinitestudio/FileManager;->getPatternsPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getPresetResources()[I
    .locals 1

    const/16 v0, 0x22

    new-array v0, v0, [I

    .line 16
    fill-array-data v0, :array_0

    return-object v0

    :array_0
    .array-data 4
        0x7f08030a
        0x7f08030b
        0x7f080321
        0x7f080322
        0x7f08030c
        0x7f08030e
        0x7f08030f
        0x7f080310
        0x7f080311
        0x7f080312
        0x7f080313
        0x7f080314
        0x7f080315
        0x7f08030d
        0x7f080317
        0x7f080319
        0x7f08031a
        0x7f08031b
        0x7f08031c
        0x7f08031d
        0x7f08031e
        0x7f08031f
        0x7f080320
        0x7f080318
        0x7f080327
        0x7f080329
        0x7f08032a
        0x7f08032b
        0x7f08032c
        0x7f08032d
        0x7f08032e
        0x7f08032f
        0x7f080330
        0x7f080328
    .end array-data
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    const v0, 0x7f1209dd

    .line 11
    invoke-static {v0}, Lcom/brakefield/infinitestudio/Strings;->get(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getUIBindingKey()Ljava/lang/String;
    .locals 1

    const-string v0, "pattern"

    return-object v0
.end method
