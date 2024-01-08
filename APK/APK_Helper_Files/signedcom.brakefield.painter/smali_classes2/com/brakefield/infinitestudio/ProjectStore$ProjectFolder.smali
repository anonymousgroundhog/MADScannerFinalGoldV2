.class public Lcom/brakefield/infinitestudio/ProjectStore$ProjectFolder;
.super Lcom/brakefield/infinitestudio/ProjectStore$Project;
.source "ProjectStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/brakefield/infinitestudio/ProjectStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ProjectFolder"
.end annotation


# instance fields
.field private final folders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final projects:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/brakefield/infinitestudio/ProjectStore;


# direct methods
.method constructor <init>(Lcom/brakefield/infinitestudio/ProjectStore;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 440
    iput-object p1, p0, Lcom/brakefield/infinitestudio/ProjectStore$ProjectFolder;->this$0:Lcom/brakefield/infinitestudio/ProjectStore;

    .line 441
    invoke-direct {p0, p1, p2, p3}, Lcom/brakefield/infinitestudio/ProjectStore$Project;-><init>(Lcom/brakefield/infinitestudio/ProjectStore;Ljava/lang/String;Ljava/lang/String;)V

    .line 437
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/brakefield/infinitestudio/ProjectStore$ProjectFolder;->folders:Ljava/util/List;

    .line 438
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/brakefield/infinitestudio/ProjectStore$ProjectFolder;->projects:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Lcom/brakefield/infinitestudio/ProjectStore$ProjectFolder;)Ljava/util/List;
    .locals 0

    .line 435
    iget-object p0, p0, Lcom/brakefield/infinitestudio/ProjectStore$ProjectFolder;->projects:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$100(Lcom/brakefield/infinitestudio/ProjectStore$ProjectFolder;)Ljava/util/List;
    .locals 0

    .line 435
    iget-object p0, p0, Lcom/brakefield/infinitestudio/ProjectStore$ProjectFolder;->folders:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$200(Lcom/brakefield/infinitestudio/ProjectStore$ProjectFolder;)V
    .locals 0

    .line 435
    invoke-direct {p0}, Lcom/brakefield/infinitestudio/ProjectStore$ProjectFolder;->clear()V

    return-void
.end method

.method private clear()V
    .locals 1

    .line 445
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ProjectStore$ProjectFolder;->folders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 446
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ProjectStore$ProjectFolder;->projects:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method


