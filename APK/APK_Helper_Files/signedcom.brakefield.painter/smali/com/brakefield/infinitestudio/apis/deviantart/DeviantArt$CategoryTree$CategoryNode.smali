.class public Lcom/brakefield/infinitestudio/apis/deviantart/DeviantArt$CategoryTree$CategoryNode;
.super Ljava/lang/Object;
.source "DeviantArt.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/brakefield/infinitestudio/apis/deviantart/DeviantArt$CategoryTree;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CategoryNode"
.end annotation


# instance fields
.field public children:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/brakefield/infinitestudio/apis/deviantart/DeviantArt$CategoryTree$CategoryNode;",
            ">;"
        }
    .end annotation
.end field

.field public description:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public parent:Lcom/brakefield/infinitestudio/apis/deviantart/DeviantArt$CategoryTree$CategoryNode;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 179
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 174
    iput-object v0, p0, Lcom/brakefield/infinitestudio/apis/deviantart/DeviantArt$CategoryTree$CategoryNode;->name:Ljava/lang/String;

    .line 175
    iput-object v0, p0, Lcom/brakefield/infinitestudio/apis/deviantart/DeviantArt$CategoryTree$CategoryNode;->description:Ljava/lang/String;

    .line 176
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/brakefield/infinitestudio/apis/deviantart/DeviantArt$CategoryTree$CategoryNode;->children:Ljava/util/List;

    const/4 v0, 0x0

    .line 177
    iput-object v0, p0, Lcom/brakefield/infinitestudio/apis/deviantart/DeviantArt$CategoryTree$CategoryNode;->parent:Lcom/brakefield/infinitestudio/apis/deviantart/DeviantArt$CategoryTree$CategoryNode;

    return-void
.end method

.method public constructor <init>(Lcom/brakefield/infinitestudio/apis/deviantart/DeviantArt$CategoryTree$CategoryNode;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 183
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 174
    iput-object v0, p0, Lcom/brakefield/infinitestudio/apis/deviantart/DeviantArt$CategoryTree$CategoryNode;->name:Ljava/lang/String;

    .line 175
    iput-object v0, p0, Lcom/brakefield/infinitestudio/apis/deviantart/DeviantArt$CategoryTree$CategoryNode;->description:Ljava/lang/String;

    .line 176
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/brakefield/infinitestudio/apis/deviantart/DeviantArt$CategoryTree$CategoryNode;->children:Ljava/util/List;

    .line 184
    iput-object p1, p0, Lcom/brakefield/infinitestudio/apis/deviantart/DeviantArt$CategoryTree$CategoryNode;->parent:Lcom/brakefield/infinitestudio/apis/deviantart/DeviantArt$CategoryTree$CategoryNode;

    .line 185
    iput-object p2, p0, Lcom/brakefield/infinitestudio/apis/deviantart/DeviantArt$CategoryTree$CategoryNode;->name:Ljava/lang/String;

    .line 186
    iput-object p3, p0, Lcom/brakefield/infinitestudio/apis/deviantart/DeviantArt$CategoryTree$CategoryNode;->description:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public add(Lcom/brakefield/infinitestudio/apis/deviantart/DeviantArt$CategoryTree$CategoryNode;)V
    .locals 1

    .line 190
    iput-object p0, p1, Lcom/brakefield/infinitestudio/apis/deviantart/DeviantArt$CategoryTree$CategoryNode;->parent:Lcom/brakefield/infinitestudio/apis/deviantart/DeviantArt$CategoryTree$CategoryNode;

    .line 191
    iget-object v0, p0, Lcom/brakefield/infinitestudio/apis/deviantart/DeviantArt$CategoryTree$CategoryNode;->children:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getChildren()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/brakefield/infinitestudio/apis/deviantart/DeviantArt$CategoryTree$CategoryNode;",
            ">;"
        }
    .end annotation

    .line 204
    iget-object v0, p0, Lcom/brakefield/infinitestudio/apis/deviantart/DeviantArt$CategoryTree$CategoryNode;->children:Ljava/util/List;

    return-object v0
.end method

.method public hasChildren()Z
    .locals 1

    .line 200
    iget-object v0, p0, Lcom/brakefield/infinitestudio/apis/deviantart/DeviantArt$CategoryTree$CategoryNode;->children:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public hasParent()Z
    .locals 1

    .line 208
    iget-object v0, p0, Lcom/brakefield/infinitestudio/apis/deviantart/DeviantArt$CategoryTree$CategoryNode;->parent:Lcom/brakefield/infinitestudio/apis/deviantart/DeviantArt$CategoryTree$CategoryNode;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 195
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "name = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/brakefield/infinitestudio/apis/deviantart/DeviantArt$CategoryTree$CategoryNode;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " | description = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/brakefield/infinitestudio/apis/deviantart/DeviantArt$CategoryTree$CategoryNode;->description:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
