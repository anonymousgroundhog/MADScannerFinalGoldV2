.class public abstract Lcom/brakefield/infinitestudio/ProjectStore;
.super Ljava/lang/Object;
.source "ProjectStore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/brakefield/infinitestudio/ProjectStore$ProjectFolder;,
        Lcom/brakefield/infinitestudio/ProjectStore$Project;
    }
.end annotation


# static fields
.field public static final JSON_NAME:Ljava/lang/String; = "name"

.field public static final JSON_PROJECT:Ljava/lang/String; = "project"

.field public static final JSON_PROJECTS:Ljava/lang/String; = "projects"

.field public static final JSON_PROJECT_FOLDER:Ljava/lang/String; = "project-folder"


# instance fields
.field private currentFolder:Lcom/brakefield/infinitestudio/ProjectStore$ProjectFolder;

.field protected final directory:Ljava/lang/String;

.field private final mainFolder:Lcom/brakefield/infinitestudio/ProjectStore$ProjectFolder;


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/brakefield/infinitestudio/ProjectStore;->directory:Ljava/lang/String;

    .line 39
    new-instance v0, Lcom/brakefield/infinitestudio/ProjectStore$ProjectFolder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, p1}, Lcom/brakefield/infinitestudio/ProjectStore$ProjectFolder;-><init>(Lcom/brakefield/infinitestudio/ProjectStore;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/brakefield/infinitestudio/ProjectStore;->mainFolder:Lcom/brakefield/infinitestudio/ProjectStore$ProjectFolder;

    .line 40
    iput-object v0, p0, Lcom/brakefield/infinitestudio/ProjectStore;->currentFolder:Lcom/brakefield/infinitestudio/ProjectStore$ProjectFolder;

    return-void
.end method

.method private buildProjectTree(Lcom/brakefield/infinitestudio/ProjectStore$ProjectFolder;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/brakefield/infinitestudio/ProjectStore$ProjectFolder;",
            "Ljava/util/List<",
            "Lcom/brakefield/infinitestudio/ProjectStore$Project;",
            ">;)V"
        }
    .end annotation

    .line 296
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/brakefield/infinitestudio/ProjectStore$Project;

    .line 297
    invoke-virtual {v1}, Lcom/brakefield/infinitestudio/ProjectStore$Project;->getParent()Lcom/brakefield/infinitestudio/ProjectStore$ProjectFolder;

    move-result-object v2

    if-ne v2, p1, :cond_0

    .line 298
    instance-of v2, v1, Lcom/brakefield/infinitestudio/ProjectStore$ProjectFolder;

    if-eqz v2, :cond_1

    .line 299
    check-cast v1, Lcom/brakefield/infinitestudio/ProjectStore$ProjectFolder;

    .line 300
    invoke-virtual {p1, v1}, Lcom/brakefield/infinitestudio/ProjectStore$ProjectFolder;->addFolder(Lcom/brakefield/infinitestudio/ProjectStore$ProjectFolder;)I

    goto :goto_0

    .line 302
    :cond_1
    invoke-virtual {p1, v1}, Lcom/brakefield/infinitestudio/ProjectStore$ProjectFolder;->addProject(Lcom/brakefield/infinitestudio/ProjectStore$Project;)I

    goto :goto_0

    .line 306
    :cond_2
    invoke-virtual {p1}, Lcom/brakefield/infinitestudio/ProjectStore$ProjectFolder;->getFolders()Ljava/util/List;

    move-result-object v0

    .line 307
    invoke-virtual {p1}, Lcom/brakefield/infinitestudio/ProjectStore$ProjectFolder;->getProjects()Ljava/util/List;

    move-result-object p1

    .line 308
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 309
    invoke-interface {p2, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 311
    :cond_3
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 312
    invoke-interface {p2, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_2

    .line 314
    :cond_4
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 315
    check-cast v0, Lcom/brakefield/infinitestudio/ProjectStore$ProjectFolder;

    invoke-direct {p0, v0, p2}, Lcom/brakefield/infinitestudio/ProjectStore;->buildProjectTree(Lcom/brakefield/infinitestudio/ProjectStore$ProjectFolder;Ljava/util/List;)V

    goto :goto_3

    :cond_5
    return-void
.end method

.method private loadProjectsArray(Lorg/json/JSONArray;Lcom/brakefield/infinitestudio/ProjectStore$ProjectFolder;Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            "Lcom/brakefield/infinitestudio/ProjectStore$ProjectFolder;",
            "Ljava/util/List<",
            "Lcom/brakefield/infinitestudio/ProjectStore$Project;",
            ">;)V"
        }
    .end annotation

    const-string v0, "project-folder"

    const/4 v1, 0x0

    .line 269
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 271
    :try_start_0
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 272
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 273
    new-instance v3, Lcom/brakefield/infinitestudio/ProjectStore$ProjectFolder;

    const-string v4, "name"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/brakefield/infinitestudio/ProjectStore;->directory:Ljava/lang/String;

    invoke-direct {v3, p0, v4, v5}, Lcom/brakefield/infinitestudio/ProjectStore$ProjectFolder;-><init>(Lcom/brakefield/infinitestudio/ProjectStore;Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    invoke-virtual {v3, p2}, Lcom/brakefield/infinitestudio/ProjectStore$ProjectFolder;->setParent(Lcom/brakefield/infinitestudio/ProjectStore$ProjectFolder;)V

    .line 275
    invoke-interface {p3, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 276
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 277
    invoke-direct {p0, v2, v3, p3}, Lcom/brakefield/infinitestudio/ProjectStore;->loadProjectsArray(Lorg/json/JSONArray;Lcom/brakefield/infinitestudio/ProjectStore$ProjectFolder;Ljava/util/List;)V

    goto :goto_3

    :cond_0
    const-string v3, "project"

    .line 279
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 280
    invoke-virtual {p0, v2}, Lcom/brakefield/infinitestudio/ProjectStore;->getProject(Ljava/lang/String;)Lcom/brakefield/infinitestudio/ProjectStore$Project;

    move-result-object v2

    .line 281
    invoke-virtual {v2}, Lcom/brakefield/infinitestudio/ProjectStore$Project;->exists()Z

    move-result v3

    if-nez v3, :cond_2

    .line 282
    invoke-virtual {v2}, Lcom/brakefield/infinitestudio/ProjectStore$Project;->isZipped()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v2, v2, Lcom/brakefield/infinitestudio/ProjectStore$Project;->name:Ljava/lang/String;

    invoke-static {v2}, Lcom/brakefield/infinitestudio/FileManager;->filenameWithoutExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/brakefield/infinitestudio/ProjectStore;->getProject(Ljava/lang/String;)Lcom/brakefield/infinitestudio/ProjectStore$Project;

    move-result-object v2

    goto :goto_1

    .line 283
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v2, Lcom/brakefield/infinitestudio/ProjectStore$Project;->name:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/brakefield/infinitestudio/ProjectZip;->suffix:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/brakefield/infinitestudio/ProjectStore;->getProject(Ljava/lang/String;)Lcom/brakefield/infinitestudio/ProjectStore$Project;

    move-result-object v2

    .line 285
    :cond_2
    :goto_1
    invoke-interface {p3, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {p3, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    invoke-interface {p3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/brakefield/infinitestudio/ProjectStore$Project;

    goto :goto_2

    .line 286
    :cond_3
    invoke-interface {p3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 287
    :goto_2
    invoke-virtual {v2, p2}, Lcom/brakefield/infinitestudio/ProjectStore$Project;->setParent(Lcom/brakefield/infinitestudio/ProjectStore$ProjectFolder;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v2

    .line 290
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_4
    return-void
.end method


# virtual methods
.method public addFolder(Lcom/brakefield/infinitestudio/ProjectStore$ProjectFolder;)I
    .locals 1

    .line 124
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ProjectStore;->currentFolder:Lcom/brakefield/infinitestudio/ProjectStore$ProjectFolder;

    invoke-virtual {v0, p1}, Lcom/brakefield/infinitestudio/ProjectStore$ProjectFolder;->addFolder(Lcom/brakefield/infinitestudio/ProjectStore$ProjectFolder;)I

    move-result p1

    return p1
.end method

.method public addProject(Lcom/brakefield/infinitestudio/ProjectStore$Project;)I
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ProjectStore;->currentFolder:Lcom/brakefield/infinitestudio/ProjectStore$ProjectFolder;

    invoke-virtual {v0, p1}, Lcom/brakefield/infinitestudio/ProjectStore$ProjectFolder;->addProject(Lcom/brakefield/infinitestudio/ProjectStore$Project;)I

    move-result p1

    return p1
.end method

.method public canNavigateBack()Z
    .locals 1

    .line 136
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ProjectStore;->currentFolder:Lcom/brakefield/infinitestudio/ProjectStore$ProjectFolder;

    invoke-virtual {v0}, Lcom/brakefield/infinitestudio/ProjectStore$ProjectFolder;->hasParent()Z

    move-result v0

    return v0
.end method

.method public explodeFolder(Lcom/brakefield/infinitestudio/ProjectStore$ProjectFolder;)V
    .locals 5

    .line 96
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ProjectStore;->currentFolder:Lcom/brakefield/infinitestudio/ProjectStore$ProjectFolder;

    invoke-virtual {v0, p1}, Lcom/brakefield/infinitestudio/ProjectStore$ProjectFolder;->indexOfFolder(Ljava/lang/Object;)I

    move-result v0

    .line 99
    invoke-virtual {p1}, Lcom/brakefield/infinitestudio/ProjectStore$ProjectFolder;->getFolders()Ljava/util/List;

    move-result-object v1

    .line 100
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 101
    iget-object v3, p0, Lcom/brakefield/infinitestudio/ProjectStore;->currentFolder:Lcom/brakefield/infinitestudio/ProjectStore$ProjectFolder;

    check-cast v2, Lcom/brakefield/infinitestudio/ProjectStore$ProjectFolder;

    add-int/lit8 v4, v0, 0x1

    invoke-virtual {v3, v2, v0}, Lcom/brakefield/infinitestudio/ProjectStore$ProjectFolder;->insertFolder(Lcom/brakefield/infinitestudio/ProjectStore$ProjectFolder;I)V

    move v0, v4

    goto :goto_0

    .line 104
    :cond_0
    invoke-virtual {p1}, Lcom/brakefield/infinitestudio/ProjectStore$ProjectFolder;->getProjects()Ljava/util/List;

    move-result-object v0

    .line 105
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 106
    iget-object v3, p0, Lcom/brakefield/infinitestudio/ProjectStore;->currentFolder:Lcom/brakefield/infinitestudio/ProjectStore$ProjectFolder;

    check-cast v2, Lcom/brakefield/infinitestudio/ProjectStore$Project;

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {v3, v2, v1}, Lcom/brakefield/infinitestudio/ProjectStore$ProjectFolder;->insertProject(Lcom/brakefield/infinitestudio/ProjectStore$Project;I)V

    move v1, v4

    goto :goto_1

    .line 108
    :cond_1
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ProjectStore;->currentFolder:Lcom/brakefield/infinitestudio/ProjectStore$ProjectFolder;

    invoke-virtual {v0, p1}, Lcom/brakefield/infinitestudio/ProjectStore$ProjectFolder;->removeFolder(Lcom/brakefield/infinitestudio/ProjectStore$ProjectFolder;)I

    .line 109
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ProjectStore;->save()V

    return-void
.end method

.method public findParentFolder(Lcom/brakefield/infinitestudio/ProjectStore$Project;)Lcom/brakefield/infinitestudio/ProjectStore$ProjectFolder;
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ProjectStore;->mainFolder:Lcom/brakefield/infinitestudio/ProjectStore$ProjectFolder;

    invoke-virtual {v0, p1}, Lcom/brakefield/infinitestudio/ProjectStore$ProjectFolder;->findParentFolder(Lcom/brakefield/infinitestudio/ProjectStore$Project;)Lcom/brakefield/infinitestudio/ProjectStore$ProjectFolder;

    move-result-object p1

    return-object p1
.end method

.method public folderAt(I)Ljava/lang/Object;
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ProjectStore;->currentFolder:Lcom/brakefield/infinitestudio/ProjectStore$ProjectFolder;

    invoke-static {v0}, Lcom/brakefield/infinitestudio/ProjectStore$ProjectFolder;->access$100(Lcom/brakefield/infinitestudio/ProjectStore$ProjectFolder;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public folderCount()I
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ProjectStore;->currentFolder:Lcom/brakefield/infinitestudio/ProjectStore$ProjectFolder;

    invoke-static {v0}, Lcom/brakefield/infinitestudio/ProjectStore$ProjectFolder;->access$100(Lcom/brakefield/infinitestudio/ProjectStore$ProjectFolder;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getAllProject()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 180
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ProjectStore;->getProjectFiles()Lcom/brakefield/infinitestudio/ProjectStore$ProjectFolder;

    move-result-object v0

    .line 181
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 182
    invoke-static {v0}, Lcom/brakefield/infinitestudio/ProjectStore$ProjectFolder;->access$000(Lcom/brakefield/infinitestudio/ProjectStore$ProjectFolder;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 183
    iget-object v3, p0, Lcom/brakefield/infinitestudio/ProjectStore;->currentFolder:Lcom/brakefield/infinitestudio/ProjectStore$ProjectFolder;

    invoke-static {v3}, Lcom/brakefield/infinitestudio/ProjectStore$ProjectFolder;->access$000(Lcom/brakefield/infinitestudio/ProjectStore$ProjectFolder;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    .line 185
    iget-object v2, p0, Lcom/brakefield/infinitestudio/ProjectStore;->currentFolder:Lcom/brakefield/infinitestudio/ProjectStore$ProjectFolder;

    invoke-static {v2}, Lcom/brakefield/infinitestudio/ProjectStore$ProjectFolder;->access$000(Lcom/brakefield/infinitestudio/ProjectStore$ProjectFolder;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 187
    :cond_0
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public getFolders()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 52
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ProjectStore;->currentFolder:Lcom/brakefield/infinitestudio/ProjectStore$ProjectFolder;

    invoke-virtual {v0}, Lcom/brakefield/infinitestudio/ProjectStore$ProjectFolder;->getFolders()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public abstract getProject(Ljava/lang/String;)Lcom/brakefield/infinitestudio/ProjectStore$Project;
.end method

.method protected getProjectFiles()Lcom/brakefield/infinitestudio/ProjectStore$ProjectFolder;
    .locals 6

    .line 156
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ProjectStore;->directory:Ljava/lang/String;

    invoke-static {v0}, Lcom/brakefield/infinitestudio/FileManager;->removeStorageDirectory(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 158
    new-instance v1, Lcom/brakefield/infinitestudio/ProjectStore$ProjectFolder;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/brakefield/infinitestudio/ProjectStore;->directory:Ljava/lang/String;

    invoke-direct {v1, p0, v2, v3}, Lcom/brakefield/infinitestudio/ProjectStore$ProjectFolder;-><init>(Lcom/brakefield/infinitestudio/ProjectStore;Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    invoke-static {v0}, Lcom/brakefield/infinitestudio/FileManager;->getDirectories(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 161
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 162
    invoke-virtual {p0, v3}, Lcom/brakefield/infinitestudio/ProjectStore;->getProject(Ljava/lang/String;)Lcom/brakefield/infinitestudio/ProjectStore$Project;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/brakefield/infinitestudio/ProjectStore$ProjectFolder;->addProject(Lcom/brakefield/infinitestudio/ProjectStore$Project;)I

    goto :goto_0

    .line 165
    :cond_0
    invoke-static {v0}, Lcom/brakefield/infinitestudio/FileManager;->getFilesSorted(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 167
    array-length v2, v0

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_2

    aget-object v4, v0, v3

    .line 168
    sget-object v5, Lcom/brakefield/infinitestudio/ProjectZip;->suffix:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 169
    invoke-virtual {p0, v4}, Lcom/brakefield/infinitestudio/ProjectStore;->getProject(Ljava/lang/String;)Lcom/brakefield/infinitestudio/ProjectStore$Project;

    move-result-object v4

    .line 170
    invoke-virtual {v1, v4}, Lcom/brakefield/infinitestudio/ProjectStore$ProjectFolder;->hasProject(Lcom/brakefield/infinitestudio/ProjectStore$Project;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 171
    invoke-virtual {v1, v4}, Lcom/brakefield/infinitestudio/ProjectStore$ProjectFolder;->addProject(Lcom/brakefield/infinitestudio/ProjectStore$Project;)I

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    return-object v1
.end method

.method public getProjectFolder(Ljava/lang/String;)Lcom/brakefield/infinitestudio/ProjectStore$ProjectFolder;
    .locals 2

    .line 45
    new-instance v0, Lcom/brakefield/infinitestudio/ProjectStore$ProjectFolder;

    iget-object v1, p0, Lcom/brakefield/infinitestudio/ProjectStore;->directory:Ljava/lang/String;

    invoke-direct {v0, p0, p1, v1}, Lcom/brakefield/infinitestudio/ProjectStore$ProjectFolder;-><init>(Lcom/brakefield/infinitestudio/ProjectStore;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public getProjects()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 49
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ProjectStore;->currentFolder:Lcom/brakefield/infinitestudio/ProjectStore$ProjectFolder;

    invoke-virtual {v0}, Lcom/brakefield/infinitestudio/ProjectStore$ProjectFolder;->getProjects()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 139
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ProjectStore;->currentFolder:Lcom/brakefield/infinitestudio/ProjectStore$ProjectFolder;

    invoke-virtual {v0}, Lcom/brakefield/infinitestudio/ProjectStore$ProjectFolder;->hasParent()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/brakefield/infinitestudio/ProjectStore;->currentFolder:Lcom/brakefield/infinitestudio/ProjectStore$ProjectFolder;

    iget-object v0, v0, Lcom/brakefield/infinitestudio/ProjectStore$ProjectFolder;->name:Ljava/lang/String;

    return-object v0

    .line 140
    :cond_0
    sget v0, Lcom/brakefield/infinitestudio/R$string;->projects:I

    invoke-static {v0}, Lcom/brakefield/infinitestudio/Strings;->get(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public indexOfFolder(Ljava/lang/Object;)I
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ProjectStore;->currentFolder:Lcom/brakefield/infinitestudio/ProjectStore$ProjectFolder;

    invoke-virtual {v0, p1}, Lcom/brakefield/infinitestudio/ProjectStore$ProjectFolder;->indexOfFolder(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public indexOfProject(Ljava/lang/Object;)I
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ProjectStore;->currentFolder:Lcom/brakefield/infinitestudio/ProjectStore$ProjectFolder;

    invoke-virtual {v0, p1}, Lcom/brakefield/infinitestudio/ProjectStore$ProjectFolder;->indexOfProject(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public insertProject(Lcom/brakefield/infinitestudio/ProjectStore$Project;I)V
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ProjectStore;->currentFolder:Lcom/brakefield/infinitestudio/ProjectStore$ProjectFolder;

    invoke-virtual {v0, p1, p2}, Lcom/brakefield/infinitestudio/ProjectStore$ProjectFolder;->insertProject(Lcom/brakefield/infinitestudio/ProjectStore$Project;I)V

    return-void
.end method

.method public load()V
    .locals 9

    .line 209
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ProjectStore;->getProjectFiles()Lcom/brakefield/infinitestudio/ProjectStore$ProjectFolder;

    move-result-object v0

    .line 210
    new-instance v1, Lcom/brakefield/infinitestudio/ProjectStore$ProjectFolder;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/brakefield/infinitestudio/ProjectStore;->directory:Ljava/lang/String;

    invoke-direct {v1, p0, v2, v3}, Lcom/brakefield/infinitestudio/ProjectStore$ProjectFolder;-><init>(Lcom/brakefield/infinitestudio/ProjectStore;Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    :try_start_0
    invoke-static {}, Lcom/brakefield/infinitestudio/FileManager;->getProjectsPath()Ljava/lang/String;

    move-result-object v2

    const-string v3, "projects.json"

    invoke-static {v2, v3}, Lcom/brakefield/infinitestudio/FileManager;->getFileInputStream(Ljava/lang/String;Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 213
    :try_start_1
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    invoke-direct {v4, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 215
    :try_start_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 217
    :goto_0
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 218
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 221
    :cond_0
    new-instance v5, Lorg/json/JSONTokener;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/json/JSONObject;

    const-string v5, "projects"

    .line 222
    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 224
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 225
    invoke-direct {p0, v4, v1, v5}, Lcom/brakefield/infinitestudio/ProjectStore;->loadProjectsArray(Lorg/json/JSONArray;Lcom/brakefield/infinitestudio/ProjectStore$ProjectFolder;Ljava/util/List;)V

    .line 227
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 228
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/brakefield/infinitestudio/ProjectStore$Project;

    .line 229
    invoke-virtual {v0, v7}, Lcom/brakefield/infinitestudio/ProjectStore$ProjectFolder;->hasProject(Lcom/brakefield/infinitestudio/ProjectStore$Project;)Z

    move-result v8

    if-nez v8, :cond_1

    instance-of v8, v7, Lcom/brakefield/infinitestudio/ProjectStore$ProjectFolder;

    if-nez v8, :cond_1

    .line 230
    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 233
    :cond_2
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/brakefield/infinitestudio/ProjectStore$Project;

    .line 234
    invoke-interface {v5, v7}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_2

    .line 237
    :cond_3
    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 238
    invoke-static {v0}, Lcom/brakefield/infinitestudio/ProjectStore$ProjectFolder;->access$000(Lcom/brakefield/infinitestudio/ProjectStore$ProjectFolder;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_4
    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    .line 239
    invoke-interface {v5, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 240
    check-cast v7, Lcom/brakefield/infinitestudio/ProjectStore$Project;

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 243
    :cond_5
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/brakefield/infinitestudio/ProjectStore$Project;

    .line 244
    invoke-virtual {v0, v6}, Lcom/brakefield/infinitestudio/ProjectStore$ProjectFolder;->removeProject(Lcom/brakefield/infinitestudio/ProjectStore$Project;)I

    goto :goto_4

    .line 247
    :cond_6
    invoke-direct {p0, v1, v5}, Lcom/brakefield/infinitestudio/ProjectStore;->buildProjectTree(Lcom/brakefield/infinitestudio/ProjectStore$ProjectFolder;Ljava/util/List;)V

    .line 249
    invoke-static {v1}, Lcom/brakefield/infinitestudio/ProjectStore$ProjectFolder;->access$100(Lcom/brakefield/infinitestudio/ProjectStore$ProjectFolder;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 250
    check-cast v5, Lcom/brakefield/infinitestudio/ProjectStore$Project;

    .line 251
    iget-object v6, p0, Lcom/brakefield/infinitestudio/ProjectStore;->mainFolder:Lcom/brakefield/infinitestudio/ProjectStore$ProjectFolder;

    invoke-virtual {v5, v6}, Lcom/brakefield/infinitestudio/ProjectStore$Project;->setParent(Lcom/brakefield/infinitestudio/ProjectStore$ProjectFolder;)V

    goto :goto_5

    .line 253
    :cond_7
    invoke-static {v1}, Lcom/brakefield/infinitestudio/ProjectStore$ProjectFolder;->access$000(Lcom/brakefield/infinitestudio/ProjectStore$ProjectFolder;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_6
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 254
    check-cast v5, Lcom/brakefield/infinitestudio/ProjectStore$Project;

    .line 255
    iget-object v6, p0, Lcom/brakefield/infinitestudio/ProjectStore;->mainFolder:Lcom/brakefield/infinitestudio/ProjectStore$ProjectFolder;

    invoke-virtual {v5, v6}, Lcom/brakefield/infinitestudio/ProjectStore$Project;->setParent(Lcom/brakefield/infinitestudio/ProjectStore$ProjectFolder;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_6

    .line 258
    :cond_8
    :try_start_3
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-eqz v2, :cond_a

    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_9

    :catchall_0
    move-exception v4

    .line 212
    :try_start_5
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_7

    :catchall_1
    move-exception v3

    :try_start_6
    invoke-virtual {v4, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_7
    throw v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catchall_2
    move-exception v3

    if-eqz v2, :cond_9

    :try_start_7
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_8

    :catchall_3
    move-exception v2

    :try_start_8
    invoke-virtual {v3, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_9
    :goto_8
    throw v3
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    :catch_0
    move-exception v2

    .line 259
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 262
    :cond_a
    :goto_9
    iget-object v2, p0, Lcom/brakefield/infinitestudio/ProjectStore;->mainFolder:Lcom/brakefield/infinitestudio/ProjectStore$ProjectFolder;

    invoke-static {v2}, Lcom/brakefield/infinitestudio/ProjectStore$ProjectFolder;->access$200(Lcom/brakefield/infinitestudio/ProjectStore$ProjectFolder;)V

    .line 263
    iget-object v2, p0, Lcom/brakefield/infinitestudio/ProjectStore;->mainFolder:Lcom/brakefield/infinitestudio/ProjectStore$ProjectFolder;

    invoke-static {v2}, Lcom/brakefield/infinitestudio/ProjectStore$ProjectFolder;->access$100(Lcom/brakefield/infinitestudio/ProjectStore$ProjectFolder;)Ljava/util/List;

    move-result-object v2

    invoke-static {v1}, Lcom/brakefield/infinitestudio/ProjectStore$ProjectFolder;->access$100(Lcom/brakefield/infinitestudio/ProjectStore$ProjectFolder;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 264
    iget-object v2, p0, Lcom/brakefield/infinitestudio/ProjectStore;->mainFolder:Lcom/brakefield/infinitestudio/ProjectStore$ProjectFolder;

    invoke-static {v2}, Lcom/brakefield/infinitestudio/ProjectStore$ProjectFolder;->access$000(Lcom/brakefield/infinitestudio/ProjectStore$ProjectFolder;)Ljava/util/List;

    move-result-object v2

    invoke-static {v0}, Lcom/brakefield/infinitestudio/ProjectStore$ProjectFolder;->access$000(Lcom/brakefield/infinitestudio/ProjectStore$ProjectFolder;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 265
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ProjectStore;->mainFolder:Lcom/brakefield/infinitestudio/ProjectStore$ProjectFolder;

    invoke-static {v0}, Lcom/brakefield/infinitestudio/ProjectStore$ProjectFolder;->access$000(Lcom/brakefield/infinitestudio/ProjectStore$ProjectFolder;)Ljava/util/List;

    move-result-object v0

    invoke-static {v1}, Lcom/brakefield/infinitestudio/ProjectStore$ProjectFolder;->access$000(Lcom/brakefield/infinitestudio/ProjectStore$ProjectFolder;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public moveProjectToParentFolder(Lcom/brakefield/infinitestudio/ProjectStore$Project;)V
    .locals 2

    .line 86
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ProjectStore;->currentFolder:Lcom/brakefield/infinitestudio/ProjectStore$ProjectFolder;

    invoke-virtual {v0}, Lcom/brakefield/infinitestudio/ProjectStore$ProjectFolder;->getParent()Lcom/brakefield/infinitestudio/ProjectStore$ProjectFolder;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 88
    iget-object v1, p0, Lcom/brakefield/infinitestudio/ProjectStore;->currentFolder:Lcom/brakefield/infinitestudio/ProjectStore$ProjectFolder;

    invoke-virtual {v1, p1}, Lcom/brakefield/infinitestudio/ProjectStore$ProjectFolder;->removeProject(Lcom/brakefield/infinitestudio/ProjectStore$Project;)I

    const/4 v1, 0x0

    .line 89
    invoke-virtual {v0, p1, v1}, Lcom/brakefield/infinitestudio/ProjectStore$ProjectFolder;->insertProject(Lcom/brakefield/infinitestudio/ProjectStore$Project;I)V

    .line 90
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ProjectStore;->save()V

    :cond_0
    return-void
.end method

.method public navigateBack()V
    .locals 1

    .line 131
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ProjectStore;->currentFolder:Lcom/brakefield/infinitestudio/ProjectStore$ProjectFolder;

    invoke-virtual {v0}, Lcom/brakefield/infinitestudio/ProjectStore$ProjectFolder;->hasParent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ProjectStore;->currentFolder:Lcom/brakefield/infinitestudio/ProjectStore$ProjectFolder;

    invoke-virtual {v0}, Lcom/brakefield/infinitestudio/ProjectStore$ProjectFolder;->getParent()Lcom/brakefield/infinitestudio/ProjectStore$ProjectFolder;

    move-result-object v0

    iput-object v0, p0, Lcom/brakefield/infinitestudio/ProjectStore;->currentFolder:Lcom/brakefield/infinitestudio/ProjectStore$ProjectFolder;

    :cond_0
    return-void
.end method

.method public navigateTo(Lcom/brakefield/infinitestudio/ProjectStore$Project;)V
    .locals 0

    if-nez p1, :cond_0

    .line 145
    iget-object p1, p0, Lcom/brakefield/infinitestudio/ProjectStore;->mainFolder:Lcom/brakefield/infinitestudio/ProjectStore$ProjectFolder;

    iput-object p1, p0, Lcom/brakefield/infinitestudio/ProjectStore;->currentFolder:Lcom/brakefield/infinitestudio/ProjectStore$ProjectFolder;

    goto :goto_0

    .line 147
    :cond_0
    invoke-virtual {p0, p1}, Lcom/brakefield/infinitestudio/ProjectStore;->findParentFolder(Lcom/brakefield/infinitestudio/ProjectStore$Project;)Lcom/brakefield/infinitestudio/ProjectStore$ProjectFolder;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 149
    iput-object p1, p0, Lcom/brakefield/infinitestudio/ProjectStore;->currentFolder:Lcom/brakefield/infinitestudio/ProjectStore$ProjectFolder;

    :cond_1
    :goto_0
    return-void
.end method

.method public openFolder(Lcom/brakefield/infinitestudio/ProjectStore$ProjectFolder;)V
    .locals 0

    .line 128
    iput-object p1, p0, Lcom/brakefield/infinitestudio/ProjectStore;->currentFolder:Lcom/brakefield/infinitestudio/ProjectStore$ProjectFolder;

    return-void
.end method

.method public projectAt(I)Ljava/lang/Object;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ProjectStore;->currentFolder:Lcom/brakefield/infinitestudio/ProjectStore$ProjectFolder;

    invoke-static {v0}, Lcom/brakefield/infinitestudio/ProjectStore$ProjectFolder;->access$000(Lcom/brakefield/infinitestudio/ProjectStore$ProjectFolder;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public projectCount()I
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ProjectStore;->currentFolder:Lcom/brakefield/infinitestudio/ProjectStore$ProjectFolder;

    invoke-static {v0}, Lcom/brakefield/infinitestudio/ProjectStore$ProjectFolder;->access$000(Lcom/brakefield/infinitestudio/ProjectStore$ProjectFolder;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public refreshMainFolder()V
    .locals 5

    .line 320
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ProjectStore;->getProjectFiles()Lcom/brakefield/infinitestudio/ProjectStore$ProjectFolder;

    move-result-object v0

    .line 322
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 323
    invoke-static {v0}, Lcom/brakefield/infinitestudio/ProjectStore$ProjectFolder;->access$000(Lcom/brakefield/infinitestudio/ProjectStore$ProjectFolder;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 324
    check-cast v3, Lcom/brakefield/infinitestudio/ProjectStore$Project;

    .line 325
    iget-object v4, p0, Lcom/brakefield/infinitestudio/ProjectStore;->mainFolder:Lcom/brakefield/infinitestudio/ProjectStore$ProjectFolder;

    invoke-virtual {v4, v3}, Lcom/brakefield/infinitestudio/ProjectStore$ProjectFolder;->hasProject(Lcom/brakefield/infinitestudio/ProjectStore$Project;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 326
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 329
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/brakefield/infinitestudio/ProjectStore$Project;

    .line 330
    invoke-virtual {v0, v2}, Lcom/brakefield/infinitestudio/ProjectStore$ProjectFolder;->removeProject(Lcom/brakefield/infinitestudio/ProjectStore$Project;)I

    goto :goto_1

    .line 332
    :cond_2
    invoke-static {v0}, Lcom/brakefield/infinitestudio/ProjectStore$ProjectFolder;->access$000(Lcom/brakefield/infinitestudio/ProjectStore$ProjectFolder;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 333
    iget-object v2, p0, Lcom/brakefield/infinitestudio/ProjectStore;->mainFolder:Lcom/brakefield/infinitestudio/ProjectStore$ProjectFolder;

    check-cast v1, Lcom/brakefield/infinitestudio/ProjectStore$Project;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Lcom/brakefield/infinitestudio/ProjectStore$ProjectFolder;->insertProject(Lcom/brakefield/infinitestudio/ProjectStore$Project;I)V

    goto :goto_2

    :cond_3
    return-void
.end method

.method public removeFolder(Lcom/brakefield/infinitestudio/ProjectStore$ProjectFolder;)I
    .locals 1

    .line 121
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ProjectStore;->currentFolder:Lcom/brakefield/infinitestudio/ProjectStore$ProjectFolder;

    invoke-virtual {v0, p1}, Lcom/brakefield/infinitestudio/ProjectStore$ProjectFolder;->removeFolder(Lcom/brakefield/infinitestudio/ProjectStore$ProjectFolder;)I

    move-result p1

    return p1
.end method

.method public removeProject(Lcom/brakefield/infinitestudio/ProjectStore$Project;)I
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ProjectStore;->currentFolder:Lcom/brakefield/infinitestudio/ProjectStore$ProjectFolder;

    invoke-virtual {v0, p1}, Lcom/brakefield/infinitestudio/ProjectStore$ProjectFolder;->removeProject(Lcom/brakefield/infinitestudio/ProjectStore$Project;)I

    move-result p1

    return p1
.end method

.method public reorder(Lcom/brakefield/infinitestudio/ProjectStore$Project;II)V
    .locals 0

    .line 113
    instance-of p1, p1, Lcom/brakefield/infinitestudio/ProjectStore$ProjectFolder;

    if-eqz p1, :cond_0

    .line 114
    iget-object p1, p0, Lcom/brakefield/infinitestudio/ProjectStore;->currentFolder:Lcom/brakefield/infinitestudio/ProjectStore$ProjectFolder;

    invoke-static {p1}, Lcom/brakefield/infinitestudio/ProjectStore$ProjectFolder;->access$100(Lcom/brakefield/infinitestudio/ProjectStore$ProjectFolder;)Ljava/util/List;

    move-result-object p1

    invoke-static {p1, p2, p3}, Ljava/util/Collections;->swap(Ljava/util/List;II)V

    goto :goto_0

    .line 116
    :cond_0
    iget-object p1, p0, Lcom/brakefield/infinitestudio/ProjectStore;->currentFolder:Lcom/brakefield/infinitestudio/ProjectStore$ProjectFolder;

    invoke-static {p1}, Lcom/brakefield/infinitestudio/ProjectStore$ProjectFolder;->access$000(Lcom/brakefield/infinitestudio/ProjectStore$ProjectFolder;)Ljava/util/List;

    move-result-object p1

    invoke-static {p1, p2, p3}, Ljava/util/Collections;->swap(Ljava/util/List;II)V

    :goto_0
    return-void
.end method

.method public save()V
    .locals 3

    .line 195
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ProjectStore;->mainFolder:Lcom/brakefield/infinitestudio/ProjectStore$ProjectFolder;

    invoke-virtual {v0}, Lcom/brakefield/infinitestudio/ProjectStore$ProjectFolder;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 197
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ProjectStore;->mainFolder:Lcom/brakefield/infinitestudio/ProjectStore$ProjectFolder;

    invoke-virtual {v0}, Lcom/brakefield/infinitestudio/ProjectStore$ProjectFolder;->toJSON()Lorg/json/JSONObject;

    move-result-object v0

    .line 198
    invoke-static {}, Lcom/brakefield/infinitestudio/FileManager;->getProjectsPath()Ljava/lang/String;

    move-result-object v1

    const-string v2, "projects.json"

    invoke-static {v1, v2}, Lcom/brakefield/infinitestudio/FileManager;->getFileOutputStream(Ljava/lang/String;Ljava/lang/String;)Ljava/io/FileOutputStream;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 199
    :try_start_1
    new-instance v2, Ljava/io/OutputStreamWriter;

    invoke-direct {v2, v1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 200
    :try_start_2
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 201
    :try_start_3
    invoke-virtual {v2}, Ljava/io/Writer;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-eqz v1, :cond_2

    :try_start_4
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_2

    :catchall_0
    move-exception v0

    .line 198
    :try_start_5
    invoke-virtual {v2}, Ljava/io/Writer;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v2

    :try_start_6
    invoke-virtual {v0, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catchall_2
    move-exception v0

    if-eqz v1, :cond_1

    :try_start_7
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_1

    :catchall_3
    move-exception v1

    :try_start_8
    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_1
    throw v0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    :catch_0
    move-exception v0

    .line 203
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_2
    return-void
.end method
