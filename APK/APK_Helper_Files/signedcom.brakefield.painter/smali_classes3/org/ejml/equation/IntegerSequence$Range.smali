.class public Lorg/ejml/equation/IntegerSequence$Range;
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
    name = "Range"
.end annotation


# instance fields
.field length:I

.field start:Lorg/ejml/equation/VariableInteger;

.field step:Lorg/ejml/equation/VariableInteger;

.field valEnd:I

.field valStart:I

.field valStep:I

.field where:I


# direct methods
.method public constructor <init>(Lorg/ejml/equation/TokenList$Token;Lorg/ejml/equation/TokenList$Token;)V
    .locals 1

    .line 293
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    if-nez p1, :cond_0

    move-object p1, v0

    goto :goto_0

    .line 294
    :cond_0
    invoke-virtual {p1}, Lorg/ejml/equation/TokenList$Token;->getVariable()Lorg/ejml/equation/Variable;

    move-result-object p1

    check-cast p1, Lorg/ejml/equation/VariableInteger;

    :goto_0
    iput-object p1, p0, Lorg/ejml/equation/IntegerSequence$Range;->start:Lorg/ejml/equation/VariableInteger;

    if-nez p2, :cond_1

    goto :goto_1

    .line 295
    :cond_1
    invoke-virtual {p2}, Lorg/ejml/equation/TokenList$Token;->getVariable()Lorg/ejml/equation/Variable;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lorg/ejml/equation/VariableInteger;

    :goto_1
    iput-object v0, p0, Lorg/ejml/equation/IntegerSequence$Range;->step:Lorg/ejml/equation/VariableInteger;

    return-void
.end method


# virtual methods
.method public getEnd()I
    .locals 1

    .line 347
    iget v0, p0, Lorg/ejml/equation/IntegerSequence$Range;->valEnd:I

    return v0
.end method

.method public getStart()I
    .locals 1

    .line 339
    iget v0, p0, Lorg/ejml/equation/IntegerSequence$Range;->valStart:I

    return v0
.end method

.method public getStep()I
    .locals 1

    .line 343
    iget v0, p0, Lorg/ejml/equation/IntegerSequence$Range;->valStep:I

    return v0
.end method

.method public getType()Lorg/ejml/equation/IntegerSequence$Type;
    .locals 1

    .line 352
    sget-object v0, Lorg/ejml/equation/IntegerSequence$Type;->RANGE:Lorg/ejml/equation/IntegerSequence$Type;

    return-object v0
.end method

.method public hasNext()Z
    .locals 2

    .line 335
    iget v0, p0, Lorg/ejml/equation/IntegerSequence$Range;->where:I

    iget v1, p0, Lorg/ejml/equation/IntegerSequence$Range;->length:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public initialize(I)V
    .locals 3

    if-ltz p1, :cond_3

    .line 307
    iput p1, p0, Lorg/ejml/equation/IntegerSequence$Range;->valEnd:I

    .line 309
    iget-object p1, p0, Lorg/ejml/equation/IntegerSequence$Range;->start:Lorg/ejml/equation/VariableInteger;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 310
    iget p1, p1, Lorg/ejml/equation/VariableInteger;->value:I

    iput p1, p0, Lorg/ejml/equation/IntegerSequence$Range;->valStart:I

    goto :goto_0

    .line 312
    :cond_0
    iput v0, p0, Lorg/ejml/equation/IntegerSequence$Range;->valStart:I

    .line 314
    :goto_0
    iget-object p1, p0, Lorg/ejml/equation/IntegerSequence$Range;->step:Lorg/ejml/equation/VariableInteger;

    const/4 v1, 0x1

    if-nez p1, :cond_1

    .line 315
    iput v1, p0, Lorg/ejml/equation/IntegerSequence$Range;->valStep:I

    goto :goto_1

    .line 317
    :cond_1
    iget p1, p1, Lorg/ejml/equation/VariableInteger;->value:I

    iput p1, p0, Lorg/ejml/equation/IntegerSequence$Range;->valStep:I

    .line 320
    :goto_1
    iget p1, p0, Lorg/ejml/equation/IntegerSequence$Range;->valStep:I

    if-lez p1, :cond_2

    .line 324
    iput v0, p0, Lorg/ejml/equation/IntegerSequence$Range;->where:I

    .line 325
    iget v0, p0, Lorg/ejml/equation/IntegerSequence$Range;->valEnd:I

    iget v2, p0, Lorg/ejml/equation/IntegerSequence$Range;->valStart:I

    sub-int/2addr v0, v2

    div-int/2addr v0, p1

    add-int/2addr v0, v1

    iput v0, p0, Lorg/ejml/equation/IntegerSequence$Range;->length:I

    return-void

    .line 321
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v0, "step size must be a positive integer"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 306
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Range sequence being used inside an object without a known upper limit"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public length()I
    .locals 1

    .line 300
    iget v0, p0, Lorg/ejml/equation/IntegerSequence$Range;->length:I

    return v0
.end method

.method public next()I
    .locals 4

    .line 330
    iget v0, p0, Lorg/ejml/equation/IntegerSequence$Range;->valStart:I

    iget v1, p0, Lorg/ejml/equation/IntegerSequence$Range;->valStep:I

    iget v2, p0, Lorg/ejml/equation/IntegerSequence$Range;->where:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/ejml/equation/IntegerSequence$Range;->where:I

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    return v0
.end method

.method public requiresMaxIndex()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
