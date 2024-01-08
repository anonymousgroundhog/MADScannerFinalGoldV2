.class public Lcom/brakefield/painter/PainterProjectStore$Project;
.super Lcom/brakefield/infinitestudio/ProjectStore$Project;
.source "PainterProjectStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/brakefield/painter/PainterProjectStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Project"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/brakefield/painter/PainterProjectStore$Project$Info;
    }
.end annotation


# static fields
.field private static final EXTENSTION:Ljava/lang/String; = ".pntr"


# instance fields
.field info:Lcom/brakefield/painter/PainterProjectStore$Project$Info;

.field final synthetic this$0:Lcom/brakefield/painter/PainterProjectStore;


# direct methods
.method public constructor <init>(Lcom/brakefield/painter/PainterProjectStore;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/brakefield/painter/PainterProjectStore$Project;->this$0:Lcom/brakefield/painter/PainterProjectStore;

    .line 53
    invoke-direct {p0, p1, p2, p3}, Lcom/brakefield/infinitestudio/ProjectStore$Project;-><init>(Lcom/brakefield/infinitestudio/ProjectStore;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 50
    iput-object p1, p0, Lcom/brakefield/painter/PainterProjectStore$Project;->info:Lcom/brakefield/painter/PainterProjectStore$Project$Info;

    const-string p1, ".pntr"

    .line 54
    invoke-virtual {p2, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/brakefield/painter/PainterProjectStore$Project;->isZipFile:Z

    return-void
.end method


# virtual methods
.method public getDisplayName()Ljava/lang/String;
    .locals 1

    .line 86
    invoke-virtual {p0}, Lcom/brakefield/painter/PainterProjectStore$Project;->getInfo()Lcom/brakefield/painter/PainterProjectStore$Project$Info;

    move-result-object v0

    iget-object v0, v0, Lcom/brakefield/painter/PainterProjectStore$Project$Info;->displayName:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public getInfo()Lcom/brakefield/painter/PainterProjectStore$Project$Info;
    .locals 4

    .line 62
    iget-object v0, p0, Lcom/brakefield/painter/PainterProjectStore$Project;->info:Lcom/brakefield/painter/PainterProjectStore$Project$Info;

    if-nez v0, :cond_2

    .line 63
    new-instance v0, Lcom/brakefield/painter/PainterProjectStore$Project$Info;

    invoke-direct {v0, p0}, Lcom/brakefield/painter/PainterProjectStore$Project$Info;-><init>(Lcom/brakefield/painter/PainterProjectStore$Project;)V

    iput-object v0, p0, Lcom/brakefield/painter/PainterProjectStore$Project;->info:Lcom/brakefield/painter/PainterProjectStore$Project$Info;

    .line 64
    iget-object v1, p0, Lcom/brakefield/painter/PainterProjectStore$Project;->directory:Ljava/lang/String;

    iget-object v2, p0, Lcom/brakefield/painter/PainterProjectStore$Project;->name:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/brakefield/painter/PainterLib;->loadProjectDisplayName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/brakefield/painter/PainterProjectStore$Project$Info;->displayName:Ljava/lang/String;

    .line 65
    iget-object v0, p0, Lcom/brakefield/painter/PainterProjectStore$Project;->info:Lcom/brakefield/painter/PainterProjectStore$Project$Info;

    iget-object v0, v0, Lcom/brakefield/painter/PainterProjectStore$Project$Info;->displayName:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/brakefield/painter/PainterProjectStore$Project;->info:Lcom/brakefield/painter/PainterProjectStore$Project$Info;

    iget-object v0, v0, Lcom/brakefield/painter/PainterProjectStore$Project$Info;->displayName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 66
    :cond_0
    iget-object v0, p0, Lcom/brakefield/painter/PainterProjectStore$Project;->info:Lcom/brakefield/painter/PainterProjectStore$Project$Info;

    iget-object v1, p0, Lcom/brakefield/painter/PainterProjectStore$Project;->name:Ljava/lang/String;

    const-string v2, ".pntr"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/brakefield/painter/PainterProjectStore$Project$Info;->displayName:Ljava/lang/String;

    .line 68
    :cond_1
    iget-object v0, p0, Lcom/brakefield/painter/PainterProjectStore$Project;->info:Lcom/brakefield/painter/PainterProjectStore$Project$Info;

    iget-object v1, p0, Lcom/brakefield/painter/PainterProjectStore$Project;->directory:Ljava/lang/String;

    iget-object v2, p0, Lcom/brakefield/painter/PainterProjectStore$Project;->name:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/brakefield/painter/PainterLib;->loadProjectIsPattern(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/brakefield/painter/PainterProjectStore$Project$Info;->isPattern:Z

    .line 69
    iget-object v0, p0, Lcom/brakefield/painter/PainterProjectStore$Project;->info:Lcom/brakefield/painter/PainterProjectStore$Project$Info;

    iget-object v1, p0, Lcom/brakefield/painter/PainterProjectStore$Project;->directory:Ljava/lang/String;

    iget-object v2, p0, Lcom/brakefield/painter/PainterProjectStore$Project;->name:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/brakefield/painter/PainterLib;->loadProjectIsTemplate(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/brakefield/painter/PainterProjectStore$Project$Info;->isTemplate:Z

    .line 71
    :cond_2
    iget-object v0, p0, Lcom/brakefield/painter/PainterProjectStore$Project;->info:Lcom/brakefield/painter/PainterProjectStore$Project$Info;

    return-object v0
.end method

.method public getModifiedDate()J
    .locals 2

    .line 58
    iget-object v0, p0, Lcom/brakefield/painter/PainterProjectStore$Project;->directory:Ljava/lang/String;

    iget-object v1, p0, Lcom/brakefield/painter/PainterProjectStore$Project;->name:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/brakefield/painter/PainterLib;->loadProjectLastModifiedDate(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public isPattern()Z
    .locals 1

    .line 108
    invoke-virtual {p0}, Lcom/brakefield/painter/PainterProjectStore$Project;->getInfo()Lcom/brakefield/painter/PainterProjectStore$Project$Info;

    move-result-object v0

    iget-boolean v0, v0, Lcom/brakefield/painter/PainterProjectStore$Project$Info;->isPattern:Z

    return v0
.end method

.method public isRenamable()Z
    .locals 2

    .line 112
    iget-object v0, p0, Lcom/brakefield/painter/PainterProjectStore$Project;->directory:Ljava/lang/String;

    iget-object v1, p0, Lcom/brakefield/painter/PainterProjectStore$Project;->name:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/brakefield/painter/PainterLib;->canRenameProject(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isTemplate()Z
    .locals 1

    .line 99
    invoke-virtual {p0}, Lcom/brakefield/painter/PainterProjectStore$Project;->getInfo()Lcom/brakefield/painter/PainterProjectStore$Project$Info;

    move-result-object v0

    iget-boolean v0, v0, Lcom/brakefield/painter/PainterProjectStore$Project$Info;->isTemplate:Z

    return v0
.end method

.method public open()V
    .locals 2

    .line 75
    invoke-static {}, Lcom/brakefield/painter/PainterProjectStore;->getInstance()Lcom/brakefield/painter/PainterProjectStore;

    move-result-object v0

    .line 76
    invoke-virtual {v0, p0}, Lcom/brakefield/infinitestudio/ProjectStore;->navigateTo(Lcom/brakefield/infinitestudio/ProjectStore$Project;)V

    .line 77
    iget-object v0, p0, Lcom/brakefield/painter/PainterProjectStore$Project;->directory:Ljava/lang/String;

    iget-object v1, p0, Lcom/brakefield/painter/PainterProjectStore$Project;->name:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/brakefield/painter/PainterLib;->openProject(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    iget-boolean v0, p0, Lcom/brakefield/painter/PainterProjectStore$Project;->isZipFile:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 79
    iput-boolean v0, p0, Lcom/brakefield/painter/PainterProjectStore$Project;->isZipFile:Z

    .line 80
    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getCurrentProjectName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/brakefield/painter/PainterProjectStore$Project;->name:Ljava/lang/String;

    .line 81
    iget-object v0, p0, Lcom/brakefield/painter/PainterProjectStore$Project;->this$0:Lcom/brakefield/painter/PainterProjectStore;

    invoke-virtual {v0}, Lcom/brakefield/painter/PainterProjectStore;->save()V

    :cond_0
    return-void
.end method

.method public rename(Ljava/lang/String;)V
    .locals 2

    .line 94
    invoke-virtual {p0}, Lcom/brakefield/painter/PainterProjectStore$Project;->getInfo()Lcom/brakefield/painter/PainterProjectStore$Project$Info;

    move-result-object v0

    iput-object p1, v0, Lcom/brakefield/painter/PainterProjectStore$Project$Info;->displayName:Ljava/lang/String;

    .line 95
    iget-object v0, p0, Lcom/brakefield/painter/PainterProjectStore$Project;->directory:Ljava/lang/String;

    iget-object v1, p0, Lcom/brakefield/painter/PainterProjectStore$Project;->name:Ljava/lang/String;

    invoke-static {v0, v1, p1}, Lcom/brakefield/painter/PainterLib;->renameProject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setAsTemplate(Z)V
    .locals 2

    .line 103
    invoke-virtual {p0}, Lcom/brakefield/painter/PainterProjectStore$Project;->getInfo()Lcom/brakefield/painter/PainterProjectStore$Project$Info;

    move-result-object v0

    iput-boolean p1, v0, Lcom/brakefield/painter/PainterProjectStore$Project$Info;->isTemplate:Z

    .line 104
    iget-object v0, p0, Lcom/brakefield/painter/PainterProjectStore$Project;->directory:Ljava/lang/String;

    iget-object v1, p0, Lcom/brakefield/painter/PainterProjectStore$Project;->name:Ljava/lang/String;

    invoke-static {v0, v1, p1}, Lcom/brakefield/painter/PainterLib;->setProjectAsTemplate(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method
