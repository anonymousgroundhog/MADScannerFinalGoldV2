.class public abstract Lorg/ejml/equation/Operation;
.super Ljava/lang/Object;
.source "Operation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/ejml/equation/Operation$ArrayExtent;,
        Lorg/ejml/equation/Operation$Extents;,
        Lorg/ejml/equation/Operation$Info;
    }
.end annotation


# instance fields
.field name:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lorg/ejml/equation/Operation;->name:Ljava/lang/String;

    return-void
.end method

.method public static abs(Lorg/ejml/equation/Variable;Lorg/ejml/equation/ManagerTempVariables;)Lorg/ejml/equation/Operation$Info;
    .locals 3

    .line 1220
    new-instance v0, Lorg/ejml/equation/Operation$Info;

    invoke-direct {v0}, Lorg/ejml/equation/Operation$Info;-><init>()V

    .line 1222
    instance-of v1, p0, Lorg/ejml/equation/VariableMatrix;

    if-eqz v1, :cond_0

    .line 1223
    invoke-virtual {p1}, Lorg/ejml/equation/ManagerTempVariables;->createMatrix()Lorg/ejml/equation/VariableMatrix;

    move-result-object p1

    .line 1224
    iput-object p1, v0, Lorg/ejml/equation/Operation$Info;->output:Lorg/ejml/equation/Variable;

    .line 1225
    new-instance v1, Lorg/ejml/equation/Operation$68;

    const-string v2, "abs-m"

    invoke-direct {v1, v2, p0, p1}, Lorg/ejml/equation/Operation$68;-><init>(Ljava/lang/String;Lorg/ejml/equation/Variable;Lorg/ejml/equation/VariableMatrix;)V

    iput-object v1, v0, Lorg/ejml/equation/Operation$Info;->op:Lorg/ejml/equation/Operation;

    goto :goto_0

    .line 1236
    :cond_0
    instance-of v1, p0, Lorg/ejml/equation/VariableInteger;

    if-eqz v1, :cond_1

    .line 1237
    invoke-virtual {p1}, Lorg/ejml/equation/ManagerTempVariables;->createInteger()Lorg/ejml/equation/VariableInteger;

    move-result-object p1

    .line 1238
    iput-object p1, v0, Lorg/ejml/equation/Operation$Info;->output:Lorg/ejml/equation/Variable;

    .line 1239
    new-instance v1, Lorg/ejml/equation/Operation$69;

    const-string v2, "abs-i"

    invoke-direct {v1, v2, p1, p0}, Lorg/ejml/equation/Operation$69;-><init>(Ljava/lang/String;Lorg/ejml/equation/VariableInteger;Lorg/ejml/equation/Variable;)V

    iput-object v1, v0, Lorg/ejml/equation/Operation$Info;->op:Lorg/ejml/equation/Operation;

    goto :goto_0

    .line 1245
    :cond_1
    instance-of v1, p0, Lorg/ejml/equation/VariableScalar;

    if-eqz v1, :cond_2

    .line 1246
    invoke-virtual {p1}, Lorg/ejml/equation/ManagerTempVariables;->createDouble()Lorg/ejml/equation/VariableDouble;

    move-result-object p1

    .line 1247
    iput-object p1, v0, Lorg/ejml/equation/Operation$Info;->output:Lorg/ejml/equation/Variable;

    .line 1248
    new-instance v1, Lorg/ejml/equation/Operation$70;

    const-string v2, "abs-s"

    invoke-direct {v1, v2, p1, p0}, Lorg/ejml/equation/Operation$70;-><init>(Ljava/lang/String;Lorg/ejml/equation/VariableDouble;Lorg/ejml/equation/Variable;)V

    iput-object v1, v0, Lorg/ejml/equation/Operation$Info;->op:Lorg/ejml/equation/Operation;

    :cond_2
    :goto_0
    return-object v0
.end method

.method static synthetic access$000(Lorg/ejml/data/Matrix;Lorg/ejml/data/Matrix;Ljava/lang/String;)V
    .locals 0

    .line 41
    invoke-static {p0, p1, p2}, Lorg/ejml/equation/Operation;->checkThrow1x1AgainstNxM(Lorg/ejml/data/Matrix;Lorg/ejml/data/Matrix;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lorg/ejml/equation/Variable;Lorg/ejml/equation/Operation$Extents;ZI)Z
    .locals 0

    .line 41
    invoke-static {p0, p1, p2, p3}, Lorg/ejml/equation/Operation;->extractSimpleExtents(Lorg/ejml/equation/Variable;Lorg/ejml/equation/Operation$Extents;ZI)Z

    move-result p0

    return p0
.end method

.method static synthetic access$200(Lorg/ejml/equation/Variable;ILorg/ejml/equation/Operation$ArrayExtent;)V
    .locals 0

    .line 41
    invoke-static {p0, p1, p2}, Lorg/ejml/equation/Operation;->extractArrayExtent(Lorg/ejml/equation/Variable;ILorg/ejml/equation/Operation$ArrayExtent;)V

    return-void
.end method

.method public static add(Lorg/ejml/equation/Variable;Lorg/ejml/equation/Variable;Lorg/ejml/equation/ManagerTempVariables;)Lorg/ejml/equation/Operation$Info;
    .locals 4

    .line 436
    new-instance v0, Lorg/ejml/equation/Operation$Info;

    invoke-direct {v0}, Lorg/ejml/equation/Operation$Info;-><init>()V

    .line 438
    instance-of v1, p0, Lorg/ejml/equation/VariableMatrix;

    if-eqz v1, :cond_0

    instance-of v2, p1, Lorg/ejml/equation/VariableMatrix;

    if-eqz v2, :cond_0

    .line 439
    invoke-virtual {p2}, Lorg/ejml/equation/ManagerTempVariables;->createMatrix()Lorg/ejml/equation/VariableMatrix;

    move-result-object p2

    .line 440
    iput-object p2, v0, Lorg/ejml/equation/Operation$Info;->output:Lorg/ejml/equation/Variable;

    .line 441
    new-instance v1, Lorg/ejml/equation/Operation$22;

    const-string v2, "add-mm"

    invoke-direct {v1, v2, p0, p1, p2}, Lorg/ejml/equation/Operation$22;-><init>(Ljava/lang/String;Lorg/ejml/equation/Variable;Lorg/ejml/equation/Variable;Lorg/ejml/equation/VariableMatrix;)V

    iput-object v1, v0, Lorg/ejml/equation/Operation$Info;->op:Lorg/ejml/equation/Operation;

    goto :goto_1

    .line 455
    :cond_0
    instance-of v2, p0, Lorg/ejml/equation/VariableInteger;

    if-eqz v2, :cond_1

    instance-of v2, p1, Lorg/ejml/equation/VariableInteger;

    if-eqz v2, :cond_1

    const/4 v1, 0x0

    .line 456
    invoke-virtual {p2, v1}, Lorg/ejml/equation/ManagerTempVariables;->createInteger(I)Lorg/ejml/equation/VariableInteger;

    move-result-object p2

    .line 457
    iput-object p2, v0, Lorg/ejml/equation/Operation$Info;->output:Lorg/ejml/equation/Variable;

    .line 458
    new-instance v1, Lorg/ejml/equation/Operation$23;

    const-string v2, "add-ii"

    invoke-direct {v1, v2, p0, p1, p2}, Lorg/ejml/equation/Operation$23;-><init>(Ljava/lang/String;Lorg/ejml/equation/Variable;Lorg/ejml/equation/Variable;Lorg/ejml/equation/VariableInteger;)V

    iput-object v1, v0, Lorg/ejml/equation/Operation$Info;->op:Lorg/ejml/equation/Operation;

    goto :goto_1

    .line 467
    :cond_1
    instance-of v2, p0, Lorg/ejml/equation/VariableScalar;

    if-eqz v2, :cond_2

    instance-of v2, p1, Lorg/ejml/equation/VariableScalar;

    if-eqz v2, :cond_2

    .line 468
    invoke-virtual {p2}, Lorg/ejml/equation/ManagerTempVariables;->createDouble()Lorg/ejml/equation/VariableDouble;

    move-result-object p2

    .line 469
    iput-object p2, v0, Lorg/ejml/equation/Operation$Info;->output:Lorg/ejml/equation/Variable;

    .line 470
    new-instance v1, Lorg/ejml/equation/Operation$24;

    const-string v2, "add-ss"

    invoke-direct {v1, v2, p0, p1, p2}, Lorg/ejml/equation/Operation$24;-><init>(Ljava/lang/String;Lorg/ejml/equation/Variable;Lorg/ejml/equation/Variable;Lorg/ejml/equation/VariableDouble;)V

    iput-object v1, v0, Lorg/ejml/equation/Operation$Info;->op:Lorg/ejml/equation/Operation;

    goto :goto_1

    .line 480
    :cond_2
    invoke-virtual {p2}, Lorg/ejml/equation/ManagerTempVariables;->createMatrix()Lorg/ejml/equation/VariableMatrix;

    move-result-object p2

    .line 481
    iput-object p2, v0, Lorg/ejml/equation/Operation$Info;->output:Lorg/ejml/equation/Variable;

    if-eqz v1, :cond_3

    .line 486
    check-cast p0, Lorg/ejml/equation/VariableMatrix;

    .line 487
    check-cast p1, Lorg/ejml/equation/VariableScalar;

    goto :goto_0

    .line 489
    :cond_3
    check-cast p1, Lorg/ejml/equation/VariableMatrix;

    .line 490
    check-cast p0, Lorg/ejml/equation/VariableScalar;

    move-object v3, p1

    move-object p1, p0

    move-object p0, v3

    .line 493
    :goto_0
    new-instance v1, Lorg/ejml/equation/Operation$25;

    const-string v2, "add-ms"

    invoke-direct {v1, v2, p2, p0, p1}, Lorg/ejml/equation/Operation$25;-><init>(Ljava/lang/String;Lorg/ejml/equation/VariableMatrix;Lorg/ejml/equation/VariableMatrix;Lorg/ejml/equation/VariableScalar;)V

    iput-object v1, v0, Lorg/ejml/equation/Operation$Info;->op:Lorg/ejml/equation/Operation;

    :goto_1
    return-object v0
.end method

.method public static atan(Lorg/ejml/equation/Variable;Lorg/ejml/equation/ManagerTempVariables;)Lorg/ejml/equation/Operation$Info;
    .locals 3

    .line 353
    new-instance v0, Lorg/ejml/equation/Operation$Info;

    invoke-direct {v0}, Lorg/ejml/equation/Operation$Info;-><init>()V

    .line 354
    invoke-virtual {p1}, Lorg/ejml/equation/ManagerTempVariables;->createDouble()Lorg/ejml/equation/VariableDouble;

    move-result-object p1

    .line 355
    iput-object p1, v0, Lorg/ejml/equation/Operation$Info;->output:Lorg/ejml/equation/Variable;

    .line 357
    instance-of v1, p0, Lorg/ejml/equation/VariableScalar;

    if-eqz v1, :cond_0

    .line 359
    new-instance v1, Lorg/ejml/equation/Operation$17;

    const-string v2, "atan-s"

    invoke-direct {v1, v2, p1, p0}, Lorg/ejml/equation/Operation$17;-><init>(Ljava/lang/String;Lorg/ejml/equation/VariableDouble;Lorg/ejml/equation/Variable;)V

    iput-object v1, v0, Lorg/ejml/equation/Operation$Info;->op:Lorg/ejml/equation/Operation;

    return-object v0

    .line 366
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Only scalars are supported"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static atan2(Lorg/ejml/equation/Variable;Lorg/ejml/equation/Variable;Lorg/ejml/equation/ManagerTempVariables;)Lorg/ejml/equation/Operation$Info;
    .locals 3

    .line 268
    new-instance v0, Lorg/ejml/equation/Operation$Info;

    invoke-direct {v0}, Lorg/ejml/equation/Operation$Info;-><init>()V

    .line 269
    invoke-virtual {p2}, Lorg/ejml/equation/ManagerTempVariables;->createDouble()Lorg/ejml/equation/VariableDouble;

    move-result-object p2

    .line 270
    iput-object p2, v0, Lorg/ejml/equation/Operation$Info;->output:Lorg/ejml/equation/Variable;

    .line 272
    instance-of v1, p0, Lorg/ejml/equation/VariableScalar;

    if-eqz v1, :cond_0

    instance-of v1, p1, Lorg/ejml/equation/VariableScalar;

    if-eqz v1, :cond_0

    .line 274
    new-instance v1, Lorg/ejml/equation/Operation$13;

    const-string v2, "atan2-ss"

    invoke-direct {v1, v2, p0, p1, p2}, Lorg/ejml/equation/Operation$13;-><init>(Ljava/lang/String;Lorg/ejml/equation/Variable;Lorg/ejml/equation/Variable;Lorg/ejml/equation/VariableDouble;)V

    iput-object v1, v0, Lorg/ejml/equation/Operation$Info;->op:Lorg/ejml/equation/Operation;

    return-object v0

    .line 284
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Only scalar to scalar atan2 supported"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static checkThrow1x1AgainstNxM(Lorg/ejml/data/Matrix;Lorg/ejml/data/Matrix;Ljava/lang/String;)V
    .locals 2

    .line 506
    invoke-interface {p0}, Lorg/ejml/data/Matrix;->getNumCols()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-interface {p0}, Lorg/ejml/data/Matrix;->getNumRows()I

    move-result p0

    if-eq p0, v1, :cond_1

    :cond_0
    invoke-interface {p1}, Lorg/ejml/data/Matrix;->getNumCols()I

    move-result p0

    if-ne p0, v1, :cond_2

    invoke-interface {p1}, Lorg/ejml/data/Matrix;->getNumRows()I

    move-result p0

    if-eq p0, v1, :cond_1

    goto :goto_0

    .line 507
    :cond_1
    new-instance p0, Lorg/ejml/MatrixDimensionException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Trying to "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " a 1x1 matrix to every element in a MxN matrix? Turn the 1x1 matrix into a scalar by accessing its element. This is stricter than matlab to catch more accidental math errors."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/ejml/MatrixDimensionException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_0
    return-void
.end method

