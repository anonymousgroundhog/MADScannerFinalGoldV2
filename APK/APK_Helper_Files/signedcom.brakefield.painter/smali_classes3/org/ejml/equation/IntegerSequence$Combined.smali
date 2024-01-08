.class public Lorg/ejml/equation/IntegerSequence$Combined;
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
    name = "Combined"
.end annotation


# instance fields
.field sequences:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/ejml/equation/IntegerSequence;",
            ">;"
        }
    .end annotation
.end field

.field which:I


# direct methods
.method public constructor <init>(Lorg/ejml/equation/TokenList$Token;Lorg/ejml/equation/TokenList$Token;)V
    .locals 2

    .line 210
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 206
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/ejml/equation/IntegerSequence$Combined;->sequences:Ljava/util/List;

    .line 214
    :cond_0
    invoke-virtual {p1}, Lorg/ejml/equation/TokenList$Token;->getVariable()Lorg/ejml/equation/Variable;

    move-result-object v0

    invoke-virtual {v0}, Lorg/ejml/equation/Variable;->getType()Lorg/ejml/equation/VariableType;

    move-result-object v0

    sget-object v1, Lorg/ejml/equation/VariableType;->SCALAR:Lorg/ejml/equation/VariableType;

    if-ne v0, v1, :cond_1

    .line 215
    iget-object v0, p0, Lorg/ejml/equation/IntegerSequence$Combined;->sequences:Ljava/util/List;

    new-instance v1, Lorg/ejml/equation/IntegerSequence$Explicit;

    invoke-direct {v1, p1}, Lorg/ejml/equation/IntegerSequence$Explicit;-><init>(Lorg/ejml/equation/TokenList$Token;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 216
    :cond_1
    invoke-virtual {p1}, Lorg/ejml/equation/TokenList$Token;->getVariable()Lorg/ejml/equation/Variable;

    move-result-object v0

    invoke-virtual {v0}, Lorg/ejml/equation/Variable;->getType()Lorg/ejml/equation/VariableType;

    move-result-object v0

    sget-object v1, Lorg/ejml/equation/VariableType;->INTEGER_SEQUENCE:Lorg/ejml/equation/VariableType;

    if-ne v0, v1, :cond_3

    .line 217
    iget-object v0, p0, Lorg/ejml/equation/IntegerSequence$Combined;->sequences:Ljava/util/List;

    invoke-virtual {p1}, Lorg/ejml/equation/TokenList$Token;->getVariable()Lorg/ejml/equation/Variable;

    move-result-object v1

    check-cast v1, Lorg/ejml/equation/VariableIntegerSequence;

    iget-object v1, v1, Lorg/ejml/equation/VariableIntegerSequence;->sequence:Lorg/ejml/equation/IntegerSequence;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 221
    :goto_0
    iget-object p1, p1, Lorg/ejml/equation/TokenList$Token;->next:Lorg/ejml/equation/TokenList$Token;

    if-eqz p1, :cond_2

    .line 222
    iget-object v0, p1, Lorg/ejml/equation/TokenList$Token;->previous:Lorg/ejml/equation/TokenList$Token;

    if-ne v0, p2, :cond_0

    :cond_2
    return-void

    .line 219
    :cond_3
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Unexpected token type"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public getType()Lorg/ejml/equation/IntegerSequence$Type;
    .locals 1

    .line 260
    sget-object v0, Lorg/ejml/equation/IntegerSequence$Type;->COMBINED:Lorg/ejml/equation/IntegerSequence$Type;

    return-object v0
.end method

.method public hasNext()Z
    .locals 2

    .line 255
    iget v0, p0, Lorg/ejml/equation/IntegerSequence$Combined;->which:I

    iget-object v1, p0, Lorg/ejml/equation/IntegerSequence$Combined;->sequences:Ljava/util/List;

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
    .locals 2

    const/4 v0, 0x0

    .line 236
    iput v0, p0, Lorg/ejml/equation/IntegerSequence$Combined;->which:I

    .line 237
    :goto_0
    iget-object v1, p0, Lorg/ejml/equation/IntegerSequence$Combined;->sequences:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 238
    iget-object v1, p0, Lorg/ejml/equation/IntegerSequence$Combined;->sequences:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/ejml/equation/IntegerSequence;

    invoke-interface {v1, p1}, Lorg/ejml/equation/IntegerSequence;->initialize(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public length()I
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    .line 228
    :goto_0
    iget-object v2, p0, Lorg/ejml/equation/IntegerSequence$Combined;->sequences:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 229
    iget-object v2, p0, Lorg/ejml/equation/IntegerSequence$Combined;->sequences:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/ejml/equation/IntegerSequence;

    invoke-interface {v2}, Lorg/ejml/equation/IntegerSequence;->length()I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method

.method public next()I
    .locals 3

    .line 244
    iget-object v0, p0, Lorg/ejml/equation/IntegerSequence$Combined;->sequences:Ljava/util/List;

    iget v1, p0, Lorg/ejml/equation/IntegerSequence$Combined;->which:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/ejml/equation/IntegerSequence;

    invoke-interface {v0}, Lorg/ejml/equation/IntegerSequence;->next()I

    move-result v0

    .line 246
    iget-object v1, p0, Lorg/ejml/equation/IntegerSequence$Combined;->sequences:Ljava/util/List;

    iget v2, p0, Lorg/ejml/equation/IntegerSequence$Combined;->which:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/ejml/equation/IntegerSequence;

    invoke-interface {v1}, Lorg/ejml/equation/IntegerSequence;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 247
    iget v1, p0, Lorg/ejml/equation/IntegerSequence$Combined;->which:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/ejml/equation/IntegerSequence$Combined;->which:I

    :cond_0
    return v0
.end method

.method public requiresMaxIndex()Z
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    .line 265
    :goto_0
    iget-object v2, p0, Lorg/ejml/equation/IntegerSequence$Combined;->sequences:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 266
    iget-object v2, p0, Lorg/ejml/equation/IntegerSequence$Combined;->sequences:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/ejml/equation/IntegerSequence;

    invoke-interface {v2}, Lorg/ejml/equation/IntegerSequence;->requiresMaxIndex()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method
