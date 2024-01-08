.class public Lorg/ejml/sparse/csc/factory/FillReductionFactory_DSCC;
.super Ljava/lang/Object;
.source "FillReductionFactory_DSCC.java"


# static fields
.field public static final rand:Ljava/util/Random;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 34
    new-instance v0, Ljava/util/Random;

    const-wide/32 v1, 0x392fa

    invoke-direct {v0, v1, v2}, Ljava/util/Random;-><init>(J)V

    sput-object v0, Lorg/ejml/sparse/csc/factory/FillReductionFactory_DSCC;->rand:Ljava/util/Random;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lorg/ejml/data/IGrowArray;)V
    .locals 0

    .line 33
    invoke-static {p0}, Lorg/ejml/sparse/csc/factory/FillReductionFactory_DSCC;->fillSequence(Lorg/ejml/data/IGrowArray;)V

    return-void
.end method

.method public static create(Lorg/ejml/sparse/FillReducing;)Lorg/ejml/sparse/ComputePermutation;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ejml/sparse/FillReducing;",
            ")",
            "Lorg/ejml/sparse/ComputePermutation<",
            "Lorg/ejml/data/DMatrixSparseCSC;",
            ">;"
        }
    .end annotation

    .line 43
    sget-object v0, Lorg/ejml/sparse/csc/factory/FillReductionFactory_DSCC$3;->$SwitchMap$org$ejml$sparse$FillReducing:[I

    invoke-virtual {p0}, Lorg/ejml/sparse/FillReducing;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    .line 66
    new-instance p0, Lorg/ejml/sparse/csc/factory/FillReductionFactory_DSCC$2;

    invoke-direct {p0, v1, v1}, Lorg/ejml/sparse/csc/factory/FillReductionFactory_DSCC$2;-><init>(ZZ)V

    return-object p0

    .line 78
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 48
    :cond_1
    new-instance p0, Lorg/ejml/sparse/csc/factory/FillReductionFactory_DSCC$1;

    invoke-direct {p0, v1, v1}, Lorg/ejml/sparse/csc/factory/FillReductionFactory_DSCC$1;-><init>(ZZ)V

    return-object p0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method private static fillSequence(Lorg/ejml/data/IGrowArray;)V
    .locals 2

    const/4 v0, 0x0

    .line 83
    :goto_0
    iget v1, p0, Lorg/ejml/data/IGrowArray;->length:I

    if-ge v0, v1, :cond_0

    .line 84
    iget-object v1, p0, Lorg/ejml/data/IGrowArray;->data:[I

    aput v0, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