.method public static copy(Lorg/ejml/equation/Variable;Lorg/ejml/equation/Variable;)Lorg/ejml/equation/Operation;
    .locals 3

    .line 705
    instance-of v0, p0, Lorg/ejml/equation/VariableMatrix;

    if-eqz v0, :cond_1

    .line 706
    instance-of v0, p1, Lorg/ejml/equation/VariableMatrix;

    if-eqz v0, :cond_0

    .line 707
    new-instance v0, Lorg/ejml/equation/Operation$37;

    const-string v1, "copy-mm"

    invoke-direct {v0, v1, p1, p0}, Lorg/ejml/equation/Operation$37;-><init>(Ljava/lang/String;Lorg/ejml/equation/Variable;Lorg/ejml/equation/Variable;)V

    return-object v0

    .line 716
    :cond_0
    instance-of v0, p1, Lorg/ejml/equation/VariableDouble;

    if-eqz v0, :cond_1

    .line 717
    new-instance v0, Lorg/ejml/equation/Operation$38;

    const-string v1, "copy-sm1"

    invoke-direct {v0, v1, p0, p1}, Lorg/ejml/equation/Operation$38;-><init>(Ljava/lang/String;Lorg/ejml/equation/Variable;Lorg/ejml/equation/Variable;)V

    return-object v0

    .line 729
    :cond_1
    instance-of v0, p0, Lorg/ejml/equation/VariableInteger;

    if-eqz v0, :cond_2

    instance-of v0, p1, Lorg/ejml/equation/VariableInteger;

    if-eqz v0, :cond_2

    .line 730
    new-instance v0, Lorg/ejml/equation/Operation$39;

    const-string v1, "copy-ii"

    invoke-direct {v0, v1, p1, p0}, Lorg/ejml/equation/Operation$39;-><init>(Ljava/lang/String;Lorg/ejml/equation/Variable;Lorg/ejml/equation/Variable;)V

    return-object v0

    .line 737
    :cond_2
    instance-of v0, p0, Lorg/ejml/equation/VariableScalar;

    if-eqz v0, :cond_3

    instance-of v0, p1, Lorg/ejml/equation/VariableDouble;

    if-eqz v0, :cond_3

    .line 738
    new-instance v0, Lorg/ejml/equation/Operation$40;

    const-string v1, "copy-ss"

    invoke-direct {v0, v1, p1, p0}, Lorg/ejml/equation/Operation$40;-><init>(Ljava/lang/String;Lorg/ejml/equation/Variable;Lorg/ejml/equation/Variable;)V

    return-object v0

    .line 746
    :cond_3
    instance-of v0, p0, Lorg/ejml/equation/VariableIntegerSequence;

    if-eqz v0, :cond_4

    .line 747
    instance-of v0, p1, Lorg/ejml/equation/VariableIntegerSequence;

    if-eqz v0, :cond_4

    .line 748
    new-instance v0, Lorg/ejml/equation/Operation$41;

    const-string v1, "copy-is-is"

    invoke-direct {v0, v1, p1, p0}, Lorg/ejml/equation/Operation$41;-><init>(Ljava/lang/String;Lorg/ejml/equation/Variable;Lorg/ejml/equation/Variable;)V

    return-object v0

    .line 757
    :cond_4
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unsupported copy types; src = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, " dst = "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static copy(Lorg/ejml/equation/Variable;Lorg/ejml/equation/Variable;Ljava/util/List;)Lorg/ejml/equation/Operation;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ejml/equation/Variable;",
            "Lorg/ejml/equation/Variable;",
            "Ljava/util/List<",
            "Lorg/ejml/equation/Variable;",
            ">;)",
            "Lorg/ejml/equation/Operation;"
        }
    .end annotation

    .line 761
    instance-of v0, p0, Lorg/ejml/equation/VariableMatrix;

    if-eqz v0, :cond_0

    instance-of v0, p1, Lorg/ejml/equation/VariableMatrix;

    if-eqz v0, :cond_0

    .line 762
    new-instance v0, Lorg/ejml/equation/Operation$42;

    const-string v1, "copyR-mm"

    invoke-direct {v0, v1, p0, p1, p2}, Lorg/ejml/equation/Operation$42;-><init>(Ljava/lang/String;Lorg/ejml/equation/Variable;Lorg/ejml/equation/Variable;Ljava/util/List;)V

    return-object v0

    .line 812
    :cond_0
    instance-of v0, p0, Lorg/ejml/equation/VariableScalar;

    if-eqz v0, :cond_1

    instance-of v0, p1, Lorg/ejml/equation/VariableMatrix;

    if-eqz v0, :cond_1

    .line 813
    new-instance v0, Lorg/ejml/equation/Operation$43;

    const-string v1, "copyR-sm"

    invoke-direct {v0, v1, p0, p1, p2}, Lorg/ejml/equation/Operation$43;-><init>(Ljava/lang/String;Lorg/ejml/equation/Variable;Lorg/ejml/equation/Variable;Ljava/util/List;)V

    return-object v0

    .line 862
    :cond_1
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Both variables must be of type VariableMatrix"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static cos(Lorg/ejml/equation/Variable;Lorg/ejml/equation/ManagerTempVariables;)Lorg/ejml/equation/Operation$Info;
    .locals 3

    .line 333
    new-instance v0, Lorg/ejml/equation/Operation$Info;

    invoke-direct {v0}, Lorg/ejml/equation/Operation$Info;-><init>()V

    .line 334
    invoke-virtual {p1}, Lorg/ejml/equation/ManagerTempVariables;->createDouble()Lorg/ejml/equation/VariableDouble;

    move-result-object p1

    .line 335
    iput-object p1, v0, Lorg/ejml/equation/Operation$Info;->output:Lorg/ejml/equation/Variable;

    .line 337
    instance-of v1, p0, Lorg/ejml/equation/VariableScalar;

    if-eqz v1, :cond_0

    .line 339
    new-instance v1, Lorg/ejml/equation/Operation$16;

    const-string v2, "cos-s"

    invoke-direct {v1, v2, p1, p0}, Lorg/ejml/equation/Operation$16;-><init>(Ljava/lang/String;Lorg/ejml/equation/VariableDouble;Lorg/ejml/equation/Variable;)V

    iput-object v1, v0, Lorg/ejml/equation/Operation$Info;->op:Lorg/ejml/equation/Operation;

    return-object v0

    .line 346
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Only scalars are supported"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static det(Lorg/ejml/equation/Variable;Lorg/ejml/equation/ManagerTempVariables;)Lorg/ejml/equation/Operation$Info;
    .locals 3

    .line 984
    new-instance v0, Lorg/ejml/equation/Operation$Info;

    invoke-direct {v0}, Lorg/ejml/equation/Operation$Info;-><init>()V

    .line 986
    invoke-virtual {p1}, Lorg/ejml/equation/ManagerTempVariables;->createDouble()Lorg/ejml/equation/VariableDouble;

    move-result-object p1

    .line 987
    iput-object p1, v0, Lorg/ejml/equation/Operation$Info;->output:Lorg/ejml/equation/Variable;

    .line 989
    instance-of v1, p0, Lorg/ejml/equation/VariableMatrix;

    if-eqz v1, :cond_0

    .line 990
    new-instance v1, Lorg/ejml/equation/Operation$51;

    const-string v2, "det-m"

    invoke-direct {v1, v2, p0, p1}, Lorg/ejml/equation/Operation$51;-><init>(Ljava/lang/String;Lorg/ejml/equation/Variable;Lorg/ejml/equation/VariableDouble;)V

    iput-object v1, v0, Lorg/ejml/equation/Operation$Info;->op:Lorg/ejml/equation/Operation;

    goto :goto_0

    .line 998
    :cond_0
    new-instance v1, Lorg/ejml/equation/Operation$52;

    const-string v2, "det-s"

    invoke-direct {v1, v2, p0, p1}, Lorg/ejml/equation/Operation$52;-><init>(Ljava/lang/String;Lorg/ejml/equation/Variable;Lorg/ejml/equation/VariableDouble;)V

    iput-object v1, v0, Lorg/ejml/equation/Operation$Info;->op:Lorg/ejml/equation/Operation;

    :goto_0
    return-object v0
.end method

.method public static diag(Lorg/ejml/equation/Variable;Lorg/ejml/equation/ManagerTempVariables;)Lorg/ejml/equation/Operation$Info;
    .locals 3

    .line 1293
    new-instance v0, Lorg/ejml/equation/Operation$Info;

    invoke-direct {v0}, Lorg/ejml/equation/Operation$Info;-><init>()V

    .line 1295
    instance-of v1, p0, Lorg/ejml/equation/VariableMatrix;

    if-eqz v1, :cond_0

    .line 1296
    invoke-virtual {p1}, Lorg/ejml/equation/ManagerTempVariables;->createMatrix()Lorg/ejml/equation/VariableMatrix;

    move-result-object p1

    .line 1297
    iput-object p1, v0, Lorg/ejml/equation/Operation$Info;->output:Lorg/ejml/equation/Variable;

    .line 1298
    new-instance v1, Lorg/ejml/equation/Operation$73;

    const-string v2, "diag-m"

    invoke-direct {v1, v2, p0, p1}, Lorg/ejml/equation/Operation$73;-><init>(Ljava/lang/String;Lorg/ejml/equation/Variable;Lorg/ejml/equation/VariableMatrix;)V

    iput-object v1, v0, Lorg/ejml/equation/Operation$Info;->op:Lorg/ejml/equation/Operation;

    return-object v0

    .line 1317
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "diag requires a matrix as input"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static divide(Lorg/ejml/equation/Variable;Lorg/ejml/equation/Variable;Lorg/ejml/equation/ManagerTempVariables;)Lorg/ejml/equation/Operation$Info;
    .locals 3

    .line 145
    new-instance v0, Lorg/ejml/equation/Operation$Info;

    invoke-direct {v0}, Lorg/ejml/equation/Operation$Info;-><init>()V

    .line 147
    instance-of v1, p0, Lorg/ejml/equation/VariableMatrix;

    if-eqz v1, :cond_0

    instance-of v2, p1, Lorg/ejml/equation/VariableMatrix;

    if-eqz v2, :cond_0

    .line 148
    invoke-static {p1, p0, p2}, Lorg/ejml/equation/Operation;->solve(Lorg/ejml/equation/Variable;Lorg/ejml/equation/Variable;Lorg/ejml/equation/ManagerTempVariables;)Lorg/ejml/equation/Operation$Info;

    move-result-object p0

    return-object p0

    :cond_0
    const-string v2, "divide-ma"

    if-eqz v1, :cond_1

    .line 149
    instance-of v1, p1, Lorg/ejml/equation/VariableScalar;

    if-eqz v1, :cond_1

    .line 150
    invoke-virtual {p2}, Lorg/ejml/equation/ManagerTempVariables;->createMatrix()Lorg/ejml/equation/VariableMatrix;

    move-result-object p2

    .line 151
    check-cast p0, Lorg/ejml/equation/VariableMatrix;

    .line 152
    check-cast p1, Lorg/ejml/equation/VariableScalar;

    .line 153
    iput-object p2, v0, Lorg/ejml/equation/Operation$Info;->output:Lorg/ejml/equation/Variable;

    .line 154
    new-instance v1, Lorg/ejml/equation/Operation$5;

    invoke-direct {v1, v2, p2, p0, p1}, Lorg/ejml/equation/Operation$5;-><init>(Ljava/lang/String;Lorg/ejml/equation/VariableMatrix;Lorg/ejml/equation/VariableMatrix;Lorg/ejml/equation/VariableScalar;)V

    iput-object v1, v0, Lorg/ejml/equation/Operation$Info;->op:Lorg/ejml/equation/Operation;

    goto :goto_0

    .line 161
    :cond_1
    instance-of v1, p0, Lorg/ejml/equation/VariableScalar;

    if-eqz v1, :cond_2

    instance-of v1, p1, Lorg/ejml/equation/VariableMatrix;

    if-eqz v1, :cond_2

    .line 162
    invoke-virtual {p2}, Lorg/ejml/equation/ManagerTempVariables;->createMatrix()Lorg/ejml/equation/VariableMatrix;

    move-result-object p2

    .line 163
    check-cast p1, Lorg/ejml/equation/VariableMatrix;

    .line 164
    check-cast p0, Lorg/ejml/equation/VariableScalar;

    .line 165
    iput-object p2, v0, Lorg/ejml/equation/Operation$Info;->output:Lorg/ejml/equation/Variable;

    .line 166
    new-instance v1, Lorg/ejml/equation/Operation$6;

    invoke-direct {v1, v2, p2, p1, p0}, Lorg/ejml/equation/Operation$6;-><init>(Ljava/lang/String;Lorg/ejml/equation/VariableMatrix;Lorg/ejml/equation/VariableMatrix;Lorg/ejml/equation/VariableScalar;)V

    iput-object v1, v0, Lorg/ejml/equation/Operation$Info;->op:Lorg/ejml/equation/Operation;

    goto :goto_0

    .line 173
    :cond_2
    instance-of v1, p0, Lorg/ejml/equation/VariableInteger;

    if-eqz v1, :cond_3

    instance-of v1, p1, Lorg/ejml/equation/VariableInteger;

    if-eqz v1, :cond_3

    .line 174
    invoke-virtual {p2}, Lorg/ejml/equation/ManagerTempVariables;->createInteger()Lorg/ejml/equation/VariableInteger;

    move-result-object p2

    .line 175
    iput-object p2, v0, Lorg/ejml/equation/Operation$Info;->output:Lorg/ejml/equation/Variable;

    .line 176
    new-instance v1, Lorg/ejml/equation/Operation$7;

    const-string v2, "divide-ii"

    invoke-direct {v1, v2, p0, p1, p2}, Lorg/ejml/equation/Operation$7;-><init>(Ljava/lang/String;Lorg/ejml/equation/Variable;Lorg/ejml/equation/Variable;Lorg/ejml/equation/VariableInteger;)V

    iput-object v1, v0, Lorg/ejml/equation/Operation$Info;->op:Lorg/ejml/equation/Operation;

    goto :goto_0

    .line 186
    :cond_3
    invoke-virtual {p2}, Lorg/ejml/equation/ManagerTempVariables;->createDouble()Lorg/ejml/equation/VariableDouble;

    move-result-object p2

    .line 187
    iput-object p2, v0, Lorg/ejml/equation/Operation$Info;->output:Lorg/ejml/equation/Variable;

    .line 188
    new-instance v1, Lorg/ejml/equation/Operation$8;

    const-string v2, "divide-ss"

    invoke-direct {v1, v2, p0, p1, p2}, Lorg/ejml/equation/Operation$8;-><init>(Ljava/lang/String;Lorg/ejml/equation/Variable;Lorg/ejml/equation/Variable;Lorg/ejml/equation/VariableDouble;)V

    iput-object v1, v0, Lorg/ejml/equation/Operation$Info;->op:Lorg/ejml/equation/Operation;

    :goto_0
    return-object v0
