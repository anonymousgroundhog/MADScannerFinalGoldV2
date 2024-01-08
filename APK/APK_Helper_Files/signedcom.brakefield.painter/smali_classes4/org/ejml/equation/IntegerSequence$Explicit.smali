.class public Lorg/ejml/equation/IntegerSequence$Explicit;
.super Ljava/lang/Object;
.source "IntegerSequence.java"

# interfaces
.implements Lorg/ejml/equation/IntegerSequence;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/ejml/equation/IntegerSequence;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Explicit"
.end annotation


# instance fields
.field sequence:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/ejml/equation/VariableInteger;",
            ">;"
        }
    .end annotation
.end field

.field where:I


# direct methods
.method public constructor <init>(Lorg/ejml/equation/TokenList$Token;)V
    .locals 1

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/ejml/equation/IntegerSequence$Explicit;->sequence:Ljava/util/List;

    .line 81
    invoke-virtual {p1}, Lorg/ejml/equation/TokenList$Token;->getVariable()Lorg/ejml/equation/Variable;

    move-result-object p1

    check-cast p1, Lorg/ejml/equation/VariableInteger;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>(Lorg/ejml/equation/TokenList$Token;Lorg/ejml/equation/TokenList$Token;)V
    .locals 2

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/ejml/equation/IntegerSequence$Explicit;->sequence:Ljava/util/List;

    .line 71
    :goto_0
    iget-object v0, p0, Lorg/ejml/equation/IntegerSequence$Explicit;->sequence:Ljava/util/List;

    invoke-virtual {p1}, Lorg/ejml/equation/TokenList$Token;->getVariable()Lorg/ejml/equation/Variable;

    move-result-object v1

    check-cast v1, Lorg/ejml/equation/VariableInteger;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-ne p1, p2, :cond_0

    return-void

    .line 75
    :cond_0
    iget-object p1, p1, Lorg/ejml/equation/TokenList$Token;->next:Lorg/ejml/equation/TokenList$Token;

    goto :goto_0
.end method


# virtual methods
.method public getSequence()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/ejml/equation/VariableInteger;",
            ">;"
        }
    .end annotation

    .line 115
    iget-object v0, p0, Lorg/ejml/equation/IntegerSequence$Explicit;->sequence:Ljava/util/List;

    return-object v0
.end method

.method public getType()Lorg/ejml/equation/IntegerSequence$Type;
    .locals 1

    .line 106
    sget-object v0, Lorg/ejml/equation/IntegerSequence$Type;->EXPLICIT:Lorg/ejml/equation/IntegerSequence$Type;

    return-object v0
.end method

.method public hasNext()Z
    .locals 2

    .line 101
    iget v0, p0, Lorg/ejml/equation/IntegerSequence$Explicit;->where:I

    iget-object v1, p0, Lorg/ejml/equation/IntegerSequence$Explicit;->sequence:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public initialize(I)V
    .locals 0

    const/4 p1, 0x0

    .line 91
    iput p1, p0, Lorg/ejml/equation/IntegerSequence$Explicit;->where:I

    return-void
.end method

.method public length()I
    .locals 1

    .line 86
    iget-object v0, p0, Lorg/ejml/equation/IntegerSequence$Explicit;->sequence:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public next()I
    .locals 3

    .line 96
    iget-object v0, p0, Lorg/ejml/equation/IntegerSequence$Explicit;->sequence:Ljava/util/List;

    iget v1, p0, Lorg/ejml/equation/IntegerSequence$Explicit;->where:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/ejml/equation/IntegerSequence$Explicit;->where:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/ejml/equation/VariableInteger;

    iget v0, v0, Lorg/ejml/equation/VariableInteger;->value:I

    return v0
.end method

.method public requiresMaxIndex()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
