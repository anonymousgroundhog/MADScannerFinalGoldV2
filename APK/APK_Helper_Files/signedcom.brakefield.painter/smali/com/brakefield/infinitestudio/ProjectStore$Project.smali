.class public abstract Lcom/brakefield/infinitestudio/ProjectStore$Project;
.super Ljava/lang/Object;
.source "ProjectStore.java"

# interfaces
.implements Lcom/brakefield/infinitestudio/ui/collections/Diffable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/brakefield/infinitestudio/ProjectStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "Project"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/brakefield/infinitestudio/ui/collections/Diffable<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field public directory:Ljava/lang/String;

.field protected isZipFile:Z

.field public name:Ljava/lang/String;

.field protected parent:Lcom/brakefield/infinitestudio/ProjectStore$ProjectFolder;

.field final synthetic this$0:Lcom/brakefield/infinitestudio/ProjectStore;


# direct methods
.method public constructor <init>(Lcom/brakefield/infinitestudio/ProjectStore;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 346
    iput-object p1, p0, Lcom/brakefield/infinitestudio/ProjectStore$Project;->this$0:Lcom/brakefield/infinitestudio/ProjectStore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 341
    iput-object p1, p0, Lcom/brakefield/infinitestudio/ProjectStore$Project;->parent:Lcom/brakefield/infinitestudio/ProjectStore$ProjectFolder;

    .line 347
    iput-object p2, p0, Lcom/brakefield/infinitestudio/ProjectStore$Project;->name:Ljava/lang/String;

    .line 348
    iput-object p3, p0, Lcom/brakefield/infinitestudio/ProjectStore$Project;->directory:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p1, p0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 419
    :cond_0
    instance-of v0, p1, Lcom/brakefield/infinitestudio/ProjectStore$Project;

    if-eqz v0, :cond_1

    instance-of v0, p1, Lcom/brakefield/infinitestudio/ProjectStore$ProjectFolder;

    if-nez v0, :cond_1

    .line 420
    check-cast p1, Lcom/brakefield/infinitestudio/ProjectStore$Project;

    .line 421
    iget-object p1, p1, Lcom/brakefield/infinitestudio/ProjectStore$Project;->name:Ljava/lang/String;

    iget-object v0, p0, Lcom/brakefield/infinitestudio/ProjectStore$Project;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 423
    :cond_1
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 424
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ProjectStore$Project;->name:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public exists()Z
    .locals 2

    .line 376
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ProjectStore$Project;->getLocation()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    return v0
.end method

.method public getFullPreviewLocation()Ljava/lang/String;
    .locals 3

    .line 394
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ProjectStore$Project;->directory:Ljava/lang/String;

    iget-object v1, p0, Lcom/brakefield/infinitestudio/ProjectStore$Project;->name:Ljava/lang/String;

    const/4 v2, 0x0

    sget-object v2, Lcom/brakefield/infinitestudio/image/eps/Jpb/CfMJvi;->EaDdlMzSrua:Ljava/lang/String;

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/brakefield/infinitestudio/FileManager;->buildPath([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFullPreviewThumb()Ljava/io/InputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 384
    iget-boolean v0, p0, Lcom/brakefield/infinitestudio/ProjectStore$Project;->isZipFile:Z

    if-eqz v0, :cond_1

    .line 385
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ProjectStore$Project;->name:Ljava/lang/String;

    const-string v1, "preview_full"

    invoke-static {v0, v1}, Lcom/brakefield/infinitestudio/ProjectZip;->getFile(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 389
    :cond_0
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    return-object v1

    .line 390
    :cond_1
    new-instance v0, Ljava/io/FileInputStream;

    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ProjectStore$Project;->getFullPreviewLocation()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public getLocation()Ljava/lang/String;
    .locals 2

    .line 372
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ProjectStore$Project;->directory:Ljava/lang/String;

    iget-object v1, p0, Lcom/brakefield/infinitestudio/ProjectStore$Project;->name:Ljava/lang/String;

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/brakefield/infinitestudio/FileManager;->buildPath([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getParent()Lcom/brakefield/infinitestudio/ProjectStore$ProjectFolder;
    .locals 1

    .line 358
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ProjectStore$Project;->parent:Lcom/brakefield/infinitestudio/ProjectStore$ProjectFolder;

    return-object v0
.end method

.method public getPreviewLocation()Ljava/lang/String;
    .locals 3

    .line 380
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ProjectStore$Project;->directory:Ljava/lang/String;

    iget-object v1, p0, Lcom/brakefield/infinitestudio/ProjectStore$Project;->name:Ljava/lang/String;

    const-string v2, "preview"

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/brakefield/infinitestudio/FileManager;->buildPath([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPreviewModifiedDate()J
    .locals 3

    .line 399
    iget-boolean v0, p0, Lcom/brakefield/infinitestudio/ProjectStore$Project;->isZipFile:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/brakefield/infinitestudio/ProjectStore$Project;->directory:Ljava/lang/String;

    iget-object v2, p0, Lcom/brakefield/infinitestudio/ProjectStore$Project;->name:Ljava/lang/String;

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/brakefield/infinitestudio/FileManager;->buildPath([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 400
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ProjectStore$Project;->getPreviewLocation()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 401
    :goto_0
    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    return-wide v0
.end method

.method public getPreviewThumb()Ljava/io/InputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 362
    iget-boolean v0, p0, Lcom/brakefield/infinitestudio/ProjectStore$Project;->isZipFile:Z

    if-eqz v0, :cond_1

    .line 363
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ProjectStore$Project;->name:Ljava/lang/String;

    const-string v1, "preview"

    invoke-static {v0, v1}, Lcom/brakefield/infinitestudio/ProjectZip;->getFile(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 367
    :cond_0
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    return-object v1

    .line 368
    :cond_1
    new-instance v0, Ljava/io/FileInputStream;

    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ProjectStore$Project;->getPreviewLocation()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public hasParent()Z
    .locals 1

    .line 355
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ProjectStore$Project;->parent:Lcom/brakefield/infinitestudio/ProjectStore$ProjectFolder;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public bridge synthetic id()Ljava/lang/Object;
    .locals 1

    .line 339
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ProjectStore$Project;->id()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public id()Ljava/lang/String;
    .locals 1

    .line 431
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ProjectStore$Project;->name:Ljava/lang/String;

    return-object v0
.end method

.method public isZipped()Z
    .locals 1

    .line 405
    iget-boolean v0, p0, Lcom/brakefield/infinitestudio/ProjectStore$Project;->isZipFile:Z

    return v0
.end method

.method public setParent(Lcom/brakefield/infinitestudio/ProjectStore$ProjectFolder;)V
    .locals 0

    .line 352
    iput-object p1, p0, Lcom/brakefield/infinitestudio/ProjectStore$Project;->parent:Lcom/brakefield/infinitestudio/ProjectStore$ProjectFolder;

    return-void
.end method

.method public toJSON()Lorg/json/JSONObject;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 409
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "project"

    .line 410
    iget-object v2, p0, Lcom/brakefield/infinitestudio/ProjectStore$Project;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object v0
.end method
