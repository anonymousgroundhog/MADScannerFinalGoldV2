.class public Lorg/ejml/EjmlParameters;
.super Ljava/lang/Object;
.source "EjmlParameters.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/ejml/EjmlParameters$MemoryUsage;
    }
.end annotation


# static fields
.field public static BLOCK_WIDTH:I = 0x0

.field public static BLOCK_WIDTH_CHOL:I = 0x0

.field public static CMULT_COLUMN_SWITCH:I = 0x0

.field public static CMULT_TRANAB_COLUMN_SWITCH:I = 0x0

.field public static MEMORY:Lorg/ejml/EjmlParameters$MemoryUsage; = null

.field public static MULT_COLUMN_SWITCH:I = 0x0

.field public static MULT_INNER_SWITCH:I = 0x0

.field public static MULT_TRANAB_COLUMN_SWITCH:I = 0x0

.field public static SWITCH_BLOCK64_CHOLESKY:I = 0x0

.field public static SWITCH_BLOCK64_QR:I = 0x0

.field public static final TOL32:F = 1.0E-4f

.field public static final TOL64:D = 1.0E-8

.field public static TRANSPOSE_SWITCH:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 38
    sget-object v0, Lorg/ejml/EjmlParameters$MemoryUsage;->FASTER:Lorg/ejml/EjmlParameters$MemoryUsage;

    sput-object v0, Lorg/ejml/EjmlParameters;->MEMORY:Lorg/ejml/EjmlParameters$MemoryUsage;

    const/16 v0, 0x3c

    .line 50
    sput v0, Lorg/ejml/EjmlParameters;->BLOCK_WIDTH:I

    const/16 v0, 0x14

    .line 51
    sput v0, Lorg/ejml/EjmlParameters;->BLOCK_WIDTH_CHOL:I

    const/16 v1, 0x177

    .line 53
    sput v1, Lorg/ejml/EjmlParameters;->TRANSPOSE_SWITCH:I

    const/16 v1, 0xf

    .line 58
    sput v1, Lorg/ejml/EjmlParameters;->MULT_COLUMN_SWITCH:I

    const/16 v1, 0x28

    .line 59
    sput v1, Lorg/ejml/EjmlParameters;->MULT_TRANAB_COLUMN_SWITCH:I

    const/16 v1, 0x64

    .line 60
    sput v1, Lorg/ejml/EjmlParameters;->MULT_INNER_SWITCH:I

    const/4 v1, 0x7

    .line 62
    sput v1, Lorg/ejml/EjmlParameters;->CMULT_COLUMN_SWITCH:I

    .line 63
    sput v0, Lorg/ejml/EjmlParameters;->CMULT_TRANAB_COLUMN_SWITCH:I

    const/16 v0, 0x3e8

    .line 75
    sput v0, Lorg/ejml/EjmlParameters;->SWITCH_BLOCK64_CHOLESKY:I

    const/16 v0, 0x5dc

    .line 77
    sput v0, Lorg/ejml/EjmlParameters;->SWITCH_BLOCK64_QR:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