# virtual methods
.method public addFolder(Lcom/brakefield/infinitestudio/ProjectStore$ProjectFolder;)I
    .locals 1

    .line 485
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ProjectStore$ProjectFolder;->folders:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 486
    invoke-virtual {p1, p0}, Lcom/brakefield/infinitestudio/ProjectStore$ProjectFolder;->setParent(Lcom/brakefield/infinitestudio/ProjectStore$ProjectFolder;)V

    .line 487
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ProjectStore$ProjectFolder;->folders:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 488
    iget-object p1, p0, Lcom/brakefield/infinitestudio/ProjectStore$ProjectFolder;->folders:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method public addProject(Lcom/brakefield/infinitestudio/ProjectStore$Project;)I
    .locals 1

    .line 450
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ProjectStore$ProjectFolder;->projects:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 451
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ProjectStore$ProjectFolder;->projects:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 452
    iget-object p1, p0, Lcom/brakefield/infinitestudio/ProjectStore$ProjectFolder;->projects:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 591
    :cond_0
    instance-of v1, p1, Lcom/brakefield/infinitestudio/ProjectStore$ProjectFolder;

    if-eqz v1, :cond_5

    .line 592
    move-object v1, p1

    check-cast v1, Lcom/brakefield/infinitestudio/ProjectStore$ProjectFolder;

    .line 593
    iget-object v2, p0, Lcom/brakefield/infinitestudio/ProjectStore$ProjectFolder;->name:Ljava/lang/String;

    iget-object v3, v1, Lcom/brakefield/infinitestudio/ProjectStore$ProjectFolder;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 594
    iget-object v2, p0, Lcom/brakefield/infinitestudio/ProjectStore$ProjectFolder;->projects:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    iget-object v3, v1, Lcom/brakefield/infinitestudio/ProjectStore$ProjectFolder;->projects:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ne v2, v3, :cond_6

    .line 595
    iget-object p1, p0, Lcom/brakefield/infinitestudio/ProjectStore$ProjectFolder;->projects:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    const/4 v2, 0x0

    if-eqz p1, :cond_2

    .line 596
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    if-ne p1, v1, :cond_1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    return v0

    :cond_2
    move p1, v2

    .line 598
    :goto_1
    iget-object v3, p0, Lcom/brakefield/infinitestudio/ProjectStore$ProjectFolder;->projects:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge p1, v3, :cond_4

    .line 599
    iget-object v3, p0, Lcom/brakefield/infinitestudio/ProjectStore$ProjectFolder;->projects:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    iget-object v4, v1, Lcom/brakefield/infinitestudio/ProjectStore$ProjectFolder;->projects:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    return v2

    :cond_3
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_4
    return v0

    .line 607
    :cond_5
    instance-of v0, p1, Lcom/brakefield/infinitestudio/ProjectStore$Project;

    if-eqz v0, :cond_6

    .line 608
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ProjectStore$ProjectFolder;->name:Ljava/lang/String;

    check-cast p1, Lcom/brakefield/infinitestudio/ProjectStore$Project;

    iget-object p1, p1, Lcom/brakefield/infinitestudio/ProjectStore$Project;->name:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 610
    :cond_6
    invoke-super {p0, p1}, Lcom/brakefield/infinitestudio/ProjectStore$Project;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method findParentFolder(Lcom/brakefield/infinitestudio/ProjectStore$Project;)Lcom/brakefield/infinitestudio/ProjectStore$ProjectFolder;
    .locals 3

    .line 546
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ProjectStore$ProjectFolder;->projects:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 549
    :cond_0
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ProjectStore$ProjectFolder;->folders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 550
    invoke-virtual {p1, v1}, Lcom/brakefield/infinitestudio/ProjectStore$Project;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    return-object p0

    .line 553
    :cond_2
    check-cast v1, Lcom/brakefield/infinitestudio/ProjectStore$ProjectFolder;

    .line 554
    invoke-virtual {v1, p1}, Lcom/brakefield/infinitestudio/ProjectStore$ProjectFolder;->findParentFolder(Lcom/brakefield/infinitestudio/ProjectStore$Project;)Lcom/brakefield/infinitestudio/ProjectStore$ProjectFolder;

    move-result-object v1

    if-eqz v1, :cond_1

    return-object v1

    :cond_3
    const/4 p1, 0x0

    return-object p1
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

    .line 508
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ProjectStore$ProjectFolder;->folders:Ljava/util/List;

    return-object v0
.end method

.method public getProjectForFolderCover()Lcom/brakefield/infinitestudio/ProjectStore$Project;
    .locals 2

    .line 534
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ProjectStore$ProjectFolder;->projects:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 535
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ProjectStore$ProjectFolder;->projects:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/brakefield/infinitestudio/ProjectStore$Project;

    return-object v0

    .line 537
    :cond_0
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ProjectStore$ProjectFolder;->folders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 538
    check-cast v1, Lcom/brakefield/infinitestudio/ProjectStore$ProjectFolder;

    invoke-virtual {v1}, Lcom/brakefield/infinitestudio/ProjectStore$ProjectFolder;->getProjectForFolderCover()Lcom/brakefield/infinitestudio/ProjectStore$Project;

    move-result-object v1

    if-eqz v1, :cond_1

    return-object v1

    :cond_2
    const/4 v0, 0x0

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

    .line 481
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ProjectStore$ProjectFolder;->projects:Ljava/util/List;

    return-object v0
.end method

.method public hasProject(Lcom/brakefield/infinitestudio/ProjectStore$Project;)Z
    .locals 4

    .line 516
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ProjectStore$ProjectFolder;->projects:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 517
    invoke-virtual {p1, v1}, Lcom/brakefield/infinitestudio/ProjectStore$Project;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v2

    .line 521
    :cond_1
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ProjectStore$ProjectFolder;->folders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 522
    invoke-virtual {p1, v1}, Lcom/brakefield/infinitestudio/ProjectStore$Project;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    return v2

    .line 525
    :cond_3
    check-cast v1, Lcom/brakefield/infinitestudio/ProjectStore$ProjectFolder;

    .line 526
    invoke-virtual {v1, p1}, Lcom/brakefield/infinitestudio/ProjectStore$ProjectFolder;->hasProject(Lcom/brakefield/infinitestudio/ProjectStore$Project;)Z

    move-result v1

    if-eqz v1, :cond_2

    return v2

    :cond_4
    const/4 p1, 0x0

    return p1