.end method

.method public static dot(Lorg/ejml/equation/Variable;Lorg/ejml/equation/Variable;Lorg/ejml/equation/ManagerTempVariables;)Lorg/ejml/equation/Operation$Info;
    .locals 3

    .line 1474
    new-instance v0, Lorg/ejml/equation/Operation$Info;

    invoke-direct {v0}, Lorg/ejml/equation/Operation$Info;-><init>()V

    .line 1475
    invoke-virtual {p2}, Lorg/ejml/equation/ManagerTempVariables;->createDouble()Lorg/ejml/equation/VariableDouble;

    move-result-object p2

    .line 1476
    iput-object p2, v0, Lorg/ejml/equation/Operation$Info;->output:Lorg/ejml/equation/Variable;

    .line 1478
    instance-of v1, p0, Lorg/ejml/equation/VariableMatrix;

    if-eqz v1, :cond_0

    instance-of v1, p1, Lorg/ejml/equation/VariableMatrix;

    if-eqz v1, :cond_0

    .line 1479
    new-instance v1, Lorg/ejml/equation/Operation$80;

    const-string v2, "dot-mm"

    invoke-direct {v1, v2, p0, p1, p2}, Lorg/ejml/equation/Operation$80;-><init>(Ljava/lang/String;Lorg/ejml/equation/Variable;Lorg/ejml/equation/Variable;Lorg/ejml/equation/VariableDouble;)V

    iput-object v1, v0, Lorg/ejml/equation/Operation$Info;->op:Lorg/ejml/equation/Operation;

    return-object v0

    .line 1492
    :cond_0
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Expected two matrices got "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, " "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public static elementDivision(Lorg/ejml/equation/Variable;Lorg/ejml/equation/Variable;Lorg/ejml/equation/ManagerTempVariables;)Lorg/ejml/equation/Operation$Info;
    .locals 3

    .line 611
    new-instance v0, Lorg/ejml/equation/Operation$Info;

    invoke-direct {v0}, Lorg/ejml/equation/Operation$Info;-><init>()V

    .line 613
    instance-of v1, p0, Lorg/ejml/equation/VariableMatrix;

    if-eqz v1, :cond_0

    instance-of v1, p1, Lorg/ejml/equation/VariableMatrix;

    if-eqz v1, :cond_0

    .line 614
    invoke-virtual {p2}, Lorg/ejml/equation/ManagerTempVariables;->createMatrix()Lorg/ejml/equation/VariableMatrix;

    move-result-object p2

    .line 615
    iput-object p2, v0, Lorg/ejml/equation/Operation$Info;->output:Lorg/ejml/equation/Variable;

    .line 616
    new-instance v1, Lorg/ejml/equation/Operation$32;

    const-string v2, "elementDivision-mm"

    invoke-direct {v1, v2, p0, p1, p2}, Lorg/ejml/equation/Operation$32;-><init>(Ljava/lang/String;Lorg/ejml/equation/Variable;Lorg/ejml/equation/Variable;Lorg/ejml/equation/VariableMatrix;)V

    iput-object v1, v0, Lorg/ejml/equation/Operation$Info;->op:Lorg/ejml/equation/Operation;

    return-object v0

    .line 627
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Both inputs must be matrices for element wise multiplication"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static elementMult(Lorg/ejml/equation/Variable;Lorg/ejml/equation/Variable;Lorg/ejml/equation/ManagerTempVariables;)Lorg/ejml/equation/Operation$Info;
    .locals 3

    .line 588
    new-instance v0, Lorg/ejml/equation/Operation$Info;

    invoke-direct {v0}, Lorg/ejml/equation/Operation$Info;-><init>()V

    .line 590
    instance-of v1, p0, Lorg/ejml/equation/VariableMatrix;

    if-eqz v1, :cond_0

    instance-of v1, p1, Lorg/ejml/equation/VariableMatrix;

    if-eqz v1, :cond_0

    .line 591
    invoke-virtual {p2}, Lorg/ejml/equation/ManagerTempVariables;->createMatrix()Lorg/ejml/equation/VariableMatrix;

    move-result-object p2

    .line 592
    iput-object p2, v0, Lorg/ejml/equation/Operation$Info;->output:Lorg/ejml/equation/Variable;

    .line 593
    new-instance v1, Lorg/ejml/equation/Operation$31;

    const-string v2, "elementMult-mm"

    invoke-direct {v1, v2, p0, p1, p2}, Lorg/ejml/equation/Operation$31;-><init>(Ljava/lang/String;Lorg/ejml/equation/Variable;Lorg/ejml/equation/Variable;Lorg/ejml/equation/VariableMatrix;)V

    iput-object v1, v0, Lorg/ejml/equation/Operation$Info;->op:Lorg/ejml/equation/Operation;

    return-object v0

    .line 604
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Both inputs must be matrices for element wise multiplication"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static elementPow(Lorg/ejml/equation/Variable;Lorg/ejml/equation/Variable;Lorg/ejml/equation/ManagerTempVariables;)Lorg/ejml/equation/Operation$Info;
    .locals 4

    .line 634
    new-instance v0, Lorg/ejml/equation/Operation$Info;

    invoke-direct {v0}, Lorg/ejml/equation/Operation$Info;-><init>()V

    .line 637
    instance-of v1, p0, Lorg/ejml/equation/VariableScalar;

    if-eqz v1, :cond_0

    instance-of v2, p1, Lorg/ejml/equation/VariableScalar;

    if-eqz v2, :cond_0

    .line 639
    invoke-virtual {p2}, Lorg/ejml/equation/ManagerTempVariables;->createDouble()Lorg/ejml/equation/VariableDouble;

    move-result-object p2

    .line 640
    iput-object p2, v0, Lorg/ejml/equation/Operation$Info;->output:Lorg/ejml/equation/Variable;

    .line 642
    new-instance v1, Lorg/ejml/equation/Operation$33;

    const-string v2, "elementPow-ss"

    invoke-direct {v1, v2, p0, p1, p2}, Lorg/ejml/equation/Operation$33;-><init>(Ljava/lang/String;Lorg/ejml/equation/Variable;Lorg/ejml/equation/Variable;Lorg/ejml/equation/VariableDouble;)V

    iput-object v1, v0, Lorg/ejml/equation/Operation$Info;->op:Lorg/ejml/equation/Operation;

    goto :goto_0

    .line 651
    :cond_0
    instance-of v2, p0, Lorg/ejml/equation/VariableMatrix;

    if-eqz v2, :cond_1

    instance-of v3, p1, Lorg/ejml/equation/VariableMatrix;

    if-eqz v3, :cond_1

    .line 653
    invoke-virtual {p2}, Lorg/ejml/equation/ManagerTempVariables;->createMatrix()Lorg/ejml/equation/VariableMatrix;

    move-result-object p2

    .line 654
    iput-object p2, v0, Lorg/ejml/equation/Operation$Info;->output:Lorg/ejml/equation/Variable;

    .line 656
    new-instance v1, Lorg/ejml/equation/Operation$34;

    const-string v2, "elementPow-mm"

    invoke-direct {v1, v2, p0, p1, p2}, Lorg/ejml/equation/Operation$34;-><init>(Ljava/lang/String;Lorg/ejml/equation/Variable;Lorg/ejml/equation/Variable;Lorg/ejml/equation/VariableMatrix;)V

    iput-object v1, v0, Lorg/ejml/equation/Operation$Info;->op:Lorg/ejml/equation/Operation;

    goto :goto_0

    :cond_1
    if-eqz v2, :cond_2

    .line 666
    instance-of v2, p1, Lorg/ejml/equation/VariableScalar;

    if-eqz v2, :cond_2

    .line 668
    invoke-virtual {p2}, Lorg/ejml/equation/ManagerTempVariables;->createMatrix()Lorg/ejml/equation/VariableMatrix;

    move-result-object p2

    .line 669
    iput-object p2, v0, Lorg/ejml/equation/Operation$Info;->output:Lorg/ejml/equation/Variable;

    .line 671
    new-instance v1, Lorg/ejml/equation/Operation$35;

    const-string v2, "elementPow-ms"

    invoke-direct {v1, v2, p0, p1, p2}, Lorg/ejml/equation/Operation$35;-><init>(Ljava/lang/String;Lorg/ejml/equation/Variable;Lorg/ejml/equation/Variable;Lorg/ejml/equation/VariableMatrix;)V

    iput-object v1, v0, Lorg/ejml/equation/Operation$Info;->op:Lorg/ejml/equation/Operation;

    goto :goto_0

    :cond_2
    if-eqz v1, :cond_3

    .line 681
    instance-of v1, p1, Lorg/ejml/equation/VariableMatrix;

    if-eqz v1, :cond_3

    .line 683
    invoke-virtual {p2}, Lorg/ejml/equation/ManagerTempVariables;->createMatrix()Lorg/ejml/equation/VariableMatrix;

    move-result-object p2

    .line 684
    iput-object p2, v0, Lorg/ejml/equation/Operation$Info;->output:Lorg/ejml/equation/Variable;

    .line 686
    new-instance v1, Lorg/ejml/equation/Operation$36;

    const-string v2, "elementPow-sm"

    invoke-direct {v1, v2, p0, p1, p2}, Lorg/ejml/equation/Operation$36;-><init>(Ljava/lang/String;Lorg/ejml/equation/Variable;Lorg/ejml/equation/Variable;Lorg/ejml/equation/VariableMatrix;)V

    iput-object v1, v0, Lorg/ejml/equation/Operation$Info;->op:Lorg/ejml/equation/Operation;

    :goto_0
    return-object v0

    .line 697
    :cond_3
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Unsupport element-wise power input types"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static exp(Lorg/ejml/equation/Variable;Lorg/ejml/equation/ManagerTempVariables;)Lorg/ejml/equation/Operation$Info;
    .locals 3

    .line 373
    new-instance v0, Lorg/ejml/equation/Operation$Info;

    invoke-direct {v0}, Lorg/ejml/equation/Operation$Info;-><init>()V

    .line 376
    instance-of v1, p0, Lorg/ejml/equation/VariableScalar;

    if-eqz v1, :cond_0

    .line 377
    invoke-virtual {p1}, Lorg/ejml/equation/ManagerTempVariables;->createDouble()Lorg/ejml/equation/VariableDouble;

    move-result-object p1

    .line 378
    iput-object p1, v0, Lorg/ejml/equation/Operation$Info;->output:Lorg/ejml/equation/Variable;

    .line 379
    new-instance v1, Lorg/ejml/equation/Operation$18;

    const-string v2, "exp-s"

    invoke-direct {v1, v2, p1, p0}, Lorg/ejml/equation/Operation$18;-><init>(Ljava/lang/String;Lorg/ejml/equation/VariableDouble;Lorg/ejml/equation/Variable;)V

    iput-object v1, v0, Lorg/ejml/equation/Operation$Info;->op:Lorg/ejml/equation/Operation;

    goto :goto_0

    .line 385
    :cond_0
    instance-of v1, p0, Lorg/ejml/equation/VariableMatrix;

    if-eqz v1, :cond_1

    .line 386
    invoke-virtual {p1}, Lorg/ejml/equation/ManagerTempVariables;->createMatrix()Lorg/ejml/equation/VariableMatrix;

    move-result-object p1

    .line 387
    iput-object p1, v0, Lorg/ejml/equation/Operation$Info;->output:Lorg/ejml/equation/Variable;

    .line 388
    new-instance p1, Lorg/ejml/equation/Operation$19;

    const-string v1, "exp-m"

    invoke-direct {p1, v1, p0, v0}, Lorg/ejml/equation/Operation$19;-><init>(Ljava/lang/String;Lorg/ejml/equation/Variable;Lorg/ejml/equation/Operation$Info;)V

    iput-object p1, v0, Lorg/ejml/equation/Operation$Info;->op:Lorg/ejml/equation/Operation;

    :goto_0
    return-object v0

    .line 398
    :cond_1
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Only scalars are supported"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static extract(Ljava/util/List;Lorg/ejml/equation/ManagerTempVariables;)Lorg/ejml/equation/Operation$Info;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/ejml/equation/Variable;",
            ">;",
            "Lorg/ejml/equation/ManagerTempVariables;",
            ")",
            "Lorg/ejml/equation/Operation$Info;"
        }
    .end annotation

    .line 1535
    new-instance v0, Lorg/ejml/equation/Operation$Info;

    invoke-direct {v0}, Lorg/ejml/equation/Operation$Info;-><init>()V

    .line 1536
    invoke-virtual {p1}, Lorg/ejml/equation/ManagerTempVariables;->createMatrix()Lorg/ejml/equation/VariableMatrix;

    move-result-object p1

    .line 1537
    iput-object p1, v0, Lorg/ejml/equation/Operation$Info;->output:Lorg/ejml/equation/Variable;

    const/4 v1, 0x0

    .line 1539
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lorg/ejml/equation/VariableMatrix;

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    .line 1543
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 1544
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lorg/ejml/equation/VariableInteger;

    if-nez v2, :cond_1

    .line 1545
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/ejml/equation/Variable;

    invoke-virtual {v2}, Lorg/ejml/equation/Variable;->getType()Lorg/ejml/equation/VariableType;

    move-result-object v2

    sget-object v3, Lorg/ejml/equation/VariableType;->INTEGER_SEQUENCE:Lorg/ejml/equation/VariableType;

    if-ne v2, v3, :cond_0

    goto :goto_1

    .line 1546
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Parameters must be integers, integer list, or array range"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1549
    :cond_2
    new-instance v1, Lorg/ejml/equation/Operation$82;

    const-string v2, "extract"

    invoke-direct {v1, v2, p0, p1}, Lorg/ejml/equation/Operation$82;-><init>(Ljava/lang/String;Ljava/util/List;Lorg/ejml/equation/VariableMatrix;)V

    iput-object v1, v0, Lorg/ejml/equation/Operation$Info;->op:Lorg/ejml/equation/Operation;

    return-object v0

    .line 1540
    :cond_3
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "First parameter must be a matrix."

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static extractArrayExtent(Lorg/ejml/equation/Variable;ILorg/ejml/equation/Operation$ArrayExtent;)V
    .locals 4

    .line 1722
    invoke-virtual {p0}, Lorg/ejml/equation/Variable;->getType()Lorg/ejml/equation/VariableType;

    move-result-object v0

    sget-object v1, Lorg/ejml/equation/VariableType;->INTEGER_SEQUENCE:Lorg/ejml/equation/VariableType;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_0

    .line 1723
    check-cast p0, Lorg/ejml/equation/VariableIntegerSequence;

    iget-object p0, p0, Lorg/ejml/equation/VariableIntegerSequence;->sequence:Lorg/ejml/equation/IntegerSequence;

    sub-int/2addr p1, v3

    .line 1724
    invoke-interface {p0, p1}, Lorg/ejml/equation/IntegerSequence;->initialize(I)V

    .line 1725
    invoke-interface {p0}, Lorg/ejml/equation/IntegerSequence;->length()I

    move-result p1

    invoke-virtual {p2, p1}, Lorg/ejml/equation/Operation$ArrayExtent;->setLength(I)V

    .line 1727
    :goto_0
    invoke-interface {p0}, Lorg/ejml/equation/IntegerSequence;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1728
    iget-object p1, p2, Lorg/ejml/equation/Operation$ArrayExtent;->array:[I

    add-int/lit8 v0, v2, 0x1

    invoke-interface {p0}, Lorg/ejml/equation/IntegerSequence;->next()I

    move-result v1

    aput v1, p1, v2

    move v2, v0

    goto :goto_0

    .line 1730
    :cond_0
    invoke-virtual {p0}, Lorg/ejml/equation/Variable;->getType()Lorg/ejml/equation/VariableType;

    move-result-object p1

    sget-object v0, Lorg/ejml/equation/VariableType;->SCALAR:Lorg/ejml/equation/VariableType;

    if-ne p1, v0, :cond_2

    .line 1731
    invoke-virtual {p2, v3}, Lorg/ejml/equation/Operation$ArrayExtent;->setLength(I)V

    .line 1732
    iget-object p1, p2, Lorg/ejml/equation/Operation$ArrayExtent;->array:[I

    check-cast p0, Lorg/ejml/equation/VariableInteger;

    iget p0, p0, Lorg/ejml/equation/VariableInteger;->value:I

    aput p0, p1, v2

    :cond_1
    return-void

    .line 1734
    :cond_2
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "How did a bad variable get put here?!?!"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static extractScalar(Ljava/util/List;Lorg/ejml/equation/ManagerTempVariables;)Lorg/ejml/equation/Operation$Info;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/ejml/equation/Variable;",
            ">;",
            "Lorg/ejml/equation/ManagerTempVariables;",
            ")",
            "Lorg/ejml/equation/Operation$Info;"
        }
    .end annotation

    .line 1648
    new-instance v0, Lorg/ejml/equation/Operation$Info;

    invoke-direct {v0}, Lorg/ejml/equation/Operation$Info;-><init>()V

    .line 1649
    invoke-virtual {p1}, Lorg/ejml/equation/ManagerTempVariables;->createDouble()Lorg/ejml/equation/VariableDouble;

    move-result-object p1

    .line 1650
    iput-object p1, v0, Lorg/ejml/equation/Operation$Info;->output:Lorg/ejml/equation/Variable;

    const/4 v1, 0x0

    .line 1652
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lorg/ejml/equation/VariableMatrix;

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    .line 1655
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 1656
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lorg/ejml/equation/VariableInteger;

    if-eqz v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1657
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Parameters must be integers for extract scalar"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1660
    :cond_1
    new-instance v1, Lorg/ejml/equation/Operation$86;

    const-string v2, "extractScalar"

    invoke-direct {v1, v2, p0, p1}, Lorg/ejml/equation/Operation$86;-><init>(Ljava/lang/String;Ljava/util/List;Lorg/ejml/equation/VariableDouble;)V

    iput-object v1, v0, Lorg/ejml/equation/Operation$Info;->op:Lorg/ejml/equation/Operation;

    return-object v0

    .line 1653
    :cond_2
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "First parameter must be a matrix."

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static extractSimpleExtents(Lorg/ejml/equation/Variable;Lorg/ejml/equation/Operation$Extents;ZI)Z
    .locals 4

    .line 1692
    invoke-virtual {p0}, Lorg/ejml/equation/Variable;->getType()Lorg/ejml/equation/VariableType;

    move-result-object v0

    sget-object v1, Lorg/ejml/equation/VariableType;->INTEGER_SEQUENCE:Lorg/ejml/equation/VariableType;

    const/4 v2, 0x1

    if-ne v0, v1, :cond_1

    .line 1693
    check-cast p0, Lorg/ejml/equation/VariableIntegerSequence;

    iget-object p0, p0, Lorg/ejml/equation/VariableIntegerSequence;->sequence:Lorg/ejml/equation/IntegerSequence;

    .line 1694
    invoke-interface {p0}, Lorg/ejml/equation/IntegerSequence;->getType()Lorg/ejml/equation/IntegerSequence$Type;

    move-result-object v0

    sget-object v1, Lorg/ejml/equation/IntegerSequence$Type;->FOR:Lorg/ejml/equation/IntegerSequence$Type;

    const/4 v3, 0x0

    if-ne v0, v1, :cond_0

    .line 1695
    check-cast p0, Lorg/ejml/equation/IntegerSequence$For;

    .line 1696
    invoke-virtual {p0, p3}, Lorg/ejml/equation/IntegerSequence$For;->initialize(I)V

    .line 1697
    invoke-virtual {p0}, Lorg/ejml/equation/IntegerSequence$For;->getStep()I

    move-result p3

    if-ne p3, v2, :cond_0

    .line 1698
    invoke-virtual {p0}, Lorg/ejml/equation/IntegerSequence$For;->getStart()I

    move-result p3

    .line 1699
    invoke-virtual {p0}, Lorg/ejml/equation/IntegerSequence$For;->getEnd()I

    move-result p0

    goto :goto_0

    :cond_0
    return v3

    .line 1706
    :cond_1
    invoke-virtual {p0}, Lorg/ejml/equation/Variable;->getType()Lorg/ejml/equation/VariableType;

    move-result-object p3

    sget-object v0, Lorg/ejml/equation/VariableType;->SCALAR:Lorg/ejml/equation/VariableType;

    if-ne p3, v0, :cond_3

    .line 1707
    check-cast p0, Lorg/ejml/equation/VariableInteger;

    iget p3, p0, Lorg/ejml/equation/VariableInteger;->value:I

    move p0, p3

    :goto_0
    if-eqz p2, :cond_2

    .line 1712
    iput p3, p1, Lorg/ejml/equation/Operation$Extents;->row0:I

    .line 1713
    iput p0, p1, Lorg/ejml/equation/Operation$Extents;->row1:I

    goto :goto_1

    .line 1715
    :cond_2
    iput p3, p1, Lorg/ejml/equation/Operation$Extents;->col0:I

    .line 1716
    iput p0, p1, Lorg/ejml/equation/Operation$Extents;->col1:I

    :goto_1
    return v2

    .line 1709
    :cond_3
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "How did a bad variable get put here?!?!"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static eye(Lorg/ejml/equation/Variable;Lorg/ejml/equation/ManagerTempVariables;)Lorg/ejml/equation/Operation$Info;
    .locals 3

    .line 1263
    new-instance v0, Lorg/ejml/equation/Operation$Info;

    invoke-direct {v0}, Lorg/ejml/equation/Operation$Info;-><init>()V

    .line 1264
    invoke-virtual {p1}, Lorg/ejml/equation/ManagerTempVariables;->createMatrix()Lorg/ejml/equation/VariableMatrix;

    move-result-object p1

    .line 1265
    iput-object p1, v0, Lorg/ejml/equation/Operation$Info;->output:Lorg/ejml/equation/Variable;

    .line 1267
    instance-of v1, p0, Lorg/ejml/equation/VariableMatrix;

    if-eqz v1, :cond_0

    .line 1268
    new-instance v1, Lorg/ejml/equation/Operation$71;

    const-string v2, "eye-m"

    invoke-direct {v1, v2, p0, p1}, Lorg/ejml/equation/Operation$71;-><init>(Ljava/lang/String;Lorg/ejml/equation/Variable;Lorg/ejml/equation/VariableMatrix;)V

    iput-object v1, v0, Lorg/ejml/equation/Operation$Info;->op:Lorg/ejml/equation/Operation;

    goto :goto_0

    .line 1276
    :cond_0
    instance-of v1, p0, Lorg/ejml/equation/VariableInteger;

    if-eqz v1, :cond_1

    .line 1277
    new-instance v1, Lorg/ejml/equation/Operation$72;

    const-string v2, "eye-i"

    invoke-direct {v1, v2, p0, p1}, Lorg/ejml/equation/Operation$72;-><init>(Ljava/lang/String;Lorg/ejml/equation/Variable;Lorg/ejml/equation/VariableMatrix;)V

    iput-object v1, v0, Lorg/ejml/equation/Operation$Info;->op:Lorg/ejml/equation/Operation;

    :goto_0
    return-object v0

    .line 1286
    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unsupported variable type "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static inv(Lorg/ejml/equation/Variable;Lorg/ejml/equation/ManagerTempVariables;)Lorg/ejml/equation/Operation$Info;
    .locals 3

    .line 890
    new-instance v0, Lorg/ejml/equation/Operation$Info;

    invoke-direct {v0}, Lorg/ejml/equation/Operation$Info;-><init>()V

    .line 892
    instance-of v1, p0, Lorg/ejml/equation/VariableMatrix;

    if-eqz v1, :cond_0

    .line 893
    invoke-virtual {p1}, Lorg/ejml/equation/ManagerTempVariables;->createMatrix()Lorg/ejml/equation/VariableMatrix;

    move-result-object p1

    .line 894
    iput-object p1, v0, Lorg/ejml/equation/Operation$Info;->output:Lorg/ejml/equation/Variable;

    .line 895
    new-instance v1, Lorg/ejml/equation/Operation$45;

    const-string v2, "inv-m"

    invoke-direct {v1, v2, p0, p1}, Lorg/ejml/equation/Operation$45;-><init>(Ljava/lang/String;Lorg/ejml/equation/Variable;Lorg/ejml/equation/VariableMatrix;)V

    iput-object v1, v0, Lorg/ejml/equation/Operation$Info;->op:Lorg/ejml/equation/Operation;

    goto :goto_0

    .line 905
    :cond_0
    invoke-virtual {p1}, Lorg/ejml/equation/ManagerTempVariables;->createDouble()Lorg/ejml/equation/VariableDouble;

    move-result-object p1

    .line 906
    iput-object p1, v0, Lorg/ejml/equation/Operation$Info;->output:Lorg/ejml/equation/Variable;

    .line 907
    new-instance v1, Lorg/ejml/equation/Operation$46;

    const-string v2, "inv-s"

    invoke-direct {v1, v2, p0, p1}, Lorg/ejml/equation/Operation$46;-><init>(Ljava/lang/String;Lorg/ejml/equation/Variable;Lorg/ejml/equation/VariableDouble;)V

    iput-object v1, v0, Lorg/ejml/equation/Operation$Info;->op:Lorg/ejml/equation/Operation;

    :goto_0
    return-object v0
.end method

.method public static kron(Lorg/ejml/equation/Variable;Lorg/ejml/equation/Variable;Lorg/ejml/equation/ManagerTempVariables;)Lorg/ejml/equation/Operation$Info;
    .locals 3

    .line 1449
    new-instance v0, Lorg/ejml/equation/Operation$Info;

    invoke-direct {v0}, Lorg/ejml/equation/Operation$Info;-><init>()V

    .line 1450
    invoke-virtual {p2}, Lorg/ejml/equation/ManagerTempVariables;->createMatrix()Lorg/ejml/equation/VariableMatrix;

    move-result-object p2

    .line 1451
    iput-object p2, v0, Lorg/ejml/equation/Operation$Info;->output:Lorg/ejml/equation/Variable;

    .line 1453
    instance-of v1, p0, Lorg/ejml/equation/VariableMatrix;

    if-eqz v1, :cond_0

    instance-of v1, p1, Lorg/ejml/equation/VariableMatrix;

    if-eqz v1, :cond_0

    .line 1454
    new-instance v1, Lorg/ejml/equation/Operation$79;

    const-string v2, "kron-mm"

    invoke-direct {v1, v2, p0, p1, p2}, Lorg/ejml/equation/Operation$79;-><init>(Ljava/lang/String;Lorg/ejml/equation/Variable;Lorg/ejml/equation/Variable;Lorg/ejml/equation/VariableMatrix;)V

    iput-object v1, v0, Lorg/ejml/equation/Operation$Info;->op:Lorg/ejml/equation/Operation;

    return-object v0

    .line 1464
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const/4 p1, 0x0

    sget-object p1, Lorg/ejml/sparse/csc/factory/IRj/pUMrurWM;->cbRaGroLAN:Ljava/lang/String;

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static log(Lorg/ejml/equation/Variable;Lorg/ejml/equation/ManagerTempVariables;)Lorg/ejml/equation/Operation$Info;
    .locals 3

    .line 405
    new-instance v0, Lorg/ejml/equation/Operation$Info;

    invoke-direct {v0}, Lorg/ejml/equation/Operation$Info;-><init>()V

    .line 407
    instance-of v1, p0, Lorg/ejml/equation/VariableScalar;

    if-eqz v1, :cond_0

    .line 408
    invoke-virtual {p1}, Lorg/ejml/equation/ManagerTempVariables;->createDouble()Lorg/ejml/equation/VariableDouble;

    move-result-object p1

    .line 409
    iput-object p1, v0, Lorg/ejml/equation/Operation$Info;->output:Lorg/ejml/equation/Variable;

    .line 410
    new-instance v1, Lorg/ejml/equation/Operation$20;

    const-string v2, "log-s"

    invoke-direct {v1, v2, p1, p0}, Lorg/ejml/equation/Operation$20;-><init>(Ljava/lang/String;Lorg/ejml/equation/VariableDouble;Lorg/ejml/equation/Variable;)V

    iput-object v1, v0, Lorg/ejml/equation/Operation$Info;->op:Lorg/ejml/equation/Operation;

    goto :goto_0

    .line 416
    :cond_0
    instance-of v1, p0, Lorg/ejml/equation/VariableMatrix;

    if-eqz v1, :cond_1

    .line 417
    invoke-virtual {p1}, Lorg/ejml/equation/ManagerTempVariables;->createMatrix()Lorg/ejml/equation/VariableMatrix;

    move-result-object p1

    .line 418
    iput-object p1, v0, Lorg/ejml/equation/Operation$Info;->output:Lorg/ejml/equation/Variable;

    .line 419
    new-instance p1, Lorg/ejml/equation/Operation$21;

    const-string v1, "log-m"

    invoke-direct {p1, v1, p0, v0}, Lorg/ejml/equation/Operation$21;-><init>(Ljava/lang/String;Lorg/ejml/equation/Variable;Lorg/ejml/equation/Operation$Info;)V

    iput-object p1, v0, Lorg/ejml/equation/Operation$Info;->op:Lorg/ejml/equation/Operation;

    :goto_0
    return-object v0

    .line 429
    :cond_1
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Only scalars are supported"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static matrixConstructor(Lorg/ejml/equation/MatrixConstructor;)Lorg/ejml/equation/Operation$Info;
    .locals 3

    .line 1739
    new-instance v0, Lorg/ejml/equation/Operation$Info;

    invoke-direct {v0}, Lorg/ejml/equation/Operation$Info;-><init>()V

    .line 1740
    invoke-virtual {p0}, Lorg/ejml/equation/MatrixConstructor;->getOutput()Lorg/ejml/equation/VariableMatrix;

    move-result-object v1

    iput-object v1, v0, Lorg/ejml/equation/Operation$Info;->output:Lorg/ejml/equation/Variable;

    .line 1742
    new-instance v1, Lorg/ejml/equation/Operation$87;

    const-string v2, "matrixConstructor"

    invoke-direct {v1, v2, p0}, Lorg/ejml/equation/Operation$87;-><init>(Ljava/lang/String;Lorg/ejml/equation/MatrixConstructor;)V

    iput-object v1, v0, Lorg/ejml/equation/Operation$Info;->op:Lorg/ejml/equation/Operation;

    return-object v0
.end method

.method public static max(Lorg/ejml/equation/Variable;Lorg/ejml/equation/ManagerTempVariables;)Lorg/ejml/equation/Operation$Info;
    .locals 3

    .line 1082
    new-instance v0, Lorg/ejml/equation/Operation$Info;

    invoke-direct {v0}, Lorg/ejml/equation/Operation$Info;-><init>()V

    .line 1084
    instance-of v1, p0, Lorg/ejml/equation/VariableMatrix;

    if-eqz v1, :cond_0

    .line 1085
    invoke-virtual {p1}, Lorg/ejml/equation/ManagerTempVariables;->createDouble()Lorg/ejml/equation/VariableDouble;

    move-result-object p1

    .line 1086
    iput-object p1, v0, Lorg/ejml/equation/Operation$Info;->output:Lorg/ejml/equation/Variable;

    .line 1087
    new-instance v1, Lorg/ejml/equation/Operation$58;

    const-string v2, "max-m"

    invoke-direct {v1, v2, p1, p0}, Lorg/ejml/equation/Operation$58;-><init>(Ljava/lang/String;Lorg/ejml/equation/VariableDouble;Lorg/ejml/equation/Variable;)V

    iput-object v1, v0, Lorg/ejml/equation/Operation$Info;->op:Lorg/ejml/equation/Operation;

    goto :goto_0

    .line 1093
    :cond_0
    instance-of v1, p0, Lorg/ejml/equation/VariableInteger;

    if-eqz v1, :cond_1

    .line 1094
    invoke-virtual {p1}, Lorg/ejml/equation/ManagerTempVariables;->createInteger()Lorg/ejml/equation/VariableInteger;

    move-result-object p1

    .line 1095
    iput-object p1, v0, Lorg/ejml/equation/Operation$Info;->output:Lorg/ejml/equation/Variable;

    .line 1096
    new-instance v1, Lorg/ejml/equation/Operation$59;

    const-string v2, "max-i"

    invoke-direct {v1, v2, p1, p0}, Lorg/ejml/equation/Operation$59;-><init>(Ljava/lang/String;Lorg/ejml/equation/VariableInteger;Lorg/ejml/equation/Variable;)V

    iput-object v1, v0, Lorg/ejml/equation/Operation$Info;->op:Lorg/ejml/equation/Operation;

    goto :goto_0

    .line 1102
    :cond_1
    instance-of v1, p0, Lorg/ejml/equation/VariableScalar;

    if-eqz v1, :cond_2

    .line 1103
    invoke-virtual {p1}, Lorg/ejml/equation/ManagerTempVariables;->createDouble()Lorg/ejml/equation/VariableDouble;

    move-result-object p1

    .line 1104
    iput-object p1, v0, Lorg/ejml/equation/Operation$Info;->output:Lorg/ejml/equation/Variable;

    .line 1105
    new-instance v1, Lorg/ejml/equation/Operation$60;

    const-string v2, "max-s"

    invoke-direct {v1, v2, p1, p0}, Lorg/ejml/equation/Operation$60;-><init>(Ljava/lang/String;Lorg/ejml/equation/VariableDouble;Lorg/ejml/equation/Variable;)V

    iput-object v1, v0, Lorg/ejml/equation/Operation$Info;->op:Lorg/ejml/equation/Operation;

    :cond_2
    :goto_0
    return-object v0
.end method

.method public static max_two(Lorg/ejml/equation/Variable;Lorg/ejml/equation/Variable;Lorg/ejml/equation/ManagerTempVariables;)Lorg/ejml/equation/Operation$Info;
    .locals 5

    .line 1117
    new-instance v0, Lorg/ejml/equation/Operation$Info;

    invoke-direct {v0}, Lorg/ejml/equation/Operation$Info;-><init>()V

    .line 1118
    invoke-virtual {p2}, Lorg/ejml/equation/ManagerTempVariables;->createMatrix()Lorg/ejml/equation/VariableMatrix;

    move-result-object p2

    .line 1119
    iput-object p2, v0, Lorg/ejml/equation/Operation$Info;->output:Lorg/ejml/equation/Variable;

    .line 1121
    instance-of v1, p0, Lorg/ejml/equation/VariableMatrix;

    if-eqz v1, :cond_2

    instance-of v1, p1, Lorg/ejml/equation/VariableScalar;

    if-eqz v1, :cond_2

    .line 1124
    check-cast p1, Lorg/ejml/equation/VariableScalar;

    invoke-virtual {p1}, Lorg/ejml/equation/VariableScalar;->getDouble()D

    move-result-wide v1

    .line 1125
    check-cast p0, Lorg/ejml/equation/VariableMatrix;

    const-wide/16 v3, 0x0

    cmpl-double p1, v1, v3

    if-nez p1, :cond_0

    .line 1128
    new-instance p1, Lorg/ejml/equation/Operation$61;

    const-string v1, "max_rows"

    invoke-direct {p1, v1, p2, p0}, Lorg/ejml/equation/Operation$61;-><init>(Ljava/lang/String;Lorg/ejml/equation/VariableMatrix;Lorg/ejml/equation/VariableMatrix;)V

    iput-object p1, v0, Lorg/ejml/equation/Operation$Info;->op:Lorg/ejml/equation/Operation;

    goto :goto_0

    :cond_0
    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    cmpl-double p1, v1, v3

    if-nez p1, :cond_1

    .line 1136
    new-instance p1, Lorg/ejml/equation/Operation$62;

    const-string v1, "max_cols"

    invoke-direct {p1, v1, p2, p0}, Lorg/ejml/equation/Operation$62;-><init>(Ljava/lang/String;Lorg/ejml/equation/VariableMatrix;Lorg/ejml/equation/VariableMatrix;)V

    iput-object p1, v0, Lorg/ejml/equation/Operation$Info;->op:Lorg/ejml/equation/Operation;

    :goto_0
    return-object v0

    .line 1144
    :cond_1
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "max(A,d) expected d to be 0 for rows or 1 for columns"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1122
    :cond_2
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "max(A,d) A = matrix and d = scalar"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static min(Lorg/ejml/equation/Variable;Lorg/ejml/equation/ManagerTempVariables;)Lorg/ejml/equation/Operation$Info;
    .locals 3

    .line 1151
    new-instance v0, Lorg/ejml/equation/Operation$Info;

    invoke-direct {v0}, Lorg/ejml/equation/Operation$Info;-><init>()V

    .line 1153
    instance-of v1, p0, Lorg/ejml/equation/VariableMatrix;

    if-eqz v1, :cond_0

    .line 1154
    invoke-virtual {p1}, Lorg/ejml/equation/ManagerTempVariables;->createDouble()Lorg/ejml/equation/VariableDouble;

    move-result-object p1

    .line 1155
    iput-object p1, v0, Lorg/ejml/equation/Operation$Info;->output:Lorg/ejml/equation/Variable;

    .line 1156
    new-instance v1, Lorg/ejml/equation/Operation$63;

    const-string v2, "min-m"

    invoke-direct {v1, v2, p1, p0}, Lorg/ejml/equation/Operation$63;-><init>(Ljava/lang/String;Lorg/ejml/equation/VariableDouble;Lorg/ejml/equation/Variable;)V

    iput-object v1, v0, Lorg/ejml/equation/Operation$Info;->op:Lorg/ejml/equation/Operation;

    goto :goto_0

    .line 1162
    :cond_0
    instance-of v1, p0, Lorg/ejml/equation/VariableInteger;

    if-eqz v1, :cond_1

    .line 1163
    invoke-virtual {p1}, Lorg/ejml/equation/ManagerTempVariables;->createInteger()Lorg/ejml/equation/VariableInteger;

    move-result-object p1

    .line 1164
    iput-object p1, v0, Lorg/ejml/equation/Operation$Info;->output:Lorg/ejml/equation/Variable;

    .line 1165
    new-instance v1, Lorg/ejml/equation/Operation$64;

    const-string v2, "min-i"

    invoke-direct {v1, v2, p1, p0}, Lorg/ejml/equation/Operation$64;-><init>(Ljava/lang/String;Lorg/ejml/equation/VariableInteger;Lorg/ejml/equation/Variable;)V

    iput-object v1, v0, Lorg/ejml/equation/Operation$Info;->op:Lorg/ejml/equation/Operation;

    goto :goto_0

    .line 1171
    :cond_1
    instance-of v1, p0, Lorg/ejml/equation/VariableScalar;

    if-eqz v1, :cond_2

    .line 1172
    invoke-virtual {p1}, Lorg/ejml/equation/ManagerTempVariables;->createDouble()Lorg/ejml/equation/VariableDouble;

    move-result-object p1

    .line 1173
    iput-object p1, v0, Lorg/ejml/equation/Operation$Info;->output:Lorg/ejml/equation/Variable;

    .line 1174
    new-instance v1, Lorg/ejml/equation/Operation$65;

    const-string v2, "min-s"

    invoke-direct {v1, v2, p1, p0}, Lorg/ejml/equation/Operation$65;-><init>(Ljava/lang/String;Lorg/ejml/equation/VariableDouble;Lorg/ejml/equation/Variable;)V

    iput-object v1, v0, Lorg/ejml/equation/Operation$Info;->op:Lorg/ejml/equation/Operation;

    :cond_2
    :goto_0
    return-object v0
.end method

.method public static min_two(Lorg/ejml/equation/Variable;Lorg/ejml/equation/Variable;Lorg/ejml/equation/ManagerTempVariables;)Lorg/ejml/equation/Operation$Info;
    .locals 5

    .line 1186
    new-instance v0, Lorg/ejml/equation/Operation$Info;

    invoke-direct {v0}, Lorg/ejml/equation/Operation$Info;-><init>()V

    .line 1187
    invoke-virtual {p2}, Lorg/ejml/equation/ManagerTempVariables;->createMatrix()Lorg/ejml/equation/VariableMatrix;

    move-result-object p2

    .line 1188
    iput-object p2, v0, Lorg/ejml/equation/Operation$Info;->output:Lorg/ejml/equation/Variable;

    .line 1190
    instance-of v1, p0, Lorg/ejml/equation/VariableMatrix;

    if-eqz v1, :cond_2

    instance-of v1, p1, Lorg/ejml/equation/VariableScalar;

    if-eqz v1, :cond_2

    .line 1193
    check-cast p1, Lorg/ejml/equation/VariableScalar;

    invoke-virtual {p1}, Lorg/ejml/equation/VariableScalar;->getDouble()D

    move-result-wide v1

    .line 1194
    check-cast p0, Lorg/ejml/equation/VariableMatrix;

    const-wide/16 v3, 0x0

    cmpl-double p1, v1, v3

    if-nez p1, :cond_0

    .line 1197
    new-instance p1, Lorg/ejml/equation/Operation$66;

    const-string v1, "min_rows"

    invoke-direct {p1, v1, p2, p0}, Lorg/ejml/equation/Operation$66;-><init>(Ljava/lang/String;Lorg/ejml/equation/VariableMatrix;Lorg/ejml/equation/VariableMatrix;)V

    iput-object p1, v0, Lorg/ejml/equation/Operation$Info;->op:Lorg/ejml/equation/Operation;

    goto :goto_0

    :cond_0
    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    cmpl-double p1, v1, v3

    if-nez p1, :cond_1

    .line 1205
    new-instance p1, Lorg/ejml/equation/Operation$67;

    const-string v1, "min_cols"

    invoke-direct {p1, v1, p2, p0}, Lorg/ejml/equation/Operation$67;-><init>(Ljava/lang/String;Lorg/ejml/equation/VariableMatrix;Lorg/ejml/equation/VariableMatrix;)V

    iput-object p1, v0, Lorg/ejml/equation/Operation$Info;->op:Lorg/ejml/equation/Operation;

    :goto_0
    return-object v0

    .line 1213
    :cond_1
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "min(A,d) expected d to be 0 for rows or 1 for columns"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1191
    :cond_2
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "min(A,d) A = matrix and d = scalar"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static multiply(Lorg/ejml/equation/Variable;Lorg/ejml/equation/Variable;Lorg/ejml/equation/ManagerTempVariables;)Lorg/ejml/equation/Operation$Info;
    .locals 4

    .line 71
    new-instance v0, Lorg/ejml/equation/Operation$Info;

    invoke-direct {v0}, Lorg/ejml/equation/Operation$Info;-><init>()V

    .line 73
    instance-of v1, p0, Lorg/ejml/equation/VariableMatrix;

    if-eqz v1, :cond_0

    instance-of v2, p1, Lorg/ejml/equation/VariableMatrix;

    if-eqz v2, :cond_0

    .line 74
    invoke-virtual {p2}, Lorg/ejml/equation/ManagerTempVariables;->createMatrix()Lorg/ejml/equation/VariableMatrix;

    move-result-object p2

    .line 75
    iput-object p2, v0, Lorg/ejml/equation/Operation$Info;->output:Lorg/ejml/equation/Variable;

    .line 76
    new-instance v1, Lorg/ejml/equation/Operation$1;

    const-string v2, "multiply-mm"

    invoke-direct {v1, v2, p0, p1, p2}, Lorg/ejml/equation/Operation$1;-><init>(Ljava/lang/String;Lorg/ejml/equation/Variable;Lorg/ejml/equation/Variable;Lorg/ejml/equation/VariableMatrix;)V

    iput-object v1, v0, Lorg/ejml/equation/Operation$Info;->op:Lorg/ejml/equation/Operation;

    goto :goto_1

    .line 92
    :cond_0
    instance-of v2, p0, Lorg/ejml/equation/VariableInteger;

    if-eqz v2, :cond_1

    instance-of v2, p1, Lorg/ejml/equation/VariableInteger;

    if-eqz v2, :cond_1

    .line 93
    invoke-virtual {p2}, Lorg/ejml/equation/ManagerTempVariables;->createInteger()Lorg/ejml/equation/VariableInteger;

    move-result-object p2

    .line 94
    iput-object p2, v0, Lorg/ejml/equation/Operation$Info;->output:Lorg/ejml/equation/Variable;

    .line 95
    new-instance v1, Lorg/ejml/equation/Operation$2;

    const-string v2, "multiply-ii"

    invoke-direct {v1, v2, p0, p1, p2}, Lorg/ejml/equation/Operation$2;-><init>(Ljava/lang/String;Lorg/ejml/equation/Variable;Lorg/ejml/equation/Variable;Lorg/ejml/equation/VariableInteger;)V

    iput-object v1, v0, Lorg/ejml/equation/Operation$Info;->op:Lorg/ejml/equation/Operation;

    goto :goto_1

    .line 104
    :cond_1
    instance-of v2, p0, Lorg/ejml/equation/VariableScalar;

    if-eqz v2, :cond_2

    instance-of v2, p1, Lorg/ejml/equation/VariableScalar;

    if-eqz v2, :cond_2

    .line 105
    invoke-virtual {p2}, Lorg/ejml/equation/ManagerTempVariables;->createDouble()Lorg/ejml/equation/VariableDouble;

    move-result-object p2

    .line 106
    iput-object p2, v0, Lorg/ejml/equation/Operation$Info;->output:Lorg/ejml/equation/Variable;

    .line 107
    new-instance v1, Lorg/ejml/equation/Operation$3;

    const-string v2, "multiply-ss"

    invoke-direct {v1, v2, p0, p1, p2}, Lorg/ejml/equation/Operation$3;-><init>(Ljava/lang/String;Lorg/ejml/equation/Variable;Lorg/ejml/equation/Variable;Lorg/ejml/equation/VariableDouble;)V

    iput-object v1, v0, Lorg/ejml/equation/Operation$Info;->op:Lorg/ejml/equation/Operation;

    goto :goto_1

    .line 117
    :cond_2
    invoke-virtual {p2}, Lorg/ejml/equation/ManagerTempVariables;->createMatrix()Lorg/ejml/equation/VariableMatrix;

    move-result-object p2

    .line 118
    iput-object p2, v0, Lorg/ejml/equation/Operation$Info;->output:Lorg/ejml/equation/Variable;

    if-eqz v1, :cond_3

    .line 123
    check-cast p0, Lorg/ejml/equation/VariableMatrix;

    .line 124
    check-cast p1, Lorg/ejml/equation/VariableScalar;

    goto :goto_0

    .line 126
    :cond_3
    check-cast p1, Lorg/ejml/equation/VariableMatrix;

    .line 127
    check-cast p0, Lorg/ejml/equation/VariableScalar;

    move-object v3, p1

    move-object p1, p0

    move-object p0, v3

    .line 130
    :goto_0
    new-instance v1, Lorg/ejml/equation/Operation$4;

    const-string v2, "multiply-ms"

    invoke-direct {v1, v2, p2, p0, p1}, Lorg/ejml/equation/Operation$4;-><init>(Ljava/lang/String;Lorg/ejml/equation/VariableMatrix;Lorg/ejml/equation/VariableMatrix;Lorg/ejml/equation/VariableScalar;)V

    iput-object v1, v0, Lorg/ejml/equation/Operation$Info;->op:Lorg/ejml/equation/Operation;

    :goto_1
    return-object v0
.end method

.method public static neg(Lorg/ejml/equation/Variable;Lorg/ejml/equation/ManagerTempVariables;)Lorg/ejml/equation/Operation$Info;
    .locals 3

    .line 206
    new-instance v0, Lorg/ejml/equation/Operation$Info;

    invoke-direct {v0}, Lorg/ejml/equation/Operation$Info;-><init>()V

    .line 208
    instance-of v1, p0, Lorg/ejml/equation/VariableInteger;

    if-eqz v1, :cond_0

    .line 209
    invoke-virtual {p1}, Lorg/ejml/equation/ManagerTempVariables;->createInteger()Lorg/ejml/equation/VariableInteger;

    move-result-object p1

    .line 210
    iput-object p1, v0, Lorg/ejml/equation/Operation$Info;->output:Lorg/ejml/equation/Variable;

    .line 211
    new-instance v1, Lorg/ejml/equation/Operation$9;

    const-string v2, "neg-i"

    invoke-direct {v1, v2, p1, p0}, Lorg/ejml/equation/Operation$9;-><init>(Ljava/lang/String;Lorg/ejml/equation/VariableInteger;Lorg/ejml/equation/Variable;)V

    iput-object v1, v0, Lorg/ejml/equation/Operation$Info;->op:Lorg/ejml/equation/Operation;

    goto :goto_0

    .line 217
    :cond_0
    instance-of v1, p0, Lorg/ejml/equation/VariableScalar;

    if-eqz v1, :cond_1

    .line 218
    invoke-virtual {p1}, Lorg/ejml/equation/ManagerTempVariables;->createDouble()Lorg/ejml/equation/VariableDouble;

    move-result-object p1

    .line 219
    iput-object p1, v0, Lorg/ejml/equation/Operation$Info;->output:Lorg/ejml/equation/Variable;

    .line 220
    new-instance v1, Lorg/ejml/equation/Operation$10;

    const-string v2, "neg-s"

    invoke-direct {v1, v2, p1, p0}, Lorg/ejml/equation/Operation$10;-><init>(Ljava/lang/String;Lorg/ejml/equation/VariableDouble;Lorg/ejml/equation/Variable;)V

    iput-object v1, v0, Lorg/ejml/equation/Operation$Info;->op:Lorg/ejml/equation/Operation;

    goto :goto_0

    .line 226
    :cond_1
    instance-of v1, p0, Lorg/ejml/equation/VariableMatrix;

    if-eqz v1, :cond_2

    .line 227
    invoke-virtual {p1}, Lorg/ejml/equation/ManagerTempVariables;->createMatrix()Lorg/ejml/equation/VariableMatrix;

    move-result-object p1

    .line 228
    iput-object p1, v0, Lorg/ejml/equation/Operation$Info;->output:Lorg/ejml/equation/Variable;

    .line 229
    new-instance v1, Lorg/ejml/equation/Operation$11;

    const-string v2, "neg-m"

    invoke-direct {v1, v2, p0, p1}, Lorg/ejml/equation/Operation$11;-><init>(Ljava/lang/String;Lorg/ejml/equation/Variable;Lorg/ejml/equation/VariableMatrix;)V

    iput-object v1, v0, Lorg/ejml/equation/Operation$Info;->op:Lorg/ejml/equation/Operation;

    :goto_0
    return-object v0

    .line 238
    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unsupported variable "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static normF(Lorg/ejml/equation/Variable;Lorg/ejml/equation/ManagerTempVariables;)Lorg/ejml/equation/Operation$Info;
    .locals 3

    .line 1037
    new-instance v0, Lorg/ejml/equation/Operation$Info;

    invoke-direct {v0}, Lorg/ejml/equation/Operation$Info;-><init>()V

    .line 1038
    invoke-virtual {p1}, Lorg/ejml/equation/ManagerTempVariables;->createDouble()Lorg/ejml/equation/VariableDouble;

    move-result-object p1

    .line 1039
    iput-object p1, v0, Lorg/ejml/equation/Operation$Info;->output:Lorg/ejml/equation/Variable;

    .line 1041
    instance-of v1, p0, Lorg/ejml/equation/VariableMatrix;

    if-eqz v1, :cond_0

    .line 1042
    new-instance v1, Lorg/ejml/equation/Operation$55;

    const-string v2, "normF-m"

    invoke-direct {v1, v2, p1, p0}, Lorg/ejml/equation/Operation$55;-><init>(Ljava/lang/String;Lorg/ejml/equation/VariableDouble;Lorg/ejml/equation/Variable;)V

    iput-object v1, v0, Lorg/ejml/equation/Operation$Info;->op:Lorg/ejml/equation/Operation;

    goto :goto_0

    .line 1049
    :cond_0
    new-instance v1, Lorg/ejml/equation/Operation$56;

    const-string v2, "normF-s"

    invoke-direct {v1, v2, p1, p0}, Lorg/ejml/equation/Operation$56;-><init>(Ljava/lang/String;Lorg/ejml/equation/VariableDouble;Lorg/ejml/equation/Variable;)V

    iput-object v1, v0, Lorg/ejml/equation/Operation$Info;->op:Lorg/ejml/equation/Operation;

    :goto_0
    return-object v0
.end method

.method public static normP(Lorg/ejml/equation/Variable;Lorg/ejml/equation/Variable;Lorg/ejml/equation/ManagerTempVariables;)Lorg/ejml/equation/Operation$Info;
    .locals 7

    .line 1061
    new-instance v0, Lorg/ejml/equation/Operation$Info;

    invoke-direct {v0}, Lorg/ejml/equation/Operation$Info;-><init>()V

    .line 1062
    invoke-virtual {p2}, Lorg/ejml/equation/ManagerTempVariables;->createDouble()Lorg/ejml/equation/VariableDouble;

    move-result-object v3

    .line 1063
    iput-object v3, v0, Lorg/ejml/equation/Operation$Info;->output:Lorg/ejml/equation/Variable;

    .line 1065
    instance-of p2, p0, Lorg/ejml/equation/VariableMatrix;

    if-eqz p2, :cond_0

    instance-of p2, p1, Lorg/ejml/equation/VariableScalar;

    if-eqz p2, :cond_0

    .line 1068
    check-cast p1, Lorg/ejml/equation/VariableScalar;

    invoke-virtual {p1}, Lorg/ejml/equation/VariableScalar;->getDouble()D

    move-result-wide v5

    .line 1069
    move-object v4, p0

    check-cast v4, Lorg/ejml/equation/VariableMatrix;

    .line 1071
    new-instance p0, Lorg/ejml/equation/Operation$57;

    const-string v2, "normP"

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lorg/ejml/equation/Operation$57;-><init>(Ljava/lang/String;Lorg/ejml/equation/VariableDouble;Lorg/ejml/equation/VariableMatrix;D)V

    iput-object p0, v0, Lorg/ejml/equation/Operation$Info;->op:Lorg/ejml/equation/Operation;

    return-object v0

    .line 1066
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "normP(A,p) A should be a matrix and p a scalar"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static ones(Lorg/ejml/equation/Variable;Lorg/ejml/equation/Variable;Lorg/ejml/equation/ManagerTempVariables;)Lorg/ejml/equation/Operation$Info;
    .locals 3

    .line 1352
    new-instance v0, Lorg/ejml/equation/Operation$Info;

    invoke-direct {v0}, Lorg/ejml/equation/Operation$Info;-><init>()V

    .line 1353
    invoke-virtual {p2}, Lorg/ejml/equation/ManagerTempVariables;->createMatrix()Lorg/ejml/equation/VariableMatrix;

    move-result-object p2

    .line 1354
    iput-object p2, v0, Lorg/ejml/equation/Operation$Info;->output:Lorg/ejml/equation/Variable;

    .line 1356
    instance-of v1, p0, Lorg/ejml/equation/VariableInteger;

    if-eqz v1, :cond_0

    instance-of v1, p1, Lorg/ejml/equation/VariableInteger;

    if-eqz v1, :cond_0

    .line 1357
    new-instance v1, Lorg/ejml/equation/Operation$75;

    const-string v2, "ones-ii"

    invoke-direct {v1, v2, p0, p1, p2}, Lorg/ejml/equation/Operation$75;-><init>(Ljava/lang/String;Lorg/ejml/equation/Variable;Lorg/ejml/equation/Variable;Lorg/ejml/equation/VariableMatrix;)V

    iput-object v1, v0, Lorg/ejml/equation/Operation$Info;->op:Lorg/ejml/equation/Operation;

    return-object v0

    .line 1367
    :cond_0
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Expected two integers got "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, " "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public static pinv(Lorg/ejml/equation/Variable;Lorg/ejml/equation/ManagerTempVariables;)Lorg/ejml/equation/Operation$Info;
    .locals 3

    .line 923
    new-instance v0, Lorg/ejml/equation/Operation$Info;

    invoke-direct {v0}, Lorg/ejml/equation/Operation$Info;-><init>()V

    .line 925
    instance-of v1, p0, Lorg/ejml/equation/VariableMatrix;

    if-eqz v1, :cond_0

    .line 926
    invoke-virtual {p1}, Lorg/ejml/equation/ManagerTempVariables;->createMatrix()Lorg/ejml/equation/VariableMatrix;

    move-result-object p1

    .line 927
    iput-object p1, v0, Lorg/ejml/equation/Operation$Info;->output:Lorg/ejml/equation/Variable;

    .line 928
    new-instance v1, Lorg/ejml/equation/Operation$47;

    const-string v2, "pinv-m"

    invoke-direct {v1, v2, p0, p1}, Lorg/ejml/equation/Operation$47;-><init>(Ljava/lang/String;Lorg/ejml/equation/Variable;Lorg/ejml/equation/VariableMatrix;)V

    iput-object v1, v0, Lorg/ejml/equation/Operation$Info;->op:Lorg/ejml/equation/Operation;

    goto :goto_0

    .line 937
    :cond_0
    invoke-virtual {p1}, Lorg/ejml/equation/ManagerTempVariables;->createDouble()Lorg/ejml/equation/VariableDouble;

    move-result-object p1

    .line 938
    iput-object p1, v0, Lorg/ejml/equation/Operation$Info;->output:Lorg/ejml/equation/Variable;

    .line 939
    new-instance v1, Lorg/ejml/equation/Operation$48;

    const-string v2, "pinv-s"

    invoke-direct {v1, v2, p0, p1}, Lorg/ejml/equation/Operation$48;-><init>(Ljava/lang/String;Lorg/ejml/equation/Variable;Lorg/ejml/equation/VariableDouble;)V

    iput-object v1, v0, Lorg/ejml/equation/Operation$Info;->op:Lorg/ejml/equation/Operation;

    :goto_0
    return-object v0
.end method

.method public static pow(Lorg/ejml/equation/Variable;Lorg/ejml/equation/Variable;Lorg/ejml/equation/ManagerTempVariables;)Lorg/ejml/equation/Operation$Info;
    .locals 3

    .line 245
    new-instance v0, Lorg/ejml/equation/Operation$Info;

    invoke-direct {v0}, Lorg/ejml/equation/Operation$Info;-><init>()V

    .line 246
    invoke-virtual {p2}, Lorg/ejml/equation/ManagerTempVariables;->createDouble()Lorg/ejml/equation/VariableDouble;

    move-result-object p2

    .line 247
    iput-object p2, v0, Lorg/ejml/equation/Operation$Info;->output:Lorg/ejml/equation/Variable;

    .line 249
    instance-of v1, p0, Lorg/ejml/equation/VariableScalar;

    if-eqz v1, :cond_0

    instance-of v1, p1, Lorg/ejml/equation/VariableScalar;

    if-eqz v1, :cond_0

    .line 251
    new-instance v1, Lorg/ejml/equation/Operation$12;

    const-string v2, "pow-ss"

    invoke-direct {v1, v2, p0, p1, p2}, Lorg/ejml/equation/Operation$12;-><init>(Ljava/lang/String;Lorg/ejml/equation/Variable;Lorg/ejml/equation/Variable;Lorg/ejml/equation/VariableDouble;)V

    iput-object v1, v0, Lorg/ejml/equation/Operation$Info;->op:Lorg/ejml/equation/Operation;

    return-object v0

    .line 261
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Only scalar to scalar power supported"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static rand(Lorg/ejml/equation/Variable;Lorg/ejml/equation/Variable;Lorg/ejml/equation/ManagerTempVariables;)Lorg/ejml/equation/Operation$Info;
    .locals 8

    .line 1399
    new-instance v0, Lorg/ejml/equation/Operation$Info;

    invoke-direct {v0}, Lorg/ejml/equation/Operation$Info;-><init>()V

    .line 1400
    invoke-virtual {p2}, Lorg/ejml/equation/ManagerTempVariables;->createMatrix()Lorg/ejml/equation/VariableMatrix;

    move-result-object v5

    .line 1401
    iput-object v5, v0, Lorg/ejml/equation/Operation$Info;->output:Lorg/ejml/equation/Variable;

    .line 1403
    instance-of v1, p0, Lorg/ejml/equation/VariableInteger;

    if-eqz v1, :cond_0

    instance-of v1, p1, Lorg/ejml/equation/VariableInteger;

    if-eqz v1, :cond_0

    .line 1404
    new-instance v7, Lorg/ejml/equation/Operation$77;

    const-string v2, "rand-ii"

    move-object v1, v7

    move-object v3, p0

    move-object v4, p1

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lorg/ejml/equation/Operation$77;-><init>(Ljava/lang/String;Lorg/ejml/equation/Variable;Lorg/ejml/equation/Variable;Lorg/ejml/equation/VariableMatrix;Lorg/ejml/equation/ManagerTempVariables;)V

    iput-object v7, v0, Lorg/ejml/equation/Operation$Info;->op:Lorg/ejml/equation/Operation;

    return-object v0

    .line 1414
    :cond_0
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    sget-object v1, Lcom/brakefield/infinitestudio/color/YQ/FdgWfQQGDtjiVL;->hBITjERuzJJ:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, " "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public static randn(Lorg/ejml/equation/Variable;Lorg/ejml/equation/Variable;Lorg/ejml/equation/ManagerTempVariables;)Lorg/ejml/equation/Operation$Info;
    .locals 8

    .line 1424
    new-instance v0, Lorg/ejml/equation/Operation$Info;

    invoke-direct {v0}, Lorg/ejml/equation/Operation$Info;-><init>()V

    .line 1425
    invoke-virtual {p2}, Lorg/ejml/equation/ManagerTempVariables;->createMatrix()Lorg/ejml/equation/VariableMatrix;

    move-result-object v5

    .line 1426
    iput-object v5, v0, Lorg/ejml/equation/Operation$Info;->output:Lorg/ejml/equation/Variable;

    .line 1428
    instance-of v1, p0, Lorg/ejml/equation/VariableInteger;

    if-eqz v1, :cond_0

    instance-of v1, p1, Lorg/ejml/equation/VariableInteger;

    if-eqz v1, :cond_0

    .line 1429
    new-instance v7, Lorg/ejml/equation/Operation$78;

    const-string v2, "randn-ii"

    move-object v1, v7

    move-object v3, p0

    move-object v4, p1

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lorg/ejml/equation/Operation$78;-><init>(Ljava/lang/String;Lorg/ejml/equation/Variable;Lorg/ejml/equation/Variable;Lorg/ejml/equation/VariableMatrix;Lorg/ejml/equation/ManagerTempVariables;)V

    iput-object v7, v0, Lorg/ejml/equation/Operation$Info;->op:Lorg/ejml/equation/Operation;

    return-object v0

    .line 1439
    :cond_0
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Expected two integers got "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, " "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public static rng(Lorg/ejml/equation/Variable;Lorg/ejml/equation/ManagerTempVariables;)Lorg/ejml/equation/Operation$Info;
    .locals 3

    .line 1378
    new-instance v0, Lorg/ejml/equation/Operation$Info;

    invoke-direct {v0}, Lorg/ejml/equation/Operation$Info;-><init>()V

    .line 1380
    instance-of v1, p0, Lorg/ejml/equation/VariableInteger;

    if-eqz v1, :cond_0

    .line 1381
    new-instance v1, Lorg/ejml/equation/Operation$76;

    const-string v2, "rng"

    invoke-direct {v1, v2, p0, p1}, Lorg/ejml/equation/Operation$76;-><init>(Ljava/lang/String;Lorg/ejml/equation/Variable;Lorg/ejml/equation/ManagerTempVariables;)V

    iput-object v1, v0, Lorg/ejml/equation/Operation$Info;->op:Lorg/ejml/equation/Operation;

    return-object v0

    .line 1389
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Expected one integer"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static rref(Lorg/ejml/equation/Variable;Lorg/ejml/equation/ManagerTempVariables;)Lorg/ejml/equation/Operation$Info;
    .locals 3

    .line 952
    new-instance v0, Lorg/ejml/equation/Operation$Info;

    invoke-direct {v0}, Lorg/ejml/equation/Operation$Info;-><init>()V

    .line 954
    instance-of v1, p0, Lorg/ejml/equation/VariableMatrix;

    if-eqz v1, :cond_0

    .line 955
    invoke-virtual {p1}, Lorg/ejml/equation/ManagerTempVariables;->createMatrix()Lorg/ejml/equation/VariableMatrix;

    move-result-object p1

    .line 956
    iput-object p1, v0, Lorg/ejml/equation/Operation$Info;->output:Lorg/ejml/equation/Variable;

    .line 957
    new-instance v1, Lorg/ejml/equation/Operation$49;

    const-string v2, "rref-m"

    invoke-direct {v1, v2, p0, p1}, Lorg/ejml/equation/Operation$49;-><init>(Ljava/lang/String;Lorg/ejml/equation/Variable;Lorg/ejml/equation/VariableMatrix;)V

    iput-object v1, v0, Lorg/ejml/equation/Operation$Info;->op:Lorg/ejml/equation/Operation;

    goto :goto_0

    .line 966
    :cond_0
    invoke-virtual {p1}, Lorg/ejml/equation/ManagerTempVariables;->createDouble()Lorg/ejml/equation/VariableDouble;

    move-result-object p1

    .line 967
    iput-object p1, v0, Lorg/ejml/equation/Operation$Info;->output:Lorg/ejml/equation/Variable;

    .line 968
    new-instance v1, Lorg/ejml/equation/Operation$50;

    const-string v2, "rref-s"

    invoke-direct {v1, v2, p0, p1}, Lorg/ejml/equation/Operation$50;-><init>(Ljava/lang/String;Lorg/ejml/equation/Variable;Lorg/ejml/equation/VariableDouble;)V

    iput-object v1, v0, Lorg/ejml/equation/Operation$Info;->op:Lorg/ejml/equation/Operation;

    :goto_0
    return-object v0
.end method

.method public static sin(Lorg/ejml/equation/Variable;Lorg/ejml/equation/ManagerTempVariables;)Lorg/ejml/equation/Operation$Info;
    .locals 3

    .line 313
    new-instance v0, Lorg/ejml/equation/Operation$Info;

    invoke-direct {v0}, Lorg/ejml/equation/Operation$Info;-><init>()V

    .line 314
    invoke-virtual {p1}, Lorg/ejml/equation/ManagerTempVariables;->createDouble()Lorg/ejml/equation/VariableDouble;

    move-result-object p1

    .line 315
    iput-object p1, v0, Lorg/ejml/equation/Operation$Info;->output:Lorg/ejml/equation/Variable;

    .line 317
    instance-of v1, p0, Lorg/ejml/equation/VariableScalar;

    if-eqz v1, :cond_0

    .line 319
    new-instance v1, Lorg/ejml/equation/Operation$15;

    const-string/jumbo v2, "sin-s"

    invoke-direct {v1, v2, p1, p0}, Lorg/ejml/equation/Operation$15;-><init>(Ljava/lang/String;Lorg/ejml/equation/VariableDouble;Lorg/ejml/equation/Variable;)V

    iput-object v1, v0, Lorg/ejml/equation/Operation$Info;->op:Lorg/ejml/equation/Operation;

    return-object v0

    .line 326
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Only scalars are supported"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static solve(Lorg/ejml/equation/Variable;Lorg/ejml/equation/Variable;Lorg/ejml/equation/ManagerTempVariables;)Lorg/ejml/equation/Operation$Info;
    .locals 3

    .line 1502
    new-instance v0, Lorg/ejml/equation/Operation$Info;

    invoke-direct {v0}, Lorg/ejml/equation/Operation$Info;-><init>()V

    .line 1503
    invoke-virtual {p2}, Lorg/ejml/equation/ManagerTempVariables;->createMatrix()Lorg/ejml/equation/VariableMatrix;

    move-result-object p2

    .line 1504
    iput-object p2, v0, Lorg/ejml/equation/Operation$Info;->output:Lorg/ejml/equation/Variable;

    .line 1506
    instance-of v1, p0, Lorg/ejml/equation/VariableMatrix;

    if-eqz v1, :cond_0

    instance-of v1, p1, Lorg/ejml/equation/VariableMatrix;

    if-eqz v1, :cond_0

    .line 1507
    new-instance v1, Lorg/ejml/equation/Operation$81;

    const-string/jumbo v2, "solve-mm"

    invoke-direct {v1, v2, p0, p1, p2}, Lorg/ejml/equation/Operation$81;-><init>(Ljava/lang/String;Lorg/ejml/equation/Variable;Lorg/ejml/equation/Variable;Lorg/ejml/equation/VariableMatrix;)V

    iput-object v1, v0, Lorg/ejml/equation/Operation$Info;->op:Lorg/ejml/equation/Operation;

    return-object v0

    .line 1528
    :cond_0
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Expected two matrices got "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, " "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public static sqrt(Lorg/ejml/equation/Variable;Lorg/ejml/equation/ManagerTempVariables;)Lorg/ejml/equation/Operation$Info;
    .locals 3

    .line 291
    new-instance v0, Lorg/ejml/equation/Operation$Info;

    invoke-direct {v0}, Lorg/ejml/equation/Operation$Info;-><init>()V

    .line 292
    invoke-virtual {p1}, Lorg/ejml/equation/ManagerTempVariables;->createDouble()Lorg/ejml/equation/VariableDouble;

    move-result-object p1

    .line 293
    iput-object p1, v0, Lorg/ejml/equation/Operation$Info;->output:Lorg/ejml/equation/Variable;

    .line 295
    instance-of v1, p0, Lorg/ejml/equation/VariableScalar;

    if-eqz v1, :cond_0

    .line 297
    new-instance v1, Lorg/ejml/equation/Operation$14;

    const-string/jumbo v2, "sqrt-s"

    invoke-direct {v1, v2, p0, p1}, Lorg/ejml/equation/Operation$14;-><init>(Ljava/lang/String;Lorg/ejml/equation/Variable;Lorg/ejml/equation/VariableDouble;)V

    iput-object v1, v0, Lorg/ejml/equation/Operation$Info;->op:Lorg/ejml/equation/Operation;

    return-object v0

    .line 306
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const/4 p1, 0x0

    sget-object p1, Lcom/brakefield/infinitestudio/image/eps/Jpb/CfMJvi;->sPaxEZwvq:Ljava/lang/String;

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static subtract(Lorg/ejml/equation/Variable;Lorg/ejml/equation/Variable;Lorg/ejml/equation/ManagerTempVariables;)Lorg/ejml/equation/Operation$Info;
    .locals 3

    .line 514
    new-instance v0, Lorg/ejml/equation/Operation$Info;

    invoke-direct {v0}, Lorg/ejml/equation/Operation$Info;-><init>()V

    .line 516
    instance-of v1, p0, Lorg/ejml/equation/VariableMatrix;

    if-eqz v1, :cond_0

    instance-of v2, p1, Lorg/ejml/equation/VariableMatrix;

    if-eqz v2, :cond_0

    .line 517
    invoke-virtual {p2}, Lorg/ejml/equation/ManagerTempVariables;->createMatrix()Lorg/ejml/equation/VariableMatrix;

    move-result-object p2

    .line 518
    iput-object p2, v0, Lorg/ejml/equation/Operation$Info;->output:Lorg/ejml/equation/Variable;

    .line 519
    new-instance v1, Lorg/ejml/equation/Operation$26;

    const-string/jumbo v2, "subtract-mm"

    invoke-direct {v1, v2, p0, p1, p2}, Lorg/ejml/equation/Operation$26;-><init>(Ljava/lang/String;Lorg/ejml/equation/Variable;Lorg/ejml/equation/Variable;Lorg/ejml/equation/VariableMatrix;)V

    iput-object v1, v0, Lorg/ejml/equation/Operation$Info;->op:Lorg/ejml/equation/Operation;

    goto :goto_0

    .line 533
    :cond_0
    instance-of v2, p0, Lorg/ejml/equation/VariableInteger;

    if-eqz v2, :cond_1

    instance-of v2, p1, Lorg/ejml/equation/VariableInteger;

    if-eqz v2, :cond_1

    const/4 v1, 0x0

    .line 534
    invoke-virtual {p2, v1}, Lorg/ejml/equation/ManagerTempVariables;->createInteger(I)Lorg/ejml/equation/VariableInteger;

    move-result-object p2

    .line 535
    iput-object p2, v0, Lorg/ejml/equation/Operation$Info;->output:Lorg/ejml/equation/Variable;

    .line 536
    new-instance v1, Lorg/ejml/equation/Operation$27;

    const-string/jumbo v2, "subtract-ii"

    invoke-direct {v1, v2, p0, p1, p2}, Lorg/ejml/equation/Operation$27;-><init>(Ljava/lang/String;Lorg/ejml/equation/Variable;Lorg/ejml/equation/Variable;Lorg/ejml/equation/VariableInteger;)V

    iput-object v1, v0, Lorg/ejml/equation/Operation$Info;->op:Lorg/ejml/equation/Operation;

    goto :goto_0

    .line 545
    :cond_1
    instance-of v2, p0, Lorg/ejml/equation/VariableScalar;

    if-eqz v2, :cond_2

    instance-of v2, p1, Lorg/ejml/equation/VariableScalar;

    if-eqz v2, :cond_2

    .line 546
    invoke-virtual {p2}, Lorg/ejml/equation/ManagerTempVariables;->createDouble()Lorg/ejml/equation/VariableDouble;

    move-result-object p2

    .line 547
    iput-object p2, v0, Lorg/ejml/equation/Operation$Info;->output:Lorg/ejml/equation/Variable;

    .line 548
    new-instance v1, Lorg/ejml/equation/Operation$28;

    const-string/jumbo v2, "subtract-ss"

    invoke-direct {v1, v2, p0, p1, p2}, Lorg/ejml/equation/Operation$28;-><init>(Ljava/lang/String;Lorg/ejml/equation/Variable;Lorg/ejml/equation/Variable;Lorg/ejml/equation/VariableDouble;)V

    iput-object v1, v0, Lorg/ejml/equation/Operation$Info;->op:Lorg/ejml/equation/Operation;

    goto :goto_0

    .line 558
    :cond_2
    invoke-virtual {p2}, Lorg/ejml/equation/ManagerTempVariables;->createMatrix()Lorg/ejml/equation/VariableMatrix;

    move-result-object p2

    .line 559
    iput-object p2, v0, Lorg/ejml/equation/Operation$Info;->output:Lorg/ejml/equation/Variable;

    if-eqz v1, :cond_3

    .line 562
    new-instance v1, Lorg/ejml/equation/Operation$29;

    const-string/jumbo v2, "subtract-ms"

    invoke-direct {v1, v2, p0, p1, p2}, Lorg/ejml/equation/Operation$29;-><init>(Ljava/lang/String;Lorg/ejml/equation/Variable;Lorg/ejml/equation/Variable;Lorg/ejml/equation/VariableMatrix;)V

    iput-object v1, v0, Lorg/ejml/equation/Operation$Info;->op:Lorg/ejml/equation/Operation;

    goto :goto_0

    .line 572
    :cond_3
    new-instance v1, Lorg/ejml/equation/Operation$30;

    const-string/jumbo v2, "subtract-sm"

    invoke-direct {v1, v2, p1, p0, p2}, Lorg/ejml/equation/Operation$30;-><init>(Ljava/lang/String;Lorg/ejml/equation/Variable;Lorg/ejml/equation/Variable;Lorg/ejml/equation/VariableMatrix;)V

    iput-object v1, v0, Lorg/ejml/equation/Operation$Info;->op:Lorg/ejml/equation/Operation;

    :goto_0
    return-object v0
.end method

.method public static sum_one(Lorg/ejml/equation/Variable;Lorg/ejml/equation/ManagerTempVariables;)Lorg/ejml/equation/Operation$Info;
    .locals 3

    .line 1594
    new-instance v0, Lorg/ejml/equation/Operation$Info;

    invoke-direct {v0}, Lorg/ejml/equation/Operation$Info;-><init>()V

    .line 1595
    invoke-virtual {p1}, Lorg/ejml/equation/ManagerTempVariables;->createDouble()Lorg/ejml/equation/VariableDouble;

    move-result-object p1

    .line 1596
    iput-object p1, v0, Lorg/ejml/equation/Operation$Info;->output:Lorg/ejml/equation/Variable;

    .line 1598
    instance-of v1, p0, Lorg/ejml/equation/VariableMatrix;

    if-eqz v1, :cond_0

    .line 1601
    check-cast p0, Lorg/ejml/equation/VariableMatrix;

    .line 1603
    new-instance v1, Lorg/ejml/equation/Operation$83;

    const-string/jumbo v2, "sum_all"

    invoke-direct {v1, v2, p1, p0}, Lorg/ejml/equation/Operation$83;-><init>(Ljava/lang/String;Lorg/ejml/equation/VariableDouble;Lorg/ejml/equation/VariableMatrix;)V

    iput-object v1, v0, Lorg/ejml/equation/Operation$Info;->op:Lorg/ejml/equation/Operation;

    return-object v0

    .line 1599
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string/jumbo p1, "sum(A) A = matrix"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static sum_two(Lorg/ejml/equation/Variable;Lorg/ejml/equation/Variable;Lorg/ejml/equation/ManagerTempVariables;)Lorg/ejml/equation/Operation$Info;
    .locals 5

    .line 1614
    new-instance v0, Lorg/ejml/equation/Operation$Info;

    invoke-direct {v0}, Lorg/ejml/equation/Operation$Info;-><init>()V

    .line 1615
    invoke-virtual {p2}, Lorg/ejml/equation/ManagerTempVariables;->createMatrix()Lorg/ejml/equation/VariableMatrix;

    move-result-object p2

    .line 1616
    iput-object p2, v0, Lorg/ejml/equation/Operation$Info;->output:Lorg/ejml/equation/Variable;

    .line 1618
    instance-of v1, p0, Lorg/ejml/equation/VariableMatrix;

    if-eqz v1, :cond_2

    instance-of v1, p1, Lorg/ejml/equation/VariableScalar;

    if-eqz v1, :cond_2

    .line 1621
    check-cast p1, Lorg/ejml/equation/VariableScalar;

    invoke-virtual {p1}, Lorg/ejml/equation/VariableScalar;->getDouble()D

    move-result-wide v1

    .line 1622
    check-cast p0, Lorg/ejml/equation/VariableMatrix;

    const-wide/16 v3, 0x0

    cmpl-double p1, v1, v3

    if-nez p1, :cond_0

    .line 1625
    new-instance p1, Lorg/ejml/equation/Operation$84;

    const-string/jumbo v1, "sum_rows"

    invoke-direct {p1, v1, p2, p0}, Lorg/ejml/equation/Operation$84;-><init>(Ljava/lang/String;Lorg/ejml/equation/VariableMatrix;Lorg/ejml/equation/VariableMatrix;)V

    iput-object p1, v0, Lorg/ejml/equation/Operation$Info;->op:Lorg/ejml/equation/Operation;

    goto :goto_0

    :cond_0
    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    cmpl-double p1, v1, v3

    if-nez p1, :cond_1

    .line 1633
    new-instance p1, Lorg/ejml/equation/Operation$85;

    const-string/jumbo v1, "sum_cols"

    invoke-direct {p1, v1, p2, p0}, Lorg/ejml/equation/Operation$85;-><init>(Ljava/lang/String;Lorg/ejml/equation/VariableMatrix;Lorg/ejml/equation/VariableMatrix;)V

    iput-object p1, v0, Lorg/ejml/equation/Operation$Info;->op:Lorg/ejml/equation/Operation;

    :goto_0
    return-object v0

    .line 1641
    :cond_1
    new-instance p0, Ljava/lang/RuntimeException;

    const-string/jumbo p1, "sum(A,d) expected d to be 0 for rows or 1 for columns"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1619
    :cond_2
    new-instance p0, Ljava/lang/RuntimeException;

    const-string/jumbo p1, "sum(A,p) A = matrix and p = scalar"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static trace(Lorg/ejml/equation/Variable;Lorg/ejml/equation/ManagerTempVariables;)Lorg/ejml/equation/Operation$Info;
    .locals 3

    .line 1011
    new-instance v0, Lorg/ejml/equation/Operation$Info;

    invoke-direct {v0}, Lorg/ejml/equation/Operation$Info;-><init>()V

    .line 1012
    invoke-virtual {p1}, Lorg/ejml/equation/ManagerTempVariables;->createDouble()Lorg/ejml/equation/VariableDouble;

    move-result-object p1

    .line 1013
    iput-object p1, v0, Lorg/ejml/equation/Operation$Info;->output:Lorg/ejml/equation/Variable;

    .line 1015
    instance-of v1, p0, Lorg/ejml/equation/VariableMatrix;

    if-eqz v1, :cond_0

    .line 1016
    new-instance v1, Lorg/ejml/equation/Operation$53;

    const-string/jumbo v2, "trace-m"

    invoke-direct {v1, v2, p0, p1}, Lorg/ejml/equation/Operation$53;-><init>(Ljava/lang/String;Lorg/ejml/equation/Variable;Lorg/ejml/equation/VariableDouble;)V

    iput-object v1, v0, Lorg/ejml/equation/Operation$Info;->op:Lorg/ejml/equation/Operation;

    goto :goto_0

    .line 1024
    :cond_0
    new-instance v1, Lorg/ejml/equation/Operation$54;

    const-string/jumbo v2, "trace-s"

    invoke-direct {v1, v2, p0, p1}, Lorg/ejml/equation/Operation$54;-><init>(Ljava/lang/String;Lorg/ejml/equation/Variable;Lorg/ejml/equation/VariableDouble;)V

    iput-object v1, v0, Lorg/ejml/equation/Operation$Info;->op:Lorg/ejml/equation/Operation;

    :goto_0
    return-object v0
.end method

.method public static transpose(Lorg/ejml/equation/Variable;Lorg/ejml/equation/ManagerTempVariables;)Lorg/ejml/equation/Operation$Info;
    .locals 3

    .line 867
    new-instance v0, Lorg/ejml/equation/Operation$Info;

    invoke-direct {v0}, Lorg/ejml/equation/Operation$Info;-><init>()V

    .line 869
    instance-of v1, p0, Lorg/ejml/equation/VariableMatrix;

    if-eqz v1, :cond_0

    .line 870
    invoke-virtual {p1}, Lorg/ejml/equation/ManagerTempVariables;->createMatrix()Lorg/ejml/equation/VariableMatrix;

    move-result-object p1

    .line 871
    iput-object p1, v0, Lorg/ejml/equation/Operation$Info;->output:Lorg/ejml/equation/Variable;

    .line 872
    new-instance v1, Lorg/ejml/equation/Operation$44;

    const-string/jumbo v2, "transpose-m"

    invoke-direct {v1, v2, p0, p1}, Lorg/ejml/equation/Operation$44;-><init>(Ljava/lang/String;Lorg/ejml/equation/Variable;Lorg/ejml/equation/VariableMatrix;)V

    iput-object v1, v0, Lorg/ejml/equation/Operation$Info;->op:Lorg/ejml/equation/Operation;

    return-object v0

    .line 881
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Transpose only makes sense for a matrix"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static zeros(Lorg/ejml/equation/Variable;Lorg/ejml/equation/Variable;Lorg/ejml/equation/ManagerTempVariables;)Lorg/ejml/equation/Operation$Info;
    .locals 3

    .line 1326
    new-instance v0, Lorg/ejml/equation/Operation$Info;

    invoke-direct {v0}, Lorg/ejml/equation/Operation$Info;-><init>()V

    .line 1327
    invoke-virtual {p2}, Lorg/ejml/equation/ManagerTempVariables;->createMatrix()Lorg/ejml/equation/VariableMatrix;

    move-result-object p2

    .line 1328
    iput-object p2, v0, Lorg/ejml/equation/Operation$Info;->output:Lorg/ejml/equation/Variable;

    .line 1330
    instance-of v1, p0, Lorg/ejml/equation/VariableInteger;

    if-eqz v1, :cond_0

    instance-of v1, p1, Lorg/ejml/equation/VariableInteger;

    if-eqz v1, :cond_0

    .line 1331
    new-instance v1, Lorg/ejml/equation/Operation$74;

    const-string/jumbo v2, "zeros-ii"

    invoke-direct {v1, v2, p0, p1, p2}, Lorg/ejml/equation/Operation$74;-><init>(Ljava/lang/String;Lorg/ejml/equation/Variable;Lorg/ejml/equation/Variable;Lorg/ejml/equation/VariableMatrix;)V

    iput-object v1, v0, Lorg/ejml/equation/Operation$Info;->op:Lorg/ejml/equation/Operation;

    return-object v0

    .line 1342
    :cond_0
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Expected two integers got "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, " "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p2
.end method


# virtual methods
.method public name()Ljava/lang/String;
    .locals 1

    .line 52
    iget-object v0, p0, Lorg/ejml/equation/Operation;->name:Ljava/lang/String;

    return-object v0
.end method

.method public abstract process()V
.end method

.method protected resize(Lorg/ejml/equation/VariableMatrix;II)V
    .locals 1

    .line 64
    invoke-virtual {p1}, Lorg/ejml/equation/VariableMatrix;->isTemp()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 65
    iget-object p1, p1, Lorg/ejml/equation/VariableMatrix;->matrix:Lorg/ejml/data/DMatrixRMaj;

    invoke-virtual {p1, p2, p3}, Lorg/ejml/data/DMatrixRMaj;->reshape(II)V

    :cond_0
    return-void
.end method
