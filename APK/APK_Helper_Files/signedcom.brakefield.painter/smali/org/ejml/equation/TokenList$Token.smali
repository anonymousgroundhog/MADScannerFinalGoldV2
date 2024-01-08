.class public Lorg/ejml/equation/TokenList$Token;
.super Ljava/lang/Object;
.source "TokenList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/ejml/equation/TokenList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Token"
.end annotation


# instance fields
.field public function:Lorg/ejml/equation/Function;

.field public next:Lorg/ejml/equation/TokenList$Token;

.field public previous:Lorg/ejml/equation/TokenList$Token;

.field public symbol:Lorg/ejml/equation/Symbol;

.field public variable:Lorg/ejml/equation/Variable;

.field public word:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 312
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 308
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 309
    iput-object p1, p0, Lorg/ejml/equation/TokenList$Token;->word:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lorg/ejml/equation/Function;)V
    .locals 0

    .line 296
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 297
    iput-object p1, p0, Lorg/ejml/equation/TokenList$Token;->function:Lorg/ejml/equation/Function;

    return-void
.end method

.method public constructor <init>(Lorg/ejml/equation/Symbol;)V
    .locals 0

    .line 304
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 305
    iput-object p1, p0, Lorg/ejml/equation/TokenList$Token;->symbol:Lorg/ejml/equation/Symbol;

    return-void
.end method

.method public constructor <init>(Lorg/ejml/equation/Variable;)V
    .locals 0

    .line 300
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 301
    iput-object p1, p0, Lorg/ejml/equation/TokenList$Token;->variable:Lorg/ejml/equation/Variable;

    return-void
.end method


# virtual methods
.method public copy()Lorg/ejml/equation/TokenList$Token;
    .locals 2

    .line 369
    new-instance v0, Lorg/ejml/equation/TokenList$Token;

    invoke-direct {v0}, Lorg/ejml/equation/TokenList$Token;-><init>()V

    .line 370
    iget-object v1, p0, Lorg/ejml/equation/TokenList$Token;->word:Ljava/lang/String;

    iput-object v1, v0, Lorg/ejml/equation/TokenList$Token;->word:Ljava/lang/String;

    .line 371
    iget-object v1, p0, Lorg/ejml/equation/TokenList$Token;->function:Lorg/ejml/equation/Function;

    iput-object v1, v0, Lorg/ejml/equation/TokenList$Token;->function:Lorg/ejml/equation/Function;

    .line 372
    iget-object v1, p0, Lorg/ejml/equation/TokenList$Token;->symbol:Lorg/ejml/equation/Symbol;

    iput-object v1, v0, Lorg/ejml/equation/TokenList$Token;->symbol:Lorg/ejml/equation/Symbol;

    .line 373
    iget-object v1, p0, Lorg/ejml/equation/TokenList$Token;->variable:Lorg/ejml/equation/Variable;

    iput-object v1, v0, Lorg/ejml/equation/TokenList$Token;->variable:Lorg/ejml/equation/Variable;

    return-object v0
.end method

.method public getFunction()Lorg/ejml/equation/Function;
    .locals 1

    .line 331
    iget-object v0, p0, Lorg/ejml/equation/TokenList$Token;->function:Lorg/ejml/equation/Function;

    return-object v0
.end method

.method public getScalarType()Lorg/ejml/equation/VariableScalar$Type;
    .locals 2

    .line 346
    iget-object v0, p0, Lorg/ejml/equation/TokenList$Token;->variable:Lorg/ejml/equation/Variable;

    if-eqz v0, :cond_0

    .line 347
    invoke-virtual {v0}, Lorg/ejml/equation/Variable;->getType()Lorg/ejml/equation/VariableType;

    move-result-object v0

    sget-object v1, Lorg/ejml/equation/VariableType;->SCALAR:Lorg/ejml/equation/VariableType;

    if-ne v0, v1, :cond_0

    .line 348
    iget-object v0, p0, Lorg/ejml/equation/TokenList$Token;->variable:Lorg/ejml/equation/Variable;

    check-cast v0, Lorg/ejml/equation/VariableScalar;

    invoke-virtual {v0}, Lorg/ejml/equation/VariableScalar;->getScalarType()Lorg/ejml/equation/VariableScalar$Type;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSymbol()Lorg/ejml/equation/Symbol;
    .locals 1

    .line 335
    iget-object v0, p0, Lorg/ejml/equation/TokenList$Token;->symbol:Lorg/ejml/equation/Symbol;

    return-object v0
.end method

.method public getType()Lorg/ejml/equation/TokenList$Type;
    .locals 1

    .line 316
    iget-object v0, p0, Lorg/ejml/equation/TokenList$Token;->function:Lorg/ejml/equation/Function;

    if-eqz v0, :cond_0

    .line 317
    sget-object v0, Lorg/ejml/equation/TokenList$Type;->FUNCTION:Lorg/ejml/equation/TokenList$Type;

    return-object v0

    .line 318
    :cond_0
    iget-object v0, p0, Lorg/ejml/equation/TokenList$Token;->variable:Lorg/ejml/equation/Variable;

    if-eqz v0, :cond_1

    .line 319
    sget-object v0, Lorg/ejml/equation/TokenList$Type;->VARIABLE:Lorg/ejml/equation/TokenList$Type;

    return-object v0

    .line 320
    :cond_1
    iget-object v0, p0, Lorg/ejml/equation/TokenList$Token;->word:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 321
    sget-object v0, Lorg/ejml/equation/TokenList$Type;->WORD:Lorg/ejml/equation/TokenList$Type;

    return-object v0

    .line 323
    :cond_2
    sget-object v0, Lorg/ejml/equation/TokenList$Type;->SYMBOL:Lorg/ejml/equation/TokenList$Type;

    return-object v0
.end method

.method public getVariable()Lorg/ejml/equation/Variable;
    .locals 1

    .line 327
    iget-object v0, p0, Lorg/ejml/equation/TokenList$Token;->variable:Lorg/ejml/equation/Variable;

    return-object v0
.end method

.method public getWord()Ljava/lang/String;
    .locals 1

    .line 339
    iget-object v0, p0, Lorg/ejml/equation/TokenList$Token;->word:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 355
    sget-object v0, Lorg/ejml/equation/TokenList$1;->$SwitchMap$org$ejml$equation$TokenList$Type:[I

    invoke-virtual {p0}, Lorg/ejml/equation/TokenList$Token;->getType()Lorg/ejml/equation/TokenList$Type;

    move-result-object v1

    invoke-virtual {v1}, Lorg/ejml/equation/TokenList$Type;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 363
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Word:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/ejml/equation/TokenList$Token;->word:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 365
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Unknown type"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 361
    :cond_1
    iget-object v0, p0, Lorg/ejml/equation/TokenList$Token;->variable:Lorg/ejml/equation/Variable;

    invoke-virtual {v0}, Lorg/ejml/equation/Variable;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 359
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/ejml/equation/TokenList$Token;->symbol:Lorg/ejml/equation/Symbol;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 357
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Func:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/ejml/equation/TokenList$Token;->function:Lorg/ejml/equation/Function;

    invoke-virtual {v1}, Lorg/ejml/equation/Function;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
