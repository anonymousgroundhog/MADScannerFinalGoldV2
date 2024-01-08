.class public Lorg/ejml/ops/SortCoupledArray_F64;
.super Ljava/lang/Object;
.source "SortCoupledArray_F64.java"


# instance fields
.field copyA:[I

.field copyB:[D

.field quicksort:Lorg/ejml/ops/QuickSort_S32;

.field tmp:[I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    new-array v1, v0, [I

    .line 26
    iput-object v1, p0, Lorg/ejml/ops/SortCoupledArray_F64;->tmp:[I

    new-array v1, v0, [I

    .line 28
    iput-object v1, p0, Lorg/ejml/ops/SortCoupledArray_F64;->copyA:[I

    new-array v0, v0, [D

    .line 29
    iput-object v0, p0, Lorg/ejml/ops/SortCoupledArray_F64;->copyB:[D

    .line 31
    new-instance v0, Lorg/ejml/ops/QuickSort_S32;

    invoke-direct {v0}, Lorg/ejml/ops/QuickSort_S32;-><init>()V

    iput-object v0, p0, Lorg/ejml/ops/SortCoupledArray_F64;->quicksort:Lorg/ejml/ops/QuickSort_S32;

    return-void
.end method

.method private quick(II[I[D)V
    .locals 5

    const/4 v0, 0x1

    if-gt p2, v0, :cond_0

    return-void

    .line 47
    :cond_0
    iget-object v1, p0, Lorg/ejml/ops/SortCoupledArray_F64;->tmp:[I

    array-length v1, v1

    if-ge v1, p2, :cond_1

    mul-int/lit8 v1, p2, 0x2

    add-int/2addr v1, v0

    .line 49
    new-array v0, v1, [I

    iput-object v0, p0, Lorg/ejml/ops/SortCoupledArray_F64;->tmp:[I

    .line 50
    new-array v0, v1, [I

    iput-object v0, p0, Lorg/ejml/ops/SortCoupledArray_F64;->copyA:[I

    .line 51
    new-array v0, v1, [D

    iput-object v0, p0, Lorg/ejml/ops/SortCoupledArray_F64;->copyB:[D

    .line 54
    :cond_1
    iget-object v0, p0, Lorg/ejml/ops/SortCoupledArray_F64;->copyA:[I

    const/4 v1, 0x0

    invoke-static {p3, p1, v0, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 55
    iget-object v0, p0, Lorg/ejml/ops/SortCoupledArray_F64;->copyB:[D

    invoke-static {p4, p1, v0, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 v0, 0x32

    if-le p2, v0, :cond_2

    .line 58
    iget-object v0, p0, Lorg/ejml/ops/SortCoupledArray_F64;->quicksort:Lorg/ejml/ops/QuickSort_S32;

    iget-object v2, p0, Lorg/ejml/ops/SortCoupledArray_F64;->copyA:[I

    iget-object v3, p0, Lorg/ejml/ops/SortCoupledArray_F64;->tmp:[I

    invoke-virtual {v0, v2, p2, v3}, Lorg/ejml/ops/QuickSort_S32;->sort([II[I)V

    goto :goto_0

    .line 60
    :cond_2
    iget-object v0, p0, Lorg/ejml/ops/SortCoupledArray_F64;->copyA:[I

    iget-object v2, p0, Lorg/ejml/ops/SortCoupledArray_F64;->tmp:[I

    invoke-static {v0, v1, p2, v2}, Lorg/ejml/ops/SortCoupledArray_F64;->shellSort([III[I)V

    :goto_0
    if-ge v1, p2, :cond_3

    add-int v0, p1, v1

    .line 63
    iget-object v2, p0, Lorg/ejml/ops/SortCoupledArray_F64;->copyA:[I

    iget-object v3, p0, Lorg/ejml/ops/SortCoupledArray_F64;->tmp:[I

    aget v4, v3, v1

    aget v2, v2, v4

    aput v2, p3, v0

    .line 64
    iget-object v2, p0, Lorg/ejml/ops/SortCoupledArray_F64;->copyB:[D

    aget v3, v3, v1

    aget-wide v2, v2, v3

    aput-wide v2, p4, v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public static shellSort([III[I)V
    .locals 8

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_0

    add-int v1, p1, v0

    .line 71
    aput v1, p3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    move v0, p1

    :cond_1
    mul-int/lit8 v0, v0, 0x3

    add-int/2addr v0, p1

    if-le v0, p2, :cond_1

    .line 84
    :cond_2
    div-int/lit8 v0, v0, 0x3

    move v1, v0

    :goto_1
    if-ge v1, p2, :cond_5

    .line 87
    aget v2, p3, v1

    aget v3, p0, v2

    move v4, v1

    :cond_3
    sub-int v5, v4, v0

    .line 90
    aget v6, p3, v5

    aget v7, p0, v6

    if-le v7, v3, :cond_4

    .line 91
    aput v6, p3, v4

    move v4, v5

    if-ge v5, v0, :cond_3

    .line 95
    :cond_4
    aput v2, p3, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_5
    if-gt v0, p1, :cond_2

    return-void
.end method


# virtual methods
.method public quick([II[I[D)V
    .locals 3

    const/4 v0, 0x1

    :goto_0
    if-ge v0, p2, :cond_0

    add-int/lit8 v1, v0, -0x1

    .line 35
    aget v1, p1, v1

    .line 36
    aget v2, p1, v0

    sub-int/2addr v2, v1

    .line 38
    invoke-direct {p0, v1, v2, p3, p4}, Lorg/ejml/ops/SortCoupledArray_F64;->quick(II[I[D)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
