.class public Lcom/brakefield/painter/PainterProjectStore;
.super Lcom/brakefield/infinitestudio/ProjectStore;
.source "PainterProjectStore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/brakefield/painter/PainterProjectStore$Project;,
        Lcom/brakefield/painter/PainterProjectStore$ProjectItemViewHolder;,
        Lcom/brakefield/painter/PainterProjectStore$OpenProjectTask;
    }
.end annotation


# static fields
.field private static instance:Lcom/brakefield/painter/PainterProjectStore;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 21
    new-instance v0, Lcom/brakefield/painter/PainterProjectStore;

    invoke-static {}, Lcom/brakefield/painter/PainterLib;->getUserProjectsDirectory()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/brakefield/painter/PainterProjectStore;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/brakefield/painter/PainterProjectStore;->instance:Lcom/brakefield/painter/PainterProjectStore;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1}, Lcom/brakefield/infinitestudio/ProjectStore;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static getInstance()Lcom/brakefield/painter/PainterProjectStore;
    .locals 1

    .line 28
    sget-object v0, Lcom/brakefield/painter/PainterProjectStore;->instance:Lcom/brakefield/painter/PainterProjectStore;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getProject(Ljava/lang/String;)Lcom/brakefield/infinitestudio/ProjectStore$Project;
    .locals 0

    .line 19
    invoke-virtual {p0, p1}, Lcom/brakefield/painter/PainterProjectStore;->getProject(Ljava/lang/String;)Lcom/brakefield/painter/PainterProjectStore$Project;

    move-result-object p1

    return-object p1
.end method

.method public getProject(Ljava/lang/String;)Lcom/brakefield/painter/PainterProjectStore$Project;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/brakefield/painter/PainterProjectStore;->directory:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/brakefield/painter/PainterProjectStore;->getProject(Ljava/lang/String;Ljava/lang/String;)Lcom/brakefield/painter/PainterProjectStore$Project;

    move-result-object p1

    return-object p1
.end method

.method public getProject(Ljava/lang/String;Ljava/lang/String;)Lcom/brakefield/painter/PainterProjectStore$Project;
    .locals 1

    .line 37
    new-instance v0, Lcom/brakefield/painter/PainterProjectStore$Project;

    invoke-direct {v0, p0, p1, p2}, Lcom/brakefield/painter/PainterProjectStore$Project;-><init>(Lcom/brakefield/painter/PainterProjectStore;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