.end method

.method public bridge synthetic id()Ljava/lang/Object;
    .locals 1

    .line 435
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ProjectStore$ProjectFolder;->id()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public id()Ljava/lang/String;
    .locals 1

    .line 615
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ProjectStore$ProjectFolder;->name:Ljava/lang/String;

    return-object v0
.end method

.method public indexOfFolder(Ljava/lang/Object;)I
    .locals 1

    .line 469
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ProjectStore$ProjectFolder;->folders:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public indexOfProject(Ljava/lang/Object;)I
    .locals 1

    .line 465
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ProjectStore$ProjectFolder;->projects:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public insertFolder(Lcom/brakefield/infinitestudio/ProjectStore$ProjectFolder;I)V
    .locals 1

    .line 502
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ProjectStore$ProjectFolder;->folders:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 503
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ProjectStore$ProjectFolder;->folders:Ljava/util/List;

    invoke-interface {v0, p2, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public insertProject(Lcom/brakefield/infinitestudio/ProjectStore$Project;I)V
    .locals 1

    .line 459
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ProjectStore$ProjectFolder;->projects:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 460
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ProjectStore$ProjectFolder;->projects:Ljava/util/List;

    invoke-interface {v0, p2, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public isEmpty()Z
    .locals 1

    .line 512
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ProjectStore$ProjectFolder;->folders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/brakefield/infinitestudio/ProjectStore$ProjectFolder;->projects:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public removeFolder(Lcom/brakefield/infinitestudio/ProjectStore$ProjectFolder;)I
    .locals 2

    .line 493
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ProjectStore$ProjectFolder;->folders:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 494
    invoke-virtual {p1, v0}, Lcom/brakefield/infinitestudio/ProjectStore$ProjectFolder;->setParent(Lcom/brakefield/infinitestudio/ProjectStore$ProjectFolder;)V

    .line 495
    invoke-virtual {p0, p1}, Lcom/brakefield/infinitestudio/ProjectStore$ProjectFolder;->indexOfProject(Ljava/lang/Object;)I

    move-result v0

    .line 496
    iget-object v1, p0, Lcom/brakefield/infinitestudio/ProjectStore$ProjectFolder;->folders:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return v0

    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method public removeProject(Lcom/brakefield/infinitestudio/ProjectStore$Project;)I
    .locals 2

    .line 473
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ProjectStore$ProjectFolder;->projects:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 474
    invoke-virtual {p0, p1}, Lcom/brakefield/infinitestudio/ProjectStore$ProjectFolder;->indexOfProject(Ljava/lang/Object;)I

    move-result v0

    .line 475
    iget-object v1, p0, Lcom/brakefield/infinitestudio/ProjectStore$ProjectFolder;->projects:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return v0

    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method public toJSON()Lorg/json/JSONObject;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 565
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 567
    iget-object v1, p0, Lcom/brakefield/infinitestudio/ProjectStore$ProjectFolder;->projects:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 568
    check-cast v2, Lcom/brakefield/infinitestudio/ProjectStore$Project;

    invoke-virtual {v2}, Lcom/brakefield/infinitestudio/ProjectStore$Project;->toJSON()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    .line 570
    :cond_0
    iget-object v1, p0, Lcom/brakefield/infinitestudio/ProjectStore$ProjectFolder;->folders:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 571
    check-cast v2, Lcom/brakefield/infinitestudio/ProjectStore$ProjectFolder;

    invoke-virtual {v2}, Lcom/brakefield/infinitestudio/ProjectStore$ProjectFolder;->toJSON()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_1

    .line 574
    :cond_1
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/ProjectStore$ProjectFolder;->hasParent()Z

    move-result v1

    if-nez v1, :cond_2

    .line 575
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string/jumbo v2, "projects"

    .line 576
    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object v1

    .line 579
    :cond_2
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "name"

    .line 580
    iget-object v3, p0, Lcom/brakefield/infinitestudio/ProjectStore$ProjectFolder;->name:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v2, "project-folder"

    .line 581
    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object v1
.end method
