.class public final enum Lorg/ejml/data/MatrixType;
.super Ljava/lang/Enum;
.source "MatrixType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/ejml/data/MatrixType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/ejml/data/MatrixType;

.field public static final enum CDRM:Lorg/ejml/data/MatrixType;

.field public static final enum CSCC:Lorg/ejml/data/MatrixType;

.field public static final enum DDRM:Lorg/ejml/data/MatrixType;

.field public static final enum DSCC:Lorg/ejml/data/MatrixType;

.field public static final enum DTRIPLET:Lorg/ejml/data/MatrixType;

.field public static final enum FDRM:Lorg/ejml/data/MatrixType;

.field public static final enum FSCC:Lorg/ejml/data/MatrixType;

.field public static final enum FTRIPLET:Lorg/ejml/data/MatrixType;

.field public static final enum UNSPECIFIED:Lorg/ejml/data/MatrixType;

.field public static final enum ZDRM:Lorg/ejml/data/MatrixType;

.field public static final enum ZSCC:Lorg/ejml/data/MatrixType;


# instance fields
.field final bits:I

.field final classType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field final dense:Z

.field final fixed:Z

.field final real:Z


# direct methods
.method static constructor <clinit>()V
    .locals 30

    .line 28
    new-instance v7, Lorg/ejml/data/MatrixType;

    const-string v1, "DDRM"

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/16 v5, 0x40

    const-class v6, Lorg/ejml/data/DMatrixRMaj;

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lorg/ejml/data/MatrixType;-><init>(Ljava/lang/String;IZZILjava/lang/Class;)V

    sput-object v7, Lorg/ejml/data/MatrixType;->DDRM:Lorg/ejml/data/MatrixType;

    .line 29
    new-instance v1, Lorg/ejml/data/MatrixType;

    const-string v9, "FDRM"

    const/4 v10, 0x1

    const/4 v11, 0x1

    const/4 v12, 0x1

    const/16 v13, 0x20

    const-class v14, Lorg/ejml/data/FMatrixRMaj;

    move-object v8, v1

    invoke-direct/range {v8 .. v14}, Lorg/ejml/data/MatrixType;-><init>(Ljava/lang/String;IZZILjava/lang/Class;)V

    sput-object v1, Lorg/ejml/data/MatrixType;->FDRM:Lorg/ejml/data/MatrixType;

    .line 30
    new-instance v2, Lorg/ejml/data/MatrixType;

    const-string v16, "ZDRM"

    const/16 v17, 0x2

    const/16 v18, 0x0

    const/16 v19, 0x1

    const/16 v20, 0x40

    const-class v21, Lorg/ejml/data/ZMatrixRMaj;

    move-object v15, v2

    invoke-direct/range {v15 .. v21}, Lorg/ejml/data/MatrixType;-><init>(Ljava/lang/String;IZZILjava/lang/Class;)V

    sput-object v2, Lorg/ejml/data/MatrixType;->ZDRM:Lorg/ejml/data/MatrixType;

    .line 31
    new-instance v3, Lorg/ejml/data/MatrixType;

    const-string v9, "CDRM"

    const/4 v10, 0x3

    const/4 v11, 0x0

    const-class v14, Lorg/ejml/data/CMatrixRMaj;

    move-object v8, v3

    invoke-direct/range {v8 .. v14}, Lorg/ejml/data/MatrixType;-><init>(Ljava/lang/String;IZZILjava/lang/Class;)V

    sput-object v3, Lorg/ejml/data/MatrixType;->CDRM:Lorg/ejml/data/MatrixType;

    .line 32
    new-instance v4, Lorg/ejml/data/MatrixType;

    const-string v16, "DSCC"

    const/16 v17, 0x4

    const/16 v18, 0x1

    const/16 v19, 0x0

    const-class v21, Lorg/ejml/data/DMatrixSparseCSC;

    move-object v15, v4

    invoke-direct/range {v15 .. v21}, Lorg/ejml/data/MatrixType;-><init>(Ljava/lang/String;IZZILjava/lang/Class;)V

    sput-object v4, Lorg/ejml/data/MatrixType;->DSCC:Lorg/ejml/data/MatrixType;

    .line 33
    new-instance v5, Lorg/ejml/data/MatrixType;

    const-string v9, "FSCC"

    const/4 v10, 0x5

    const/4 v11, 0x1

    const/4 v12, 0x0

    const-class v14, Lorg/ejml/data/FMatrixSparseCSC;

    move-object v8, v5

    invoke-direct/range {v8 .. v14}, Lorg/ejml/data/MatrixType;-><init>(Ljava/lang/String;IZZILjava/lang/Class;)V

    sput-object v5, Lorg/ejml/data/MatrixType;->FSCC:Lorg/ejml/data/MatrixType;

    .line 34
    new-instance v6, Lorg/ejml/data/MatrixType;

    const-string v16, "ZSCC"

    const/16 v17, 0x6

    const/16 v18, 0x0

    const-class v21, Ljava/lang/Object;

    move-object v15, v6

    invoke-direct/range {v15 .. v21}, Lorg/ejml/data/MatrixType;-><init>(Ljava/lang/String;IZZILjava/lang/Class;)V

    sput-object v6, Lorg/ejml/data/MatrixType;->ZSCC:Lorg/ejml/data/MatrixType;

    .line 35
    new-instance v15, Lorg/ejml/data/MatrixType;

    const-string v9, "CSCC"

    const/4 v10, 0x7

    const/4 v11, 0x0

    const-class v14, Ljava/lang/Object;

    move-object v8, v15

    invoke-direct/range {v8 .. v14}, Lorg/ejml/data/MatrixType;-><init>(Ljava/lang/String;IZZILjava/lang/Class;)V

    sput-object v15, Lorg/ejml/data/MatrixType;->CSCC:Lorg/ejml/data/MatrixType;

    .line 36
    new-instance v8, Lorg/ejml/data/MatrixType;

    const-string v17, "DTRIPLET"

    const/16 v18, 0x8

    const/16 v20, 0x0

    const/16 v21, 0x40

    const-class v22, Lorg/ejml/data/DMatrixSparseTriplet;

    move-object/from16 v16, v8

    invoke-direct/range {v16 .. v22}, Lorg/ejml/data/MatrixType;-><init>(Ljava/lang/String;IZZILjava/lang/Class;)V

    sput-object v8, Lorg/ejml/data/MatrixType;->DTRIPLET:Lorg/ejml/data/MatrixType;

    .line 37
    new-instance v9, Lorg/ejml/data/MatrixType;

    const-string v24, "FTRIPLET"

    const/16 v25, 0x9

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x40

    const-class v29, Lorg/ejml/data/FMatrixSparseTriplet;

    move-object/from16 v23, v9

    invoke-direct/range {v23 .. v29}, Lorg/ejml/data/MatrixType;-><init>(Ljava/lang/String;IZZILjava/lang/Class;)V

    sput-object v9, Lorg/ejml/data/MatrixType;->FTRIPLET:Lorg/ejml/data/MatrixType;

    .line 38
    new-instance v10, Lorg/ejml/data/MatrixType;

    const-string v17, "UNSPECIFIED"

    const/16 v18, 0xa

    const/16 v21, 0x0

    const-class v22, Ljava/lang/Object;

    move-object/from16 v16, v10

    invoke-direct/range {v16 .. v22}, Lorg/ejml/data/MatrixType;-><init>(Ljava/lang/String;IZZILjava/lang/Class;)V

    sput-object v10, Lorg/ejml/data/MatrixType;->UNSPECIFIED:Lorg/ejml/data/MatrixType;

    move-object v7, v15

    .line 26
    filled-new-array/range {v0 .. v10}, [Lorg/ejml/data/MatrixType;

    move-result-object v0

    sput-object v0, Lorg/ejml/data/MatrixType;->$VALUES:[Lorg/ejml/data/MatrixType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZZILjava/lang/Class;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZI",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move-object v7, p6

    .line 47
    invoke-direct/range {v0 .. v7}, Lorg/ejml/data/MatrixType;-><init>(Ljava/lang/String;IZZZILjava/lang/Class;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZZZILjava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZZI",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 50
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 51
    iput-boolean p4, p0, Lorg/ejml/data/MatrixType;->real:Z

    .line 52
    iput-boolean p3, p0, Lorg/ejml/data/MatrixType;->fixed:Z

    .line 53
    iput-boolean p5, p0, Lorg/ejml/data/MatrixType;->dense:Z

    .line 54
    iput p6, p0, Lorg/ejml/data/MatrixType;->bits:I

    .line 55
    iput-object p7, p0, Lorg/ejml/data/MatrixType;->classType:Ljava/lang/Class;

    return-void
.end method

.method public static lookup(Ljava/lang/Class;)Lorg/ejml/data/MatrixType;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lorg/ejml/data/MatrixType;"
        }
    .end annotation

    .line 59
    const-class v0, Lorg/ejml/data/DMatrixRMaj;

    if-ne p0, v0, :cond_0

    .line 60
    sget-object p0, Lorg/ejml/data/MatrixType;->DDRM:Lorg/ejml/data/MatrixType;

    return-object p0

    .line 61
    :cond_0
    const-class v0, Lorg/ejml/data/FMatrixRMaj;

    if-ne p0, v0, :cond_1

    .line 62
    sget-object p0, Lorg/ejml/data/MatrixType;->FDRM:Lorg/ejml/data/MatrixType;

    return-object p0

    .line 63
    :cond_1
    const-class v0, Lorg/ejml/data/ZMatrixRMaj;

    if-ne p0, v0, :cond_2

    .line 64
    sget-object p0, Lorg/ejml/data/MatrixType;->ZDRM:Lorg/ejml/data/MatrixType;

    return-object p0

    .line 65
    :cond_2
    const-class v0, Lorg/ejml/data/CMatrixRMaj;

    if-ne p0, v0, :cond_3

    .line 66
    sget-object p0, Lorg/ejml/data/MatrixType;->CDRM:Lorg/ejml/data/MatrixType;

    return-object p0

    .line 67
    :cond_3
    const-class v0, Lorg/ejml/data/DMatrixSparseCSC;

    if-ne p0, v0, :cond_4

    .line 68
    sget-object p0, Lorg/ejml/data/MatrixType;->DSCC:Lorg/ejml/data/MatrixType;

    return-object p0

    .line 69
    :cond_4
    const-class v0, Lorg/ejml/data/FMatrixSparseCSC;

    if-ne p0, v0, :cond_5

    .line 70
    sget-object p0, Lorg/ejml/data/MatrixType;->FSCC:Lorg/ejml/data/MatrixType;

    return-object p0

    .line 72
    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Unknown class"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static lookup(ZZI)Lorg/ejml/data/MatrixType;
    .locals 1

    const/16 v0, 0x40

    if-eqz p0, :cond_3

    if-eqz p1, :cond_1

    if-ne p2, v0, :cond_0

    .line 82
    sget-object p0, Lorg/ejml/data/MatrixType;->DDRM:Lorg/ejml/data/MatrixType;

    return-object p0

    .line 84
    :cond_0
    sget-object p0, Lorg/ejml/data/MatrixType;->FDRM:Lorg/ejml/data/MatrixType;

    return-object p0

    :cond_1
    if-ne p2, v0, :cond_2

    .line 88
    sget-object p0, Lorg/ejml/data/MatrixType;->ZDRM:Lorg/ejml/data/MatrixType;

    return-object p0

    .line 90
    :cond_2
    sget-object p0, Lorg/ejml/data/MatrixType;->CDRM:Lorg/ejml/data/MatrixType;

    return-object p0

    :cond_3
    if-eqz p1, :cond_5

    if-ne p2, v0, :cond_4

    .line 96
    sget-object p0, Lorg/ejml/data/MatrixType;->DSCC:Lorg/ejml/data/MatrixType;

    return-object p0

    .line 98
    :cond_4
    sget-object p0, Lorg/ejml/data/MatrixType;->FSCC:Lorg/ejml/data/MatrixType;

    return-object p0

    .line 101
    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Complex sparse not yet supported"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/ejml/data/MatrixType;
    .locals 1

    .line 26
    const-class v0, Lorg/ejml/data/MatrixType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/ejml/data/MatrixType;

    return-object p0
.end method

.method public static values()[Lorg/ejml/data/MatrixType;
    .locals 1

    .line 26
    sget-object v0, Lorg/ejml/data/MatrixType;->$VALUES:[Lorg/ejml/data/MatrixType;

    invoke-virtual {v0}, [Lorg/ejml/data/MatrixType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/ejml/data/MatrixType;

    return-object v0
.end method


# virtual methods
.method public create(II)Lorg/ejml/data/Matrix;
    .locals 2

    .line 127
    sget-object v0, Lorg/ejml/data/MatrixType$1;->$SwitchMap$org$ejml$data$MatrixType:[I

    invoke-virtual {p0}, Lorg/ejml/data/MatrixType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 137
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Unknown Matrix Type "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 133
    :pswitch_0
    new-instance v0, Lorg/ejml/data/FMatrixSparseCSC;

    invoke-direct {v0, p1, p2}, Lorg/ejml/data/FMatrixSparseCSC;-><init>(II)V

    return-object v0

    .line 132
    :pswitch_1
    new-instance v0, Lorg/ejml/data/DMatrixSparseCSC;

    invoke-direct {v0, p1, p2}, Lorg/ejml/data/DMatrixSparseCSC;-><init>(II)V

    return-object v0

    .line 131
    :pswitch_2
    new-instance v0, Lorg/ejml/data/CMatrixRMaj;

    invoke-direct {v0, p1, p2}, Lorg/ejml/data/CMatrixRMaj;-><init>(II)V

    return-object v0

    .line 130
    :pswitch_3
    new-instance v0, Lorg/ejml/data/ZMatrixRMaj;

    invoke-direct {v0, p1, p2}, Lorg/ejml/data/ZMatrixRMaj;-><init>(II)V

    return-object v0

    .line 129
    :pswitch_4
    new-instance v0, Lorg/ejml/data/FMatrixRMaj;

    invoke-direct {v0, p1, p2}, Lorg/ejml/data/FMatrixRMaj;-><init>(II)V

    return-object v0

    .line 128
    :pswitch_5
    new-instance v0, Lorg/ejml/data/DMatrixRMaj;

    invoke-direct {v0, p1, p2}, Lorg/ejml/data/DMatrixRMaj;-><init>(II)V

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getBits()I
    .locals 1

    .line 119
    iget v0, p0, Lorg/ejml/data/MatrixType;->bits:I

    return v0
.end method

.method public getClassType()Ljava/lang/Class;
    .locals 1

    .line 123
    iget-object v0, p0, Lorg/ejml/data/MatrixType;->classType:Ljava/lang/Class;

    return-object v0
.end method

.method public isDense()Z
    .locals 1

    .line 115
    iget-boolean v0, p0, Lorg/ejml/data/MatrixType;->dense:Z

    return v0
.end method

.method public isFixed()Z
    .locals 1

    .line 111
    iget-boolean v0, p0, Lorg/ejml/data/MatrixType;->fixed:Z

    return v0
.end method

.method public isReal()Z
    .locals 1

    .line 107
    iget-boolean v0, p0, Lorg/ejml/data/MatrixType;->real:Z

    return v0
.end method
