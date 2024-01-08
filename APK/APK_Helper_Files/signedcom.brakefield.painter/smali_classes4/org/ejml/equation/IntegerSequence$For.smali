.class public Lorg/ejml/equation/IntegerSequence$For;
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
    name = "For"
.end annotation


# instance fields
.field end:Lorg/ejml/equation/VariableInteger;

.field length:I

.field start:Lorg/ejml/equation/VariableInteger;

.field step:Lorg/ejml/equation/VariableInteger;

.field valEnd:I

.field valStart:I

.field valStep:I

.field where:I


# direct methods
.method public constructor <init>(Lorg/ejml/equation/TokenList$Token;Lorg/ejml/equation/TokenList$Token;Lorg/ejml/equation/TokenList$Token;)V
    .locals 0

    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 137
    invoke-virtual {p1}, Lorg/ejml/equation/TokenList$Token;->getVariable()Lorg/ejml/equation/Variable;

    move-result-object p1

    check-cast p1, Lorg/ejml/equation/VariableInteger;

    iput-object p1, p0, Lorg/ejml/equation/IntegerSequence$For;->start:Lorg/ejml/equation/VariableInteger;

    if-nez p2, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 138
    :cond_0
    invoke-virtual {p2}, Lorg/ejml/equation/TokenList$Token;->getVariable()Lorg/ejml/equation/Variable;

    move-result-object p1

    check-cast p1, Lorg/ejml/equation/VariableInteger;

    :goto_0
    iput-object p1, p0, Lorg/ejml/equation/IntegerSequence$For;->step:Lorg/ejml/equation/VariableInteger;

    .line 139
    invoke-virtual {p3}, Lorg/ejml/equation/TokenList$Token;->getVariable()Lorg/ejml/equation/Variable;

    move-result-object p1

    check-cast p1, Lorg/ejml/equation/VariableInteger;

    iput-object p1, p0, Lorg/ejml/equation/IntegerSequence$For;->end:Lorg/ejml/equation/VariableInteger;

    return-void
.end method


# virtual methods
.method public getEnd()I
    .locals 1

    .line 187
    iget v0, p0, Lorg/ejml/equation/IntegerSequence$For;->valEnd:I

    return v0
.end method

.method public getStart()I
    .locals 1

    .line 179
    iget v0, p0, Lorg/ejml/equation/IntegerSequence$For;->valStart:I

    return v0
.end method

.method public getStep()I
    .locals 1

    .line 183
    iget v0, p0, Lorg/ejml/equation/IntegerSequence$For;->valStep:I

    return v0
.end method

.method public getType()Lorg/ejml/equation/IntegerSequence$Type;
    .locals 1

    .line 192
    sget-object v0, Lorg/ejml/equation/IntegerSequence$Type;->FOR:Lorg/ejml/equation/IntegerSequence$Type;

    return-object v0
.end method

.method public hasNext()Z
    .locals 2

    .line 175
    iget v0, p0, Lorg/ejml/equation/IntegerSequence$For;->where:I

    iget v1, p0, Lorg/ejml/equation/IntegerSequence$For;->length:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public initialize(I)V
    .locals 4

    .line 149
    iget-object p1, p0, Lorg/ejml/equation/IntegerSequence$For;->start:Lorg/ejml/equation/VariableInteger;

    iget p1, p1, Lorg/ejml/equation/VariableInteger;->value:I

    iput p1, p0, Lorg/ejml/equation/IntegerSequence$For;->valStart:I

    .line 150
    iget-object p1, p0, Lorg/ejml/equation/IntegerSequence$For;->end:Lorg/ejml/equation/VariableInteger;

    iget p1, p1, Lorg/ejml/equation/VariableInteger;->value:I

    iput p1, p0, Lorg/ejml/equation/IntegerSequence$For;->valEnd:I

    .line 151
    iget-object p1, p0, Lorg/ejml/equation/IntegerSequence$For;->step:Lorg/ejml/equation/VariableInteger;

    const/4 v0, 0x1

    if-nez p1, :cond_0

    .line 152
    iput v0, p0, Lorg/ejml/equation/IntegerSequence$For;->valStep:I

    goto :goto_0

    .line 154
    :cond_0
    iget p1, p1, Lorg/ejml/equation/VariableInteger;->value:I

    iput p1, p0, Lorg/ejml/equation/IntegerSequence$For;->valStep:I

    .line 157
    :goto_0
    iget p1, p0, Lorg/ejml/equation/IntegerSequence$For;->valStep:I

    if-lez p1, :cond_2

    .line 160
    iget v1, p0, Lorg/ejml/equation/IntegerSequence$For;->valEnd:I

    iget v2, p0, Lorg/ejml/equation/IntegerSequence$For;->valStart:I

    if-lt v1, v2, :cond_1

    const/4 v3, 0x0

    .line 164
    iput v3, p0, Lorg/ejml/equation/IntegerSequence$For;->where:I

    sub-int/2addr v1, v2

    .line 165
    div-int/2addr v1, p1

    add-int/2addr v1, v0

    iput v1, p0, Lorg/ejml/equation/IntegerSequence$For;->length:I

    return-void

    .line 161
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "end value must be >= the start value"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 158
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "step size must be a positive integer"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public length()I
    .locals 1

    .line 144
    iget v0, p0, Lorg/ejml/equation/IntegerSequence$For;->length:I

    return v0
.end method

.method public next()I
    .locals 4

    .line 170
    iget v0, p0, Lorg/ejml/equation/IntegerSequence$For;->valStart:I

    iget v1, p0, Lorg/ejml/equation/IntegerSequence$For;->valStep:I

    iget v2, p0, Lorg/ejml/equation/IntegerSequence$For;->where:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/ejml/equation/IntegerSequence$For;->where:I

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    return v0
.end method

.method public requiresMaxIndex()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
