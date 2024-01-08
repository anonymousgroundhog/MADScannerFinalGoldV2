.class public Lorg/ejml/ops/QuickSort_S32;
.super Ljava/lang/Object;
.source "QuickSort_S32.java"


# instance fields
.field private M:I

.field private NSTACK:I

.field private istack:[I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x7

    .line 35
    iput v0, p0, Lorg/ejml/ops/QuickSort_S32;->M:I

    const/16 v0, 0x41

    .line 41
    iput v0, p0, Lorg/ejml/ops/QuickSort_S32;->NSTACK:I

    new-array v0, v0, [I

    .line 42
    iput-object v0, p0, Lorg/ejml/ops/QuickSort_S32;->istack:[I

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput p2, p0, Lorg/ejml/ops/QuickSort_S32;->M:I

    .line 47
    iput p1, p0, Lorg/ejml/ops/QuickSort_S32;->NSTACK:I

    .line 49
    new-array p1, p1, [I

    iput-object p1, p0, Lorg/ejml/ops/QuickSort_S32;->istack:[I

    return-void
.end method


# virtual methods
.method public sort([II[I)V
    .locals 9

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p2, :cond_0

    .line 54
    aput v1, p3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    add-int/lit8 p2, p2, -0x1

    const/4 v1, -0x1

    move v2, v1

    :goto_1
    sub-int v3, p2, v0

    .line 69
    iget v4, p0, Lorg/ejml/ops/QuickSort_S32;->M:I

    if-ge v3, v4, :cond_5

    add-int/lit8 v3, v0, 0x1

    :goto_2
    if-gt v3, p2, :cond_3

    .line 71
    aget v4, p3, v3

    aget v5, p1, v4

    add-int/lit8 v6, v3, -0x1

    :goto_3
    if-lt v6, v0, :cond_2

    .line 74
    aget v7, p3, v6

    aget v8, p1, v7

    if-gt v8, v5, :cond_1

    goto :goto_4

    :cond_1
    add-int/lit8 v8, v6, 0x1

    .line 75
    aput v7, p3, v8

    add-int/lit8 v6, v6, -0x1

    goto :goto_3

    :cond_2
    :goto_4
    add-int/lit8 v6, v6, 0x1

    .line 77
    aput v4, p3, v6

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_3
    if-gez v2, :cond_4

    return-void

    .line 81
    :cond_4
    iget-object p2, p0, Lorg/ejml/ops/QuickSort_S32;->istack:[I

    add-int/lit8 v0, v2, -0x1

    aget v2, p2, v2

    add-int/lit8 v3, v0, -0x1

    .line 82
    aget v0, p2, v0

    move p2, v2

    move v2, v3

    goto :goto_1

    :cond_5
    add-int v3, v0, p2

    ushr-int/lit8 v3, v3, 0x1

    .line 86
    aget v4, p3, v3

    add-int/lit8 v5, v0, 0x1

    .line 87
    aget v6, p3, v5

    aput v6, p3, v3

    .line 88
    aput v4, p3, v5

    .line 90
    aget v3, p3, v0

    aget v4, p1, v3

    aget v6, p3, p2

    aget v7, p1, v6

    if-le v4, v7, :cond_6

    .line 92
    aput v6, p3, v0

    .line 93
    aput v3, p3, p2

    .line 95
    :cond_6
    aget v3, p3, v5

    aget v4, p1, v3

    aget v6, p3, p2

    aget v7, p1, v6

    if-le v4, v7, :cond_7

    .line 97
    aput v6, p3, v5

    .line 98
    aput v3, p3, p2

    .line 100
    :cond_7
    aget v3, p3, v0

    aget v4, p1, v3

    aget v6, p3, v5

    aget v7, p1, v6

    if-le v4, v7, :cond_8

    .line 102
    aput v6, p3, v0

    .line 103
    aput v3, p3, v5

    .line 107
    :cond_8
    aget v3, p3, v5

    aget v3, p1, v3

    move v6, p2

    move v4, v5

    :cond_9
    :goto_5
    add-int/lit8 v4, v4, 0x1

    .line 111
    aget v7, p3, v4

    aget v7, p1, v7

    if-lt v7, v3, :cond_9

    :cond_a
    add-int/2addr v6, v1

    .line 114
    aget v7, p3, v6

    aget v8, p1, v7

    if-gt v8, v3, :cond_a

    if-ge v6, v4, :cond_d

    .line 120
    aget v3, p3, v5

    .line 121
    aput v7, p3, v5

    .line 122
    aput v3, p3, v6

    add-int/lit8 v2, v2, 0x2

    .line 125
    iget v3, p0, Lorg/ejml/ops/QuickSort_S32;->NSTACK:I

    if-ge v2, v3, :cond_c

    sub-int v3, p2, v4

    add-int/lit8 v3, v3, 0x1

    sub-int v5, v6, v0

    if-lt v3, v5, :cond_b

    .line 128
    iget-object v3, p0, Lorg/ejml/ops/QuickSort_S32;->istack:[I

    aput p2, v3, v2

    add-int/lit8 p2, v2, -0x1

    .line 129
    aput v4, v3, p2

    add-int/lit8 p2, v6, -0x1

    goto/16 :goto_1

    .line 132
    :cond_b
    iget-object v3, p0, Lorg/ejml/ops/QuickSort_S32;->istack:[I

    add-int/lit8 v6, v6, -0x1

    aput v6, v3, v2

    add-int/lit8 v5, v2, -0x1

    .line 133
    aput v0, v3, v5

    move v0, v4

    goto/16 :goto_1

    .line 126
    :cond_c
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "NSTACK too small"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 116
    :cond_d
    aget v8, p3, v4

    .line 117
    aput v7, p3, v4

    .line 118
    aput v8, p3, v6

    goto :goto_5
.end method
