.class synthetic Lorg/ejml/simple/SimpleEVD$1;
.super Ljava/lang/Object;
.source "SimpleEVD.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/ejml/simple/SimpleEVD;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$org$ejml$data$MatrixType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 46
    invoke-static {}, Lorg/ejml/data/MatrixType;->values()[Lorg/ejml/data/MatrixType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lorg/ejml/simple/SimpleEVD$1;->$SwitchMap$org$ejml$data$MatrixType:[I

    :try_start_0
    sget-object v1, Lorg/ejml/data/MatrixType;->DDRM:Lorg/ejml/data/MatrixType;

    invoke-virtual {v1}, Lorg/ejml/data/MatrixType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lorg/ejml/simple/SimpleEVD$1;->$SwitchMap$org$ejml$data$MatrixType:[I

    sget-object v1, Lorg/ejml/data/MatrixType;->FDRM:Lorg/ejml/data/MatrixType;

    invoke-virtual {v1}, Lorg/ejml/data/MatrixType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-void
.end method
