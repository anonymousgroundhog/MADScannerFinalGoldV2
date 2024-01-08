.class public Lorg/ejml/equation/Equation;
.super Ljava/lang/Object;
.source "Equation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/ejml/equation/Equation$TokenType;
    }
.end annotation


# instance fields
.field functions:Lorg/ejml/equation/ManagerFunctions;

.field macros:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lorg/ejml/equation/Macro;",
            ">;"
        }
    .end annotation
.end field

.field managerTemp:Lorg/ejml/equation/ManagerTempVariables;

.field storage:[C

.field variables:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lorg/ejml/equation/Variable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 248
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 239
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/ejml/equation/Equation;->variables:Ljava/util/HashMap;

    .line 240
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/ejml/equation/Equation;->macros:Ljava/util/HashMap;

    const/16 v0, 0x400

    new-array v0, v0, [C

    .line 243
    iput-object v0, p0, Lorg/ejml/equation/Equation;->storage:[C

    .line 245
    new-instance v0, Lorg/ejml/equation/ManagerFunctions;

    invoke-direct {v0}, Lorg/ejml/equation/ManagerFunctions;-><init>()V

    iput-object v0, p0, Lorg/ejml/equation/Equation;->functions:Lorg/ejml/equation/ManagerFunctions;

    .line 246
    new-instance v0, Lorg/ejml/equation/ManagerTempVariables;

    invoke-direct {v0}, Lorg/ejml/equation/ManagerTempVariables;-><init>()V

    iput-object v0, p0, Lorg/ejml/equation/Equation;->managerTemp:Lorg/ejml/equation/ManagerTempVariables;

    const-wide v0, 0x400921fb54442d18L    # Math.PI

    const-string v2, "pi"

    .line 249
    invoke-virtual {p0, v0, v1, v2}, Lorg/ejml/equation/Equation;->alias(DLjava/lang/String;)V

    const-wide v0, 0x4005bf0a8b145769L    # Math.E

    const-string v2, "e"

    .line 250
    invoke-virtual {p0, v0, v1, v2}, Lorg/ejml/equation/Equation;->alias(DLjava/lang/String;)V

    return-void
.end method

.method public varargs constructor <init>([Ljava/lang/Object;)V
    .locals 0

    .line 260
    invoke-direct {p0}, Lorg/ejml/equation/Equation;-><init>()V

    .line 261
    invoke-virtual {p0, p1}, Lorg/ejml/equation/Equation;->alias([Ljava/lang/Object;)V

    return-void
.end method

.method private addSubMatrixVariables(Ljava/util/List;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/ejml/equation/TokenList$Token;",
            ">;",
            "Ljava/util/List<",
            "Lorg/ejml/equation/Variable;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 842
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 843
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/ejml/equation/TokenList$Token;

    .line 844
    invoke-virtual {v1}, Lorg/ejml/equation/TokenList$Token;->getType()Lorg/ejml/equation/TokenList$Type;

    move-result-object v2

    sget-object v3, Lorg/ejml/equation/TokenList$Type;->VARIABLE:Lorg/ejml/equation/TokenList$Type;

    if-ne v2, v3, :cond_2

    .line 846
    invoke-virtual {v1}, Lorg/ejml/equation/TokenList$Token;->getVariable()Lorg/ejml/equation/Variable;

    move-result-object v2

    .line 847
    invoke-virtual {v2}, Lorg/ejml/equation/Variable;->getType()Lorg/ejml/equation/VariableType;

    move-result-object v3

    sget-object v4, Lorg/ejml/equation/VariableType;->INTEGER_SEQUENCE:Lorg/ejml/equation/VariableType;

    if-eq v3, v4, :cond_1

    invoke-static {v1}, Lorg/ejml/equation/Equation;->isVariableInteger(Lorg/ejml/equation/TokenList$Token;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 850
    :cond_0
    new-instance p1, Lorg/ejml/equation/ParseError;

    const/4 p2, 0x0

    sget-object p2, Lorg/ejml/dense/row/decompose/EB/JlKLR;->RcIViQR:Ljava/lang/String;

    invoke-direct {p1, p2}, Lorg/ejml/equation/ParseError;-><init>(Ljava/lang/String;)V

    throw p1

    .line 848
    :cond_1
    :goto_1
    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 845
    :cond_2
    new-instance p1, Lorg/ejml/equation/ParseError;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Expected variables only in sub-matrix input, not "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/ejml/equation/TokenList$Token;->getType()Lorg/ejml/equation/TokenList$Type;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/ejml/equation/ParseError;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    return-void
.end method

.method private alias(Lorg/ejml/equation/IntegerSequence;Ljava/lang/String;)V
    .locals 2

    .line 353
    invoke-virtual {p0, p2}, Lorg/ejml/equation/Equation;->isReserved(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 356
    iget-object v0, p0, Lorg/ejml/equation/Equation;->variables:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/ejml/equation/VariableIntegerSequence;

    if-nez v0, :cond_0

    .line 358
    iget-object v0, p0, Lorg/ejml/equation/Equation;->variables:Ljava/util/HashMap;

    new-instance v1, Lorg/ejml/equation/VariableIntegerSequence;

    invoke-direct {v1, p1}, Lorg/ejml/equation/VariableIntegerSequence;-><init>(Lorg/ejml/equation/IntegerSequence;)V

    invoke-virtual {v0, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 360
    :cond_0
    iput-object p1, v0, Lorg/ejml/equation/VariableIntegerSequence;->sequence:Lorg/ejml/equation/IntegerSequence;

    :goto_0
    return-void

    .line 354
    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Reserved word or contains a reserved character"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private checkForUnknownVariables(Lorg/ejml/equation/TokenList;)V
    .locals 3

    .line 574
    invoke-virtual {p1}, Lorg/ejml/equation/TokenList;->getFirst()Lorg/ejml/equation/TokenList$Token;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_1

    .line 576
    invoke-virtual {p1}, Lorg/ejml/equation/TokenList$Token;->getType()Lorg/ejml/equation/TokenList$Type;

    move-result-object v0

    sget-object v1, Lorg/ejml/equation/TokenList$Type;->WORD:Lorg/ejml/equation/TokenList$Type;

    if-eq v0, v1, :cond_0

    .line 578
    iget-object p1, p1, Lorg/ejml/equation/TokenList$Token;->next:Lorg/ejml/equation/TokenList$Token;

    goto :goto_0

    .line 577
    :cond_0
    new-instance v0, Lorg/ejml/equation/ParseError;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown variable on right side. "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/ejml/equation/TokenList$Token;->getWord()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/ejml/equation/ParseError;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-void
.end method

.method private compileAssignment(Lorg/ejml/equation/Sequence;Lorg/ejml/equation/TokenList;Lorg/ejml/equation/TokenList$Token;)V
    .locals 4

    .line 477
    invoke-direct {p0, p1, p2, p3}, Lorg/ejml/equation/Equation;->parseAssignRange(Lorg/ejml/equation/Sequence;Lorg/ejml/equation/TokenList;Lorg/ejml/equation/TokenList$Token;)Ljava/util/List;

    move-result-object v0

    .line 479
    iget-object v1, p3, Lorg/ejml/equation/TokenList$Token;->next:Lorg/ejml/equation/TokenList$Token;

    .line 480
    invoke-virtual {v1}, Lorg/ejml/equation/TokenList$Token;->getType()Lorg/ejml/equation/TokenList$Type;

    move-result-object v2

    sget-object v3, Lorg/ejml/equation/TokenList$Type;->SYMBOL:Lorg/ejml/equation/TokenList$Type;

    if-ne v2, v3, :cond_3

    invoke-virtual {v1}, Lorg/ejml/equation/TokenList$Token;->getSymbol()Lorg/ejml/equation/Symbol;

    move-result-object v2

    sget-object v3, Lorg/ejml/equation/Symbol;->ASSIGN:Lorg/ejml/equation/Symbol;

    if-ne v2, v3, :cond_3

    .line 484
    iget-object v1, v1, Lorg/ejml/equation/TokenList$Token;->next:Lorg/ejml/equation/TokenList$Token;

    iget-object v2, p2, Lorg/ejml/equation/TokenList;->last:Lorg/ejml/equation/TokenList$Token;

    invoke-virtual {p2, v1, v2}, Lorg/ejml/equation/TokenList;->extractSubList(Lorg/ejml/equation/TokenList$Token;Lorg/ejml/equation/TokenList$Token;)Lorg/ejml/equation/TokenList;

    move-result-object p2

    .line 485
    invoke-direct {p0, p1, p2}, Lorg/ejml/equation/Equation;->compileTokens(Lorg/ejml/equation/Sequence;Lorg/ejml/equation/TokenList;)V

    .line 486
    invoke-virtual {p2}, Lorg/ejml/equation/TokenList;->getLast()Lorg/ejml/equation/TokenList$Token;

    move-result-object v1

    invoke-virtual {v1}, Lorg/ejml/equation/TokenList$Token;->getType()Lorg/ejml/equation/TokenList$Type;

    move-result-object v1

    sget-object v2, Lorg/ejml/equation/TokenList$Type;->VARIABLE:Lorg/ejml/equation/TokenList$Type;

    if-ne v1, v2, :cond_2

    .line 490
    invoke-virtual {p2}, Lorg/ejml/equation/TokenList;->getFirst()Lorg/ejml/equation/TokenList$Token;

    move-result-object p2

    invoke-virtual {p2}, Lorg/ejml/equation/TokenList$Token;->getVariable()Lorg/ejml/equation/Variable;

    move-result-object p2

    if-nez v0, :cond_0

    .line 493
    invoke-direct {p0, p3, p2}, Lorg/ejml/equation/Equation;->createVariableInferred(Lorg/ejml/equation/TokenList$Token;Lorg/ejml/equation/Variable;)Lorg/ejml/equation/Variable;

    move-result-object p3

    iput-object p3, p1, Lorg/ejml/equation/Sequence;->output:Lorg/ejml/equation/Variable;

    .line 494
    iget-object p3, p1, Lorg/ejml/equation/Sequence;->output:Lorg/ejml/equation/Variable;

    invoke-static {p2, p3}, Lorg/ejml/equation/Operation;->copy(Lorg/ejml/equation/Variable;Lorg/ejml/equation/Variable;)Lorg/ejml/equation/Operation;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/ejml/equation/Sequence;->addOperation(Lorg/ejml/equation/Operation;)V

    goto :goto_0

    .line 497
    :cond_0
    invoke-virtual {p3}, Lorg/ejml/equation/TokenList$Token;->getType()Lorg/ejml/equation/TokenList$Type;

    move-result-object v1

    sget-object v2, Lorg/ejml/equation/TokenList$Type;->WORD:Lorg/ejml/equation/TokenList$Type;

    if-eq v1, v2, :cond_1

    .line 500
    invoke-virtual {p3}, Lorg/ejml/equation/TokenList$Token;->getVariable()Lorg/ejml/equation/Variable;

    move-result-object p3

    invoke-static {p2, p3, v0}, Lorg/ejml/equation/Operation;->copy(Lorg/ejml/equation/Variable;Lorg/ejml/equation/Variable;Ljava/util/List;)Lorg/ejml/equation/Operation;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/ejml/equation/Sequence;->addOperation(Lorg/ejml/equation/Operation;)V

    :goto_0
    return-void

    .line 498
    :cond_1
    new-instance p1, Lorg/ejml/equation/ParseError;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Can\'t do lazy variable initialization with submatrices. "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3}, Lorg/ejml/equation/TokenList$Token;->getWord()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/ejml/equation/ParseError;-><init>(Ljava/lang/String;)V

    throw p1

    .line 487
    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "BUG the last token must be a variable"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 481
    :cond_3
    new-instance p1, Lorg/ejml/equation/ParseError;

    const-string p2, "Expected assignment operator next"

    invoke-direct {p1, p2}, Lorg/ejml/equation/ParseError;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private compileTokens(Lorg/ejml/equation/Sequence;Lorg/ejml/equation/TokenList;)V
    .locals 2

    .line 505
    invoke-direct {p0, p2}, Lorg/ejml/equation/Equation;->checkForUnknownVariables(Lorg/ejml/equation/TokenList;)V

    .line 506
    invoke-virtual {p0, p2, p1}, Lorg/ejml/equation/Equation;->handleParentheses(Lorg/ejml/equation/TokenList;Lorg/ejml/equation/Sequence;)V

    .line 507
    invoke-virtual {p2}, Lorg/ejml/equation/TokenList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    const/4 v0, 0x0

    .line 508
    invoke-virtual {p0, p2, p1, v0}, Lorg/ejml/equation/Equation;->parseBlockNoParentheses(Lorg/ejml/equation/TokenList;Lorg/ejml/equation/Sequence;Z)Lorg/ejml/equation/TokenList$Token;

    .line 512
    :cond_0
    invoke-virtual {p2}, Lorg/ejml/equation/TokenList;->size()I

    move-result p1

    if-ne p1, v1, :cond_1

    return-void

    .line 513
    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "BUG"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private constructMatrix(Lorg/ejml/equation/TokenList;)Lorg/ejml/equation/MatrixConstructor;
    .locals 3

    .line 1164
    new-instance v0, Lorg/ejml/equation/MatrixConstructor;

    iget-object v1, p0, Lorg/ejml/equation/Equation;->functions:Lorg/ejml/equation/ManagerFunctions;

    invoke-virtual {v1}, Lorg/ejml/equation/ManagerFunctions;->getManagerTemp()Lorg/ejml/equation/ManagerTempVariables;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/ejml/equation/MatrixConstructor;-><init>(Lorg/ejml/equation/ManagerTempVariables;)V

    .line 1166
    iget-object p1, p1, Lorg/ejml/equation/TokenList;->first:Lorg/ejml/equation/TokenList$Token;

    :goto_0
    if-eqz p1, :cond_3

    .line 1169
    invoke-virtual {p1}, Lorg/ejml/equation/TokenList$Token;->getType()Lorg/ejml/equation/TokenList$Type;

    move-result-object v1

    sget-object v2, Lorg/ejml/equation/TokenList$Type;->VARIABLE:Lorg/ejml/equation/TokenList$Type;

    if-ne v1, v2, :cond_0

    .line 1170
    invoke-virtual {p1}, Lorg/ejml/equation/TokenList$Token;->getVariable()Lorg/ejml/equation/Variable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/ejml/equation/MatrixConstructor;->addToRow(Lorg/ejml/equation/Variable;)V

    goto :goto_1

    .line 1171
    :cond_0
    invoke-virtual {p1}, Lorg/ejml/equation/TokenList$Token;->getType()Lorg/ejml/equation/TokenList$Type;

    move-result-object v1

    sget-object v2, Lorg/ejml/equation/TokenList$Type;->SYMBOL:Lorg/ejml/equation/TokenList$Type;

    if-ne v1, v2, :cond_2

    .line 1172
    invoke-virtual {p1}, Lorg/ejml/equation/TokenList$Token;->getSymbol()Lorg/ejml/equation/Symbol;

    move-result-object v1

    sget-object v2, Lorg/ejml/equation/Symbol;->SEMICOLON:Lorg/ejml/equation/Symbol;

    if-ne v1, v2, :cond_1

    .line 1173
    invoke-virtual {v0}, Lorg/ejml/equation/MatrixConstructor;->endRow()V

    .line 1178
    :cond_1
    :goto_1
    iget-object p1, p1, Lorg/ejml/equation/TokenList$Token;->next:Lorg/ejml/equation/TokenList$Token;

    goto :goto_0

    .line 1176
    :cond_2
    new-instance p1, Lorg/ejml/equation/ParseError;

    const-string v0, "Expected variable or symbol only"

    invoke-direct {p1, v0}, Lorg/ejml/equation/ParseError;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1180
    :cond_3
    invoke-virtual {v0}, Lorg/ejml/equation/MatrixConstructor;->endRow()V

    return-object v0
.end method

.method private createVariableInferred(Lorg/ejml/equation/TokenList$Token;Lorg/ejml/equation/Variable;)Lorg/ejml/equation/Variable;
    .locals 2

    .line 589
    invoke-virtual {p1}, Lorg/ejml/equation/TokenList$Token;->getType()Lorg/ejml/equation/TokenList$Type;

    move-result-object v0

    sget-object v1, Lorg/ejml/equation/TokenList$Type;->WORD:Lorg/ejml/equation/TokenList$Type;

    if-ne v0, v1, :cond_4

    .line 590
    sget-object v0, Lorg/ejml/equation/Equation$1;->$SwitchMap$org$ejml$equation$VariableType:[I

    invoke-virtual {p2}, Lorg/ejml/equation/Variable;->getType()Lorg/ejml/equation/VariableType;

    move-result-object v1

    invoke-virtual {v1}, Lorg/ejml/equation/VariableType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 p2, 0x0

    .line 604
    move-object v0, p2

    check-cast v0, Lorg/ejml/equation/IntegerSequence;

    invoke-virtual {p1}, Lorg/ejml/equation/TokenList$Token;->getWord()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Lorg/ejml/equation/Equation;->alias(Lorg/ejml/equation/IntegerSequence;Ljava/lang/String;)V

    goto :goto_0

    .line 608
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Type not supported for assignment: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lorg/ejml/equation/Variable;->getType()Lorg/ejml/equation/VariableType;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 596
    :cond_1
    instance-of p2, p2, Lorg/ejml/equation/VariableInteger;

    if-eqz p2, :cond_2

    const/4 p2, 0x0

    .line 597
    invoke-virtual {p1}, Lorg/ejml/equation/TokenList$Token;->getWord()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p2, v0}, Lorg/ejml/equation/Equation;->alias(ILjava/lang/String;)V

    goto :goto_0

    :cond_2
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 599
    invoke-virtual {p1}, Lorg/ejml/equation/TokenList$Token;->getWord()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, v0, v1, p2}, Lorg/ejml/equation/Equation;->alias(DLjava/lang/String;)V

    goto :goto_0

    .line 592
    :cond_3
    new-instance p2, Lorg/ejml/data/DMatrixRMaj;

    invoke-direct {p2, v1, v1}, Lorg/ejml/data/DMatrixRMaj;-><init>(II)V

    invoke-virtual {p1}, Lorg/ejml/equation/TokenList$Token;->getWord()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p2, v0}, Lorg/ejml/equation/Equation;->alias(Lorg/ejml/data/DMatrixRMaj;Ljava/lang/String;)V

    .line 611
    :goto_0
    iget-object p2, p0, Lorg/ejml/equation/Equation;->variables:Ljava/util/HashMap;

    invoke-virtual {p1}, Lorg/ejml/equation/TokenList$Token;->getWord()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/ejml/equation/Variable;

    goto :goto_1

    .line 613
    :cond_4
    invoke-virtual {p1}, Lorg/ejml/equation/TokenList$Token;->getVariable()Lorg/ejml/equation/Variable;

    move-result-object p1

    :goto_1
    return-object p1
.end method

.method protected static isLetter(C)Z
    .locals 1

    .line 1639
    invoke-static {p0}, Lorg/ejml/equation/Equation;->isSymbol(C)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected static isOperatorLR(Lorg/ejml/equation/Symbol;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 1618
    :cond_0
    sget-object v1, Lorg/ejml/equation/Equation$1;->$SwitchMap$org$ejml$equation$Symbol:[I

    invoke-virtual {p0}, Lorg/ejml/equation/Symbol;->ordinal()I

    move-result p0

    aget p0, v1, p0

    packed-switch p0, :pswitch_data_0

    return v0

    :pswitch_0
    const/4 p0, 0x1

    return p0

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method protected static isSymbol(C)Z
    .locals 1

    const/16 v0, 0x2a

    if-eq p0, v0, :cond_1

    const/16 v0, 0x2f

    if-eq p0, v0, :cond_1

    const/16 v0, 0x2b

    if-eq p0, v0, :cond_1

    const/16 v0, 0x2d

    if-eq p0, v0, :cond_1

    const/16 v0, 0x28

    if-eq p0, v0, :cond_1

    const/16 v0, 0x29

    if-eq p0, v0, :cond_1

    const/16 v0, 0x5b

    if-eq p0, v0, :cond_1

    const/16 v0, 0x5d

    if-eq p0, v0, :cond_1

    const/16 v0, 0x3d

    if-eq p0, v0, :cond_1

    const/16 v0, 0x27

    if-eq p0, v0, :cond_1

    const/16 v0, 0x2e

    if-eq p0, v0, :cond_1

    const/16 v0, 0x2c

    if-eq p0, v0, :cond_1

    const/16 v0, 0x3a

    if-eq p0, v0, :cond_1

    const/16 v0, 0x3b

    if-eq p0, v0, :cond_1

    const/16 v0, 0x5c

    if-eq p0, v0, :cond_1

    const/16 v0, 0x5e

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method protected static isTargetOp(Lorg/ejml/equation/TokenList$Token;[Lorg/ejml/equation/Symbol;)Z
    .locals 3

    .line 1598
    iget-object p0, p0, Lorg/ejml/equation/TokenList$Token;->symbol:Lorg/ejml/equation/Symbol;

    const/4 v0, 0x0

    move v1, v0

    .line 1599
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    .line 1600
    aget-object v2, p1, v1

    if-ne p0, v2, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method private static isVariableInteger(Lorg/ejml/equation/TokenList$Token;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 1116
    :cond_0
    invoke-virtual {p0}, Lorg/ejml/equation/TokenList$Token;->getScalarType()Lorg/ejml/equation/VariableScalar$Type;

    move-result-object p0

    sget-object v1, Lorg/ejml/equation/VariableScalar$Type;->INTEGER:Lorg/ejml/equation/VariableScalar$Type;

    if-ne p0, v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method private parseAssignRange(Lorg/ejml/equation/Sequence;Lorg/ejml/equation/TokenList;Lorg/ejml/equation/TokenList$Token;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ejml/equation/Sequence;",
            "Lorg/ejml/equation/TokenList;",
            "Lorg/ejml/equation/TokenList$Token;",
            ")",
            "Ljava/util/List<",
            "Lorg/ejml/equation/Variable;",
            ">;"
        }
    .end annotation

    .line 627
    iget-object v0, p3, Lorg/ejml/equation/TokenList$Token;->next:Lorg/ejml/equation/TokenList$Token;

    :goto_0
    if-eqz v0, :cond_0

    .line 628
    iget-object v1, v0, Lorg/ejml/equation/TokenList$Token;->symbol:Lorg/ejml/equation/Symbol;

    sget-object v2, Lorg/ejml/equation/Symbol;->ASSIGN:Lorg/ejml/equation/Symbol;

    if-eq v1, v2, :cond_0

    .line 629
    iget-object v0, v0, Lorg/ejml/equation/TokenList$Token;->next:Lorg/ejml/equation/TokenList$Token;

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_6

    .line 636
    iget-object v1, v0, Lorg/ejml/equation/TokenList$Token;->previous:Lorg/ejml/equation/TokenList$Token;

    iget-object v1, v1, Lorg/ejml/equation/TokenList$Token;->symbol:Lorg/ejml/equation/Symbol;

    sget-object v2, Lorg/ejml/equation/Symbol;->PAREN_RIGHT:Lorg/ejml/equation/Symbol;

    if-ne v1, v2, :cond_5

    .line 637
    iget-object p3, p3, Lorg/ejml/equation/TokenList$Token;->next:Lorg/ejml/equation/TokenList$Token;

    .line 638
    iget-object v1, p3, Lorg/ejml/equation/TokenList$Token;->symbol:Lorg/ejml/equation/Symbol;

    sget-object v2, Lorg/ejml/equation/Symbol;->PAREN_LEFT:Lorg/ejml/equation/Symbol;

    if-ne v1, v2, :cond_4

    .line 640
    iget-object v0, v0, Lorg/ejml/equation/TokenList$Token;->previous:Lorg/ejml/equation/TokenList$Token;

    .line 641
    invoke-virtual {p2, p3, v0}, Lorg/ejml/equation/TokenList;->extractSubList(Lorg/ejml/equation/TokenList$Token;Lorg/ejml/equation/TokenList$Token;)Lorg/ejml/equation/TokenList;

    move-result-object p2

    .line 642
    invoke-virtual {p2}, Lorg/ejml/equation/TokenList;->getFirst()Lorg/ejml/equation/TokenList$Token;

    move-result-object p3

    invoke-virtual {p2, p3}, Lorg/ejml/equation/TokenList;->remove(Lorg/ejml/equation/TokenList$Token;)V

    .line 643
    invoke-virtual {p2}, Lorg/ejml/equation/TokenList;->getLast()Lorg/ejml/equation/TokenList$Token;

    move-result-object p3

    invoke-virtual {p2, p3}, Lorg/ejml/equation/TokenList;->remove(Lorg/ejml/equation/TokenList$Token;)V

    .line 645
    invoke-virtual {p0, p2, p1}, Lorg/ejml/equation/Equation;->handleParentheses(Lorg/ejml/equation/TokenList;Lorg/ejml/equation/Sequence;)V

    .line 647
    invoke-virtual {p0, p2, p1}, Lorg/ejml/equation/Equation;->parseParameterCommaBlock(Lorg/ejml/equation/TokenList;Lorg/ejml/equation/Sequence;)Ljava/util/List;

    move-result-object p1

    .line 649
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_3

    .line 652
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 653
    invoke-direct {p0, p1, p2}, Lorg/ejml/equation/Equation;->addSubMatrixVariables(Ljava/util/List;Ljava/util/List;)V

    .line 654
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    const/4 p3, 0x1

    if-eq p1, p3, :cond_2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    const/4 p3, 0x2

    if-ne p1, p3, :cond_1

    goto :goto_1

    .line 655
    :cond_1
    new-instance p1, Lorg/ejml/equation/ParseError;

    const-string p2, "Unexpected number of range variables.  1 or 2 expected"

    invoke-direct {p1, p2}, Lorg/ejml/equation/ParseError;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_1
    return-object p2

    .line 650
    :cond_3
    new-instance p1, Lorg/ejml/equation/ParseError;

    const-string p2, "Empty function input parameters"

    invoke-direct {p1, p2}, Lorg/ejml/equation/ParseError;-><init>(Ljava/lang/String;)V

    throw p1

    .line 639
    :cond_4
    new-instance p1, Lorg/ejml/equation/ParseError;

    const-string p2, "Expected left param for assignment"

    invoke-direct {p1, p2}, Lorg/ejml/equation/ParseError;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    const/4 p1, 0x0

    return-object p1

    .line 633
    :cond_6
    new-instance p1, Lorg/ejml/equation/ParseError;

    const-string p2, "Can\'t find assignment operator"

    invoke-direct {p1, p2}, Lorg/ejml/equation/ParseError;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private parseMacro(Lorg/ejml/equation/TokenList;Lorg/ejml/equation/Sequence;)V
    .locals 5

    .line 522
    new-instance v0, Lorg/ejml/equation/Macro;

    invoke-direct {v0}, Lorg/ejml/equation/Macro;-><init>()V

    .line 524
    invoke-virtual {p1}, Lorg/ejml/equation/TokenList;->getFirst()Lorg/ejml/equation/TokenList$Token;

    move-result-object v1

    iget-object v1, v1, Lorg/ejml/equation/TokenList$Token;->next:Lorg/ejml/equation/TokenList$Token;

    .line 526
    iget-object v2, v1, Lorg/ejml/equation/TokenList$Token;->word:Ljava/lang/String;

    if-eqz v2, :cond_3

    .line 529
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 531
    iget-object v3, v1, Lorg/ejml/equation/TokenList$Token;->word:Ljava/lang/String;

    iput-object v3, v0, Lorg/ejml/equation/Macro;->name:Ljava/lang/String;

    .line 532
    iget-object v1, v1, Lorg/ejml/equation/TokenList$Token;->next:Lorg/ejml/equation/TokenList$Token;

    .line 533
    invoke-direct {p0, v2, v1}, Lorg/ejml/equation/Equation;->parseMacroInput(Ljava/util/List;Lorg/ejml/equation/TokenList$Token;)Lorg/ejml/equation/TokenList$Token;

    move-result-object v1

    .line 534
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/ejml/equation/TokenList$Token;

    .line 535
    iget-object v4, v3, Lorg/ejml/equation/TokenList$Token;->word:Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 536
    iget-object v4, v0, Lorg/ejml/equation/Macro;->inputs:Ljava/util/List;

    iget-object v3, v3, Lorg/ejml/equation/TokenList$Token;->word:Ljava/lang/String;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 535
    :cond_0
    new-instance p1, Lorg/ejml/equation/ParseError;

    const-string p2, "expected word in macro header"

    invoke-direct {p1, p2}, Lorg/ejml/equation/ParseError;-><init>(Ljava/lang/String;)V

    throw p1

    .line 538
    :cond_1
    iget-object v1, v1, Lorg/ejml/equation/TokenList$Token;->next:Lorg/ejml/equation/TokenList$Token;

    if-eqz v1, :cond_2

    .line 539
    invoke-virtual {v1}, Lorg/ejml/equation/TokenList$Token;->getSymbol()Lorg/ejml/equation/Symbol;

    move-result-object v2

    sget-object v3, Lorg/ejml/equation/Symbol;->ASSIGN:Lorg/ejml/equation/Symbol;

    if-ne v2, v3, :cond_2

    .line 541
    iget-object v1, v1, Lorg/ejml/equation/TokenList$Token;->next:Lorg/ejml/equation/TokenList$Token;

    .line 542
    new-instance v2, Lorg/ejml/equation/TokenList;

    iget-object p1, p1, Lorg/ejml/equation/TokenList;->last:Lorg/ejml/equation/TokenList$Token;

    invoke-direct {v2, v1, p1}, Lorg/ejml/equation/TokenList;-><init>(Lorg/ejml/equation/TokenList$Token;Lorg/ejml/equation/TokenList$Token;)V

    iput-object v2, v0, Lorg/ejml/equation/Macro;->tokens:Lorg/ejml/equation/TokenList;

    .line 544
    iget-object p1, p0, Lorg/ejml/equation/Equation;->macros:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Lorg/ejml/equation/Macro;->createOperation(Ljava/util/HashMap;)Lorg/ejml/equation/Operation;

    move-result-object p1

    invoke-virtual {p2, p1}, Lorg/ejml/equation/Sequence;->addOperation(Lorg/ejml/equation/Operation;)V

    return-void

    .line 540
    :cond_2
    new-instance p1, Lorg/ejml/equation/ParseError;

    const-string p2, "Expected assignment"

    invoke-direct {p1, p2}, Lorg/ejml/equation/ParseError;-><init>(Ljava/lang/String;)V

    throw p1

    .line 527
    :cond_3
    new-instance p2, Lorg/ejml/equation/ParseError;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Expected the macro\'s name after "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/ejml/equation/TokenList;->getFirst()Lorg/ejml/equation/TokenList$Token;

    move-result-object p1

    iget-object p1, p1, Lorg/ejml/equation/TokenList$Token;->word:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lorg/ejml/equation/ParseError;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method private parseMacroInput(Ljava/util/List;Lorg/ejml/equation/TokenList$Token;)Lorg/ejml/equation/TokenList$Token;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/ejml/equation/TokenList$Token;",
            ">;",
            "Lorg/ejml/equation/TokenList$Token;",
            ")",
            "Lorg/ejml/equation/TokenList$Token;"
        }
    .end annotation

    .line 548
    invoke-virtual {p2}, Lorg/ejml/equation/TokenList$Token;->getSymbol()Lorg/ejml/equation/Symbol;

    move-result-object v0

    sget-object v1, Lorg/ejml/equation/Symbol;->PAREN_LEFT:Lorg/ejml/equation/Symbol;

    if-ne v0, v1, :cond_4

    .line 551
    iget-object p2, p2, Lorg/ejml/equation/TokenList$Token;->next:Lorg/ejml/equation/TokenList$Token;

    const/4 v0, 0x1

    move v1, v0

    :goto_0
    if-eqz p2, :cond_2

    .line 553
    invoke-virtual {p2}, Lorg/ejml/equation/TokenList$Token;->getSymbol()Lorg/ejml/equation/Symbol;

    move-result-object v2

    sget-object v3, Lorg/ejml/equation/Symbol;->PAREN_RIGHT:Lorg/ejml/equation/Symbol;

    if-eq v2, v3, :cond_2

    if-eqz v1, :cond_0

    .line 555
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    goto :goto_1

    .line 558
    :cond_0
    invoke-virtual {p2}, Lorg/ejml/equation/TokenList$Token;->getSymbol()Lorg/ejml/equation/Symbol;

    move-result-object v1

    sget-object v2, Lorg/ejml/equation/Symbol;->COMMA:Lorg/ejml/equation/Symbol;

    if-ne v1, v2, :cond_1

    move v1, v0

    .line 563
    :goto_1
    iget-object p2, p2, Lorg/ejml/equation/TokenList$Token;->next:Lorg/ejml/equation/TokenList$Token;

    goto :goto_0

    .line 559
    :cond_1
    new-instance p1, Lorg/ejml/equation/ParseError;

    const-string p2, "Expected comma"

    invoke-direct {p1, p2}, Lorg/ejml/equation/ParseError;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    if-eqz p2, :cond_3

    return-object p2

    .line 566
    :cond_3
    new-instance p1, Lorg/ejml/equation/ParseError;

    const-string p2, "Token sequence ended unexpectedly"

    invoke-direct {p1, p2}, Lorg/ejml/equation/ParseError;-><init>(Ljava/lang/String;)V

    throw p1

    .line 549
    :cond_4
    new-instance p1, Lorg/ejml/equation/ParseError;

    const-string p2, "Expected ("

    invoke-direct {p1, p2}, Lorg/ejml/equation/ParseError;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private replaceSequence(Lorg/ejml/equation/TokenList;Lorg/ejml/equation/Variable;Lorg/ejml/equation/TokenList$Token;Lorg/ejml/equation/TokenList$Token;)Lorg/ejml/equation/TokenList$Token;
    .locals 1

    .line 1101
    new-instance v0, Lorg/ejml/equation/TokenList$Token;

    invoke-direct {v0, p2}, Lorg/ejml/equation/TokenList$Token;-><init>(Lorg/ejml/equation/Variable;)V

    .line 1102
    iget-object p2, p3, Lorg/ejml/equation/TokenList$Token;->previous:Lorg/ejml/equation/TokenList$Token;

    invoke-virtual {p1, p2, v0}, Lorg/ejml/equation/TokenList;->insert(Lorg/ejml/equation/TokenList$Token;Lorg/ejml/equation/TokenList$Token;)V

    .line 1103
    invoke-virtual {p1, p3, p4}, Lorg/ejml/equation/TokenList;->extractSubList(Lorg/ejml/equation/TokenList$Token;Lorg/ejml/equation/TokenList$Token;)Lorg/ejml/equation/TokenList;

    return-object v0
.end method

.method private stripCommas(Lorg/ejml/equation/TokenList;)V
    .locals 4

    .line 904
    invoke-virtual {p1}, Lorg/ejml/equation/TokenList;->getFirst()Lorg/ejml/equation/TokenList$Token;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    .line 907
    iget-object v1, v0, Lorg/ejml/equation/TokenList$Token;->next:Lorg/ejml/equation/TokenList$Token;

    .line 908
    invoke-virtual {v0}, Lorg/ejml/equation/TokenList$Token;->getSymbol()Lorg/ejml/equation/Symbol;

    move-result-object v2

    sget-object v3, Lorg/ejml/equation/Symbol;->COMMA:Lorg/ejml/equation/Symbol;

    if-ne v2, v3, :cond_0

    .line 909
    invoke-virtual {p1, v0}, Lorg/ejml/equation/TokenList;->remove(Lorg/ejml/equation/TokenList$Token;)V

    :cond_0
    move-object v0, v1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public alias(DLjava/lang/String;)V
    .locals 2

    .line 323
    invoke-virtual {p0, p3}, Lorg/ejml/equation/Equation;->isReserved(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 326
    iget-object v0, p0, Lorg/ejml/equation/Equation;->variables:Ljava/util/HashMap;

    invoke-virtual {v0, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/ejml/equation/VariableDouble;

    if-nez v0, :cond_0

    .line 328
    iget-object v0, p0, Lorg/ejml/equation/Equation;->variables:Ljava/util/HashMap;

    new-instance v1, Lorg/ejml/equation/VariableDouble;

    invoke-direct {v1, p1, p2}, Lorg/ejml/equation/VariableDouble;-><init>(D)V

    invoke-virtual {v0, p3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 330
    :cond_0
    iput-wide p1, v0, Lorg/ejml/equation/VariableDouble;->value:D

    :goto_0
    return-void

    .line 324
    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Reserved word or contains a reserved character. \'"

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, "\'"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public alias(ILjava/lang/String;)V
    .locals 2

    .line 341
    invoke-virtual {p0, p2}, Lorg/ejml/equation/Equation;->isReserved(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 344
    iget-object v0, p0, Lorg/ejml/equation/Equation;->variables:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/ejml/equation/VariableInteger;

    if-nez v0, :cond_0

    .line 346
    iget-object v0, p0, Lorg/ejml/equation/Equation;->variables:Ljava/util/HashMap;

    new-instance v1, Lorg/ejml/equation/VariableInteger;

    invoke-direct {v1, p1}, Lorg/ejml/equation/VariableInteger;-><init>(I)V

    invoke-virtual {v0, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 348
    :cond_0
    iput p1, v0, Lorg/ejml/equation/VariableInteger;->value:I

    :goto_0
    return-void

    .line 342
    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Reserved word or contains a reserved character"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public alias(Lorg/ejml/data/DMatrixRMaj;Ljava/lang/String;)V
    .locals 2

    .line 290
    invoke-virtual {p0, p2}, Lorg/ejml/equation/Equation;->isReserved(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 292
    iget-object v0, p0, Lorg/ejml/equation/Equation;->variables:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/ejml/equation/VariableMatrix;

    if-nez v0, :cond_0

    .line 294
    iget-object v0, p0, Lorg/ejml/equation/Equation;->variables:Ljava/util/HashMap;

    new-instance v1, Lorg/ejml/equation/VariableMatrix;

    invoke-direct {v1, p1}, Lorg/ejml/equation/VariableMatrix;-><init>(Lorg/ejml/data/DMatrixRMaj;)V

    invoke-virtual {v0, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 296
    :cond_0
    iput-object p1, v0, Lorg/ejml/equation/VariableMatrix;->matrix:Lorg/ejml/data/DMatrixRMaj;

    :goto_0
    return-void

    .line 291
    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Reserved word or contains a reserved character"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public alias(Lorg/ejml/data/DMatrixSparseCSC;Ljava/lang/String;)V
    .locals 3

    .line 307
    new-instance v0, Lorg/ejml/data/DMatrixRMaj;

    iget v1, p1, Lorg/ejml/data/DMatrixSparseCSC;->numRows:I

    iget v2, p1, Lorg/ejml/data/DMatrixSparseCSC;->numCols:I

    invoke-direct {v0, v1, v2}, Lorg/ejml/data/DMatrixRMaj;-><init>(II)V

    .line 308
    invoke-static {p1, v0}, Lorg/ejml/ops/DConvertMatrixStruct;->convert(Lorg/ejml/data/DMatrixSparseCSC;Lorg/ejml/data/DMatrixRMaj;)Lorg/ejml/data/DMatrixRMaj;

    .line 309
    invoke-virtual {p0, v0, p2}, Lorg/ejml/equation/Equation;->alias(Lorg/ejml/data/DMatrixRMaj;Ljava/lang/String;)V

    return-void
.end method

.method public alias(Lorg/ejml/data/FMatrixRMaj;Ljava/lang/String;)V
    .locals 3

    .line 301
    new-instance v0, Lorg/ejml/data/DMatrixRMaj;

    iget v1, p1, Lorg/ejml/data/FMatrixRMaj;->numRows:I

    iget v2, p1, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    invoke-direct {v0, v1, v2}, Lorg/ejml/data/DMatrixRMaj;-><init>(II)V

    .line 302
    invoke-static {p1, v0}, Lorg/ejml/ops/ConvertMatrixData;->convert(Lorg/ejml/data/FMatrixRMaj;Lorg/ejml/data/DMatrixRMaj;)V

    .line 303
    invoke-virtual {p0, v0, p2}, Lorg/ejml/equation/Equation;->alias(Lorg/ejml/data/DMatrixRMaj;Ljava/lang/String;)V

    return-void
.end method

.method public alias(Lorg/ejml/simple/SimpleMatrix;Ljava/lang/String;)V
    .locals 0

    .line 313
    invoke-virtual {p1}, Lorg/ejml/simple/SimpleMatrix;->getMatrix()Lorg/ejml/data/Matrix;

    move-result-object p1

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/ejml/equation/Equation;->alias([Ljava/lang/Object;)V

    return-void
.end method

.method public varargs alias([Ljava/lang/Object;)V
    .locals 3

    .line 368
    array-length v0, p1

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v0, 0x0

    .line 371
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 372
    aget-object v1, p1, v0

    add-int/lit8 v2, v0, 0x1

    aget-object v2, p1, v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Lorg/ejml/equation/Equation;->aliasGeneric(Ljava/lang/Object;Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    :cond_0
    return-void

    .line 369
    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Even number of arguments expected"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected aliasGeneric(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 3

    .line 383
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/lang/Integer;

    if-ne v0, v1, :cond_0

    .line 384
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1, p2}, Lorg/ejml/equation/Equation;->alias(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 385
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/lang/Double;

    if-ne v0, v1, :cond_1

    .line 386
    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1, p2}, Lorg/ejml/equation/Equation;->alias(DLjava/lang/String;)V

    goto :goto_0

    .line 387
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lorg/ejml/data/DMatrixRMaj;

    if-ne v0, v1, :cond_2

    .line 388
    check-cast p1, Lorg/ejml/data/DMatrixRMaj;

    invoke-virtual {p0, p1, p2}, Lorg/ejml/equation/Equation;->alias(Lorg/ejml/data/DMatrixRMaj;Ljava/lang/String;)V

    goto :goto_0

    .line 389
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lorg/ejml/data/FMatrixRMaj;

    if-ne v0, v1, :cond_3

    .line 390
    check-cast p1, Lorg/ejml/data/FMatrixRMaj;

    invoke-virtual {p0, p1, p2}, Lorg/ejml/equation/Equation;->alias(Lorg/ejml/data/FMatrixRMaj;Ljava/lang/String;)V

    goto :goto_0

    .line 391
    :cond_3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lorg/ejml/data/DMatrixSparseCSC;

    if-ne v0, v1, :cond_4

    .line 392
    check-cast p1, Lorg/ejml/data/DMatrixSparseCSC;

    invoke-virtual {p0, p1, p2}, Lorg/ejml/equation/Equation;->alias(Lorg/ejml/data/DMatrixSparseCSC;Ljava/lang/String;)V

    goto :goto_0

    .line 393
    :cond_4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lorg/ejml/simple/SimpleMatrix;

    if-ne v0, v1, :cond_5

    .line 394
    check-cast p1, Lorg/ejml/simple/SimpleMatrix;

    invoke-virtual {p0, p1, p2}, Lorg/ejml/equation/Equation;->alias(Lorg/ejml/simple/SimpleMatrix;Ljava/lang/String;)V

    goto :goto_0

    .line 395
    :cond_5
    instance-of v0, p1, Lorg/ejml/data/DMatrixFixed;

    const/4 v1, 0x1

    if-eqz v0, :cond_6

    .line 396
    new-instance v0, Lorg/ejml/data/DMatrixRMaj;

    invoke-direct {v0, v1, v1}, Lorg/ejml/data/DMatrixRMaj;-><init>(II)V

    .line 397
    check-cast p1, Lorg/ejml/data/DMatrixFixed;

    invoke-static {p1, v0}, Lorg/ejml/ops/DConvertMatrixStruct;->convert(Lorg/ejml/data/DMatrix;Lorg/ejml/data/DMatrix;)V

    .line 398
    invoke-virtual {p0, v0, p2}, Lorg/ejml/equation/Equation;->alias(Lorg/ejml/data/DMatrixRMaj;Ljava/lang/String;)V

    goto :goto_0

    .line 399
    :cond_6
    instance-of v0, p1, Lorg/ejml/data/FMatrixFixed;

    if-eqz v0, :cond_7

    .line 400
    new-instance v0, Lorg/ejml/data/FMatrixRMaj;

    invoke-direct {v0, v1, v1}, Lorg/ejml/data/FMatrixRMaj;-><init>(II)V

    .line 401
    check-cast p1, Lorg/ejml/data/FMatrixFixed;

    invoke-static {p1, v0}, Lorg/ejml/ops/FConvertMatrixStruct;->convert(Lorg/ejml/data/FMatrix;Lorg/ejml/data/FMatrix;)V

    .line 402
    invoke-virtual {p0, v0, p2}, Lorg/ejml/equation/Equation;->alias(Lorg/ejml/data/FMatrixRMaj;Ljava/lang/String;)V

    :goto_0
    return-void

    .line 404
    :cond_7
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown value type of "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 405
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " for variable "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public compile(Ljava/lang/String;)Lorg/ejml/equation/Sequence;
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 410
    invoke-virtual {p0, p1, v0, v1}, Lorg/ejml/equation/Equation;->compile(Ljava/lang/String;ZZ)Lorg/ejml/equation/Sequence;

    move-result-object p1

    return-object p1
.end method

.method public compile(Ljava/lang/String;ZZ)Lorg/ejml/equation/Sequence;
    .locals 4

    .line 423
    iget-object v0, p0, Lorg/ejml/equation/Equation;->functions:Lorg/ejml/equation/ManagerFunctions;

    iget-object v1, p0, Lorg/ejml/equation/Equation;->managerTemp:Lorg/ejml/equation/ManagerTempVariables;

    invoke-virtual {v0, v1}, Lorg/ejml/equation/ManagerFunctions;->setManagerTemp(Lorg/ejml/equation/ManagerTempVariables;)V

    .line 425
    new-instance v0, Lorg/ejml/equation/Sequence;

    invoke-direct {v0}, Lorg/ejml/equation/Sequence;-><init>()V

    .line 426
    iget-object v1, p0, Lorg/ejml/equation/Equation;->managerTemp:Lorg/ejml/equation/ManagerTempVariables;

    invoke-virtual {p0, p1, v1}, Lorg/ejml/equation/Equation;->extractTokens(Ljava/lang/String;Lorg/ejml/equation/ManagerTempVariables;)Lorg/ejml/equation/TokenList;

    move-result-object p1

    .line 428
    invoke-virtual {p1}, Lorg/ejml/equation/TokenList;->size()I

    move-result v1

    const/4 v2, 0x3

    if-lt v1, v2, :cond_6

    .line 431
    invoke-virtual {p1}, Lorg/ejml/equation/TokenList;->getFirst()Lorg/ejml/equation/TokenList$Token;

    move-result-object v1

    .line 433
    iget-object v2, v1, Lorg/ejml/equation/TokenList$Token;->word:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, v1, Lorg/ejml/equation/TokenList$Token;->word:Ljava/lang/String;

    const-string v3, "macro"

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_0

    .line 434
    invoke-direct {p0, p1, v0}, Lorg/ejml/equation/Equation;->parseMacro(Lorg/ejml/equation/TokenList;Lorg/ejml/equation/Sequence;)V

    goto/16 :goto_2

    .line 436
    :cond_0
    invoke-virtual {p0, p1}, Lorg/ejml/equation/Equation;->insertFunctionsAndVariables(Lorg/ejml/equation/TokenList;)V

    .line 437
    invoke-virtual {p0, p1}, Lorg/ejml/equation/Equation;->insertMacros(Lorg/ejml/equation/TokenList;)V

    if-eqz p3, :cond_1

    .line 439
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "Parsed tokens:\n------------"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 440
    invoke-virtual {p1}, Lorg/ejml/equation/TokenList;->print()V

    .line 441
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v2}, Ljava/io/PrintStream;->println()V

    .line 445
    :cond_1
    invoke-virtual {v1}, Lorg/ejml/equation/TokenList$Token;->getType()Lorg/ejml/equation/TokenList$Type;

    move-result-object v2

    sget-object v3, Lorg/ejml/equation/TokenList$Type;->VARIABLE:Lorg/ejml/equation/TokenList$Type;

    if-eq v2, v3, :cond_3

    invoke-virtual {v1}, Lorg/ejml/equation/TokenList$Token;->getType()Lorg/ejml/equation/TokenList$Type;

    move-result-object v2

    sget-object v3, Lorg/ejml/equation/TokenList$Type;->WORD:Lorg/ejml/equation/TokenList$Type;

    if-eq v2, v3, :cond_3

    .line 446
    invoke-direct {p0, v0, p1}, Lorg/ejml/equation/Equation;->compileTokens(Lorg/ejml/equation/Sequence;Lorg/ejml/equation/TokenList;)V

    .line 449
    invoke-virtual {p1}, Lorg/ejml/equation/TokenList;->getFirst()Lorg/ejml/equation/TokenList$Token;

    move-result-object p1

    invoke-virtual {p1}, Lorg/ejml/equation/TokenList$Token;->getVariable()Lorg/ejml/equation/Variable;

    move-result-object p1

    if-eqz p1, :cond_4

    if-nez p2, :cond_2

    .line 454
    iput-object p1, v0, Lorg/ejml/equation/Sequence;->output:Lorg/ejml/equation/Variable;

    goto :goto_0

    .line 452
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "No assignment to an output variable could be found. Found "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 458
    :cond_3
    invoke-direct {p0, v0, p1, v1}, Lorg/ejml/equation/Equation;->compileAssignment(Lorg/ejml/equation/Sequence;Lorg/ejml/equation/TokenList;Lorg/ejml/equation/TokenList$Token;)V

    :cond_4
    :goto_0
    if-eqz p3, :cond_5

    .line 462
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string p2, "Operations:\n------------"

    invoke-virtual {p1, p2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 463
    :goto_1
    iget-object p2, v0, Lorg/ejml/equation/Sequence;->operations:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-ge p1, p2, :cond_5

    .line 464
    sget-object p2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    iget-object p3, v0, Lorg/ejml/equation/Sequence;->operations:Ljava/util/List;

    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lorg/ejml/equation/Operation;

    invoke-virtual {p3}, Lorg/ejml/equation/Operation;->name()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_5
    :goto_2
    return-object v0

    .line 429
    :cond_6
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Too few tokens"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected createFunction(Lorg/ejml/equation/TokenList$Token;Ljava/util/List;Lorg/ejml/equation/TokenList;Lorg/ejml/equation/Sequence;)Lorg/ejml/equation/TokenList$Token;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ejml/equation/TokenList$Token;",
            "Ljava/util/List<",
            "Lorg/ejml/equation/TokenList$Token;",
            ">;",
            "Lorg/ejml/equation/TokenList;",
            "Lorg/ejml/equation/Sequence;",
            ")",
            "Lorg/ejml/equation/TokenList$Token;"
        }
    .end annotation

    .line 1338
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 1339
    iget-object v0, p0, Lorg/ejml/equation/Equation;->functions:Lorg/ejml/equation/ManagerFunctions;

    invoke-virtual {p1}, Lorg/ejml/equation/TokenList$Token;->getFunction()Lorg/ejml/equation/Function;

    move-result-object v1

    invoke-virtual {v1}, Lorg/ejml/equation/Function;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/ejml/equation/TokenList$Token;

    invoke-virtual {p2}, Lorg/ejml/equation/TokenList$Token;->getVariable()Lorg/ejml/equation/Variable;

    move-result-object p2

    invoke-virtual {v0, v1, p2}, Lorg/ejml/equation/ManagerFunctions;->create(Ljava/lang/String;Lorg/ejml/equation/Variable;)Lorg/ejml/equation/Operation$Info;

    move-result-object p2

    goto :goto_1

    .line 1341
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1342
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_1

    .line 1343
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/ejml/equation/TokenList$Token;

    invoke-virtual {v1}, Lorg/ejml/equation/TokenList$Token;->getVariable()Lorg/ejml/equation/Variable;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1345
    :cond_1
    iget-object p2, p0, Lorg/ejml/equation/Equation;->functions:Lorg/ejml/equation/ManagerFunctions;

    invoke-virtual {p1}, Lorg/ejml/equation/TokenList$Token;->getFunction()Lorg/ejml/equation/Function;

    move-result-object v1

    invoke-virtual {v1}, Lorg/ejml/equation/Function;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1, v0}, Lorg/ejml/equation/ManagerFunctions;->create(Ljava/lang/String;Ljava/util/List;)Lorg/ejml/equation/Operation$Info;

    move-result-object p2

    .line 1348
    :goto_1
    iget-object v0, p2, Lorg/ejml/equation/Operation$Info;->op:Lorg/ejml/equation/Operation;

    invoke-virtual {p4, v0}, Lorg/ejml/equation/Sequence;->addOperation(Lorg/ejml/equation/Operation;)V

    .line 1351
    new-instance p4, Lorg/ejml/equation/TokenList$Token;

    iget-object p2, p2, Lorg/ejml/equation/Operation$Info;->output:Lorg/ejml/equation/Variable;

    invoke-direct {p4, p2}, Lorg/ejml/equation/TokenList$Token;-><init>(Lorg/ejml/equation/Variable;)V

    .line 1352
    invoke-virtual {p3, p1, p4}, Lorg/ejml/equation/TokenList;->replace(Lorg/ejml/equation/TokenList$Token;Lorg/ejml/equation/TokenList$Token;)V

    return-object p4
.end method

.method protected createOp(Lorg/ejml/equation/TokenList$Token;Lorg/ejml/equation/TokenList$Token;Lorg/ejml/equation/TokenList$Token;Lorg/ejml/equation/TokenList;Lorg/ejml/equation/Sequence;)Lorg/ejml/equation/TokenList$Token;
    .locals 4

    .line 1320
    iget-object v0, p0, Lorg/ejml/equation/Equation;->functions:Lorg/ejml/equation/ManagerFunctions;

    iget-object v1, p2, Lorg/ejml/equation/TokenList$Token;->symbol:Lorg/ejml/equation/Symbol;

    invoke-virtual {p1}, Lorg/ejml/equation/TokenList$Token;->getVariable()Lorg/ejml/equation/Variable;

    move-result-object v2

    invoke-virtual {p3}, Lorg/ejml/equation/TokenList$Token;->getVariable()Lorg/ejml/equation/Variable;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lorg/ejml/equation/ManagerFunctions;->create(Lorg/ejml/equation/Symbol;Lorg/ejml/equation/Variable;Lorg/ejml/equation/Variable;)Lorg/ejml/equation/Operation$Info;

    move-result-object v0

    .line 1322
    iget-object v1, v0, Lorg/ejml/equation/Operation$Info;->op:Lorg/ejml/equation/Operation;

    invoke-virtual {p5, v1}, Lorg/ejml/equation/Sequence;->addOperation(Lorg/ejml/equation/Operation;)V

    .line 1325
    new-instance p5, Lorg/ejml/equation/TokenList$Token;

    iget-object v0, v0, Lorg/ejml/equation/Operation$Info;->output:Lorg/ejml/equation/Variable;

    invoke-direct {p5, v0}, Lorg/ejml/equation/TokenList$Token;-><init>(Lorg/ejml/equation/Variable;)V

    .line 1326
    invoke-virtual {p4, p1}, Lorg/ejml/equation/TokenList;->remove(Lorg/ejml/equation/TokenList$Token;)V

    .line 1327
    invoke-virtual {p4, p3}, Lorg/ejml/equation/TokenList;->remove(Lorg/ejml/equation/TokenList$Token;)V

    .line 1328
    invoke-virtual {p4, p2, p5}, Lorg/ejml/equation/TokenList;->replace(Lorg/ejml/equation/TokenList$Token;Lorg/ejml/equation/TokenList$Token;)V

    return-object p5
.end method

.method protected extractTokens(Ljava/lang/String;Lorg/ejml/equation/ManagerTempVariables;)Lorg/ejml/equation/TokenList;
    .locals 12

    .line 1411
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1413
    new-instance v0, Lorg/ejml/equation/TokenList;

    invoke-direct {v0}, Lorg/ejml/equation/TokenList;-><init>()V

    .line 1417
    sget-object v1, Lorg/ejml/equation/Equation$TokenType;->UNKNOWN:Lorg/ejml/equation/Equation$TokenType;

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    .line 1418
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v3, v5, :cond_1d

    .line 1420
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 1421
    sget-object v6, Lorg/ejml/equation/Equation$TokenType;->WORD:Lorg/ejml/equation/Equation$TokenType;

    const/4 v7, 0x1

    if-ne v1, v6, :cond_1

    .line 1422
    invoke-static {v5}, Lorg/ejml/equation/Equation;->isLetter(C)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1423
    iget-object v6, p0, Lorg/ejml/equation/Equation;->storage:[C

    add-int/lit8 v8, v4, 0x1

    aput-char v5, v6, v4

    :goto_1
    move v5, v2

    move v4, v8

    goto/16 :goto_c

    .line 1426
    :cond_0
    new-instance v1, Ljava/lang/String;

    iget-object v5, p0, Lorg/ejml/equation/Equation;->storage:[C

    invoke-direct {v1, v5, v2, v4}, Ljava/lang/String;-><init>([CII)V

    .line 1427
    invoke-virtual {v0, v1}, Lorg/ejml/equation/TokenList;->add(Ljava/lang/String;)Lorg/ejml/equation/TokenList$Token;

    .line 1428
    sget-object v1, Lorg/ejml/equation/Equation$TokenType;->UNKNOWN:Lorg/ejml/equation/Equation$TokenType;

    :goto_2
    move v5, v7

    goto/16 :goto_c

    .line 1431
    :cond_1
    sget-object v6, Lorg/ejml/equation/Equation$TokenType;->INTEGER:Lorg/ejml/equation/Equation$TokenType;

    const/16 v8, 0x2e

    const/16 v9, 0x45

    const/16 v10, 0x65

    if-ne v1, v6, :cond_8

    if-ne v5, v8, :cond_2

    .line 1433
    sget-object v1, Lorg/ejml/equation/Equation$TokenType;->FLOAT:Lorg/ejml/equation/Equation$TokenType;

    .line 1434
    iget-object v6, p0, Lorg/ejml/equation/Equation;->storage:[C

    add-int/lit8 v8, v4, 0x1

    aput-char v5, v6, v4

    goto :goto_1

    :cond_2
    if-eq v5, v10, :cond_7

    if-ne v5, v9, :cond_3

    goto :goto_4

    .line 1438
    :cond_3
    invoke-static {v5}, Ljava/lang/Character;->isDigit(C)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1439
    iget-object v6, p0, Lorg/ejml/equation/Equation;->storage:[C

    add-int/lit8 v8, v4, 0x1

    aput-char v5, v6, v4

    goto :goto_1

    .line 1440
    :cond_4
    invoke-static {v5}, Lorg/ejml/equation/Equation;->isSymbol(C)Z

    move-result v1

    if-nez v1, :cond_6

    invoke-static {v5}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v1

    if-eqz v1, :cond_5

    goto :goto_3

    .line 1446
    :cond_5
    new-instance p1, Lorg/ejml/equation/ParseError;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Unexpected character at the end of an integer "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/ejml/equation/ParseError;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1441
    :cond_6
    :goto_3
    new-instance v1, Ljava/lang/String;

    iget-object v5, p0, Lorg/ejml/equation/Equation;->storage:[C

    invoke-direct {v1, v5, v2, v4}, Ljava/lang/String;-><init>([CII)V

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 1442
    invoke-virtual {p2, v1}, Lorg/ejml/equation/ManagerTempVariables;->createInteger(I)Lorg/ejml/equation/VariableInteger;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/ejml/equation/TokenList;->add(Lorg/ejml/equation/Variable;)Lorg/ejml/equation/TokenList$Token;

    .line 1443
    sget-object v1, Lorg/ejml/equation/Equation$TokenType;->UNKNOWN:Lorg/ejml/equation/Equation$TokenType;

    goto :goto_2

    .line 1436
    :cond_7
    :goto_4
    sget-object v1, Lorg/ejml/equation/Equation$TokenType;->FLOAT_EXP:Lorg/ejml/equation/Equation$TokenType;

    .line 1437
    iget-object v6, p0, Lorg/ejml/equation/Equation;->storage:[C

    add-int/lit8 v8, v4, 0x1

    aput-char v5, v6, v4

    goto :goto_1

    .line 1448
    :cond_8
    sget-object v6, Lorg/ejml/equation/Equation$TokenType;->FLOAT:Lorg/ejml/equation/Equation$TokenType;

    const-string v11, "Unexpected character at the end of an float "

    if-ne v1, v6, :cond_f

    if-eq v5, v8, :cond_e

    if-eq v5, v10, :cond_d

    if-ne v5, v9, :cond_9

    goto :goto_6

    .line 1454
    :cond_9
    invoke-static {v5}, Ljava/lang/Character;->isDigit(C)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 1455
    iget-object v6, p0, Lorg/ejml/equation/Equation;->storage:[C

    add-int/lit8 v8, v4, 0x1

    aput-char v5, v6, v4

    goto/16 :goto_1

    .line 1456
    :cond_a
    invoke-static {v5}, Lorg/ejml/equation/Equation;->isSymbol(C)Z

    move-result v1

    if-nez v1, :cond_c

    invoke-static {v5}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v1

    if-eqz v1, :cond_b

    goto :goto_5

    .line 1462
    :cond_b
    new-instance p1, Lorg/ejml/equation/ParseError;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/ejml/equation/ParseError;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1457
    :cond_c
    :goto_5
    new-instance v1, Ljava/lang/String;

    iget-object v5, p0, Lorg/ejml/equation/Equation;->storage:[C

    invoke-direct {v1, v5, v2, v4}, Ljava/lang/String;-><init>([CII)V

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v5

    .line 1458
    invoke-virtual {p2, v5, v6}, Lorg/ejml/equation/ManagerTempVariables;->createDouble(D)Lorg/ejml/equation/VariableDouble;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/ejml/equation/TokenList;->add(Lorg/ejml/equation/Variable;)Lorg/ejml/equation/TokenList$Token;

    .line 1459
    sget-object v1, Lorg/ejml/equation/Equation$TokenType;->UNKNOWN:Lorg/ejml/equation/Equation$TokenType;

    goto/16 :goto_2

    .line 1452
    :cond_d
    :goto_6
    iget-object v1, p0, Lorg/ejml/equation/Equation;->storage:[C

    add-int/lit8 v6, v4, 0x1

    aput-char v5, v1, v4

    .line 1453
    sget-object v1, Lorg/ejml/equation/Equation$TokenType;->FLOAT_EXP:Lorg/ejml/equation/Equation$TokenType;

    move v5, v2

    move v4, v6

    goto/16 :goto_c

    .line 1450
    :cond_e
    new-instance p1, Lorg/ejml/equation/ParseError;

    const-string p2, "Unexpected \'.\' in a float"

    invoke-direct {p1, p2}, Lorg/ejml/equation/ParseError;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1464
    :cond_f
    sget-object v6, Lorg/ejml/equation/Equation$TokenType;->FLOAT_EXP:Lorg/ejml/equation/Equation$TokenType;

    const/16 v8, 0x2d

    if-ne v1, v6, :cond_15

    if-ne v5, v8, :cond_11

    .line 1467
    iget-object v6, p0, Lorg/ejml/equation/Equation;->storage:[C

    add-int/lit8 v8, v4, -0x1

    aget-char v8, v6, v8

    if-eq v8, v10, :cond_10

    if-ne v8, v9, :cond_14

    :cond_10
    add-int/lit8 v8, v4, 0x1

    .line 1469
    aput-char v5, v6, v4

    goto :goto_7

    .line 1473
    :cond_11
    invoke-static {v5}, Ljava/lang/Character;->isDigit(C)Z

    move-result v6

    if-eqz v6, :cond_12

    .line 1474
    iget-object v6, p0, Lorg/ejml/equation/Equation;->storage:[C

    add-int/lit8 v8, v4, 0x1

    aput-char v5, v6, v4

    :goto_7
    move v5, v2

    move v4, v8

    goto :goto_9

    .line 1475
    :cond_12
    invoke-static {v5}, Lorg/ejml/equation/Equation;->isSymbol(C)Z

    move-result v6

    if-nez v6, :cond_14

    invoke-static {v5}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v6

    if-eqz v6, :cond_13

    goto :goto_8

    .line 1478
    :cond_13
    new-instance p1, Lorg/ejml/equation/ParseError;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/ejml/equation/ParseError;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_14
    :goto_8
    move v5, v7

    :goto_9
    if-eqz v5, :cond_18

    .line 1482
    new-instance v1, Ljava/lang/String;

    iget-object v5, p0, Lorg/ejml/equation/Equation;->storage:[C

    invoke-direct {v1, v5, v2, v4}, Ljava/lang/String;-><init>([CII)V

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v5

    .line 1483
    invoke-virtual {p2, v5, v6}, Lorg/ejml/equation/ManagerTempVariables;->createDouble(D)Lorg/ejml/equation/VariableDouble;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/ejml/equation/TokenList;->add(Lorg/ejml/equation/Variable;)Lorg/ejml/equation/TokenList$Token;

    .line 1484
    sget-object v1, Lorg/ejml/equation/Equation$TokenType;->UNKNOWN:Lorg/ejml/equation/Equation$TokenType;

    goto/16 :goto_2

    .line 1488
    :cond_15
    invoke-static {v5}, Lorg/ejml/equation/Equation;->isSymbol(C)Z

    move-result v6

    if-eqz v6, :cond_19

    if-ne v5, v8, :cond_17

    add-int/lit8 v6, v3, 0x1

    .line 1494
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v6, v8, :cond_17

    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Ljava/lang/Character;->isDigit(C)Z

    move-result v6

    if-eqz v6, :cond_17

    iget-object v6, v0, Lorg/ejml/equation/TokenList;->last:Lorg/ejml/equation/TokenList$Token;

    if-eqz v6, :cond_16

    iget-object v6, v0, Lorg/ejml/equation/TokenList;->last:Lorg/ejml/equation/TokenList$Token;

    .line 1495
    invoke-virtual {v6}, Lorg/ejml/equation/TokenList$Token;->getSymbol()Lorg/ejml/equation/Symbol;

    move-result-object v6

    invoke-static {v6}, Lorg/ejml/equation/Equation;->isOperatorLR(Lorg/ejml/equation/Symbol;)Z

    move-result v6

    if-eqz v6, :cond_17

    .line 1496
    :cond_16
    sget-object v1, Lorg/ejml/equation/Equation$TokenType;->INTEGER:Lorg/ejml/equation/Equation$TokenType;

    .line 1497
    iget-object v4, p0, Lorg/ejml/equation/Equation;->storage:[C

    aput-char v5, v4, v2

    move v4, v7

    move v6, v4

    goto :goto_a

    :cond_17
    move v6, v2

    :goto_a
    if-nez v6, :cond_18

    .line 1503
    invoke-static {v5}, Lorg/ejml/equation/Symbol;->lookup(C)Lorg/ejml/equation/Symbol;

    move-result-object v6

    invoke-virtual {v0, v6}, Lorg/ejml/equation/TokenList;->add(Lorg/ejml/equation/Symbol;)Lorg/ejml/equation/TokenList$Token;

    move-result-object v6

    .line 1504
    iget-object v8, v6, Lorg/ejml/equation/TokenList$Token;->previous:Lorg/ejml/equation/TokenList$Token;

    if-eqz v8, :cond_18

    iget-object v8, v6, Lorg/ejml/equation/TokenList$Token;->previous:Lorg/ejml/equation/TokenList$Token;

    invoke-virtual {v8}, Lorg/ejml/equation/TokenList$Token;->getType()Lorg/ejml/equation/TokenList$Type;

    move-result-object v8

    sget-object v9, Lorg/ejml/equation/TokenList$Type;->SYMBOL:Lorg/ejml/equation/TokenList$Type;

    if-ne v8, v9, :cond_18

    .line 1506
    iget-object v8, v6, Lorg/ejml/equation/TokenList$Token;->previous:Lorg/ejml/equation/TokenList$Token;

    invoke-virtual {v8}, Lorg/ejml/equation/TokenList$Token;->getSymbol()Lorg/ejml/equation/Symbol;

    move-result-object v8

    sget-object v9, Lorg/ejml/equation/Symbol;->PERIOD:Lorg/ejml/equation/Symbol;

    if-ne v8, v9, :cond_18

    .line 1507
    iget-object v8, v6, Lorg/ejml/equation/TokenList$Token;->previous:Lorg/ejml/equation/TokenList$Token;

    invoke-virtual {v0, v8}, Lorg/ejml/equation/TokenList;->remove(Lorg/ejml/equation/TokenList$Token;)V

    .line 1508
    invoke-virtual {v0, v6}, Lorg/ejml/equation/TokenList;->remove(Lorg/ejml/equation/TokenList$Token;)V

    .line 1509
    invoke-static {v5}, Lorg/ejml/equation/Symbol;->lookupElementWise(C)Lorg/ejml/equation/Symbol;

    move-result-object v5

    invoke-virtual {v0, v5}, Lorg/ejml/equation/TokenList;->add(Lorg/ejml/equation/Symbol;)Lorg/ejml/equation/TokenList$Token;

    :cond_18
    move v5, v2

    goto :goto_c

    .line 1513
    :cond_19
    invoke-static {v5}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v6

    if-eqz v6, :cond_1a

    goto :goto_d

    .line 1517
    :cond_1a
    invoke-static {v5}, Ljava/lang/Character;->isDigit(C)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 1518
    sget-object v1, Lorg/ejml/equation/Equation$TokenType;->INTEGER:Lorg/ejml/equation/Equation$TokenType;

    goto :goto_b

    .line 1520
    :cond_1b
    sget-object v1, Lorg/ejml/equation/Equation$TokenType;->WORD:Lorg/ejml/equation/Equation$TokenType;

    .line 1522
    :goto_b
    iget-object v4, p0, Lorg/ejml/equation/Equation;->storage:[C

    aput-char v5, v4, v2

    move v5, v2

    move v4, v7

    :goto_c
    if-eqz v5, :cond_1c

    add-int/lit8 v3, v3, -0x1

    :cond_1c
    :goto_d
    add-int/2addr v3, v7

    goto/16 :goto_0

    :cond_1d
    return-object v0
.end method

.method public getFunctions()Lorg/ejml/equation/ManagerFunctions;
    .locals 1

    .line 1702
    iget-object v0, p0, Lorg/ejml/equation/Equation;->functions:Lorg/ejml/equation/ManagerFunctions;

    return-object v0
.end method

.method protected handleParentheses(Lorg/ejml/equation/TokenList;Lorg/ejml/equation/Sequence;)V
    .locals 6

    .line 672
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 675
    iget-object v1, p1, Lorg/ejml/equation/TokenList;->first:Lorg/ejml/equation/TokenList$Token;

    :goto_0
    if-eqz v1, :cond_6

    .line 677
    iget-object v2, v1, Lorg/ejml/equation/TokenList$Token;->next:Lorg/ejml/equation/TokenList$Token;

    .line 678
    invoke-virtual {v1}, Lorg/ejml/equation/TokenList$Token;->getType()Lorg/ejml/equation/TokenList$Type;

    move-result-object v3

    sget-object v4, Lorg/ejml/equation/TokenList$Type;->SYMBOL:Lorg/ejml/equation/TokenList$Type;

    if-ne v3, v4, :cond_5

    .line 679
    invoke-virtual {v1}, Lorg/ejml/equation/TokenList$Token;->getSymbol()Lorg/ejml/equation/Symbol;

    move-result-object v3

    sget-object v4, Lorg/ejml/equation/Symbol;->PAREN_LEFT:Lorg/ejml/equation/Symbol;

    if-ne v3, v4, :cond_0

    .line 680
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 681
    :cond_0
    invoke-virtual {v1}, Lorg/ejml/equation/TokenList$Token;->getSymbol()Lorg/ejml/equation/Symbol;

    move-result-object v3

    sget-object v4, Lorg/ejml/equation/Symbol;->PAREN_RIGHT:Lorg/ejml/equation/Symbol;

    if-ne v3, v4, :cond_5

    .line 682
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_4

    .line 685
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v0, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/ejml/equation/TokenList$Token;

    .line 688
    iget-object v4, v3, Lorg/ejml/equation/TokenList$Token;->previous:Lorg/ejml/equation/TokenList$Token;

    .line 690
    invoke-virtual {p1, v3, v1}, Lorg/ejml/equation/TokenList;->extractSubList(Lorg/ejml/equation/TokenList$Token;Lorg/ejml/equation/TokenList$Token;)Lorg/ejml/equation/TokenList;

    move-result-object v1

    .line 692
    iget-object v3, v1, Lorg/ejml/equation/TokenList;->first:Lorg/ejml/equation/TokenList$Token;

    invoke-virtual {v1, v3}, Lorg/ejml/equation/TokenList;->remove(Lorg/ejml/equation/TokenList$Token;)V

    .line 693
    iget-object v3, v1, Lorg/ejml/equation/TokenList;->last:Lorg/ejml/equation/TokenList$Token;

    invoke-virtual {v1, v3}, Lorg/ejml/equation/TokenList;->remove(Lorg/ejml/equation/TokenList$Token;)V

    if-eqz v4, :cond_2

    .line 696
    invoke-virtual {v4}, Lorg/ejml/equation/TokenList$Token;->getType()Lorg/ejml/equation/TokenList$Type;

    move-result-object v3

    sget-object v5, Lorg/ejml/equation/TokenList$Type;->FUNCTION:Lorg/ejml/equation/TokenList$Type;

    if-ne v3, v5, :cond_2

    .line 697
    invoke-virtual {p0, v1, p2}, Lorg/ejml/equation/Equation;->parseParameterCommaBlock(Lorg/ejml/equation/TokenList;Lorg/ejml/equation/Sequence;)Ljava/util/List;

    move-result-object v1

    .line 698
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 701
    invoke-virtual {p0, v4, v1, p1, p2}, Lorg/ejml/equation/Equation;->createFunction(Lorg/ejml/equation/TokenList$Token;Ljava/util/List;Lorg/ejml/equation/TokenList;Lorg/ejml/equation/Sequence;)Lorg/ejml/equation/TokenList$Token;

    goto :goto_1

    .line 699
    :cond_1
    new-instance p1, Lorg/ejml/equation/ParseError;

    const-string p2, "Empty function input parameters"

    invoke-direct {p1, p2}, Lorg/ejml/equation/ParseError;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    if-eqz v4, :cond_3

    .line 703
    invoke-virtual {v4}, Lorg/ejml/equation/TokenList$Token;->getType()Lorg/ejml/equation/TokenList$Type;

    move-result-object v3

    sget-object v5, Lorg/ejml/equation/TokenList$Type;->VARIABLE:Lorg/ejml/equation/TokenList$Type;

    if-ne v3, v5, :cond_3

    .line 704
    invoke-virtual {v4}, Lorg/ejml/equation/TokenList$Token;->getVariable()Lorg/ejml/equation/Variable;

    move-result-object v3

    invoke-virtual {v3}, Lorg/ejml/equation/Variable;->getType()Lorg/ejml/equation/VariableType;

    move-result-object v3

    sget-object v5, Lorg/ejml/equation/VariableType;->MATRIX:Lorg/ejml/equation/VariableType;

    if-ne v3, v5, :cond_3

    .line 706
    invoke-virtual {p0, v4, v1, p2}, Lorg/ejml/equation/Equation;->parseSubmatrixToExtract(Lorg/ejml/equation/TokenList$Token;Lorg/ejml/equation/TokenList;Lorg/ejml/equation/Sequence;)Lorg/ejml/equation/TokenList$Token;

    move-result-object v1

    .line 708
    invoke-virtual {p1, v4, v1}, Lorg/ejml/equation/TokenList;->insert(Lorg/ejml/equation/TokenList$Token;Lorg/ejml/equation/TokenList$Token;)V

    .line 709
    invoke-virtual {p1, v4}, Lorg/ejml/equation/TokenList;->remove(Lorg/ejml/equation/TokenList$Token;)V

    goto :goto_1

    :cond_3
    const/4 v3, 0x0

    .line 712
    invoke-virtual {p0, v1, p2, v3}, Lorg/ejml/equation/Equation;->parseBlockNoParentheses(Lorg/ejml/equation/TokenList;Lorg/ejml/equation/Sequence;Z)Lorg/ejml/equation/TokenList$Token;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 714
    invoke-virtual {p1, v4, v1}, Lorg/ejml/equation/TokenList;->insert(Lorg/ejml/equation/TokenList$Token;Lorg/ejml/equation/TokenList$Token;)V

    goto :goto_1

    .line 683
    :cond_4
    new-instance p1, Lorg/ejml/equation/ParseError;

    const-string p2, ") found with no matching ("

    invoke-direct {p1, p2}, Lorg/ejml/equation/ParseError;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    :goto_1
    move-object v1, v2

    goto/16 :goto_0

    .line 721
    :cond_6
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_7

    return-void

    .line 722
    :cond_7
    new-instance p1, Lorg/ejml/equation/ParseError;

    const-string p2, "Dangling ( parentheses"

    invoke-direct {p1, p2}, Lorg/ejml/equation/ParseError;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method insertFunctionsAndVariables(Lorg/ejml/equation/TokenList;)V
    .locals 3

    .line 1539
    invoke-virtual {p1}, Lorg/ejml/equation/TokenList;->getFirst()Lorg/ejml/equation/TokenList$Token;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_2

    .line 1541
    invoke-virtual {p1}, Lorg/ejml/equation/TokenList$Token;->getType()Lorg/ejml/equation/TokenList$Type;

    move-result-object v0

    sget-object v1, Lorg/ejml/equation/TokenList$Type;->WORD:Lorg/ejml/equation/TokenList$Type;

    if-ne v0, v1, :cond_1

    .line 1542
    iget-object v0, p1, Lorg/ejml/equation/TokenList$Token;->word:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lorg/ejml/equation/Equation;->lookupVariable(Ljava/lang/String;)Lorg/ejml/equation/Variable;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1544
    iput-object v0, p1, Lorg/ejml/equation/TokenList$Token;->variable:Lorg/ejml/equation/Variable;

    .line 1545
    iput-object v1, p1, Lorg/ejml/equation/TokenList$Token;->word:Ljava/lang/String;

    goto :goto_1

    .line 1546
    :cond_0
    iget-object v0, p0, Lorg/ejml/equation/Equation;->functions:Lorg/ejml/equation/ManagerFunctions;

    iget-object v2, p1, Lorg/ejml/equation/TokenList$Token;->word:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lorg/ejml/equation/ManagerFunctions;->isFunctionName(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1547
    new-instance v0, Lorg/ejml/equation/Function;

    iget-object v2, p1, Lorg/ejml/equation/TokenList$Token;->word:Ljava/lang/String;

    invoke-direct {v0, v2}, Lorg/ejml/equation/Function;-><init>(Ljava/lang/String;)V

    iput-object v0, p1, Lorg/ejml/equation/TokenList$Token;->function:Lorg/ejml/equation/Function;

    .line 1548
    iput-object v1, p1, Lorg/ejml/equation/TokenList$Token;->word:Ljava/lang/String;

    .line 1551
    :cond_1
    :goto_1
    iget-object p1, p1, Lorg/ejml/equation/TokenList$Token;->next:Lorg/ejml/equation/TokenList$Token;

    goto :goto_0

    :cond_2
    return-void
.end method

.method insertMacros(Lorg/ejml/equation/TokenList;)V
    .locals 4

    .line 1559
    invoke-virtual {p1}, Lorg/ejml/equation/TokenList;->getFirst()Lorg/ejml/equation/TokenList$Token;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    .line 1561
    invoke-virtual {v0}, Lorg/ejml/equation/TokenList$Token;->getType()Lorg/ejml/equation/TokenList$Type;

    move-result-object v1

    sget-object v2, Lorg/ejml/equation/TokenList$Type;->WORD:Lorg/ejml/equation/TokenList$Type;

    if-ne v1, v2, :cond_0

    .line 1562
    iget-object v1, v0, Lorg/ejml/equation/TokenList$Token;->word:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lorg/ejml/equation/Equation;->lookupMacro(Ljava/lang/String;)Lorg/ejml/equation/Macro;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1564
    iget-object v2, v0, Lorg/ejml/equation/TokenList$Token;->previous:Lorg/ejml/equation/TokenList$Token;

    .line 1565
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1566
    iget-object v0, v0, Lorg/ejml/equation/TokenList$Token;->next:Lorg/ejml/equation/TokenList$Token;

    invoke-direct {p0, v3, v0}, Lorg/ejml/equation/Equation;->parseMacroInput(Ljava/util/List;Lorg/ejml/equation/TokenList$Token;)Lorg/ejml/equation/TokenList$Token;

    move-result-object v0

    .line 1568
    invoke-virtual {v1, v3}, Lorg/ejml/equation/Macro;->execute(Ljava/util/List;)Lorg/ejml/equation/TokenList;

    move-result-object v1

    .line 1569
    iget-object v3, v2, Lorg/ejml/equation/TokenList$Token;->next:Lorg/ejml/equation/TokenList$Token;

    invoke-virtual {p1, v3, v0}, Lorg/ejml/equation/TokenList;->extractSubList(Lorg/ejml/equation/TokenList$Token;Lorg/ejml/equation/TokenList$Token;)Lorg/ejml/equation/TokenList;

    .line 1570
    invoke-virtual {p1, v2, v1}, Lorg/ejml/equation/TokenList;->insertAfter(Lorg/ejml/equation/TokenList$Token;Lorg/ejml/equation/TokenList;)V

    .line 1571
    iget-object v0, v1, Lorg/ejml/equation/TokenList;->last:Lorg/ejml/equation/TokenList$Token;

    .line 1574
    :cond_0
    iget-object v0, v0, Lorg/ejml/equation/TokenList$Token;->next:Lorg/ejml/equation/TokenList$Token;

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected insertTranspose(Lorg/ejml/equation/TokenList$Token;Lorg/ejml/equation/TokenList;Lorg/ejml/equation/Sequence;)Lorg/ejml/equation/TokenList$Token;
    .locals 3

    .line 1301
    iget-object v0, p0, Lorg/ejml/equation/Equation;->functions:Lorg/ejml/equation/ManagerFunctions;

    const/16 v1, 0x27

    invoke-virtual {p1}, Lorg/ejml/equation/TokenList$Token;->getVariable()Lorg/ejml/equation/Variable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/ejml/equation/ManagerFunctions;->create(CLorg/ejml/equation/Variable;)Lorg/ejml/equation/Operation$Info;

    move-result-object v0

    .line 1303
    iget-object v1, v0, Lorg/ejml/equation/Operation$Info;->op:Lorg/ejml/equation/Operation;

    invoke-virtual {p3, v1}, Lorg/ejml/equation/Sequence;->addOperation(Lorg/ejml/equation/Operation;)V

    .line 1306
    new-instance p3, Lorg/ejml/equation/TokenList$Token;

    iget-object v0, v0, Lorg/ejml/equation/Operation$Info;->output:Lorg/ejml/equation/Variable;

    invoke-direct {p3, v0}, Lorg/ejml/equation/TokenList$Token;-><init>(Lorg/ejml/equation/Variable;)V

    .line 1308
    iget-object v0, p1, Lorg/ejml/equation/TokenList$Token;->next:Lorg/ejml/equation/TokenList$Token;

    invoke-virtual {p2, v0}, Lorg/ejml/equation/TokenList;->remove(Lorg/ejml/equation/TokenList$Token;)V

    .line 1310
    invoke-virtual {p2, p1, p3}, Lorg/ejml/equation/TokenList;->replace(Lorg/ejml/equation/TokenList$Token;Lorg/ejml/equation/TokenList$Token;)V

    return-object p3
.end method

.method protected isReserved(Ljava/lang/String;)Z
    .locals 4

    .line 1647
    iget-object v0, p0, Lorg/ejml/equation/Equation;->functions:Lorg/ejml/equation/ManagerFunctions;

    invoke-virtual {v0, p1}, Lorg/ejml/equation/ManagerFunctions;->isFunctionName(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    move v2, v0

    .line 1650
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 1651
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lorg/ejml/equation/Equation;->isLetter(C)Z

    move-result v3

    if-nez v3, :cond_1

    return v1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method public lookupDDRM(Ljava/lang/String;)Lorg/ejml/data/DMatrixRMaj;
    .locals 1

    .line 1369
    iget-object v0, p0, Lorg/ejml/equation/Equation;->variables:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/ejml/equation/VariableMatrix;

    iget-object p1, p1, Lorg/ejml/equation/VariableMatrix;->matrix:Lorg/ejml/data/DMatrixRMaj;

    return-object p1
.end method

.method public lookupDouble(Ljava/lang/String;)D
    .locals 2

    .line 1384
    iget-object v0, p0, Lorg/ejml/equation/Equation;->variables:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/ejml/equation/Variable;

    .line 1386
    instance-of v1, v0, Lorg/ejml/equation/VariableMatrix;

    if-eqz v1, :cond_1

    .line 1388
    check-cast v0, Lorg/ejml/equation/VariableMatrix;

    iget-object p1, v0, Lorg/ejml/equation/VariableMatrix;->matrix:Lorg/ejml/data/DMatrixRMaj;

    .line 1389
    invoke-interface {p1}, Lorg/ejml/data/DMatrix;->getNumCols()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-interface {p1}, Lorg/ejml/data/DMatrix;->getNumRows()I

    move-result v0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 1390
    invoke-interface {p1, v0, v0}, Lorg/ejml/data/DMatrix;->get(II)D

    move-result-wide v0

    return-wide v0

    .line 1392
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Can only return 1x1 real matrices as doubles"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1403
    :cond_1
    iget-object v0, p0, Lorg/ejml/equation/Equation;->variables:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/ejml/equation/VariableScalar;

    invoke-virtual {p1}, Lorg/ejml/equation/VariableScalar;->getDouble()D

    move-result-wide v0

    return-wide v0
.end method

.method public lookupFDRM(Ljava/lang/String;)Lorg/ejml/data/FMatrixRMaj;
    .locals 3

    .line 1373
    iget-object v0, p0, Lorg/ejml/equation/Equation;->variables:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/ejml/equation/VariableMatrix;

    iget-object p1, p1, Lorg/ejml/equation/VariableMatrix;->matrix:Lorg/ejml/data/DMatrixRMaj;

    .line 1374
    new-instance v0, Lorg/ejml/data/FMatrixRMaj;

    iget v1, p1, Lorg/ejml/data/DMatrixRMaj;->numRows:I

    iget v2, p1, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    invoke-direct {v0, v1, v2}, Lorg/ejml/data/FMatrixRMaj;-><init>(II)V

    .line 1375
    invoke-static {p1, v0}, Lorg/ejml/ops/ConvertMatrixData;->convert(Lorg/ejml/data/DMatrixRMaj;Lorg/ejml/data/FMatrixRMaj;)V

    return-object v0
.end method

.method public lookupInteger(Ljava/lang/String;)I
    .locals 1

    .line 1380
    iget-object v0, p0, Lorg/ejml/equation/Equation;->variables:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/ejml/equation/VariableInteger;

    iget p1, p1, Lorg/ejml/equation/VariableInteger;->value:I

    return p1
.end method

.method public lookupMacro(Ljava/lang/String;)Lorg/ejml/equation/Macro;
    .locals 1

    .line 1365
    iget-object v0, p0, Lorg/ejml/equation/Equation;->macros:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/ejml/equation/Macro;

    return-object p1
.end method

.method public lookupSimple(Ljava/lang/String;)Lorg/ejml/simple/SimpleMatrix;
    .locals 0

    .line 1579
    invoke-virtual {p0, p1}, Lorg/ejml/equation/Equation;->lookupDDRM(Ljava/lang/String;)Lorg/ejml/data/DMatrixRMaj;

    move-result-object p1

    invoke-static {p1}, Lorg/ejml/simple/SimpleMatrix;->wrap(Lorg/ejml/data/Matrix;)Lorg/ejml/simple/SimpleMatrix;

    move-result-object p1

    return-object p1
.end method

.method public lookupVariable(Ljava/lang/String;)Lorg/ejml/equation/Variable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lorg/ejml/equation/Variable;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 1360
    iget-object v0, p0, Lorg/ejml/equation/Equation;->variables:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/ejml/equation/Variable;

    return-object p1
.end method

.method protected parseBlockNoParentheses(Lorg/ejml/equation/TokenList;Lorg/ejml/equation/Sequence;Z)Lorg/ejml/equation/TokenList$Token;
    .locals 6

    if-nez p3, :cond_0

    .line 863
    invoke-virtual {p0, p1, p2}, Lorg/ejml/equation/Equation;->parseBracketCreateMatrix(Lorg/ejml/equation/TokenList;Lorg/ejml/equation/Sequence;)V

    .line 867
    :cond_0
    invoke-virtual {p0, p1, p2}, Lorg/ejml/equation/Equation;->parseSequencesWithColons(Lorg/ejml/equation/TokenList;Lorg/ejml/equation/Sequence;)V

    .line 870
    invoke-virtual {p0, p1, p2}, Lorg/ejml/equation/Equation;->parseNegOp(Lorg/ejml/equation/TokenList;Lorg/ejml/equation/Sequence;)V

    .line 871
    invoke-virtual {p0, p1, p2}, Lorg/ejml/equation/Equation;->parseOperationsL(Lorg/ejml/equation/TokenList;Lorg/ejml/equation/Sequence;)V

    const/4 v0, 0x2

    new-array v1, v0, [Lorg/ejml/equation/Symbol;

    .line 872
    sget-object v2, Lorg/ejml/equation/Symbol;->POWER:Lorg/ejml/equation/Symbol;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lorg/ejml/equation/Symbol;->ELEMENT_POWER:Lorg/ejml/equation/Symbol;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    invoke-virtual {p0, v1, p1, p2}, Lorg/ejml/equation/Equation;->parseOperationsLR([Lorg/ejml/equation/Symbol;Lorg/ejml/equation/TokenList;Lorg/ejml/equation/Sequence;)V

    const/4 v1, 0x5

    new-array v1, v1, [Lorg/ejml/equation/Symbol;

    .line 873
    sget-object v2, Lorg/ejml/equation/Symbol;->TIMES:Lorg/ejml/equation/Symbol;

    aput-object v2, v1, v3

    sget-object v2, Lorg/ejml/equation/Symbol;->RDIVIDE:Lorg/ejml/equation/Symbol;

    aput-object v2, v1, v4

    sget-object v2, Lorg/ejml/equation/Symbol;->LDIVIDE:Lorg/ejml/equation/Symbol;

    aput-object v2, v1, v0

    const/4 v2, 0x3

    sget-object v5, Lorg/ejml/equation/Symbol;->ELEMENT_TIMES:Lorg/ejml/equation/Symbol;

    aput-object v5, v1, v2

    const/4 v2, 0x4

    sget-object v5, Lorg/ejml/equation/Symbol;->ELEMENT_DIVIDE:Lorg/ejml/equation/Symbol;

    aput-object v5, v1, v2

    invoke-virtual {p0, v1, p1, p2}, Lorg/ejml/equation/Equation;->parseOperationsLR([Lorg/ejml/equation/Symbol;Lorg/ejml/equation/TokenList;Lorg/ejml/equation/Sequence;)V

    new-array v0, v0, [Lorg/ejml/equation/Symbol;

    .line 874
    sget-object v1, Lorg/ejml/equation/Symbol;->PLUS:Lorg/ejml/equation/Symbol;

    aput-object v1, v0, v3

    sget-object v1, Lorg/ejml/equation/Symbol;->MINUS:Lorg/ejml/equation/Symbol;

    aput-object v1, v0, v4

    invoke-virtual {p0, v0, p1, p2}, Lorg/ejml/equation/Equation;->parseOperationsLR([Lorg/ejml/equation/Symbol;Lorg/ejml/equation/TokenList;Lorg/ejml/equation/Sequence;)V

    .line 878
    invoke-direct {p0, p1}, Lorg/ejml/equation/Equation;->stripCommas(Lorg/ejml/equation/TokenList;)V

    .line 881
    invoke-virtual {p0, p1}, Lorg/ejml/equation/Equation;->parseIntegerLists(Lorg/ejml/equation/TokenList;)V

    .line 882
    invoke-virtual {p0, p1}, Lorg/ejml/equation/Equation;->parseCombineIntegerLists(Lorg/ejml/equation/TokenList;)V

    if-nez p3, :cond_3

    .line 885
    invoke-virtual {p1}, Lorg/ejml/equation/TokenList;->size()I

    move-result p2

    if-le p2, v4, :cond_2

    .line 886
    sget-object p2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "Remaining tokens: "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p1, Lorg/ejml/equation/TokenList;->size:I

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 887
    iget-object p1, p1, Lorg/ejml/equation/TokenList;->first:Lorg/ejml/equation/TokenList$Token;

    :goto_0
    if-eqz p1, :cond_1

    .line 889
    sget-object p2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "  "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 890
    iget-object p1, p1, Lorg/ejml/equation/TokenList$Token;->next:Lorg/ejml/equation/TokenList$Token;

    goto :goto_0

    .line 892
    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "BUG in parser.  There should only be a single token left"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 894
    :cond_2
    iget-object p1, p1, Lorg/ejml/equation/TokenList;->first:Lorg/ejml/equation/TokenList$Token;

    return-object p1

    :cond_3
    const/4 p1, 0x0

    return-object p1
.end method

.method protected parseBracketCreateMatrix(Lorg/ejml/equation/TokenList;Lorg/ejml/equation/Sequence;)V
    .locals 7

    .line 1124
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1126
    invoke-virtual {p1}, Lorg/ejml/equation/TokenList;->getFirst()Lorg/ejml/equation/TokenList$Token;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_3

    .line 1129
    iget-object v2, v1, Lorg/ejml/equation/TokenList$Token;->next:Lorg/ejml/equation/TokenList$Token;

    .line 1130
    invoke-virtual {v1}, Lorg/ejml/equation/TokenList$Token;->getSymbol()Lorg/ejml/equation/Symbol;

    move-result-object v3

    sget-object v4, Lorg/ejml/equation/Symbol;->BRACKET_LEFT:Lorg/ejml/equation/Symbol;

    if-ne v3, v4, :cond_0

    .line 1131
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1132
    :cond_0
    invoke-virtual {v1}, Lorg/ejml/equation/TokenList$Token;->getSymbol()Lorg/ejml/equation/Symbol;

    move-result-object v3

    sget-object v4, Lorg/ejml/equation/Symbol;->BRACKET_RIGHT:Lorg/ejml/equation/Symbol;

    if-ne v3, v4, :cond_2

    .line 1133
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1136
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    invoke-interface {v0, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/ejml/equation/TokenList$Token;

    .line 1140
    iget-object v5, v3, Lorg/ejml/equation/TokenList$Token;->next:Lorg/ejml/equation/TokenList$Token;

    iget-object v6, v1, Lorg/ejml/equation/TokenList$Token;->previous:Lorg/ejml/equation/TokenList$Token;

    invoke-virtual {p1, v5, v6}, Lorg/ejml/equation/TokenList;->extractSubList(Lorg/ejml/equation/TokenList$Token;Lorg/ejml/equation/TokenList$Token;)Lorg/ejml/equation/TokenList;

    move-result-object v5

    .line 1141
    invoke-virtual {p0, v5, p2, v4}, Lorg/ejml/equation/Equation;->parseBlockNoParentheses(Lorg/ejml/equation/TokenList;Lorg/ejml/equation/Sequence;Z)Lorg/ejml/equation/TokenList$Token;

    .line 1142
    invoke-direct {p0, v5}, Lorg/ejml/equation/Equation;->constructMatrix(Lorg/ejml/equation/TokenList;)Lorg/ejml/equation/MatrixConstructor;

    move-result-object v4

    .line 1145
    invoke-static {v4}, Lorg/ejml/equation/Operation;->matrixConstructor(Lorg/ejml/equation/MatrixConstructor;)Lorg/ejml/equation/Operation$Info;

    move-result-object v4

    .line 1146
    iget-object v5, v4, Lorg/ejml/equation/Operation$Info;->op:Lorg/ejml/equation/Operation;

    invoke-virtual {p2, v5}, Lorg/ejml/equation/Sequence;->addOperation(Lorg/ejml/equation/Operation;)V

    .line 1148
    iget-object v5, v3, Lorg/ejml/equation/TokenList$Token;->previous:Lorg/ejml/equation/TokenList$Token;

    new-instance v6, Lorg/ejml/equation/TokenList$Token;

    iget-object v4, v4, Lorg/ejml/equation/Operation$Info;->output:Lorg/ejml/equation/Variable;

    invoke-direct {v6, v4}, Lorg/ejml/equation/TokenList$Token;-><init>(Lorg/ejml/equation/Variable;)V

    invoke-virtual {p1, v5, v6}, Lorg/ejml/equation/TokenList;->insert(Lorg/ejml/equation/TokenList$Token;Lorg/ejml/equation/TokenList$Token;)V

    .line 1151
    invoke-virtual {p1, v3}, Lorg/ejml/equation/TokenList;->remove(Lorg/ejml/equation/TokenList$Token;)V

    .line 1152
    invoke-virtual {p1, v1}, Lorg/ejml/equation/TokenList;->remove(Lorg/ejml/equation/TokenList$Token;)V

    goto :goto_1

    .line 1134
    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "No matching left bracket for right"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_1
    move-object v1, v2

    goto :goto_0

    .line 1158
    :cond_3
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_4

    return-void

    .line 1159
    :cond_4
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Dangling ["

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected parseCombineIntegerLists(Lorg/ejml/equation/TokenList;)V
    .locals 8

    .line 1063
    invoke-virtual {p1}, Lorg/ejml/equation/TokenList;->getFirst()Lorg/ejml/equation/TokenList$Token;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 1064
    iget-object v1, v0, Lorg/ejml/equation/TokenList$Token;->next:Lorg/ejml/equation/TokenList$Token;

    if-nez v1, :cond_0

    goto :goto_2

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v3, v1

    move v4, v2

    :goto_0
    const/4 v5, 0x1

    if-eqz v0, :cond_5

    .line 1073
    invoke-virtual {v0}, Lorg/ejml/equation/TokenList$Token;->getType()Lorg/ejml/equation/TokenList$Type;

    move-result-object v6

    sget-object v7, Lorg/ejml/equation/TokenList$Type;->VARIABLE:Lorg/ejml/equation/TokenList$Type;

    if-ne v6, v7, :cond_3

    invoke-static {v0}, Lorg/ejml/equation/Equation;->isVariableInteger(Lorg/ejml/equation/TokenList$Token;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 1074
    invoke-virtual {v0}, Lorg/ejml/equation/TokenList$Token;->getVariable()Lorg/ejml/equation/Variable;

    move-result-object v6

    invoke-virtual {v6}, Lorg/ejml/equation/Variable;->getType()Lorg/ejml/equation/VariableType;

    move-result-object v6

    sget-object v7, Lorg/ejml/equation/VariableType;->INTEGER_SEQUENCE:Lorg/ejml/equation/VariableType;

    if-ne v6, v7, :cond_3

    :cond_1
    if-nez v4, :cond_2

    move-object v1, v0

    move-object v3, v1

    move v4, v5

    goto :goto_1

    :cond_2
    add-int/lit8 v4, v4, 0x1

    move-object v3, v0

    goto :goto_1

    :cond_3
    if-le v4, v5, :cond_4

    .line 1083
    new-instance v4, Lorg/ejml/equation/IntegerSequence$Combined;

    invoke-direct {v4, v1, v3}, Lorg/ejml/equation/IntegerSequence$Combined;-><init>(Lorg/ejml/equation/TokenList$Token;Lorg/ejml/equation/TokenList$Token;)V

    .line 1084
    iget-object v5, p0, Lorg/ejml/equation/Equation;->functions:Lorg/ejml/equation/ManagerFunctions;

    invoke-virtual {v5}, Lorg/ejml/equation/ManagerFunctions;->getManagerTemp()Lorg/ejml/equation/ManagerTempVariables;

    move-result-object v5

    invoke-virtual {v5, v4}, Lorg/ejml/equation/ManagerTempVariables;->createIntegerSequence(Lorg/ejml/equation/IntegerSequence;)Lorg/ejml/equation/VariableIntegerSequence;

    move-result-object v4

    .line 1085
    invoke-direct {p0, p1, v4, v1, v3}, Lorg/ejml/equation/Equation;->replaceSequence(Lorg/ejml/equation/TokenList;Lorg/ejml/equation/Variable;Lorg/ejml/equation/TokenList$Token;Lorg/ejml/equation/TokenList$Token;)Lorg/ejml/equation/TokenList$Token;

    :cond_4
    move v4, v2

    .line 1090
    :goto_1
    iget-object v0, v0, Lorg/ejml/equation/TokenList$Token;->next:Lorg/ejml/equation/TokenList$Token;

    goto :goto_0

    :cond_5
    if-le v4, v5, :cond_6

    .line 1094
    new-instance v0, Lorg/ejml/equation/IntegerSequence$Combined;

    invoke-direct {v0, v1, v3}, Lorg/ejml/equation/IntegerSequence$Combined;-><init>(Lorg/ejml/equation/TokenList$Token;Lorg/ejml/equation/TokenList$Token;)V

    .line 1095
    iget-object v2, p0, Lorg/ejml/equation/Equation;->functions:Lorg/ejml/equation/ManagerFunctions;

    invoke-virtual {v2}, Lorg/ejml/equation/ManagerFunctions;->getManagerTemp()Lorg/ejml/equation/ManagerTempVariables;

    move-result-object v2

    invoke-virtual {v2, v0}, Lorg/ejml/equation/ManagerTempVariables;->createIntegerSequence(Lorg/ejml/equation/IntegerSequence;)Lorg/ejml/equation/VariableIntegerSequence;

    move-result-object v0

    .line 1096
    invoke-direct {p0, p1, v0, v1, v3}, Lorg/ejml/equation/Equation;->replaceSequence(Lorg/ejml/equation/TokenList;Lorg/ejml/equation/Variable;Lorg/ejml/equation/TokenList$Token;Lorg/ejml/equation/TokenList$Token;)Lorg/ejml/equation/TokenList$Token;

    :cond_6
    :goto_2
    return-void
.end method

.method protected parseIntegerLists(Lorg/ejml/equation/TokenList;)V
    .locals 9

    .line 1014
    invoke-virtual {p1}, Lorg/ejml/equation/TokenList;->getFirst()Lorg/ejml/equation/TokenList$Token;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 1015
    iget-object v1, v0, Lorg/ejml/equation/TokenList$Token;->next:Lorg/ejml/equation/TokenList$Token;

    if-nez v1, :cond_0

    goto :goto_3

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    move v4, v1

    move v5, v4

    move-object v3, v2

    move-object v2, v0

    :goto_0
    const/4 v6, 0x1

    if-nez v4, :cond_1

    .line 1026
    invoke-static {v0}, Lorg/ejml/equation/Equation;->isVariableInteger(Lorg/ejml/equation/TokenList$Token;)Z

    move-result v2

    if-eqz v2, :cond_4

    move-object v3, v0

    move v4, v6

    goto :goto_2

    :cond_1
    const/4 v7, 0x2

    if-ne v4, v6, :cond_3

    .line 1032
    invoke-static {v0}, Lorg/ejml/equation/Equation;->isVariableInteger(Lorg/ejml/equation/TokenList$Token;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v4, v7

    goto :goto_2

    :cond_2
    :goto_1
    move v4, v1

    goto :goto_2

    :cond_3
    if-ne v4, v7, :cond_4

    .line 1039
    invoke-static {v0}, Lorg/ejml/equation/Equation;->isVariableInteger(Lorg/ejml/equation/TokenList$Token;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 1041
    new-instance v4, Lorg/ejml/equation/IntegerSequence$Explicit;

    invoke-direct {v4, v3, v2}, Lorg/ejml/equation/IntegerSequence$Explicit;-><init>(Lorg/ejml/equation/TokenList$Token;Lorg/ejml/equation/TokenList$Token;)V

    .line 1042
    iget-object v7, p0, Lorg/ejml/equation/Equation;->functions:Lorg/ejml/equation/ManagerFunctions;

    invoke-virtual {v7}, Lorg/ejml/equation/ManagerFunctions;->getManagerTemp()Lorg/ejml/equation/ManagerTempVariables;

    move-result-object v7

    invoke-virtual {v7, v4}, Lorg/ejml/equation/ManagerTempVariables;->createIntegerSequence(Lorg/ejml/equation/IntegerSequence;)Lorg/ejml/equation/VariableIntegerSequence;

    move-result-object v4

    .line 1043
    invoke-direct {p0, p1, v4, v3, v2}, Lorg/ejml/equation/Equation;->replaceSequence(Lorg/ejml/equation/TokenList;Lorg/ejml/equation/Variable;Lorg/ejml/equation/TokenList$Token;Lorg/ejml/equation/TokenList$Token;)Lorg/ejml/equation/TokenList$Token;

    goto :goto_1

    :cond_4
    :goto_2
    if-eqz v5, :cond_5

    return-void

    .line 1050
    :cond_5
    iget-object v2, v0, Lorg/ejml/equation/TokenList$Token;->next:Lorg/ejml/equation/TokenList$Token;

    if-nez v2, :cond_6

    move v5, v6

    .line 1055
    :cond_6
    iget-object v2, v0, Lorg/ejml/equation/TokenList$Token;->next:Lorg/ejml/equation/TokenList$Token;

    move-object v8, v2

    move-object v2, v0

    move-object v0, v8

    goto :goto_0

    :cond_7
    :goto_3
    return-void
.end method

.method protected parseNegOp(Lorg/ejml/equation/TokenList;Lorg/ejml/equation/Sequence;)V
    .locals 4

    .line 1192
    iget v0, p1, Lorg/ejml/equation/TokenList;->size:I

    if-nez v0, :cond_0

    return-void

    .line 1195
    :cond_0
    iget-object v0, p1, Lorg/ejml/equation/TokenList;->first:Lorg/ejml/equation/TokenList$Token;

    :goto_0
    if-eqz v0, :cond_6

    .line 1198
    iget-object v1, v0, Lorg/ejml/equation/TokenList$Token;->next:Lorg/ejml/equation/TokenList$Token;

    .line 1200
    invoke-virtual {v0}, Lorg/ejml/equation/TokenList$Token;->getSymbol()Lorg/ejml/equation/Symbol;

    move-result-object v2

    sget-object v3, Lorg/ejml/equation/Symbol;->MINUS:Lorg/ejml/equation/Symbol;

    if-ne v2, v3, :cond_5

    .line 1201
    iget-object v2, v0, Lorg/ejml/equation/TokenList$Token;->previous:Lorg/ejml/equation/TokenList$Token;

    if-eqz v2, :cond_1

    iget-object v2, v0, Lorg/ejml/equation/TokenList$Token;->previous:Lorg/ejml/equation/TokenList$Token;

    invoke-virtual {v2}, Lorg/ejml/equation/TokenList$Token;->getType()Lorg/ejml/equation/TokenList$Type;

    move-result-object v2

    sget-object v3, Lorg/ejml/equation/TokenList$Type;->SYMBOL:Lorg/ejml/equation/TokenList$Type;

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 1203
    :cond_1
    iget-object v2, v0, Lorg/ejml/equation/TokenList$Token;->previous:Lorg/ejml/equation/TokenList$Token;

    if-eqz v2, :cond_2

    iget-object v2, v0, Lorg/ejml/equation/TokenList$Token;->previous:Lorg/ejml/equation/TokenList$Token;

    invoke-virtual {v2}, Lorg/ejml/equation/TokenList$Token;->getType()Lorg/ejml/equation/TokenList$Type;

    move-result-object v2

    sget-object v3, Lorg/ejml/equation/TokenList$Type;->SYMBOL:Lorg/ejml/equation/TokenList$Type;

    if-ne v2, v3, :cond_2

    iget-object v2, v0, Lorg/ejml/equation/TokenList$Token;->previous:Lorg/ejml/equation/TokenList$Token;

    iget-object v2, v2, Lorg/ejml/equation/TokenList$Token;->symbol:Lorg/ejml/equation/Symbol;

    sget-object v3, Lorg/ejml/equation/Symbol;->TRANSPOSE:Lorg/ejml/equation/Symbol;

    if-ne v2, v3, :cond_2

    goto :goto_1

    .line 1206
    :cond_2
    iget-object v2, v0, Lorg/ejml/equation/TokenList$Token;->next:Lorg/ejml/equation/TokenList$Token;

    if-eqz v2, :cond_5

    iget-object v2, v0, Lorg/ejml/equation/TokenList$Token;->next:Lorg/ejml/equation/TokenList$Token;

    invoke-virtual {v2}, Lorg/ejml/equation/TokenList$Token;->getType()Lorg/ejml/equation/TokenList$Type;

    move-result-object v2

    sget-object v3, Lorg/ejml/equation/TokenList$Type;->SYMBOL:Lorg/ejml/equation/TokenList$Type;

    if-ne v2, v3, :cond_3

    goto :goto_1

    .line 1209
    :cond_3
    iget-object v1, v0, Lorg/ejml/equation/TokenList$Token;->next:Lorg/ejml/equation/TokenList$Token;

    invoke-virtual {v1}, Lorg/ejml/equation/TokenList$Token;->getType()Lorg/ejml/equation/TokenList$Type;

    move-result-object v1

    sget-object v2, Lorg/ejml/equation/TokenList$Type;->VARIABLE:Lorg/ejml/equation/TokenList$Type;

    if-ne v1, v2, :cond_4

    .line 1213
    iget-object v1, v0, Lorg/ejml/equation/TokenList$Token;->next:Lorg/ejml/equation/TokenList$Token;

    invoke-virtual {v1}, Lorg/ejml/equation/TokenList$Token;->getVariable()Lorg/ejml/equation/Variable;

    move-result-object v1

    iget-object v2, p0, Lorg/ejml/equation/Equation;->functions:Lorg/ejml/equation/ManagerFunctions;

    invoke-virtual {v2}, Lorg/ejml/equation/ManagerFunctions;->getManagerTemp()Lorg/ejml/equation/ManagerTempVariables;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/ejml/equation/Operation;->neg(Lorg/ejml/equation/Variable;Lorg/ejml/equation/ManagerTempVariables;)Lorg/ejml/equation/Operation$Info;

    move-result-object v1

    .line 1215
    iget-object v2, v1, Lorg/ejml/equation/Operation$Info;->op:Lorg/ejml/equation/Operation;

    invoke-virtual {p2, v2}, Lorg/ejml/equation/Sequence;->addOperation(Lorg/ejml/equation/Operation;)V

    .line 1217
    new-instance v2, Lorg/ejml/equation/TokenList$Token;

    iget-object v1, v1, Lorg/ejml/equation/Operation$Info;->output:Lorg/ejml/equation/Variable;

    invoke-direct {v2, v1}, Lorg/ejml/equation/TokenList$Token;-><init>(Lorg/ejml/equation/Variable;)V

    .line 1218
    iget-object v1, v0, Lorg/ejml/equation/TokenList$Token;->next:Lorg/ejml/equation/TokenList$Token;

    invoke-virtual {p1, v1, v2}, Lorg/ejml/equation/TokenList;->insert(Lorg/ejml/equation/TokenList$Token;Lorg/ejml/equation/TokenList$Token;)V

    .line 1219
    iget-object v1, v0, Lorg/ejml/equation/TokenList$Token;->next:Lorg/ejml/equation/TokenList$Token;

    invoke-virtual {p1, v1}, Lorg/ejml/equation/TokenList;->remove(Lorg/ejml/equation/TokenList$Token;)V

    .line 1220
    invoke-virtual {p1, v0}, Lorg/ejml/equation/TokenList;->remove(Lorg/ejml/equation/TokenList$Token;)V

    move-object v0, v2

    goto :goto_0

    .line 1210
    :cond_4
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Crap bug rethink this function"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    :goto_1
    move-object v0, v1

    goto :goto_0

    :cond_6
    return-void
.end method

.method protected parseOperationsL(Lorg/ejml/equation/TokenList;Lorg/ejml/equation/Sequence;)V
    .locals 3

    .line 1236
    iget v0, p1, Lorg/ejml/equation/TokenList;->size:I

    if-nez v0, :cond_0

    return-void

    .line 1239
    :cond_0
    iget-object v0, p1, Lorg/ejml/equation/TokenList;->first:Lorg/ejml/equation/TokenList$Token;

    .line 1241
    invoke-virtual {v0}, Lorg/ejml/equation/TokenList$Token;->getType()Lorg/ejml/equation/TokenList$Type;

    move-result-object v1

    sget-object v2, Lorg/ejml/equation/TokenList$Type;->VARIABLE:Lorg/ejml/equation/TokenList$Type;

    if-ne v1, v2, :cond_5

    :goto_0
    if-eqz v0, :cond_4

    .line 1245
    invoke-virtual {v0}, Lorg/ejml/equation/TokenList$Token;->getType()Lorg/ejml/equation/TokenList$Type;

    move-result-object v1

    sget-object v2, Lorg/ejml/equation/TokenList$Type;->FUNCTION:Lorg/ejml/equation/TokenList$Type;

    if-eq v1, v2, :cond_3

    .line 1247
    invoke-virtual {v0}, Lorg/ejml/equation/TokenList$Token;->getType()Lorg/ejml/equation/TokenList$Type;

    move-result-object v1

    sget-object v2, Lorg/ejml/equation/TokenList$Type;->SYMBOL:Lorg/ejml/equation/TokenList$Type;

    if-ne v1, v2, :cond_2

    invoke-virtual {v0}, Lorg/ejml/equation/TokenList$Token;->getSymbol()Lorg/ejml/equation/Symbol;

    move-result-object v1

    sget-object v2, Lorg/ejml/equation/Symbol;->TRANSPOSE:Lorg/ejml/equation/Symbol;

    if-ne v1, v2, :cond_2

    .line 1248
    iget-object v1, v0, Lorg/ejml/equation/TokenList$Token;->previous:Lorg/ejml/equation/TokenList$Token;

    invoke-virtual {v1}, Lorg/ejml/equation/TokenList$Token;->getType()Lorg/ejml/equation/TokenList$Type;

    move-result-object v1

    sget-object v2, Lorg/ejml/equation/TokenList$Type;->VARIABLE:Lorg/ejml/equation/TokenList$Type;

    if-ne v1, v2, :cond_1

    .line 1249
    iget-object v0, v0, Lorg/ejml/equation/TokenList$Token;->previous:Lorg/ejml/equation/TokenList$Token;

    invoke-virtual {p0, v0, p1, p2}, Lorg/ejml/equation/Equation;->insertTranspose(Lorg/ejml/equation/TokenList$Token;Lorg/ejml/equation/TokenList;Lorg/ejml/equation/Sequence;)Lorg/ejml/equation/TokenList$Token;

    move-result-object v0

    goto :goto_1

    .line 1251
    :cond_1
    new-instance p1, Lorg/ejml/equation/ParseError;

    const-string p2, "Expected variable before transpose"

    invoke-direct {p1, p2}, Lorg/ejml/equation/ParseError;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1253
    :cond_2
    :goto_1
    iget-object v0, v0, Lorg/ejml/equation/TokenList$Token;->next:Lorg/ejml/equation/TokenList$Token;

    goto :goto_0

    .line 1246
    :cond_3
    new-instance p1, Lorg/ejml/equation/ParseError;

    const-string p2, "Function encountered with no parentheses"

    invoke-direct {p1, p2}, Lorg/ejml/equation/ParseError;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    return-void

    .line 1242
    :cond_5
    new-instance p1, Lorg/ejml/equation/ParseError;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "The first token in an equation needs to be a variable and not "

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/ejml/equation/ParseError;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected parseOperationsLR([Lorg/ejml/equation/Symbol;Lorg/ejml/equation/TokenList;Lorg/ejml/equation/Sequence;)V
    .locals 8

    .line 1266
    iget v0, p2, Lorg/ejml/equation/TokenList;->size:I

    if-nez v0, :cond_0

    return-void

    .line 1269
    :cond_0
    iget-object v0, p2, Lorg/ejml/equation/TokenList;->first:Lorg/ejml/equation/TokenList$Token;

    .line 1271
    invoke-virtual {v0}, Lorg/ejml/equation/TokenList$Token;->getType()Lorg/ejml/equation/TokenList$Type;

    move-result-object v1

    sget-object v2, Lorg/ejml/equation/TokenList$Type;->VARIABLE:Lorg/ejml/equation/TokenList$Type;

    if-ne v1, v2, :cond_7

    const/4 v1, 0x0

    move-object v5, v0

    :goto_0
    if-eqz v5, :cond_6

    .line 1276
    invoke-virtual {v5}, Lorg/ejml/equation/TokenList$Token;->getType()Lorg/ejml/equation/TokenList$Type;

    move-result-object v0

    sget-object v2, Lorg/ejml/equation/TokenList$Type;->FUNCTION:Lorg/ejml/equation/TokenList$Type;

    if-eq v0, v2, :cond_5

    .line 1278
    invoke-virtual {v5}, Lorg/ejml/equation/TokenList$Token;->getType()Lorg/ejml/equation/TokenList$Type;

    move-result-object v0

    sget-object v2, Lorg/ejml/equation/TokenList$Type;->VARIABLE:Lorg/ejml/equation/TokenList$Type;

    if-ne v0, v2, :cond_2

    if-eqz v1, :cond_1

    .line 1280
    iget-object v0, v5, Lorg/ejml/equation/TokenList$Token;->previous:Lorg/ejml/equation/TokenList$Token;

    invoke-static {v0, p1}, Lorg/ejml/equation/Equation;->isTargetOp(Lorg/ejml/equation/TokenList$Token;[Lorg/ejml/equation/Symbol;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1281
    iget-object v0, v5, Lorg/ejml/equation/TokenList$Token;->previous:Lorg/ejml/equation/TokenList$Token;

    iget-object v3, v0, Lorg/ejml/equation/TokenList$Token;->previous:Lorg/ejml/equation/TokenList$Token;

    iget-object v4, v5, Lorg/ejml/equation/TokenList$Token;->previous:Lorg/ejml/equation/TokenList$Token;

    move-object v2, p0

    move-object v6, p2

    move-object v7, p3

    invoke-virtual/range {v2 .. v7}, Lorg/ejml/equation/Equation;->createOp(Lorg/ejml/equation/TokenList$Token;Lorg/ejml/equation/TokenList$Token;Lorg/ejml/equation/TokenList$Token;Lorg/ejml/equation/TokenList;Lorg/ejml/equation/Sequence;)Lorg/ejml/equation/TokenList$Token;

    move-result-object v5

    goto :goto_1

    :cond_1
    const/4 v0, 0x1

    move v1, v0

    goto :goto_1

    .line 1287
    :cond_2
    iget-object v0, v5, Lorg/ejml/equation/TokenList$Token;->previous:Lorg/ejml/equation/TokenList$Token;

    invoke-virtual {v0}, Lorg/ejml/equation/TokenList$Token;->getType()Lorg/ejml/equation/TokenList$Type;

    move-result-object v0

    sget-object v2, Lorg/ejml/equation/TokenList$Type;->SYMBOL:Lorg/ejml/equation/TokenList$Type;

    if-eq v0, v2, :cond_4

    .line 1291
    :cond_3
    :goto_1
    iget-object v5, v5, Lorg/ejml/equation/TokenList$Token;->next:Lorg/ejml/equation/TokenList$Token;

    goto :goto_0

    .line 1288
    :cond_4
    new-instance p1, Lorg/ejml/equation/ParseError;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Two symbols next to each other. "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p3, v5, Lorg/ejml/equation/TokenList$Token;->previous:Lorg/ejml/equation/TokenList$Token;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, " and "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/ejml/equation/ParseError;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1277
    :cond_5
    new-instance p1, Lorg/ejml/equation/ParseError;

    const/4 p2, 0x0

    sget-object p2, Lcom/infinite/core/MTx/eQuC;->ffmRDUqGk:Ljava/lang/String;

    invoke-direct {p1, p2}, Lorg/ejml/equation/ParseError;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    return-void

    .line 1272
    :cond_7
    new-instance p1, Lorg/ejml/equation/ParseError;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "The first token in an equation needs to be a variable and not "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/ejml/equation/ParseError;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected parseParameterCommaBlock(Lorg/ejml/equation/TokenList;Lorg/ejml/equation/Sequence;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ejml/equation/TokenList;",
            "Lorg/ejml/equation/Sequence;",
            ")",
            "Ljava/util/List<",
            "Lorg/ejml/equation/TokenList$Token;",
            ">;"
        }
    .end annotation

    .line 734
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 735
    iget-object v1, p1, Lorg/ejml/equation/TokenList;->first:Lorg/ejml/equation/TokenList$Token;

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-eqz v1, :cond_4

    .line 739
    invoke-virtual {v1}, Lorg/ejml/equation/TokenList$Token;->getType()Lorg/ejml/equation/TokenList$Type;

    move-result-object v4

    sget-object v5, Lorg/ejml/equation/TokenList$Type;->SYMBOL:Lorg/ejml/equation/TokenList$Type;

    if-ne v4, v5, :cond_3

    .line 740
    sget-object v4, Lorg/ejml/equation/Equation$1;->$SwitchMap$org$ejml$equation$Symbol:[I

    invoke-virtual {v1}, Lorg/ejml/equation/TokenList$Token;->getSymbol()Lorg/ejml/equation/Symbol;

    move-result-object v5

    invoke-virtual {v5}, Lorg/ejml/equation/Symbol;->ordinal()I

    move-result v5

    aget v4, v4, v5

    const/4 v5, 0x1

    if-eq v4, v5, :cond_2

    const/4 v5, 0x2

    if-eq v4, v5, :cond_1

    const/4 v5, 0x3

    if-eq v4, v5, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    if-nez v3, :cond_3

    .line 743
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 755
    :cond_3
    :goto_1
    iget-object v1, v1, Lorg/ejml/equation/TokenList$Token;->next:Lorg/ejml/equation/TokenList$Token;

    goto :goto_0

    .line 758
    :cond_4
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 759
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 760
    invoke-virtual {p0, p1, p2, v2}, Lorg/ejml/equation/Equation;->parseBlockNoParentheses(Lorg/ejml/equation/TokenList;Lorg/ejml/equation/Sequence;Z)Lorg/ejml/equation/TokenList$Token;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 762
    :cond_5
    iget-object v3, p1, Lorg/ejml/equation/TokenList;->first:Lorg/ejml/equation/TokenList$Token;

    move v4, v2

    .line 763
    :goto_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    const-string v6, "No empty function inputs allowed!"

    if-ge v4, v5, :cond_7

    .line 764
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/ejml/equation/TokenList$Token;

    if-eq v3, v5, :cond_6

    .line 767
    iget-object v6, v5, Lorg/ejml/equation/TokenList$Token;->next:Lorg/ejml/equation/TokenList$Token;

    .line 768
    invoke-virtual {p1, v3, v5}, Lorg/ejml/equation/TokenList;->extractSubList(Lorg/ejml/equation/TokenList$Token;Lorg/ejml/equation/TokenList$Token;)Lorg/ejml/equation/TokenList;

    move-result-object v3

    .line 769
    invoke-virtual {v3, v5}, Lorg/ejml/equation/TokenList;->remove(Lorg/ejml/equation/TokenList$Token;)V

    .line 770
    invoke-virtual {p0, v3, p2, v2}, Lorg/ejml/equation/Equation;->parseBlockNoParentheses(Lorg/ejml/equation/TokenList;Lorg/ejml/equation/Sequence;Z)Lorg/ejml/equation/TokenList$Token;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    move-object v3, v6

    goto :goto_2

    .line 766
    :cond_6
    new-instance p1, Lorg/ejml/equation/ParseError;

    invoke-direct {p1, v6}, Lorg/ejml/equation/ParseError;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7
    if-eqz v3, :cond_8

    .line 778
    iget-object v0, p1, Lorg/ejml/equation/TokenList;->last:Lorg/ejml/equation/TokenList$Token;

    .line 779
    invoke-virtual {p1, v3, v0}, Lorg/ejml/equation/TokenList;->extractSubList(Lorg/ejml/equation/TokenList$Token;Lorg/ejml/equation/TokenList$Token;)Lorg/ejml/equation/TokenList;

    move-result-object p1

    .line 780
    invoke-virtual {p0, p1, p2, v2}, Lorg/ejml/equation/Equation;->parseBlockNoParentheses(Lorg/ejml/equation/TokenList;Lorg/ejml/equation/Sequence;Z)Lorg/ejml/equation/TokenList$Token;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_3
    return-object v1

    .line 776
    :cond_8
    new-instance p1, Lorg/ejml/equation/ParseError;

    invoke-direct {p1, v6}, Lorg/ejml/equation/ParseError;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected parseSequencesWithColons(Lorg/ejml/equation/TokenList;Lorg/ejml/equation/Sequence;)V
    .locals 10

    .line 929
    invoke-virtual {p1}, Lorg/ejml/equation/TokenList;->getFirst()Lorg/ejml/equation/TokenList$Token;

    move-result-object p2

    if-nez p2, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    move-object v2, p2

    move v3, v0

    move v6, v3

    move-object v4, v1

    move-object v5, v4

    :goto_0
    const/4 v7, 0x1

    if-nez v3, :cond_2

    .line 942
    invoke-static {p2}, Lorg/ejml/equation/Equation;->isVariableInteger(Lorg/ejml/equation/TokenList$Token;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p2, Lorg/ejml/equation/TokenList$Token;->next:Lorg/ejml/equation/TokenList$Token;

    if-eqz v2, :cond_1

    iget-object v2, p2, Lorg/ejml/equation/TokenList$Token;->next:Lorg/ejml/equation/TokenList$Token;

    invoke-virtual {v2}, Lorg/ejml/equation/TokenList$Token;->getSymbol()Lorg/ejml/equation/Symbol;

    move-result-object v2

    sget-object v8, Lorg/ejml/equation/Symbol;->COLON:Lorg/ejml/equation/Symbol;

    if-ne v2, v8, :cond_1

    .line 945
    iget-object v2, p2, Lorg/ejml/equation/TokenList$Token;->next:Lorg/ejml/equation/TokenList$Token;

    move-object v4, p2

    move v3, v7

    goto/16 :goto_3

    :cond_1
    if-eqz p2, :cond_9

    .line 946
    invoke-virtual {p2}, Lorg/ejml/equation/TokenList$Token;->getSymbol()Lorg/ejml/equation/Symbol;

    move-result-object v2

    sget-object v8, Lorg/ejml/equation/Symbol;->COLON:Lorg/ejml/equation/Symbol;

    if-ne v2, v8, :cond_9

    .line 948
    new-instance v2, Lorg/ejml/equation/IntegerSequence$Range;

    invoke-direct {v2, v1, v1}, Lorg/ejml/equation/IntegerSequence$Range;-><init>(Lorg/ejml/equation/TokenList$Token;Lorg/ejml/equation/TokenList$Token;)V

    .line 949
    iget-object v8, p0, Lorg/ejml/equation/Equation;->functions:Lorg/ejml/equation/ManagerFunctions;

    invoke-virtual {v8}, Lorg/ejml/equation/ManagerFunctions;->getManagerTemp()Lorg/ejml/equation/ManagerTempVariables;

    move-result-object v8

    invoke-virtual {v8, v2}, Lorg/ejml/equation/ManagerTempVariables;->createIntegerSequence(Lorg/ejml/equation/IntegerSequence;)Lorg/ejml/equation/VariableIntegerSequence;

    move-result-object v2

    .line 950
    new-instance v8, Lorg/ejml/equation/TokenList$Token;

    invoke-direct {v8, v2}, Lorg/ejml/equation/TokenList$Token;-><init>(Lorg/ejml/equation/Variable;)V

    .line 951
    iget-object v2, p2, Lorg/ejml/equation/TokenList$Token;->previous:Lorg/ejml/equation/TokenList$Token;

    invoke-virtual {p1, v2, v8}, Lorg/ejml/equation/TokenList;->insert(Lorg/ejml/equation/TokenList$Token;Lorg/ejml/equation/TokenList$Token;)V

    .line 952
    invoke-virtual {p1, p2}, Lorg/ejml/equation/TokenList;->remove(Lorg/ejml/equation/TokenList$Token;)V

    move-object v2, v8

    goto/16 :goto_3

    :cond_2
    const/4 v8, 0x2

    if-ne v3, v7, :cond_5

    .line 957
    invoke-static {p2}, Lorg/ejml/equation/Equation;->isVariableInteger(Lorg/ejml/equation/TokenList$Token;)Z

    move-result v3

    if-eqz v3, :cond_3

    move-object v2, p2

    move v3, v8

    goto/16 :goto_3

    .line 961
    :cond_3
    new-instance v3, Lorg/ejml/equation/IntegerSequence$Range;

    invoke-direct {v3, v4, v1}, Lorg/ejml/equation/IntegerSequence$Range;-><init>(Lorg/ejml/equation/TokenList$Token;Lorg/ejml/equation/TokenList$Token;)V

    .line 962
    iget-object v8, p0, Lorg/ejml/equation/Equation;->functions:Lorg/ejml/equation/ManagerFunctions;

    invoke-virtual {v8}, Lorg/ejml/equation/ManagerFunctions;->getManagerTemp()Lorg/ejml/equation/ManagerTempVariables;

    move-result-object v8

    invoke-virtual {v8, v3}, Lorg/ejml/equation/ManagerTempVariables;->createIntegerSequence(Lorg/ejml/equation/IntegerSequence;)Lorg/ejml/equation/VariableIntegerSequence;

    move-result-object v3

    .line 963
    invoke-direct {p0, p1, v3, v4, v2}, Lorg/ejml/equation/Equation;->replaceSequence(Lorg/ejml/equation/TokenList;Lorg/ejml/equation/Variable;Lorg/ejml/equation/TokenList$Token;Lorg/ejml/equation/TokenList$Token;)Lorg/ejml/equation/TokenList$Token;

    :cond_4
    :goto_1
    move-object v2, p2

    move v3, v0

    goto :goto_3

    :cond_5
    const/4 v9, 0x3

    if-ne v3, v8, :cond_7

    if-eqz p2, :cond_6

    .line 968
    invoke-virtual {p2}, Lorg/ejml/equation/TokenList$Token;->getSymbol()Lorg/ejml/equation/Symbol;

    move-result-object v3

    sget-object v8, Lorg/ejml/equation/Symbol;->COLON:Lorg/ejml/equation/Symbol;

    if-ne v3, v8, :cond_6

    move-object v5, v2

    move v3, v9

    goto :goto_2

    .line 973
    :cond_6
    new-instance v3, Lorg/ejml/equation/IntegerSequence$For;

    invoke-direct {v3, v4, v1, v2}, Lorg/ejml/equation/IntegerSequence$For;-><init>(Lorg/ejml/equation/TokenList$Token;Lorg/ejml/equation/TokenList$Token;Lorg/ejml/equation/TokenList$Token;)V

    .line 974
    iget-object v8, p0, Lorg/ejml/equation/Equation;->functions:Lorg/ejml/equation/ManagerFunctions;

    invoke-virtual {v8}, Lorg/ejml/equation/ManagerFunctions;->getManagerTemp()Lorg/ejml/equation/ManagerTempVariables;

    move-result-object v8

    invoke-virtual {v8, v3}, Lorg/ejml/equation/ManagerTempVariables;->createIntegerSequence(Lorg/ejml/equation/IntegerSequence;)Lorg/ejml/equation/VariableIntegerSequence;

    move-result-object v3

    .line 975
    invoke-direct {p0, p1, v3, v4, v2}, Lorg/ejml/equation/Equation;->replaceSequence(Lorg/ejml/equation/TokenList;Lorg/ejml/equation/Variable;Lorg/ejml/equation/TokenList$Token;Lorg/ejml/equation/TokenList$Token;)Lorg/ejml/equation/TokenList$Token;

    if-eqz p2, :cond_4

    .line 977
    iget-object p2, p2, Lorg/ejml/equation/TokenList$Token;->previous:Lorg/ejml/equation/TokenList$Token;

    goto :goto_1

    :cond_7
    if-ne v3, v9, :cond_9

    .line 982
    invoke-static {p2}, Lorg/ejml/equation/Equation;->isVariableInteger(Lorg/ejml/equation/TokenList$Token;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 984
    new-instance v2, Lorg/ejml/equation/IntegerSequence$For;

    invoke-direct {v2, v4, v5, p2}, Lorg/ejml/equation/IntegerSequence$For;-><init>(Lorg/ejml/equation/TokenList$Token;Lorg/ejml/equation/TokenList$Token;Lorg/ejml/equation/TokenList$Token;)V

    .line 985
    iget-object v3, p0, Lorg/ejml/equation/Equation;->functions:Lorg/ejml/equation/ManagerFunctions;

    invoke-virtual {v3}, Lorg/ejml/equation/ManagerFunctions;->getManagerTemp()Lorg/ejml/equation/ManagerTempVariables;

    move-result-object v3

    invoke-virtual {v3, v2}, Lorg/ejml/equation/ManagerTempVariables;->createIntegerSequence(Lorg/ejml/equation/IntegerSequence;)Lorg/ejml/equation/VariableIntegerSequence;

    move-result-object v2

    .line 986
    invoke-direct {p0, p1, v2, v4, p2}, Lorg/ejml/equation/Equation;->replaceSequence(Lorg/ejml/equation/TokenList;Lorg/ejml/equation/Variable;Lorg/ejml/equation/TokenList$Token;Lorg/ejml/equation/TokenList$Token;)Lorg/ejml/equation/TokenList$Token;

    move-result-object p2

    goto :goto_1

    .line 989
    :cond_8
    new-instance v3, Lorg/ejml/equation/IntegerSequence$Range;

    invoke-direct {v3, v4, v5}, Lorg/ejml/equation/IntegerSequence$Range;-><init>(Lorg/ejml/equation/TokenList$Token;Lorg/ejml/equation/TokenList$Token;)V

    .line 990
    iget-object v8, p0, Lorg/ejml/equation/Equation;->functions:Lorg/ejml/equation/ManagerFunctions;

    invoke-virtual {v8}, Lorg/ejml/equation/ManagerFunctions;->getManagerTemp()Lorg/ejml/equation/ManagerTempVariables;

    move-result-object v8

    invoke-virtual {v8, v3}, Lorg/ejml/equation/ManagerTempVariables;->createIntegerSequence(Lorg/ejml/equation/IntegerSequence;)Lorg/ejml/equation/VariableIntegerSequence;

    move-result-object v3

    .line 991
    invoke-direct {p0, p1, v3, v4, v2}, Lorg/ejml/equation/Equation;->replaceSequence(Lorg/ejml/equation/TokenList;Lorg/ejml/equation/Variable;Lorg/ejml/equation/TokenList$Token;Lorg/ejml/equation/TokenList$Token;)Lorg/ejml/equation/TokenList$Token;

    goto :goto_1

    :cond_9
    :goto_2
    move-object v2, p2

    :goto_3
    if-eqz v6, :cond_a

    return-void

    .line 998
    :cond_a
    iget-object p2, v2, Lorg/ejml/equation/TokenList$Token;->next:Lorg/ejml/equation/TokenList$Token;

    if-nez p2, :cond_b

    move v6, v7

    .line 1003
    :cond_b
    iget-object p2, v2, Lorg/ejml/equation/TokenList$Token;->next:Lorg/ejml/equation/TokenList$Token;

    goto/16 :goto_0
.end method

.method protected parseSubmatrixToExtract(Lorg/ejml/equation/TokenList$Token;Lorg/ejml/equation/TokenList;Lorg/ejml/equation/Sequence;)Lorg/ejml/equation/TokenList$Token;
    .locals 5

    .line 795
    invoke-virtual {p0, p2, p3}, Lorg/ejml/equation/Equation;->parseParameterCommaBlock(Lorg/ejml/equation/TokenList;Lorg/ejml/equation/Sequence;)Ljava/util/List;

    move-result-object p2

    .line 797
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 800
    invoke-virtual {p1}, Lorg/ejml/equation/TokenList$Token;->getVariable()Lorg/ejml/equation/Variable;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 802
    invoke-direct {p0, p2, v0}, Lorg/ejml/equation/Equation;->addSubMatrixVariables(Ljava/util/List;Ljava/util/List;)V

    .line 803
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    const/4 v2, 0x3

    if-ne p1, v2, :cond_0

    goto :goto_0

    .line 804
    :cond_0
    new-instance p1, Lorg/ejml/equation/ParseError;

    const-string p2, "Unexpected number of variables.  1 or 2 expected"

    invoke-direct {p1, p2}, Lorg/ejml/equation/ParseError;-><init>(Ljava/lang/String;)V

    throw p1

    .line 812
    :cond_1
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    const-string v2, "extractScalar"

    const-string v3, "extract"

    const/4 v4, 0x1

    if-ne p1, v4, :cond_3

    .line 813
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/ejml/equation/Variable;

    .line 814
    invoke-virtual {p1}, Lorg/ejml/equation/Variable;->getType()Lorg/ejml/equation/VariableType;

    move-result-object p1

    sget-object p2, Lorg/ejml/equation/VariableType;->SCALAR:Lorg/ejml/equation/VariableType;

    if-ne p1, p2, :cond_2

    .line 815
    iget-object p1, p0, Lorg/ejml/equation/Equation;->functions:Lorg/ejml/equation/ManagerFunctions;

    invoke-virtual {p1, v2, v0}, Lorg/ejml/equation/ManagerFunctions;->create(Ljava/lang/String;Ljava/util/List;)Lorg/ejml/equation/Operation$Info;

    move-result-object p1

    goto :goto_1

    .line 817
    :cond_2
    iget-object p1, p0, Lorg/ejml/equation/Equation;->functions:Lorg/ejml/equation/ManagerFunctions;

    invoke-virtual {p1, v3, v0}, Lorg/ejml/equation/ManagerFunctions;->create(Ljava/lang/String;Ljava/util/List;)Lorg/ejml/equation/Operation$Info;

    move-result-object p1

    goto :goto_1

    .line 819
    :cond_3
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-ne p1, v1, :cond_5

    .line 820
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/ejml/equation/Variable;

    .line 821
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/ejml/equation/Variable;

    .line 823
    invoke-virtual {p1}, Lorg/ejml/equation/Variable;->getType()Lorg/ejml/equation/VariableType;

    move-result-object p1

    sget-object v1, Lorg/ejml/equation/VariableType;->SCALAR:Lorg/ejml/equation/VariableType;

    if-ne p1, v1, :cond_4

    invoke-virtual {p2}, Lorg/ejml/equation/Variable;->getType()Lorg/ejml/equation/VariableType;

    move-result-object p1

    sget-object p2, Lorg/ejml/equation/VariableType;->SCALAR:Lorg/ejml/equation/VariableType;

    if-ne p1, p2, :cond_4

    .line 824
    iget-object p1, p0, Lorg/ejml/equation/Equation;->functions:Lorg/ejml/equation/ManagerFunctions;

    invoke-virtual {p1, v2, v0}, Lorg/ejml/equation/ManagerFunctions;->create(Ljava/lang/String;Ljava/util/List;)Lorg/ejml/equation/Operation$Info;

    move-result-object p1

    goto :goto_1

    .line 826
    :cond_4
    iget-object p1, p0, Lorg/ejml/equation/Equation;->functions:Lorg/ejml/equation/ManagerFunctions;

    invoke-virtual {p1, v3, v0}, Lorg/ejml/equation/ManagerFunctions;->create(Ljava/lang/String;Ljava/util/List;)Lorg/ejml/equation/Operation$Info;

    move-result-object p1

    .line 832
    :goto_1
    iget-object p2, p1, Lorg/ejml/equation/Operation$Info;->op:Lorg/ejml/equation/Operation;

    invoke-virtual {p3, p2}, Lorg/ejml/equation/Sequence;->addOperation(Lorg/ejml/equation/Operation;)V

    .line 834
    new-instance p2, Lorg/ejml/equation/TokenList$Token;

    iget-object p1, p1, Lorg/ejml/equation/Operation$Info;->output:Lorg/ejml/equation/Variable;

    invoke-direct {p2, p1}, Lorg/ejml/equation/TokenList$Token;-><init>(Lorg/ejml/equation/Variable;)V

    return-object p2

    .line 829
    :cond_5
    new-instance p1, Lorg/ejml/equation/ParseError;

    const-string p2, "Expected 2 inputs to sub-matrix"

    invoke-direct {p1, p2}, Lorg/ejml/equation/ParseError;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public print(Ljava/lang/String;)V
    .locals 4

    .line 1682
    invoke-virtual {p0, p1}, Lorg/ejml/equation/Equation;->lookupVariable(Ljava/lang/String;)Lorg/ejml/equation/Variable;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 1684
    invoke-virtual {p0, p1, v0, v0}, Lorg/ejml/equation/Equation;->compile(Ljava/lang/String;ZZ)Lorg/ejml/equation/Sequence;

    move-result-object p1

    .line 1685
    invoke-virtual {p1}, Lorg/ejml/equation/Sequence;->perform()V

    .line 1686
    iget-object v0, p1, Lorg/ejml/equation/Sequence;->output:Lorg/ejml/equation/Variable;

    .line 1689
    :cond_0
    instance-of p1, v0, Lorg/ejml/equation/VariableMatrix;

    if-eqz p1, :cond_1

    .line 1690
    check-cast v0, Lorg/ejml/equation/VariableMatrix;

    iget-object p1, v0, Lorg/ejml/equation/VariableMatrix;->matrix:Lorg/ejml/data/DMatrixRMaj;

    invoke-virtual {p1}, Lorg/ejml/data/DMatrixRMaj;->print()V

    goto :goto_0

    .line 1691
    :cond_1
    instance-of p1, v0, Lorg/ejml/equation/VariableScalar;

    if-eqz p1, :cond_2

    .line 1692
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Scalar = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    check-cast v0, Lorg/ejml/equation/VariableScalar;

    invoke-virtual {v0}, Lorg/ejml/equation/VariableScalar;->getDouble()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 1694
    :cond_2
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Add support for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public process(Ljava/lang/String;)Lorg/ejml/equation/Equation;
    .locals 0

    .line 1663
    invoke-virtual {p0, p1}, Lorg/ejml/equation/Equation;->compile(Ljava/lang/String;)Lorg/ejml/equation/Sequence;

    move-result-object p1

    invoke-virtual {p1}, Lorg/ejml/equation/Sequence;->perform()V

    return-object p0
.end method

.method public process(Ljava/lang/String;Z)Lorg/ejml/equation/Equation;
    .locals 1

    const/4 v0, 0x1

    .line 1673
    invoke-virtual {p0, p1, v0, p2}, Lorg/ejml/equation/Equation;->compile(Ljava/lang/String;ZZ)Lorg/ejml/equation/Sequence;

    move-result-object p1

    invoke-virtual {p1}, Lorg/ejml/equation/Sequence;->perform()V

    return-object p0
.end method

.method public setSeed()V
    .locals 2

    .line 277
    iget-object v0, p0, Lorg/ejml/equation/Equation;->functions:Lorg/ejml/equation/ManagerFunctions;

    iget-object v0, v0, Lorg/ejml/equation/ManagerFunctions;->managerTemp:Lorg/ejml/equation/ManagerTempVariables;

    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    iput-object v1, v0, Lorg/ejml/equation/ManagerTempVariables;->rand:Ljava/util/Random;

    return-void
.end method

.method public setSeed(J)V
    .locals 1

    .line 270
    iget-object v0, p0, Lorg/ejml/equation/Equation;->functions:Lorg/ejml/equation/ManagerFunctions;

    iget-object v0, v0, Lorg/ejml/equation/ManagerFunctions;->managerTemp:Lorg/ejml/equation/ManagerTempVariables;

    invoke-virtual {v0}, Lorg/ejml/equation/ManagerTempVariables;->getRandom()Ljava/util/Random;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/util/Random;->setSeed(J)V

    return-void
.end method
