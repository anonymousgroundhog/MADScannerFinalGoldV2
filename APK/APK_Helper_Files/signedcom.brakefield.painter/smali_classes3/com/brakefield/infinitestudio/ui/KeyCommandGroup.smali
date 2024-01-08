.class public Lcom/brakefield/infinitestudio/ui/KeyCommandGroup;
.super Ljava/lang/Object;
.source "KeyCommandGroup.java"


# instance fields
.field public description:Ljava/lang/String;

.field public keyCommandList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/brakefield/infinitestudio/ui/KeyCommand;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/brakefield/infinitestudio/ui/KeyCommandGroup;->keyCommandList:Ljava/util/List;

    .line 16
    iput-object p1, p0, Lcom/brakefield/infinitestudio/ui/KeyCommandGroup;->description:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public add(Lcom/brakefield/infinitestudio/ui/KeyCommand;)V
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/KeyCommandGroup;->keyCommandList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public handled(IZZZ)Z
    .locals 2

    .line 25
    iget-object v0, p0, Lcom/brakefield/infinitestudio/ui/KeyCommandGroup;->keyCommandList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/brakefield/infinitestudio/ui/KeyCommand;

    .line 26
    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/brakefield/infinitestudio/ui/KeyCommand;->handled(IZZZ)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method
