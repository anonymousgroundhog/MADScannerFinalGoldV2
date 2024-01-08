.class public Lorg/ejml/equation/Macro;
.super Ljava/lang/Object;
.source "Macro.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/ejml/equation/Macro$Assign;
    }
.end annotation


# instance fields
.field inputs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field name:Ljava/lang/String;

.field tokens:Lorg/ejml/equation/TokenList;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/ejml/equation/Macro;->inputs:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public createOperation(Ljava/util/HashMap;)Lorg/ejml/equation/Operation;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lorg/ejml/equation/Macro;",
            ">;)",
            "Lorg/ejml/equation/Operation;"
        }
    .end annotation

    .line 77
    new-instance v0, Lorg/ejml/equation/Macro$Assign;

    invoke-direct {v0, p0, p1}, Lorg/ejml/equation/Macro$Assign;-><init>(Lorg/ejml/equation/Macro;Ljava/util/HashMap;)V

    return-object v0
.end method

.method public execute(Ljava/util/List;)Lorg/ejml/equation/TokenList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/ejml/equation/TokenList$Token;",
            ">;)",
            "Lorg/ejml/equation/TokenList;"
        }
    .end annotation

    .line 37
    new-instance v0, Lorg/ejml/equation/TokenList;

    invoke-direct {v0}, Lorg/ejml/equation/TokenList;-><init>()V

    .line 39
    iget-object v1, p0, Lorg/ejml/equation/Macro;->tokens:Lorg/ejml/equation/TokenList;

    invoke-virtual {v1}, Lorg/ejml/equation/TokenList;->getFirst()Lorg/ejml/equation/TokenList$Token;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_4

    .line 41
    iget-object v2, v1, Lorg/ejml/equation/TokenList$Token;->word:Ljava/lang/String;

    if-eqz v2, :cond_2

    const/4 v2, 0x0

    move v3, v2

    .line 43
    :goto_1
    iget-object v4, p0, Lorg/ejml/equation/Macro;->inputs:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 44
    iget-object v4, p0, Lorg/ejml/equation/Macro;->inputs:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iget-object v5, v1, Lorg/ejml/equation/TokenList$Token;->word:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 45
    iget-object v2, v0, Lorg/ejml/equation/TokenList;->last:Lorg/ejml/equation/TokenList$Token;

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/ejml/equation/TokenList$Token;

    invoke-virtual {v3}, Lorg/ejml/equation/TokenList$Token;->copy()Lorg/ejml/equation/TokenList$Token;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/ejml/equation/TokenList;->insert(Lorg/ejml/equation/TokenList$Token;Lorg/ejml/equation/TokenList$Token;)V

    const/4 v2, 0x1

    goto :goto_2

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    if-nez v2, :cond_3

    .line 51
    iget-object v2, v0, Lorg/ejml/equation/TokenList;->last:Lorg/ejml/equation/TokenList$Token;

    invoke-virtual {v1}, Lorg/ejml/equation/TokenList$Token;->copy()Lorg/ejml/equation/TokenList$Token;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/ejml/equation/TokenList;->insert(Lorg/ejml/equation/TokenList$Token;Lorg/ejml/equation/TokenList$Token;)V

    goto :goto_3

    .line 54
    :cond_2
    iget-object v2, v0, Lorg/ejml/equation/TokenList;->last:Lorg/ejml/equation/TokenList$Token;

    invoke-virtual {v1}, Lorg/ejml/equation/TokenList$Token;->copy()Lorg/ejml/equation/TokenList$Token;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/ejml/equation/TokenList;->insert(Lorg/ejml/equation/TokenList$Token;Lorg/ejml/equation/TokenList$Token;)V

    .line 56
    :cond_3
    :goto_3
    iget-object v1, v1, Lorg/ejml/equation/TokenList$Token;->next:Lorg/ejml/equation/TokenList$Token;

    goto :goto_0

    :cond_4
    return-object v0
.end method
