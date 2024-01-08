.class public Lorg/ejml/UtilEjml;
.super Ljava/lang/Object;
.source "UtilEjml.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/ejml/UtilEjml$Process;
    }
.end annotation


# static fields
.field public static EPS:D

.field public static F_EPS:F

.field public static F_PI:F

.field public static F_PI2:F

.field public static F_PId2:F

.field public static PI:D

.field public static PI2:D

.field public static PId2:D

.field public static TESTP_F32:F

.field public static TESTP_F64:D

.field public static TEST_F32:F

.field public static TEST_F32_SQ:F

.field public static TEST_F64:D

.field public static TEST_F64_SQ:D

.field public static final ZERO_LENGTH_F32:[F

.field public static final ZERO_LENGTH_F64:[D

.field public static final ZERO_LENGTH_I32:[I

.field public static maxInverseSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-wide/high16 v0, -0x3fb6000000000000L    # -52.0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    .line 43
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    sput-wide v0, Lorg/ejml/UtilEjml;->EPS:D

    const-wide/high16 v0, -0x3fcb000000000000L    # -21.0

    .line 44
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-float v0, v0

    sput v0, Lorg/ejml/UtilEjml;->F_EPS:F

    const-wide v0, 0x400921fb54442d18L    # Math.PI

    .line 46
    sput-wide v0, Lorg/ejml/UtilEjml;->PI:D

    const-wide v0, 0x401921fb54442d18L    # 6.283185307179586

    .line 47
    sput-wide v0, Lorg/ejml/UtilEjml;->PI2:D

    const-wide v0, 0x3ff921fb54442d18L    # 1.5707963267948966

    .line 48
    sput-wide v0, Lorg/ejml/UtilEjml;->PId2:D

    const v0, 0x40490fdb    # (float)Math.PI

    .line 50
    sput v0, Lorg/ejml/UtilEjml;->F_PI:F

    const v0, 0x40c90fdb

    .line 51
    sput v0, Lorg/ejml/UtilEjml;->F_PI2:F

    const v0, 0x3fc90fdb

    .line 52
    sput v0, Lorg/ejml/UtilEjml;->F_PId2:F

    const v0, 0x3a03126f    # 5.0E-4f

    .line 55
    sput v0, Lorg/ejml/UtilEjml;->TEST_F32:F

    const-wide v1, 0x3e45798ee2308c3aL    # 1.0E-8

    .line 56
    sput-wide v1, Lorg/ejml/UtilEjml;->TEST_F64:D

    const v1, 0x358637bd    # 1.0E-6f

    .line 57
    sput v1, Lorg/ejml/UtilEjml;->TESTP_F32:F

    const-wide v1, 0x3d719799812dea11L    # 1.0E-12

    .line 58
    sput-wide v1, Lorg/ejml/UtilEjml;->TESTP_F64:D

    float-to-double v0, v0

    .line 59
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    sput v0, Lorg/ejml/UtilEjml;->TEST_F32_SQ:F

    .line 60
    sget-wide v0, Lorg/ejml/UtilEjml;->TEST_F64:D

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    sput-wide v0, Lorg/ejml/UtilEjml;->TEST_F64_SQ:D

    const/4 v0, 0x5

    .line 63
    sput v0, Lorg/ejml/UtilEjml;->maxInverseSize:I

    const/4 v0, 0x0

    new-array v1, v0, [I

    .line 65
    sput-object v1, Lorg/ejml/UtilEjml;->ZERO_LENGTH_I32:[I

    new-array v1, v0, [F

    .line 66
    sput-object v1, Lorg/ejml/UtilEjml;->ZERO_LENGTH_F32:[F

    new-array v0, v0, [D

    .line 67
    sput-object v0, Lorg/ejml/UtilEjml;->ZERO_LENGTH_F64:[D

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static adjust(Lorg/ejml/data/DGrowArray;I)[D
    .locals 0

    if-nez p0, :cond_0

    .line 595
    new-instance p0, Lorg/ejml/data/DGrowArray;

    invoke-direct {p0}, Lorg/ejml/data/DGrowArray;-><init>()V

    .line 596
    :cond_0
    invoke-virtual {p0, p1}, Lorg/ejml/data/DGrowArray;->reshape(I)Lorg/ejml/data/DGrowArray;

    .line 597
    iget-object p0, p0, Lorg/ejml/data/DGrowArray;->data:[D

    return-object p0
.end method

.method public static adjust(Lorg/ejml/data/FGrowArray;I)[F
    .locals 0

    if-nez p0, :cond_0

    .line 604
    new-instance p0, Lorg/ejml/data/FGrowArray;

    invoke-direct {p0}, Lorg/ejml/data/FGrowArray;-><init>()V

    .line 605
    :cond_0
    invoke-virtual {p0, p1}, Lorg/ejml/data/FGrowArray;->reshape(I)Lorg/ejml/data/FGrowArray;

    .line 606
    iget-object p0, p0, Lorg/ejml/data/FGrowArray;->data:[F

    return-object p0
.end method

.method public static adjust(Lorg/ejml/data/IGrowArray;I)[I
    .locals 0

    if-nez p0, :cond_0

    .line 570
    new-instance p0, Lorg/ejml/data/IGrowArray;

    invoke-direct {p0}, Lorg/ejml/data/IGrowArray;-><init>()V

    .line 571
    :cond_0
    invoke-virtual {p0, p1}, Lorg/ejml/data/IGrowArray;->reshape(I)V

    .line 572
    iget-object p0, p0, Lorg/ejml/data/IGrowArray;->data:[I

    return-object p0
.end method

.method public static adjust(Lorg/ejml/data/IGrowArray;II)[I
    .locals 0

    .line 576
    invoke-static {p0, p1}, Lorg/ejml/UtilEjml;->adjust(Lorg/ejml/data/IGrowArray;I)[I

    move-result-object p0

    const/4 p1, 0x0

    .line 577
    invoke-static {p0, p1, p2, p1}, Ljava/util/Arrays;->fill([IIII)V

    return-object p0
.end method

.method public static adjustClear(Lorg/ejml/data/IGrowArray;I)[I
    .locals 0

    .line 582
    invoke-static {p0, p1, p1}, Lorg/ejml/UtilEjml;->adjust(Lorg/ejml/data/IGrowArray;II)[I

    move-result-object p0

    return-object p0
.end method

.method public static adjustFill(Lorg/ejml/data/IGrowArray;II)[I
    .locals 1

    .line 586
    invoke-static {p0, p1}, Lorg/ejml/UtilEjml;->adjust(Lorg/ejml/data/IGrowArray;I)[I

    move-result-object p0

    const/4 v0, 0x0

    .line 587
    invoke-static {p0, v0, p1, p2}, Ljava/util/Arrays;->fill([IIII)V

    return-object p0
.end method

.method public static assertEq(II)V
    .locals 1

    const-string v0, ""

    .line 673
    invoke-static {p0, p1, v0}, Lorg/ejml/UtilEjml;->assertEq(IILjava/lang/String;)V

    return-void
.end method

.method public static assertEq(IILjava/lang/String;)V
    .locals 2

    if-ne p0, p1, :cond_0

    return-void

    .line 681
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, " != "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const/4 p1, 0x0

    sget-object p1, Lorg/checkerframework/checker/propkey/qual/lW/MjAmnOQWs;->xzEgrJBaieScY:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static assertShape(IILjava/lang/String;)V
    .locals 2

    if-ne p0, p1, :cond_0

    return-void

    .line 705
    :cond_0
    new-instance v0, Lorg/ejml/MatrixDimensionException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, " != "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, " "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/ejml/MatrixDimensionException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static assertShape(ZLjava/lang/String;)V
    .locals 0

    if-eqz p0, :cond_0

    return-void

    .line 713
    :cond_0
    new-instance p0, Lorg/ejml/MatrixDimensionException;

    invoke-direct {p0, p1}, Lorg/ejml/MatrixDimensionException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static assertTrue(Z)V
    .locals 1

    if-eqz p0, :cond_0

    return-void

    .line 697
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Expected true"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static assertTrue(ZLjava/lang/String;)V
    .locals 0

    if-eqz p0, :cond_0

    return-void

    .line 689
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static checkDeclare_F32(Lpabeles/concurrency/GrowArray;)Lpabeles/concurrency/GrowArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lpabeles/concurrency/GrowArray<",
            "Lorg/ejml/data/FGrowArray;",
            ">;)",
            "Lpabeles/concurrency/GrowArray<",
            "Lorg/ejml/data/FGrowArray;",
            ">;"
        }
    .end annotation

    if-nez p0, :cond_0

    .line 633
    new-instance p0, Lpabeles/concurrency/GrowArray;

    new-instance v0, Lorg/ejml/UtilEjml$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lorg/ejml/UtilEjml$$ExternalSyntheticLambda1;-><init>()V

    invoke-direct {p0, v0}, Lpabeles/concurrency/GrowArray;-><init>(Lpabeles/concurrency/ConcurrencyOps$NewInstance;)V

    :cond_0
    return-object p0
.end method

.method public static checkDeclare_F64(Lpabeles/concurrency/GrowArray;)Lpabeles/concurrency/GrowArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lpabeles/concurrency/GrowArray<",
            "Lorg/ejml/data/DGrowArray;",
            ">;)",
            "Lpabeles/concurrency/GrowArray<",
            "Lorg/ejml/data/DGrowArray;",
            ">;"
        }
    .end annotation

    if-nez p0, :cond_0

    .line 639
    new-instance p0, Lpabeles/concurrency/GrowArray;

    new-instance v0, Lorg/ejml/UtilEjml$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lorg/ejml/UtilEjml$$ExternalSyntheticLambda2;-><init>()V

    invoke-direct {p0, v0}, Lpabeles/concurrency/GrowArray;-><init>(Lpabeles/concurrency/ConcurrencyOps$NewInstance;)V

    :cond_0
    return-object p0
.end method

.method public static checkSameInstance(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    if-eq p0, p1, :cond_0

    return-void

    .line 71
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Can\'t pass in the same instance"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static checkSameShape(Lorg/ejml/data/Matrix;Lorg/ejml/data/Matrix;Lorg/ejml/data/Matrix;)V
    .locals 5

    .line 217
    invoke-interface {p0}, Lorg/ejml/data/Matrix;->getNumRows()I

    move-result v0

    invoke-interface {p1}, Lorg/ejml/data/Matrix;->getNumRows()I

    move-result v1

    const-string v2, " vs "

    const-string v3, "Must be same shape. "

    const-string/jumbo v4, "x"

    if-ne v0, v1, :cond_1

    invoke-interface {p0}, Lorg/ejml/data/Matrix;->getNumCols()I

    move-result v0

    invoke-interface {p1}, Lorg/ejml/data/Matrix;->getNumCols()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 220
    invoke-interface {p0}, Lorg/ejml/data/Matrix;->getNumRows()I

    move-result p1

    invoke-interface {p2}, Lorg/ejml/data/Matrix;->getNumRows()I

    move-result v0

    if-ne p1, v0, :cond_0

    invoke-interface {p0}, Lorg/ejml/data/Matrix;->getNumCols()I

    move-result p1

    invoke-interface {p2}, Lorg/ejml/data/Matrix;->getNumCols()I

    move-result v0

    if-ne p1, v0, :cond_0

    return-void

    .line 221
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p0}, Lorg/ejml/data/Matrix;->getNumRows()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p0}, Lorg/ejml/data/Matrix;->getNumCols()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-interface {p2}, Lorg/ejml/data/Matrix;->getNumRows()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-interface {p2}, Lorg/ejml/data/Matrix;->getNumCols()I

    move-result p2

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 218
    :cond_1
    new-instance p2, Lorg/ejml/MatrixDimensionException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p0}, Lorg/ejml/data/Matrix;->getNumRows()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p0}, Lorg/ejml/data/Matrix;->getNumCols()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-interface {p1}, Lorg/ejml/data/Matrix;->getNumRows()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-interface {p1}, Lorg/ejml/data/Matrix;->getNumCols()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Lorg/ejml/MatrixDimensionException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public static checkSameShape(Lorg/ejml/data/Matrix;Lorg/ejml/data/Matrix;Z)V
    .locals 2

    .line 209
    invoke-interface {p0}, Lorg/ejml/data/Matrix;->getNumRows()I

    move-result v0

    invoke-interface {p1}, Lorg/ejml/data/Matrix;->getNumRows()I

    move-result v1

    if-ne v0, v1, :cond_2

    invoke-interface {p0}, Lorg/ejml/data/Matrix;->getNumCols()I

    move-result v0

    invoke-interface {p1}, Lorg/ejml/data/Matrix;->getNumCols()I

    move-result v1

    if-ne v0, v1, :cond_2

    if-nez p2, :cond_1

    if-eq p0, p1, :cond_0

    goto :goto_0

    .line 213
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Must not be the same instance"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    return-void

    .line 210
    :cond_2
    new-instance p2, Lorg/ejml/MatrixDimensionException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Must be same shape. "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p0}, Lorg/ejml/data/Matrix;->getNumRows()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p0}, Lorg/ejml/data/Matrix;->getNumCols()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, " vs "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-interface {p1}, Lorg/ejml/data/Matrix;->getNumRows()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-interface {p1}, Lorg/ejml/data/Matrix;->getNumCols()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Lorg/ejml/MatrixDimensionException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public static checkTooLarge(II)V
    .locals 4

    mul-int v0, p0, p1

    int-to-long v0, v0

    int-to-long v2, p0

    int-to-long p0, p1

    mul-long/2addr v2, p0

    cmp-long p0, v0, v2

    if-nez p0, :cond_0

    return-void

    .line 252
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Matrix size exceeds the size of an integer"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static checkTooLargeComplex(II)V
    .locals 4

    mul-int/lit8 v0, p0, 0x2

    mul-int/2addr v0, p1

    int-to-long v0, v0

    int-to-long v2, p0

    int-to-long p0, p1

    mul-long/2addr v2, p0

    const-wide/16 p0, 0x2

    mul-long/2addr v2, p0

    cmp-long p0, v0, v2

    if-nez p0, :cond_0

    return-void

    .line 257
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Matrix size exceeds the size of an integer"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static exceedsMaxMatrixSize(II)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const v1, 0x7fffffff

    .line 650
    div-int/2addr v1, p0

    if-le p1, v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    :goto_0
    return v0
.end method

.method public static fancyString(DLjava/text/DecimalFormat;II)Ljava/lang/String;
    .locals 6

    const/4 v3, 0x1

    move-wide v0, p0

    move-object v2, p2

    move v4, p3

    move v5, p4

    .line 530
    invoke-static/range {v0 .. v5}, Lorg/ejml/UtilEjml;->fancyString(DLjava/text/DecimalFormat;ZII)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static fancyString(DLjava/text/DecimalFormat;ZII)Ljava/lang/String;
    .locals 5

    .line 538
    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x1

    if-gez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-wide/16 v2, 0x0

    cmpl-double v2, p0, v2

    if-nez v2, :cond_3

    if-eqz v0, :cond_1

    const-string p0, "-0"

    goto/16 :goto_2

    :cond_1
    if-eqz p3, :cond_2

    const-string p0, " 0"

    goto/16 :goto_2

    :cond_2
    const-string p0, "0"

    goto/16 :goto_2

    :cond_3
    sub-int/2addr p4, v1

    const-string v2, ""

    if-eqz v0, :cond_4

    goto :goto_1

    :cond_4
    if-eqz p3, :cond_5

    const-string v2, " "

    .line 545
    :cond_5
    :goto_1
    invoke-static {p0, p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v3

    .line 546
    invoke-static {v3, v4}, Ljava/lang/Math;->log10(D)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Math;->floor(D)D

    move-result-wide v3

    double-to-int p3, v3

    if-ltz p3, :cond_6

    if-ge p3, p4, :cond_6

    add-int/lit8 p4, p4, -0x2

    sub-int/2addr p4, p3

    .line 548
    invoke-virtual {p2, p4}, Ljava/text/DecimalFormat;->setMaximumFractionDigits(I)V

    .line 549
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p2, p0, p1}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_2

    :cond_6
    if-gez p3, :cond_7

    add-int v0, p4, p3

    if-le v0, p5, :cond_7

    sub-int/2addr p4, v1

    .line 551
    invoke-virtual {p2, p4}, Ljava/text/DecimalFormat;->setMaximumFractionDigits(I)V

    .line 552
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p2, p0, p1}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_2

    .line 554
    :cond_7
    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result p2

    int-to-double p2, p2

    invoke-static {p2, p3}, Ljava/lang/Math;->log10(D)D

    move-result-wide p2

    double-to-int p2, p2

    add-int/2addr p2, v1

    sub-int/2addr p4, p5

    sub-int/2addr p4, p2

    .line 556
    invoke-static {p5, p4}, Ljava/lang/Math;->min(II)I

    move-result p2

    if-lez p2, :cond_8

    .line 558
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    new-instance p4, Ljava/lang/StringBuilder;

    const-string p5, "%."

    invoke-direct {p4, p5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p4, "E"

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p2, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_2

    .line 560
    :cond_8
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "%.0E"

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_2
    return-object p0
.end method

.method public static fancyStringF(DLjava/text/DecimalFormat;II)Ljava/lang/String;
    .locals 0

    .line 514
    invoke-static {p0, p1, p2, p3, p4}, Lorg/ejml/UtilEjml;->fancyString(DLjava/text/DecimalFormat;II)Ljava/lang/String;

    move-result-object p0

    .line 516
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    sub-int/2addr p3, p1

    if-lez p3, :cond_1

    .line 518
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 p2, 0x0

    :goto_0
    if-ge p2, p3, :cond_0

    const/16 p4, 0x20

    .line 520
    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 522
    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_1
    return-object p0
.end method

.method public static hasNullableArgument(Ljava/lang/reflect/Method;)Z
    .locals 6

    .line 613
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getParameterAnnotations()[[Ljava/lang/annotation/Annotation;

    move-result-object v0

    .line 614
    array-length v1, v0

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    .line 617
    :cond_0
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object p0

    move v1, v2

    .line 618
    :goto_0
    array-length v3, p0

    if-ge v1, v3, :cond_4

    .line 619
    aget-object v3, v0, v1

    .line 620
    array-length v4, v3

    if-nez v4, :cond_1

    goto :goto_1

    .line 622
    :cond_1
    const-class v4, Lorg/ejml/data/Matrix;

    aget-object v5, p0, v1

    invoke-virtual {v4, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-nez v4, :cond_2

    goto :goto_1

    .line 624
    :cond_2
    array-length v4, v3

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    aget-object v3, v3, v4

    .line 625
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Nullable"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    return v5

    :cond_3
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    return v2
.end method

.method public static isIdentical(DDD)Z
    .locals 2

    sub-double v0, p0, p2

    .line 271
    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    cmpl-double p4, p4, v0

    const/4 p5, 0x1

    if-ltz p4, :cond_0

    return p5

    .line 278
    :cond_0
    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result p4

    if-eqz p4, :cond_1

    .line 279
    invoke-static {p2, p3}, Ljava/lang/Double;->isNaN(D)Z

    move-result p0

    return p0

    .line 281
    :cond_1
    invoke-static {p0, p1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result p4

    if-eqz p4, :cond_2

    cmpl-double p0, p0, p2

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    const/4 p5, 0x0

    :goto_0
    return p5
.end method

.method public static isIdentical(FFF)Z
    .locals 4

    sub-float v0, p0, p1

    .line 287
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-double v0, v0

    float-to-double v2, p2

    cmpl-double p2, v2, v0

    const/4 v0, 0x1

    if-ltz p2, :cond_0

    return v0

    .line 294
    :cond_0
    invoke-static {p0}, Ljava/lang/Float;->isNaN(F)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 295
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result p0

    return p0

    .line 297
    :cond_1
    invoke-static {p0}, Ljava/lang/Float;->isInfinite(F)Z

    move-result p2

    if-eqz p2, :cond_2

    cmpl-float p0, p0, p1

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isUncountable(D)Z
    .locals 1

    .line 261
    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0, p1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result p0

    if-eqz p0, :cond_0

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

.method public static isUncountable(F)Z
    .locals 1

    .line 265
    invoke-static {p0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Ljava/lang/Float;->isInfinite(F)Z

    move-result p0

    if-eqz p0, :cond_0

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

.method static synthetic lambda$sortByIndex$0([DLjava/lang/Integer;)D
    .locals 0

    .line 402
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    aget-wide p0, p0, p1

    return-wide p0
.end method

.method public static max([DII)D
    .locals 5

    .line 319
    aget-wide v0, p0, p1

    add-int/2addr p2, p1

    :cond_0
    :goto_0
    add-int/lit8 p1, p1, 0x1

    if-ge p1, p2, :cond_1

    .line 323
    aget-wide v2, p0, p1

    cmpl-double v4, v2, v0

    if-lez v4, :cond_0

    move-wide v0, v2

    goto :goto_0

    :cond_1
    return-wide v0
.end method

.method public static max([FII)F
    .locals 3

    .line 333
    aget v0, p0, p1

    add-int/2addr p2, p1

    :cond_0
    :goto_0
    add-int/lit8 p1, p1, 0x1

    if-ge p1, p2, :cond_1

    .line 337
    aget v1, p0, p1

    cmpl-float v2, v1, v0

    if-lez v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public static memset([DDI)V
    .locals 1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_0

    .line 302
    aput-wide p1, p0, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static memset([III)V
    .locals 1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_0

    .line 308
    aput p1, p0, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static parse_DDRM(Ljava/lang/String;I)Lorg/ejml/data/DMatrixRMaj;
    .locals 9

    const-string v0, "(\\s)+"

    .line 351
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    .line 354
    aget-object v1, p0, v0

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    .line 357
    array-length v2, p0

    sub-int/2addr v2, v1

    div-int/2addr v2, p1

    .line 359
    new-instance v3, Lorg/ejml/data/DMatrixRMaj;

    invoke-direct {v3, v2, p1}, Lorg/ejml/data/DMatrixRMaj;-><init>(II)V

    move v4, v0

    :goto_0
    if-ge v4, v2, :cond_1

    move v5, v0

    :goto_1
    if-ge v5, p1, :cond_0

    add-int/lit8 v6, v1, 0x1

    .line 364
    aget-object v1, p0, v1

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v7

    invoke-virtual {v3, v4, v5, v7, v8}, Lorg/ejml/data/DMatrixRMaj;->set(IID)V

    add-int/lit8 v5, v5, 0x1

    move v1, v6

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    return-object v3
.end method

.method public static parse_DSCC(Ljava/lang/String;I)Lorg/ejml/data/DMatrixSparseCSC;
    .locals 2

    .line 408
    invoke-static {p0, p1}, Lorg/ejml/UtilEjml;->parse_DDRM(Ljava/lang/String;I)Lorg/ejml/data/DMatrixRMaj;

    move-result-object p0

    const/4 p1, 0x0

    .line 410
    move-object v0, p1

    check-cast v0, Lorg/ejml/data/DMatrixSparseCSC;

    const-wide/16 v0, 0x0

    invoke-static {p0, p1, v0, v1}, Lorg/ejml/ops/DConvertMatrixStruct;->convert(Lorg/ejml/data/DMatrixRMaj;Lorg/ejml/data/DMatrixSparseCSC;D)Lorg/ejml/data/DMatrixSparseCSC;

    move-result-object p0

    return-object p0
.end method

.method public static parse_FDRM(Ljava/lang/String;I)Lorg/ejml/data/FMatrixRMaj;
    .locals 7

    const-string v0, "(\\s)+"

    .line 376
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    .line 379
    aget-object v1, p0, v0

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    .line 382
    array-length v2, p0

    sub-int/2addr v2, v1

    div-int/2addr v2, p1

    .line 384
    new-instance v3, Lorg/ejml/data/FMatrixRMaj;

    invoke-direct {v3, v2, p1}, Lorg/ejml/data/FMatrixRMaj;-><init>(II)V

    move v4, v0

    :goto_0
    if-ge v4, v2, :cond_1

    move v5, v0

    :goto_1
    if-ge v5, p1, :cond_0

    add-int/lit8 v6, v1, 0x1

    .line 389
    aget-object v1, p0, v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    invoke-virtual {v3, v4, v5, v1}, Lorg/ejml/data/FMatrixRMaj;->set(IIF)V

    add-int/lit8 v5, v5, 0x1

    move v1, v6

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    return-object v3
.end method

.method public static parse_FSCC(Ljava/lang/String;I)Lorg/ejml/data/FMatrixSparseCSC;
    .locals 1

    .line 414
    invoke-static {p0, p1}, Lorg/ejml/UtilEjml;->parse_FDRM(Ljava/lang/String;I)Lorg/ejml/data/FMatrixRMaj;

    move-result-object p0

    const/4 p1, 0x0

    .line 416
    move-object v0, p1

    check-cast v0, Lorg/ejml/data/FMatrixSparseCSC;

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/ejml/ops/FConvertMatrixStruct;->convert(Lorg/ejml/data/FMatrixRMaj;Lorg/ejml/data/FMatrixSparseCSC;F)Lorg/ejml/data/FMatrixSparseCSC;

    move-result-object p0

    return-object p0
.end method

.method public static permutationSign([II[I)I
    .locals 3

    const/4 v0, 0x0

    .line 460
    invoke-static {p0, v0, p2, v0, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move p0, v0

    :goto_0
    if-ge v0, p1, :cond_1

    .line 464
    :goto_1
    aget v1, p2, v0

    if-eq v0, v1, :cond_0

    add-int/lit8 p0, p0, 0x1

    .line 467
    aget v2, p2, v1

    aput v2, p2, v0

    .line 468
    aput v1, p2, v1

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 471
    :cond_1
    rem-int/lit8 p0, p0, 0x2

    if-nez p0, :cond_2

    const/4 p0, 0x1

    goto :goto_2

    :cond_2
    const/4 p0, -0x1

    :goto_2
    return p0
.end method

.method public static pivotVector([IILorg/ejml/data/IGrowArray;)[I
    .locals 2

    if-nez p2, :cond_0

    .line 453
    new-instance p2, Lorg/ejml/data/IGrowArray;

    invoke-direct {p2}, Lorg/ejml/data/IGrowArray;-><init>()V

    .line 454
    :cond_0
    invoke-virtual {p2, p1}, Lorg/ejml/data/IGrowArray;->reshape(I)V

    .line 455
    iget-object v0, p2, Lorg/ejml/data/IGrowArray;->data:[I

    const/4 v1, 0x0

    invoke-static {p0, v1, v0, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 456
    iget-object p0, p2, Lorg/ejml/data/IGrowArray;->data:[I

    return-object p0
.end method

.method public static printTime(Ljava/lang/String;Ljava/lang/String;Lorg/ejml/UtilEjml$Process;)V
    .locals 4

    .line 658
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 659
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 660
    invoke-interface {p2}, Lorg/ejml/UtilEjml$Process;->process()V

    .line 661
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    .line 662
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    sub-long/2addr v2, v0

    long-to-double v0, v2

    const-wide v2, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    mul-double/2addr v0, v2

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " (ms)"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method public static printTime(Ljava/lang/String;Lorg/ejml/UtilEjml$Process;)V
    .locals 1

    const-string v0, "Processing... "

    .line 654
    invoke-static {v0, p0, p1}, Lorg/ejml/UtilEjml;->printTime(Ljava/lang/String;Ljava/lang/String;Lorg/ejml/UtilEjml$Process;)V

    return-void
.end method

.method public static randomVector_F32(Ljava/util/Random;I)[F
    .locals 3

    .line 483
    new-array v0, p1, [F

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_0

    .line 485
    invoke-virtual {p0}, Ljava/util/Random;->nextFloat()F

    move-result v2

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static randomVector_F64(Ljava/util/Random;I)[D
    .locals 4

    .line 475
    new-array v0, p1, [D

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_0

    .line 477
    invoke-virtual {p0}, Ljava/util/Random;->nextDouble()D

    move-result-wide v2

    aput-wide v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static reshapeOrDeclare(Lorg/ejml/data/BMatrixRMaj;II)Lorg/ejml/data/BMatrixRMaj;
    .locals 1

    if-nez p0, :cond_0

    .line 116
    new-instance p0, Lorg/ejml/data/BMatrixRMaj;

    invoke-direct {p0, p1, p2}, Lorg/ejml/data/BMatrixRMaj;-><init>(II)V

    return-object p0

    .line 117
    :cond_0
    iget v0, p0, Lorg/ejml/data/BMatrixRMaj;->numRows:I

    if-ne v0, p1, :cond_1

    iget v0, p0, Lorg/ejml/data/BMatrixRMaj;->numCols:I

    if-eq v0, p2, :cond_2

    .line 118
    :cond_1
    invoke-virtual {p0, p1, p2}, Lorg/ejml/data/BMatrixRMaj;->reshape(II)V

    :cond_2
    return-object p0
.end method

.method public static reshapeOrDeclare(Lorg/ejml/data/CMatrixRMaj;II)Lorg/ejml/data/CMatrixRMaj;
    .locals 1

    if-nez p0, :cond_0

    .line 148
    new-instance p0, Lorg/ejml/data/CMatrixRMaj;

    invoke-direct {p0, p1, p2}, Lorg/ejml/data/CMatrixRMaj;-><init>(II)V

    return-object p0

    .line 149
    :cond_0
    iget v0, p0, Lorg/ejml/data/CMatrixRMaj;->numRows:I

    if-ne v0, p1, :cond_1

    iget v0, p0, Lorg/ejml/data/CMatrixRMaj;->numCols:I

    if-eq v0, p2, :cond_2

    .line 150
    :cond_1
    invoke-virtual {p0, p1, p2}, Lorg/ejml/data/CMatrixRMaj;->reshape(II)V

    :cond_2
    return-object p0
.end method

.method public static reshapeOrDeclare(Lorg/ejml/data/DMatrixRMaj;II)Lorg/ejml/data/DMatrixRMaj;
    .locals 1

    if-nez p0, :cond_0

    .line 84
    new-instance p0, Lorg/ejml/data/DMatrixRMaj;

    invoke-direct {p0, p1, p2}, Lorg/ejml/data/DMatrixRMaj;-><init>(II)V

    return-object p0

    .line 85
    :cond_0
    iget v0, p0, Lorg/ejml/data/DMatrixRMaj;->numRows:I

    if-ne v0, p1, :cond_1

    iget v0, p0, Lorg/ejml/data/DMatrixRMaj;->numCols:I

    if-eq v0, p2, :cond_2

    .line 86
    :cond_1
    invoke-virtual {p0, p1, p2}, Lorg/ejml/data/DMatrixRMaj;->reshape(II)V

    :cond_2
    return-object p0
.end method

.method public static reshapeOrDeclare(Lorg/ejml/data/DMatrixSparseCSC;III)Lorg/ejml/data/DMatrixSparseCSC;
    .locals 0

    if-nez p0, :cond_0

    .line 194
    new-instance p0, Lorg/ejml/data/DMatrixSparseCSC;

    invoke-direct {p0, p1, p2, p3}, Lorg/ejml/data/DMatrixSparseCSC;-><init>(III)V

    return-object p0

    .line 196
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lorg/ejml/data/DMatrixSparseCSC;->reshape(III)V

    return-object p0
.end method

.method public static reshapeOrDeclare(Lorg/ejml/data/FMatrixRMaj;II)Lorg/ejml/data/FMatrixRMaj;
    .locals 1

    if-nez p0, :cond_0

    .line 100
    new-instance p0, Lorg/ejml/data/FMatrixRMaj;

    invoke-direct {p0, p1, p2}, Lorg/ejml/data/FMatrixRMaj;-><init>(II)V

    return-object p0

    .line 101
    :cond_0
    iget v0, p0, Lorg/ejml/data/FMatrixRMaj;->numRows:I

    if-ne v0, p1, :cond_1

    iget v0, p0, Lorg/ejml/data/FMatrixRMaj;->numCols:I

    if-eq v0, p2, :cond_2

    .line 102
    :cond_1
    invoke-virtual {p0, p1, p2}, Lorg/ejml/data/FMatrixRMaj;->reshape(II)V

    :cond_2
    return-object p0
.end method

.method public static reshapeOrDeclare(Lorg/ejml/data/FMatrixSparseCSC;III)Lorg/ejml/data/FMatrixSparseCSC;
    .locals 0

    if-nez p0, :cond_0

    .line 202
    new-instance p0, Lorg/ejml/data/FMatrixSparseCSC;

    invoke-direct {p0, p1, p2, p3}, Lorg/ejml/data/FMatrixSparseCSC;-><init>(III)V

    return-object p0

    .line 204
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lorg/ejml/data/FMatrixSparseCSC;->reshape(III)V

    return-object p0
.end method

.method public static reshapeOrDeclare(Lorg/ejml/data/MatrixSparse;Lorg/ejml/data/MatrixSparse;)Lorg/ejml/data/MatrixSparse;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lorg/ejml/data/MatrixSparse;",
            ">(TT;",
            "Lorg/ejml/data/MatrixSparse;",
            ")TT;"
        }
    .end annotation

    if-nez p0, :cond_0

    .line 171
    invoke-interface {p1}, Lorg/ejml/data/MatrixSparse;->createLike()Lorg/ejml/data/Matrix;

    move-result-object p0

    check-cast p0, Lorg/ejml/data/MatrixSparse;

    return-object p0

    .line 173
    :cond_0
    invoke-interface {p1}, Lorg/ejml/data/MatrixSparse;->getNumRows()I

    move-result v0

    invoke-interface {p1}, Lorg/ejml/data/MatrixSparse;->getNumCols()I

    move-result v1

    invoke-interface {p1}, Lorg/ejml/data/MatrixSparse;->getNonZeroLength()I

    move-result p1

    invoke-interface {p0, v0, v1, p1}, Lorg/ejml/data/MatrixSparse;->reshape(III)V

    return-object p0
.end method

.method public static reshapeOrDeclare(Lorg/ejml/data/ReshapeMatrix;Lorg/ejml/data/ReshapeMatrix;)Lorg/ejml/data/ReshapeMatrix;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lorg/ejml/data/ReshapeMatrix;",
            ">(TT;TT;)TT;"
        }
    .end annotation

    if-nez p0, :cond_0

    .line 163
    invoke-interface {p1}, Lorg/ejml/data/ReshapeMatrix;->createLike()Lorg/ejml/data/Matrix;

    move-result-object p0

    check-cast p0, Lorg/ejml/data/ReshapeMatrix;

    return-object p0

    .line 164
    :cond_0
    invoke-interface {p0}, Lorg/ejml/data/ReshapeMatrix;->getNumRows()I

    move-result v0

    invoke-interface {p1}, Lorg/ejml/data/ReshapeMatrix;->getNumRows()I

    move-result v1

    if-ne v0, v1, :cond_1

    invoke-interface {p0}, Lorg/ejml/data/ReshapeMatrix;->getNumCols()I

    move-result v0

    invoke-interface {p1}, Lorg/ejml/data/ReshapeMatrix;->getNumCols()I

    move-result v1

    if-eq v0, v1, :cond_2

    .line 165
    :cond_1
    invoke-interface {p1}, Lorg/ejml/data/ReshapeMatrix;->getNumRows()I

    move-result v0

    invoke-interface {p1}, Lorg/ejml/data/ReshapeMatrix;->getNumCols()I

    move-result p1

    invoke-interface {p0, v0, p1}, Lorg/ejml/data/ReshapeMatrix;->reshape(II)V

    :cond_2
    return-object p0
.end method

.method public static reshapeOrDeclare(Lorg/ejml/data/ReshapeMatrix;Lorg/ejml/data/ReshapeMatrix;II)Lorg/ejml/data/ReshapeMatrix;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lorg/ejml/data/ReshapeMatrix;",
            ">(TT;TT;II)TT;"
        }
    .end annotation

    if-nez p0, :cond_0

    .line 186
    invoke-interface {p1, p2, p3}, Lorg/ejml/data/ReshapeMatrix;->create(II)Lorg/ejml/data/Matrix;

    move-result-object p0

    check-cast p0, Lorg/ejml/data/ReshapeMatrix;

    return-object p0

    .line 187
    :cond_0
    invoke-interface {p0}, Lorg/ejml/data/ReshapeMatrix;->getNumRows()I

    move-result p1

    if-ne p1, p2, :cond_1

    invoke-interface {p0}, Lorg/ejml/data/ReshapeMatrix;->getNumCols()I

    move-result p1

    if-eq p1, p3, :cond_2

    .line 188
    :cond_1
    invoke-interface {p0, p2, p3}, Lorg/ejml/data/ReshapeMatrix;->reshape(II)V

    :cond_2
    return-object p0
.end method

.method public static reshapeOrDeclare(Lorg/ejml/data/ZMatrixRMaj;II)Lorg/ejml/data/ZMatrixRMaj;
    .locals 1

    if-nez p0, :cond_0

    .line 132
    new-instance p0, Lorg/ejml/data/ZMatrixRMaj;

    invoke-direct {p0, p1, p2}, Lorg/ejml/data/ZMatrixRMaj;-><init>(II)V

    return-object p0

    .line 133
    :cond_0
    iget v0, p0, Lorg/ejml/data/ZMatrixRMaj;->numRows:I

    if-ne v0, p1, :cond_1

    iget v0, p0, Lorg/ejml/data/ZMatrixRMaj;->numCols:I

    if-eq v0, p2, :cond_2

    .line 134
    :cond_1
    invoke-virtual {p0, p1, p2}, Lorg/ejml/data/ZMatrixRMaj;->reshape(II)V

    :cond_2
    return-object p0
.end method

.method public static safe(Lorg/ejml/interfaces/linsol/LinearSolver;)Lorg/ejml/interfaces/linsol/LinearSolver;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S::",
            "Lorg/ejml/data/Matrix;",
            "D::",
            "Lorg/ejml/data/Matrix;",
            ">(",
            "Lorg/ejml/interfaces/linsol/LinearSolver<",
            "TS;TD;>;)",
            "Lorg/ejml/interfaces/linsol/LinearSolver<",
            "TS;TD;>;"
        }
    .end annotation

    .line 229
    invoke-interface {p0}, Lorg/ejml/interfaces/linsol/LinearSolver;->modifiesA()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {p0}, Lorg/ejml/interfaces/linsol/LinearSolver;->modifiesB()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    return-object p0

    .line 230
    :cond_1
    :goto_0
    instance-of v0, p0, Lorg/ejml/interfaces/linsol/LinearSolverDense;

    if-eqz v0, :cond_2

    .line 231
    new-instance v0, Lorg/ejml/LinearSolverSafe;

    check-cast p0, Lorg/ejml/interfaces/linsol/LinearSolverDense;

    invoke-direct {v0, p0}, Lorg/ejml/LinearSolverSafe;-><init>(Lorg/ejml/interfaces/linsol/LinearSolverDense;)V

    return-object v0

    .line 232
    :cond_2
    instance-of v0, p0, Lorg/ejml/interfaces/linsol/LinearSolverSparse;

    if-eqz v0, :cond_3

    .line 233
    new-instance v0, Lorg/ejml/LinearSolverSparseSafe;

    check-cast p0, Lorg/ejml/interfaces/linsol/LinearSolverSparse;

    invoke-direct {v0, p0}, Lorg/ejml/LinearSolverSparseSafe;-><init>(Lorg/ejml/interfaces/linsol/LinearSolverSparse;)V

    return-object v0

    .line 235
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Unknown solver type"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static safe(Lorg/ejml/interfaces/linsol/LinearSolverDense;)Lorg/ejml/interfaces/linsol/LinearSolverDense;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<D::",
            "Lorg/ejml/data/ReshapeMatrix;",
            ">(",
            "Lorg/ejml/interfaces/linsol/LinearSolverDense<",
            "TD;>;)",
            "Lorg/ejml/interfaces/linsol/LinearSolverDense<",
            "TD;>;"
        }
    .end annotation

    .line 243
    invoke-interface {p0}, Lorg/ejml/interfaces/linsol/LinearSolverDense;->modifiesA()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {p0}, Lorg/ejml/interfaces/linsol/LinearSolverDense;->modifiesB()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    return-object p0

    .line 244
    :cond_1
    :goto_0
    new-instance v0, Lorg/ejml/LinearSolverSafe;

    invoke-direct {v0, p0}, Lorg/ejml/LinearSolverSafe;-><init>(Lorg/ejml/interfaces/linsol/LinearSolverDense;)V

    return-object v0
.end method

.method public static setnull([Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 313
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    const/4 v1, 0x0

    .line 314
    aput-object v1, p0, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static shuffle([IIIILjava/util/Random;)V
    .locals 4

    sub-int/2addr p3, p2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_0

    sub-int v1, p1, v0

    .line 445
    invoke-virtual {p4, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    add-int/2addr v1, v0

    add-int/2addr v1, p2

    .line 446
    aget v2, p0, v0

    .line 447
    aget v3, p0, v1

    aput v3, p0, v0

    .line 448
    aput v2, p0, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static shuffled(IILjava/util/Random;)[I
    .locals 3

    .line 424
    new-array v0, p0, [I

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, p0, :cond_0

    .line 426
    aput v2, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 428
    :cond_0
    invoke-static {v0, p0, v1, p1, p2}, Lorg/ejml/UtilEjml;->shuffle([IIIILjava/util/Random;)V

    return-object v0
.end method

.method public static shuffled(ILjava/util/Random;)[I
    .locals 0

    .line 420
    invoke-static {p0, p0, p1}, Lorg/ejml/UtilEjml;->shuffled(IILjava/util/Random;)[I

    move-result-object p0

    return-object p0
.end method

.method public static shuffledSorted(IILjava/util/Random;)[I
    .locals 3

    .line 433
    new-array v0, p0, [I

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, p0, :cond_0

    .line 435
    aput v2, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 437
    :cond_0
    invoke-static {v0, p0, v1, p1, p2}, Lorg/ejml/UtilEjml;->shuffle([IIIILjava/util/Random;)V

    .line 438
    invoke-static {v0, v1, p1}, Ljava/util/Arrays;->sort([III)V

    return-object v0
.end method

.method public static sortByIndex([DI)[Ljava/lang/Integer;
    .locals 3

    .line 397
    new-array v0, p1, [Ljava/lang/Integer;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_0

    .line 399
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 402
    :cond_0
    new-instance p1, Lorg/ejml/UtilEjml$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lorg/ejml/UtilEjml$$ExternalSyntheticLambda0;-><init>([D)V

    invoke-static {p1}, Ljava/util/Comparator;->comparingDouble(Ljava/util/function/ToDoubleFunction;)Ljava/util/Comparator;

    move-result-object p0

    invoke-static {v0, p0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    return-object v0
.end method

.method public static stringShapes(Lorg/ejml/data/Matrix;Lorg/ejml/data/Matrix;)Ljava/lang/String;
    .locals 2

    .line 497
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "( "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p0}, Lorg/ejml/data/Matrix;->getNumRows()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p0}, Lorg/ejml/data/Matrix;->getNumCols()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, " ) ( "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    .line 498
    invoke-interface {p1}, Lorg/ejml/data/Matrix;->getNumRows()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-interface {p1}, Lorg/ejml/data/Matrix;->getNumCols()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, " )"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static stringShapes(Lorg/ejml/data/Matrix;Lorg/ejml/data/Matrix;Lorg/ejml/data/Matrix;)Ljava/lang/String;
    .locals 3

    .line 491
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "( "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p0}, Lorg/ejml/data/Matrix;->getNumRows()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p0}, Lorg/ejml/data/Matrix;->getNumCols()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, " ) ( "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    .line 492
    invoke-interface {p1}, Lorg/ejml/data/Matrix;->getNumRows()I

    move-result v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-interface {p1}, Lorg/ejml/data/Matrix;->getNumCols()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    .line 493
    invoke-interface {p2}, Lorg/ejml/data/Matrix;->getNumRows()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-interface {p2}, Lorg/ejml/data/Matrix;->getNumCols()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, " )"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
