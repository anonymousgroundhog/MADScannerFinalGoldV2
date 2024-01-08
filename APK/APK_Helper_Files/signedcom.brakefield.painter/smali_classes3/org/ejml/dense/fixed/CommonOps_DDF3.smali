.class public Lorg/ejml/dense/fixed/CommonOps_DDF3;
.super Ljava/lang/Object;
.source "CommonOps_DDF3.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static add(Lorg/ejml/data/DMatrix3;Lorg/ejml/data/DMatrix3;Lorg/ejml/data/DMatrix3;)V
    .locals 4

    .line 79
    iget-wide v0, p0, Lorg/ejml/data/DMatrix3;->a1:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix3;->a1:D

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix3;->a1:D

    .line 80
    iget-wide v0, p0, Lorg/ejml/data/DMatrix3;->a2:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix3;->a2:D

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix3;->a2:D

    .line 81
    iget-wide v0, p0, Lorg/ejml/data/DMatrix3;->a3:D

    iget-wide p0, p1, Lorg/ejml/data/DMatrix3;->a3:D

    add-double/2addr v0, p0

    iput-wide v0, p2, Lorg/ejml/data/DMatrix3;->a3:D

    return-void
.end method

.method public static add(Lorg/ejml/data/DMatrix3x3;Lorg/ejml/data/DMatrix3x3;Lorg/ejml/data/DMatrix3x3;)V
    .locals 4

    .line 52
    iget-wide v0, p0, Lorg/ejml/data/DMatrix3x3;->a11:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix3x3;->a11:D

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix3x3;->a11:D

    .line 53
    iget-wide v0, p0, Lorg/ejml/data/DMatrix3x3;->a12:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix3x3;->a12:D

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix3x3;->a12:D

    .line 54
    iget-wide v0, p0, Lorg/ejml/data/DMatrix3x3;->a13:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix3x3;->a13:D

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix3x3;->a13:D

    .line 55
    iget-wide v0, p0, Lorg/ejml/data/DMatrix3x3;->a21:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix3x3;->a21:D

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix3x3;->a21:D

    .line 56
    iget-wide v0, p0, Lorg/ejml/data/DMatrix3x3;->a22:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix3x3;->a22:D

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix3x3;->a22:D

    .line 57
    iget-wide v0, p0, Lorg/ejml/data/DMatrix3x3;->a23:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix3x3;->a23:D

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix3x3;->a23:D

    .line 58
    iget-wide v0, p0, Lorg/ejml/data/DMatrix3x3;->a31:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix3x3;->a31:D

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix3x3;->a31:D

    .line 59
    iget-wide v0, p0, Lorg/ejml/data/DMatrix3x3;->a32:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix3x3;->a32:D

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix3x3;->a32:D

    .line 60
    iget-wide v0, p0, Lorg/ejml/data/DMatrix3x3;->a33:D

    iget-wide p0, p1, Lorg/ejml/data/DMatrix3x3;->a33:D

    add-double/2addr v0, p0

    iput-wide v0, p2, Lorg/ejml/data/DMatrix3x3;->a33:D

    return-void
.end method

.method public static addEquals(Lorg/ejml/data/DMatrix3;Lorg/ejml/data/DMatrix3;)V
    .locals 4

    .line 117
    iget-wide v0, p0, Lorg/ejml/data/DMatrix3;->a1:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix3;->a1:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix3;->a1:D

    .line 118
    iget-wide v0, p0, Lorg/ejml/data/DMatrix3;->a2:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix3;->a2:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix3;->a2:D

    .line 119
    iget-wide v0, p0, Lorg/ejml/data/DMatrix3;->a3:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix3;->a3:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix3;->a3:D

    return-void
.end method

.method public static addEquals(Lorg/ejml/data/DMatrix3x3;Lorg/ejml/data/DMatrix3x3;)V
    .locals 4

    .line 95
    iget-wide v0, p0, Lorg/ejml/data/DMatrix3x3;->a11:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix3x3;->a11:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix3x3;->a11:D

    .line 96
    iget-wide v0, p0, Lorg/ejml/data/DMatrix3x3;->a12:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix3x3;->a12:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix3x3;->a12:D

    .line 97
    iget-wide v0, p0, Lorg/ejml/data/DMatrix3x3;->a13:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix3x3;->a13:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix3x3;->a13:D

    .line 98
    iget-wide v0, p0, Lorg/ejml/data/DMatrix3x3;->a21:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix3x3;->a21:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix3x3;->a21:D

    .line 99
    iget-wide v0, p0, Lorg/ejml/data/DMatrix3x3;->a22:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix3x3;->a22:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix3x3;->a22:D

    .line 100
    iget-wide v0, p0, Lorg/ejml/data/DMatrix3x3;->a23:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix3x3;->a23:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix3x3;->a23:D

    .line 101
    iget-wide v0, p0, Lorg/ejml/data/DMatrix3x3;->a31:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix3x3;->a31:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix3x3;->a31:D

    .line 102
    iget-wide v0, p0, Lorg/ejml/data/DMatrix3x3;->a32:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix3x3;->a32:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix3x3;->a32:D

    .line 103
    iget-wide v0, p0, Lorg/ejml/data/DMatrix3x3;->a33:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix3x3;->a33:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix3x3;->a33:D

    return-void
.end method

.method public static changeSign(Lorg/ejml/data/DMatrix3;)V
    .locals 2

    .line 1343
    iget-wide v0, p0, Lorg/ejml/data/DMatrix3;->a1:D

    neg-double v0, v0

    iput-wide v0, p0, Lorg/ejml/data/DMatrix3;->a1:D

    .line 1344
    iget-wide v0, p0, Lorg/ejml/data/DMatrix3;->a2:D

    neg-double v0, v0

    iput-wide v0, p0, Lorg/ejml/data/DMatrix3;->a2:D

    .line 1345
    iget-wide v0, p0, Lorg/ejml/data/DMatrix3;->a3:D

    neg-double v0, v0

    iput-wide v0, p0, Lorg/ejml/data/DMatrix3;->a3:D

    return-void
.end method

.method public static changeSign(Lorg/ejml/data/DMatrix3x3;)V
    .locals 2

    .line 1327
    iget-wide v0, p0, Lorg/ejml/data/DMatrix3x3;->a11:D

    neg-double v0, v0

    iput-wide v0, p0, Lorg/ejml/data/DMatrix3x3;->a11:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix3x3;->a12:D

    neg-double v0, v0

    iput-wide v0, p0, Lorg/ejml/data/DMatrix3x3;->a12:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix3x3;->a13:D

    neg-double v0, v0

    iput-wide v0, p0, Lorg/ejml/data/DMatrix3x3;->a13:D

    .line 1328
    iget-wide v0, p0, Lorg/ejml/data/DMatrix3x3;->a21:D

    neg-double v0, v0

    iput-wide v0, p0, Lorg/ejml/data/DMatrix3x3;->a21:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix3x3;->a22:D

    neg-double v0, v0

    iput-wide v0, p0, Lorg/ejml/data/DMatrix3x3;->a22:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix3x3;->a23:D

    neg-double v0, v0

    iput-wide v0, p0, Lorg/ejml/data/DMatrix3x3;->a23:D

    .line 1329
    iget-wide v0, p0, Lorg/ejml/data/DMatrix3x3;->a31:D

    neg-double v0, v0

    iput-wide v0, p0, Lorg/ejml/data/DMatrix3x3;->a31:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix3x3;->a32:D

    neg-double v0, v0

    iput-wide v0, p0, Lorg/ejml/data/DMatrix3x3;->a32:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix3x3;->a33:D

    neg-double v0, v0

    iput-wide v0, p0, Lorg/ejml/data/DMatrix3x3;->a33:D

    return-void
.end method

.method public static cholL(Lorg/ejml/data/DMatrix3x3;)Z
    .locals 8

    .line 834
    iget-wide v0, p0, Lorg/ejml/data/DMatrix3x3;->a11:D

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    iput-wide v0, p0, Lorg/ejml/data/DMatrix3x3;->a11:D

    const-wide/16 v0, 0x0

    .line 835
    iput-wide v0, p0, Lorg/ejml/data/DMatrix3x3;->a12:D

    .line 836
    iput-wide v0, p0, Lorg/ejml/data/DMatrix3x3;->a13:D

    .line 837
    iget-wide v2, p0, Lorg/ejml/data/DMatrix3x3;->a21:D

    iget-wide v4, p0, Lorg/ejml/data/DMatrix3x3;->a11:D

    div-double/2addr v2, v4

    iput-wide v2, p0, Lorg/ejml/data/DMatrix3x3;->a21:D

    .line 838
    iget-wide v2, p0, Lorg/ejml/data/DMatrix3x3;->a22:D

    iget-wide v4, p0, Lorg/ejml/data/DMatrix3x3;->a21:D

    iget-wide v6, p0, Lorg/ejml/data/DMatrix3x3;->a21:D

    mul-double/2addr v4, v6

    sub-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    iput-wide v2, p0, Lorg/ejml/data/DMatrix3x3;->a22:D

    .line 839
    iput-wide v0, p0, Lorg/ejml/data/DMatrix3x3;->a23:D

    .line 840
    iget-wide v0, p0, Lorg/ejml/data/DMatrix3x3;->a31:D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix3x3;->a11:D

    div-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix3x3;->a31:D

    .line 841
    iget-wide v0, p0, Lorg/ejml/data/DMatrix3x3;->a32:D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix3x3;->a31:D

    iget-wide v4, p0, Lorg/ejml/data/DMatrix3x3;->a21:D

    mul-double/2addr v2, v4

    sub-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix3x3;->a22:D

    div-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix3x3;->a32:D

    .line 842
    iget-wide v0, p0, Lorg/ejml/data/DMatrix3x3;->a33:D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix3x3;->a31:D

    iget-wide v4, p0, Lorg/ejml/data/DMatrix3x3;->a31:D

    mul-double/2addr v2, v4

    sub-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix3x3;->a32:D

    iget-wide v4, p0, Lorg/ejml/data/DMatrix3x3;->a32:D

    mul-double/2addr v2, v4

    sub-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    iput-wide v0, p0, Lorg/ejml/data/DMatrix3x3;->a33:D

    .line 843
    iget-wide v0, p0, Lorg/ejml/data/DMatrix3x3;->a33:D

    invoke-static {v0, v1}, Lorg/ejml/UtilEjml;->isUncountable(D)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static cholU(Lorg/ejml/data/DMatrix3x3;)Z
    .locals 8

    .line 854
    iget-wide v0, p0, Lorg/ejml/data/DMatrix3x3;->a11:D

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    iput-wide v0, p0, Lorg/ejml/data/DMatrix3x3;->a11:D

    const-wide/16 v0, 0x0

    .line 855
    iput-wide v0, p0, Lorg/ejml/data/DMatrix3x3;->a21:D

    .line 856
    iput-wide v0, p0, Lorg/ejml/data/DMatrix3x3;->a31:D

    .line 857
    iget-wide v2, p0, Lorg/ejml/data/DMatrix3x3;->a12:D

    iget-wide v4, p0, Lorg/ejml/data/DMatrix3x3;->a11:D

    div-double/2addr v2, v4

    iput-wide v2, p0, Lorg/ejml/data/DMatrix3x3;->a12:D

    .line 858
    iget-wide v2, p0, Lorg/ejml/data/DMatrix3x3;->a22:D

    iget-wide v4, p0, Lorg/ejml/data/DMatrix3x3;->a12:D

    iget-wide v6, p0, Lorg/ejml/data/DMatrix3x3;->a12:D

    mul-double/2addr v4, v6

    sub-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    iput-wide v2, p0, Lorg/ejml/data/DMatrix3x3;->a22:D

    .line 859
    iput-wide v0, p0, Lorg/ejml/data/DMatrix3x3;->a32:D

    .line 860
    iget-wide v0, p0, Lorg/ejml/data/DMatrix3x3;->a13:D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix3x3;->a11:D

    div-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix3x3;->a13:D

    .line 861
    iget-wide v0, p0, Lorg/ejml/data/DMatrix3x3;->a23:D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix3x3;->a12:D

    iget-wide v4, p0, Lorg/ejml/data/DMatrix3x3;->a13:D

    mul-double/2addr v2, v4

    sub-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix3x3;->a22:D

    div-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix3x3;->a23:D

    .line 862
    iget-wide v0, p0, Lorg/ejml/data/DMatrix3x3;->a33:D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix3x3;->a13:D

    iget-wide v4, p0, Lorg/ejml/data/DMatrix3x3;->a13:D

    mul-double/2addr v2, v4

    sub-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix3x3;->a23:D

    iget-wide v4, p0, Lorg/ejml/data/DMatrix3x3;->a23:D

    mul-double/2addr v2, v4

    sub-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    iput-wide v0, p0, Lorg/ejml/data/DMatrix3x3;->a33:D

    .line 863
    iget-wide v0, p0, Lorg/ejml/data/DMatrix3x3;->a33:D

    invoke-static {v0, v1}, Lorg/ejml/UtilEjml;->isUncountable(D)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static det(Lorg/ejml/data/DMatrix3x3;)D
    .locals 12

    .line 819
    iget-wide v0, p0, Lorg/ejml/data/DMatrix3x3;->a11:D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix3x3;->a22:D

    iget-wide v4, p0, Lorg/ejml/data/DMatrix3x3;->a33:D

    mul-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix3x3;->a23:D

    iget-wide v6, p0, Lorg/ejml/data/DMatrix3x3;->a32:D

    mul-double/2addr v4, v6

    sub-double/2addr v2, v4

    mul-double/2addr v0, v2

    .line 820
    iget-wide v2, p0, Lorg/ejml/data/DMatrix3x3;->a12:D

    iget-wide v4, p0, Lorg/ejml/data/DMatrix3x3;->a21:D

    iget-wide v6, p0, Lorg/ejml/data/DMatrix3x3;->a33:D

    mul-double/2addr v4, v6

    iget-wide v6, p0, Lorg/ejml/data/DMatrix3x3;->a23:D

    iget-wide v8, p0, Lorg/ejml/data/DMatrix3x3;->a31:D

    mul-double/2addr v6, v8

    sub-double/2addr v4, v6

    mul-double/2addr v2, v4

    .line 821
    iget-wide v4, p0, Lorg/ejml/data/DMatrix3x3;->a13:D

    iget-wide v6, p0, Lorg/ejml/data/DMatrix3x3;->a21:D

    iget-wide v8, p0, Lorg/ejml/data/DMatrix3x3;->a32:D

    mul-double/2addr v6, v8

    iget-wide v8, p0, Lorg/ejml/data/DMatrix3x3;->a31:D

    iget-wide v10, p0, Lorg/ejml/data/DMatrix3x3;->a22:D

    mul-double/2addr v8, v10

    sub-double/2addr v6, v8

    mul-double/2addr v4, v6

    sub-double/2addr v0, v2

    add-double/2addr v0, v4

    return-wide v0
.end method

.method public static diag(Lorg/ejml/data/DMatrix3x3;Lorg/ejml/data/DMatrix3;)V
    .locals 2

    .line 893
    iget-wide v0, p0, Lorg/ejml/data/DMatrix3x3;->a11:D

    iput-wide v0, p1, Lorg/ejml/data/DMatrix3;->a1:D

    .line 894
    iget-wide v0, p0, Lorg/ejml/data/DMatrix3x3;->a22:D

    iput-wide v0, p1, Lorg/ejml/data/DMatrix3;->a2:D

    .line 895
    iget-wide v0, p0, Lorg/ejml/data/DMatrix3x3;->a33:D

    iput-wide v0, p1, Lorg/ejml/data/DMatrix3;->a3:D

    return-void
.end method

.method public static divide(Lorg/ejml/data/DMatrix3;D)V
    .locals 2

    .line 1277
    iget-wide v0, p0, Lorg/ejml/data/DMatrix3;->a1:D

    div-double/2addr v0, p1

    iput-wide v0, p0, Lorg/ejml/data/DMatrix3;->a1:D

    .line 1278
    iget-wide v0, p0, Lorg/ejml/data/DMatrix3;->a2:D

    div-double/2addr v0, p1

    iput-wide v0, p0, Lorg/ejml/data/DMatrix3;->a2:D

    .line 1279
    iget-wide v0, p0, Lorg/ejml/data/DMatrix3;->a3:D

    div-double/2addr v0, p1

    iput-wide v0, p0, Lorg/ejml/data/DMatrix3;->a3:D

    return-void
.end method

.method public static divide(Lorg/ejml/data/DMatrix3;DLorg/ejml/data/DMatrix3;)V
    .locals 2

    .line 1311
    iget-wide v0, p0, Lorg/ejml/data/DMatrix3;->a1:D

    div-double/2addr v0, p1

    iput-wide v0, p3, Lorg/ejml/data/DMatrix3;->a1:D

    .line 1312
    iget-wide v0, p0, Lorg/ejml/data/DMatrix3;->a2:D

    div-double/2addr v0, p1

    iput-wide v0, p3, Lorg/ejml/data/DMatrix3;->a2:D

    .line 1313
    iget-wide v0, p0, Lorg/ejml/data/DMatrix3;->a3:D

    div-double/2addr v0, p1

    iput-wide v0, p3, Lorg/ejml/data/DMatrix3;->a3:D

    return-void
.end method

.method public static divide(Lorg/ejml/data/DMatrix3x3;D)V
    .locals 2

    .line 1261
    iget-wide v0, p0, Lorg/ejml/data/DMatrix3x3;->a11:D

    div-double/2addr v0, p1

    iput-wide v0, p0, Lorg/ejml/data/DMatrix3x3;->a11:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix3x3;->a12:D

    div-double/2addr v0, p1

    iput-wide v0, p0, Lorg/ejml/data/DMatrix3x3;->a12:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix3x3;->a13:D

    div-double/2addr v0, p1

    iput-wide v0, p0, Lorg/ejml/data/DMatrix3x3;->a13:D

    .line 1262
    iget-wide v0, p0, Lorg/ejml/data/DMatrix3x3;->a21:D

    div-double/2addr v0, p1

    iput-wide v0, p0, Lorg/ejml/data/DMatrix3x3;->a21:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix3x3;->a22:D

    div-double/2addr v0, p1

    iput-wide v0, p0, Lorg/ejml/data/DMatrix3x3;->a22:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix3x3;->a23:D

    div-double/2addr v0, p1

    iput-wide v0, p0, Lorg/ejml/data/DMatrix3x3;->a23:D

    .line 1263
    iget-wide v0, p0, Lorg/ejml/data/DMatrix3x3;->a31:D

    div-double/2addr v0, p1

    iput-wide v0, p0, Lorg/ejml/data/DMatrix3x3;->a31:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix3x3;->a32:D

    div-double/2addr v0, p1

    iput-wide v0, p0, Lorg/ejml/data/DMatrix3x3;->a32:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix3x3;->a33:D

    div-double/2addr v0, p1

    iput-wide v0, p0, Lorg/ejml/data/DMatrix3x3;->a33:D

    return-void
.end method

.method public static divide(Lorg/ejml/data/DMatrix3x3;DLorg/ejml/data/DMatrix3x3;)V
    .locals 2

    .line 1294
    iget-wide v0, p0, Lorg/ejml/data/DMatrix3x3;->a11:D

    div-double/2addr v0, p1

    iput-wide v0, p3, Lorg/ejml/data/DMatrix3x3;->a11:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix3x3;->a12:D

    div-double/2addr v0, p1

    iput-wide v0, p3, Lorg/ejml/data/DMatrix3x3;->a12:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix3x3;->a13:D

    div-double/2addr v0, p1

    iput-wide v0, p3, Lorg/ejml/data/DMatrix3x3;->a13:D

    .line 1295
    iget-wide v0, p0, Lorg/ejml/data/DMatrix3x3;->a21:D

    div-double/2addr v0, p1

    iput-wide v0, p3, Lorg/ejml/data/DMatrix3x3;->a21:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix3x3;->a22:D

    div-double/2addr v0, p1

    iput-wide v0, p3, Lorg/ejml/data/DMatrix3x3;->a22:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix3x3;->a23:D

    div-double/2addr v0, p1

    iput-wide v0, p3, Lorg/ejml/data/DMatrix3x3;->a23:D

    .line 1296
    iget-wide v0, p0, Lorg/ejml/data/DMatrix3x3;->a31:D

    div-double/2addr v0, p1

    iput-wide v0, p3, Lorg/ejml/data/DMatrix3x3;->a31:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix3x3;->a32:D

    div-double/2addr v0, p1

    iput-wide v0, p3, Lorg/ejml/data/DMatrix3x3;->a32:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix3x3;->a33:D

    div-double/2addr v0, p1

    iput-wide v0, p3, Lorg/ejml/data/DMatrix3x3;->a33:D

    return-void
.end method

.method public static dot(Lorg/ejml/data/DMatrix3;Lorg/ejml/data/DMatrix3;)D
    .locals 6

    .line 746
    iget-wide v0, p0, Lorg/ejml/data/DMatrix3;->a1:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix3;->a1:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix3;->a2:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix3;->a2:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix3;->a3:D

    iget-wide p0, p1, Lorg/ejml/data/DMatrix3;->a3:D

    mul-double/2addr v2, p0

    add-double/2addr v0, v2

    return-wide v0
.end method

.method public static elementDiv(Lorg/ejml/data/DMatrix3;Lorg/ejml/data/DMatrix3;)V
    .locals 4

    .line 1149
    iget-wide v0, p0, Lorg/ejml/data/DMatrix3;->a1:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix3;->a1:D

    div-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix3;->a1:D

    .line 1150
    iget-wide v0, p0, Lorg/ejml/data/DMatrix3;->a2:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix3;->a2:D

    div-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix3;->a2:D

    .line 1151
    iget-wide v0, p0, Lorg/ejml/data/DMatrix3;->a3:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix3;->a3:D

    div-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix3;->a3:D

    return-void
.end method

.method public static elementDiv(Lorg/ejml/data/DMatrix3;Lorg/ejml/data/DMatrix3;Lorg/ejml/data/DMatrix3;)V
    .locals 4

    .line 1179
    iget-wide v0, p0, Lorg/ejml/data/DMatrix3;->a1:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix3;->a1:D

    div-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix3;->a1:D

    .line 1180
    iget-wide v0, p0, Lorg/ejml/data/DMatrix3;->a2:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix3;->a2:D

    div-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix3;->a2:D

    .line 1181
    iget-wide v0, p0, Lorg/ejml/data/DMatrix3;->a3:D

    iget-wide p0, p1, Lorg/ejml/data/DMatrix3;->a3:D

    div-double/2addr v0, p0

    iput-wide v0, p2, Lorg/ejml/data/DMatrix3;->a3:D

    return-void
.end method

.method public static elementDiv(Lorg/ejml/data/DMatrix3x3;Lorg/ejml/data/DMatrix3x3;)V
    .locals 4

    .line 1135
    iget-wide v0, p0, Lorg/ejml/data/DMatrix3x3;->a11:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix3x3;->a11:D

    div-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix3x3;->a11:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix3x3;->a12:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix3x3;->a12:D

    div-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix3x3;->a12:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix3x3;->a13:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix3x3;->a13:D

    div-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix3x3;->a13:D

    .line 1136
    iget-wide v0, p0, Lorg/ejml/data/DMatrix3x3;->a21:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix3x3;->a21:D

    div-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix3x3;->a21:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix3x3;->a22:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix3x3;->a22:D

    div-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix3x3;->a22:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix3x3;->a23:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix3x3;->a23:D

    div-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix3x3;->a23:D

    .line 1137
    iget-wide v0, p0, Lorg/ejml/data/DMatrix3x3;->a31:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix3x3;->a31:D

    div-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix3x3;->a31:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix3x3;->a32:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix3x3;->a32:D

    div-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix3x3;->a32:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix3x3;->a33:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix3x3;->a33:D

    div-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix3x3;->a33:D

    return-void
.end method

.method public static elementDiv(Lorg/ejml/data/DMatrix3x3;Lorg/ejml/data/DMatrix3x3;Lorg/ejml/data/DMatrix3x3;)V
    .locals 4

    .line 1164
    iget-wide v0, p0, Lorg/ejml/data/DMatrix3x3;->a11:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix3x3;->a11:D

    div-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix3x3;->a11:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix3x3;->a12:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix3x3;->a12:D

    div-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix3x3;->a12:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix3x3;->a13:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix3x3;->a13:D

    div-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix3x3;->a13:D

    .line 1165
    iget-wide v0, p0, Lorg/ejml/data/DMatrix3x3;->a21:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix3x3;->a21:D

    div-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix3x3;->a21:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix3x3;->a22:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix3x3;->a22:D

    div-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix3x3;->a22:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix3x3;->a23:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix3x3;->a23:D

    div-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix3x3;->a23:D

    .line 1166
    iget-wide v0, p0, Lorg/ejml/data/DMatrix3x3;->a31:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix3x3;->a31:D

    div-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix3x3;->a31:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix3x3;->a32:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix3x3;->a32:D

    div-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix3x3;->a32:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix3x3;->a33:D

    iget-wide p0, p1, Lorg/ejml/data/DMatrix3x3;->a33:D

    div-double/2addr v0, p0

    iput-wide v0, p2, Lorg/ejml/data/DMatrix3x3;->a33:D

    return-void
.end method

.method public static elementMax(Lorg/ejml/data/DMatrix3;)D
    .locals 4

    .line 933
    iget-wide v0, p0, Lorg/ejml/data/DMatrix3;->a1:D

    .line 934
    iget-wide v2, p0, Lorg/ejml/data/DMatrix3;->a2:D

    cmpl-double v2, v2, v0

    if-lez v2, :cond_0

    iget-wide v0, p0, Lorg/ejml/data/DMatrix3;->a2:D

    .line 935
    :cond_0
    iget-wide v2, p0, Lorg/ejml/data/DMatrix3;->a3:D

    cmpl-double v2, v2, v0

    if-lez v2, :cond_1

    iget-wide v0, p0, Lorg/ejml/data/DMatrix3;->a3:D

    :cond_1
    return-wide v0
.end method

.method public static elementMax(Lorg/ejml/data/DMatrix3x3;)D
    .locals 4

    .line 909
    iget-wide v0, p0, Lorg/ejml/data/DMatrix3x3;->a11:D

    .line 910
    iget-wide v2, p0, Lorg/ejml/data/DMatrix3x3;->a12:D

    cmpl-double v2, v2, v0

    if-lez v2, :cond_0

    iget-wide v0, p0, Lorg/ejml/data/DMatrix3x3;->a12:D

    .line 911
    :cond_0
    iget-wide v2, p0, Lorg/ejml/data/DMatrix3x3;->a13:D

    cmpl-double v2, v2, v0

    if-lez v2, :cond_1

    iget-wide v0, p0, Lorg/ejml/data/DMatrix3x3;->a13:D

    .line 912
    :cond_1
    iget-wide v2, p0, Lorg/ejml/data/DMatrix3x3;->a21:D

    cmpl-double v2, v2, v0

    if-lez v2, :cond_2

    iget-wide v0, p0, Lorg/ejml/data/DMatrix3x3;->a21:D

    .line 913
    :cond_2
    iget-wide v2, p0, Lorg/ejml/data/DMatrix3x3;->a22:D

    cmpl-double v2, v2, v0

    if-lez v2, :cond_3

    iget-wide v0, p0, Lorg/ejml/data/DMatrix3x3;->a22:D

    .line 914
    :cond_3
    iget-wide v2, p0, Lorg/ejml/data/DMatrix3x3;->a23:D

    cmpl-double v2, v2, v0

    if-lez v2, :cond_4

    iget-wide v0, p0, Lorg/ejml/data/DMatrix3x3;->a23:D

    .line 915
    :cond_4
    iget-wide v2, p0, Lorg/ejml/data/DMatrix3x3;->a31:D

    cmpl-double v2, v2, v0

    if-lez v2, :cond_5

    iget-wide v0, p0, Lorg/ejml/data/DMatrix3x3;->a31:D

    .line 916
    :cond_5
    iget-wide v2, p0, Lorg/ejml/data/DMatrix3x3;->a32:D

    cmpl-double v2, v2, v0

    if-lez v2, :cond_6

    iget-wide v0, p0, Lorg/ejml/data/DMatrix3x3;->a32:D

    .line 917
    :cond_6
    iget-wide v2, p0, Lorg/ejml/data/DMatrix3x3;->a33:D

    cmpl-double v2, v2, v0

    if-lez v2, :cond_7

    iget-wide v0, p0, Lorg/ejml/data/DMatrix3x3;->a33:D

    :cond_7
    return-wide v0
.end method

.method public static elementMaxAbs(Lorg/ejml/data/DMatrix3;)D
    .locals 5

    .line 975
    iget-wide v0, p0, Lorg/ejml/data/DMatrix3;->a1:D

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    .line 976
    iget-wide v2, p0, Lorg/ejml/data/DMatrix3;->a2:D

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    cmpl-double v4, v2, v0

    if-lez v4, :cond_0

    move-wide v0, v2

    .line 977
    :cond_0
    iget-wide v2, p0, Lorg/ejml/data/DMatrix3;->a2:D

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    cmpl-double v4, v2, v0

    if-lez v4, :cond_1

    move-wide v0, v2

    .line 978
    :cond_1
    iget-wide v2, p0, Lorg/ejml/data/DMatrix3;->a3:D

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    cmpl-double p0, v2, v0

    if-lez p0, :cond_2

    move-wide v0, v2

    :cond_2
    return-wide v0
.end method

.method public static elementMaxAbs(Lorg/ejml/data/DMatrix3x3;)D
    .locals 5

    .line 951
    iget-wide v0, p0, Lorg/ejml/data/DMatrix3x3;->a11:D

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    .line 952
    iget-wide v2, p0, Lorg/ejml/data/DMatrix3x3;->a12:D

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    cmpl-double v4, v2, v0

    if-lez v4, :cond_0

    move-wide v0, v2

    .line 953
    :cond_0
    iget-wide v2, p0, Lorg/ejml/data/DMatrix3x3;->a13:D

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    cmpl-double v4, v2, v0

    if-lez v4, :cond_1

    move-wide v0, v2

    .line 954
    :cond_1
    iget-wide v2, p0, Lorg/ejml/data/DMatrix3x3;->a21:D

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    cmpl-double v4, v2, v0

    if-lez v4, :cond_2

    move-wide v0, v2

    .line 955
    :cond_2
    iget-wide v2, p0, Lorg/ejml/data/DMatrix3x3;->a22:D

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    cmpl-double v4, v2, v0

    if-lez v4, :cond_3

    move-wide v0, v2

    .line 956
    :cond_3
    iget-wide v2, p0, Lorg/ejml/data/DMatrix3x3;->a23:D

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    cmpl-double v4, v2, v0

    if-lez v4, :cond_4

    move-wide v0, v2

    .line 957
    :cond_4
    iget-wide v2, p0, Lorg/ejml/data/DMatrix3x3;->a31:D

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    cmpl-double v4, v2, v0

    if-lez v4, :cond_5

    move-wide v0, v2

    .line 958
    :cond_5
    iget-wide v2, p0, Lorg/ejml/data/DMatrix3x3;->a32:D

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    cmpl-double v4, v2, v0

    if-lez v4, :cond_6

    move-wide v0, v2

    .line 959
    :cond_6
    iget-wide v2, p0, Lorg/ejml/data/DMatrix3x3;->a33:D

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    cmpl-double p0, v2, v0

    if-lez p0, :cond_7

    move-wide v0, v2

    :cond_7
    return-wide v0
.end method

.method public static elementMin(Lorg/ejml/data/DMatrix3;)D
    .locals 4

    .line 1018
    iget-wide v0, p0, Lorg/ejml/data/DMatrix3;->a1:D

    .line 1019
    iget-wide v2, p0, Lorg/ejml/data/DMatrix3;->a2:D

    cmpg-double v2, v2, v0

    if-gez v2, :cond_0

    iget-wide v0, p0, Lorg/ejml/data/DMatrix3;->a2:D

    .line 1020
    :cond_0
    iget-wide v2, p0, Lorg/ejml/data/DMatrix3;->a3:D

    cmpg-double v2, v2, v0

    if-gez v2, :cond_1

    iget-wide v0, p0, Lorg/ejml/data/DMatrix3;->a3:D

    :cond_1
    return-wide v0
.end method

.method public static elementMin(Lorg/ejml/data/DMatrix3x3;)D
    .locals 4

    .line 994
    iget-wide v0, p0, Lorg/ejml/data/DMatrix3x3;->a11:D

    .line 995
    iget-wide v2, p0, Lorg/ejml/data/DMatrix3x3;->a12:D

    cmpg-double v2, v2, v0

    if-gez v2, :cond_0

    iget-wide v0, p0, Lorg/ejml/data/DMatrix3x3;->a12:D

    .line 996
    :cond_0
    iget-wide v2, p0, Lorg/ejml/data/DMatrix3x3;->a13:D

    cmpg-double v2, v2, v0

    if-gez v2, :cond_1

    iget-wide v0, p0, Lorg/ejml/data/DMatrix3x3;->a13:D

    .line 997
    :cond_1
    iget-wide v2, p0, Lorg/ejml/data/DMatrix3x3;->a21:D

    cmpg-double v2, v2, v0

    if-gez v2, :cond_2

    iget-wide v0, p0, Lorg/ejml/data/DMatrix3x3;->a21:D

    .line 998
    :cond_2
    iget-wide v2, p0, Lorg/ejml/data/DMatrix3x3;->a22:D

    cmpg-double v2, v2, v0

    if-gez v2, :cond_3

    iget-wide v0, p0, Lorg/ejml/data/DMatrix3x3;->a22:D

    .line 999
    :cond_3
    iget-wide v2, p0, Lorg/ejml/data/DMatrix3x3;->a23:D

    cmpg-double v2, v2, v0

    if-gez v2, :cond_4

    iget-wide v0, p0, Lorg/ejml/data/DMatrix3x3;->a23:D

    .line 1000
    :cond_4
    iget-wide v2, p0, Lorg/ejml/data/DMatrix3x3;->a31:D

    cmpg-double v2, v2, v0

    if-gez v2, :cond_5

    iget-wide v0, p0, Lorg/ejml/data/DMatrix3x3;->a31:D

    .line 1001
    :cond_5
    iget-wide v2, p0, Lorg/ejml/data/DMatrix3x3;->a32:D

    cmpg-double v2, v2, v0

    if-gez v2, :cond_6

    iget-wide v0, p0, Lorg/ejml/data/DMatrix3x3;->a32:D

    .line 1002
    :cond_6
    iget-wide v2, p0, Lorg/ejml/data/DMatrix3x3;->a33:D

    cmpg-double v2, v2, v0

    if-gez v2, :cond_7

    iget-wide v0, p0, Lorg/ejml/data/DMatrix3x3;->a33:D

    :cond_7
    return-wide v0
.end method

.method public static elementMinAbs(Lorg/ejml/data/DMatrix3;)D
    .locals 5

    .line 1060
    iget-wide v0, p0, Lorg/ejml/data/DMatrix3;->a1:D

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    .line 1061
    iget-wide v2, p0, Lorg/ejml/data/DMatrix3;->a1:D

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    cmpg-double v4, v2, v0

    if-gez v4, :cond_0

    move-wide v0, v2

    .line 1062
    :cond_0
    iget-wide v2, p0, Lorg/ejml/data/DMatrix3;->a2:D

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    cmpg-double v4, v2, v0

    if-gez v4, :cond_1

    move-wide v0, v2

    .line 1063
    :cond_1
    iget-wide v2, p0, Lorg/ejml/data/DMatrix3;->a3:D

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    cmpg-double p0, v2, v0

    if-gez p0, :cond_2

    move-wide v0, v2

    :cond_2
    return-wide v0
.end method

.method public static elementMinAbs(Lorg/ejml/data/DMatrix3x3;)D
    .locals 5

    .line 1036
    iget-wide v0, p0, Lorg/ejml/data/DMatrix3x3;->a11:D

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    .line 1037
    iget-wide v2, p0, Lorg/ejml/data/DMatrix3x3;->a12:D

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    cmpg-double v4, v2, v0

    if-gez v4, :cond_0

    move-wide v0, v2

    .line 1038
    :cond_0
    iget-wide v2, p0, Lorg/ejml/data/DMatrix3x3;->a13:D

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    cmpg-double v4, v2, v0

    if-gez v4, :cond_1

    move-wide v0, v2

    .line 1039
    :cond_1
    iget-wide v2, p0, Lorg/ejml/data/DMatrix3x3;->a21:D

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    cmpg-double v4, v2, v0

    if-gez v4, :cond_2

    move-wide v0, v2

    .line 1040
    :cond_2
    iget-wide v2, p0, Lorg/ejml/data/DMatrix3x3;->a22:D

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    cmpg-double v4, v2, v0

    if-gez v4, :cond_3

    move-wide v0, v2

    .line 1041
    :cond_3
    iget-wide v2, p0, Lorg/ejml/data/DMatrix3x3;->a23:D

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    cmpg-double v4, v2, v0

    if-gez v4, :cond_4

    move-wide v0, v2

    .line 1042
    :cond_4
    iget-wide v2, p0, Lorg/ejml/data/DMatrix3x3;->a31:D

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    cmpg-double v4, v2, v0

    if-gez v4, :cond_5

    move-wide v0, v2

    .line 1043
    :cond_5
    iget-wide v2, p0, Lorg/ejml/data/DMatrix3x3;->a32:D

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    cmpg-double v4, v2, v0

    if-gez v4, :cond_6

    move-wide v0, v2

    .line 1044
    :cond_6
    iget-wide v2, p0, Lorg/ejml/data/DMatrix3x3;->a33:D

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    cmpg-double p0, v2, v0

    if-gez p0, :cond_7

    move-wide v0, v2

    :cond_7
    return-wide v0
.end method

.method public static elementMult(Lorg/ejml/data/DMatrix3;Lorg/ejml/data/DMatrix3;)V
    .locals 4

    .line 1091
    iget-wide v0, p0, Lorg/ejml/data/DMatrix3;->a1:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix3;->a1:D

    mul-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix3;->a1:D

    .line 1092
    iget-wide v0, p0, Lorg/ejml/data/DMatrix3;->a2:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix3;->a2:D

    mul-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix3;->a2:D

    .line 1093
    iget-wide v0, p0, Lorg/ejml/data/DMatrix3;->a3:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix3;->a3:D

    mul-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix3;->a3:D

    return-void
.end method

.method public static elementMult(Lorg/ejml/data/DMatrix3;Lorg/ejml/data/DMatrix3;Lorg/ejml/data/DMatrix3;)V
    .locals 4

    .line 1121
    iget-wide v0, p0, Lorg/ejml/data/DMatrix3;->a1:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix3;->a1:D

    mul-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix3;->a1:D

    .line 1122
    iget-wide v0, p0, Lorg/ejml/data/DMatrix3;->a2:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix3;->a2:D

    mul-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix3;->a2:D

    .line 1123
    iget-wide v0, p0, Lorg/ejml/data/DMatrix3;->a3:D

    iget-wide p0, p1, Lorg/ejml/data/DMatrix3;->a3:D

    mul-double/2addr v0, p0

    iput-wide v0, p2, Lorg/ejml/data/DMatrix3;->a3:D

    return-void
.end method

.method public static elementMult(Lorg/ejml/data/DMatrix3x3;Lorg/ejml/data/DMatrix3x3;)V
    .locals 4

    .line 1077
    iget-wide v0, p0, Lorg/ejml/data/DMatrix3x3;->a11:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix3x3;->a11:D

    mul-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix3x3;->a11:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix3x3;->a12:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix3x3;->a12:D

    mul-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix3x3;->a12:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix3x3;->a13:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix3x3;->a13:D

    mul-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix3x3;->a13:D

    .line 1078
    iget-wide v0, p0, Lorg/ejml/data/DMatrix3x3;->a21:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix3x3;->a21:D

    mul-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix3x3;->a21:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix3x3;->a22:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix3x3;->a22:D

    mul-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix3x3;->a22:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix3x3;->a23:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix3x3;->a23:D

    mul-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix3x3;->a23:D

    .line 1079
    iget-wide v0, p0, Lorg/ejml/data/DMatrix3x3;->a31:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix3x3;->a31:D

    mul-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix3x3;->a31:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix3x3;->a32:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix3x3;->a32:D

    mul-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix3x3;->a32:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix3x3;->a33:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix3x3;->a33:D

    mul-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix3x3;->a33:D

    return-void
.end method

.method public static elementMult(Lorg/ejml/data/DMatrix3x3;Lorg/ejml/data/DMatrix3x3;Lorg/ejml/data/DMatrix3x3;)V
    .locals 4

    .line 1106
    iget-wide v0, p0, Lorg/ejml/data/DMatrix3x3;->a11:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix3x3;->a11:D

    mul-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix3x3;->a11:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix3x3;->a12:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix3x3;->a12:D

    mul-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix3x3;->a12:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix3x3;->a13:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix3x3;->a13:D

    mul-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix3x3;->a13:D

    .line 1107
    iget-wide v0, p0, Lorg/ejml/data/DMatrix3x3;->a21:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix3x3;->a21:D

    mul-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix3x3;->a21:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix3x3;->a22:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix3x3;->a22:D

    mul-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix3x3;->a22:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix3x3;->a23:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix3x3;->a23:D

    mul-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix3x3;->a23:D

    .line 1108
    iget-wide v0, p0, Lorg/ejml/data/DMatrix3x3;->a31:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix3x3;->a31:D

    mul-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix3x3;->a31:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix3x3;->a32:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix3x3;->a32:D

    mul-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix3x3;->a32:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix3x3;->a33:D

    iget-wide p0, p1, Lorg/ejml/data/DMatrix3x3;->a33:D

    mul-double/2addr v0, p0

    iput-wide v0, p2, Lorg/ejml/data/DMatrix3x3;->a33:D

    return-void
.end method

.method public static extractColumn(Lorg/ejml/data/DMatrix3x3;ILorg/ejml/data/DMatrix3;)Lorg/ejml/data/DMatrix3;
    .locals 2

    if-nez p2, :cond_0

    .line 1419
    new-instance p2, Lorg/ejml/data/DMatrix3;

    invoke-direct {p2}, Lorg/ejml/data/DMatrix3;-><init>()V

    :cond_0
    if-eqz p1, :cond_3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 1432
    iget-wide v0, p0, Lorg/ejml/data/DMatrix3x3;->a13:D

    iput-wide v0, p2, Lorg/ejml/data/DMatrix3;->a1:D

    .line 1433
    iget-wide v0, p0, Lorg/ejml/data/DMatrix3x3;->a23:D

    iput-wide v0, p2, Lorg/ejml/data/DMatrix3;->a2:D

    .line 1434
    iget-wide p0, p0, Lorg/ejml/data/DMatrix3x3;->a33:D

    iput-wide p0, p2, Lorg/ejml/data/DMatrix3;->a3:D

    goto :goto_0

    .line 1437
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Out of bounds column. column = "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1427
    :cond_2
    iget-wide v0, p0, Lorg/ejml/data/DMatrix3x3;->a12:D

    iput-wide v0, p2, Lorg/ejml/data/DMatrix3;->a1:D

    .line 1428
    iget-wide v0, p0, Lorg/ejml/data/DMatrix3x3;->a22:D

    iput-wide v0, p2, Lorg/ejml/data/DMatrix3;->a2:D

    .line 1429
    iget-wide p0, p0, Lorg/ejml/data/DMatrix3x3;->a32:D

    iput-wide p0, p2, Lorg/ejml/data/DMatrix3;->a3:D

    goto :goto_0

    .line 1422
    :cond_3
    iget-wide v0, p0, Lorg/ejml/data/DMatrix3x3;->a11:D

    iput-wide v0, p2, Lorg/ejml/data/DMatrix3;->a1:D

    .line 1423
    iget-wide v0, p0, Lorg/ejml/data/DMatrix3x3;->a21:D

    iput-wide v0, p2, Lorg/ejml/data/DMatrix3;->a2:D

    .line 1424
    iget-wide p0, p0, Lorg/ejml/data/DMatrix3x3;->a31:D

    iput-wide p0, p2, Lorg/ejml/data/DMatrix3;->a3:D

    :goto_0
    return-object p2
.end method

.method public static extractRow(Lorg/ejml/data/DMatrix3x3;ILorg/ejml/data/DMatrix3;)Lorg/ejml/data/DMatrix3;
    .locals 2

    if-nez p2, :cond_0

    .line 1388
    new-instance p2, Lorg/ejml/data/DMatrix3;

    invoke-direct {p2}, Lorg/ejml/data/DMatrix3;-><init>()V

    :cond_0
    if-eqz p1, :cond_3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 1401
    iget-wide v0, p0, Lorg/ejml/data/DMatrix3x3;->a31:D

    iput-wide v0, p2, Lorg/ejml/data/DMatrix3;->a1:D

    .line 1402
    iget-wide v0, p0, Lorg/ejml/data/DMatrix3x3;->a32:D

    iput-wide v0, p2, Lorg/ejml/data/DMatrix3;->a2:D

    .line 1403
    iget-wide p0, p0, Lorg/ejml/data/DMatrix3x3;->a33:D

    iput-wide p0, p2, Lorg/ejml/data/DMatrix3;->a3:D

    goto :goto_0

    .line 1406
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Out of bounds row. row = "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1396
    :cond_2
    iget-wide v0, p0, Lorg/ejml/data/DMatrix3x3;->a21:D

    iput-wide v0, p2, Lorg/ejml/data/DMatrix3;->a1:D

    .line 1397
    iget-wide v0, p0, Lorg/ejml/data/DMatrix3x3;->a22:D

    iput-wide v0, p2, Lorg/ejml/data/DMatrix3;->a2:D

    .line 1398
    iget-wide p0, p0, Lorg/ejml/data/DMatrix3x3;->a23:D

    iput-wide p0, p2, Lorg/ejml/data/DMatrix3;->a3:D

    goto :goto_0

    .line 1391
    :cond_3
    iget-wide v0, p0, Lorg/ejml/data/DMatrix3x3;->a11:D

    iput-wide v0, p2, Lorg/ejml/data/DMatrix3;->a1:D

    .line 1392
    iget-wide v0, p0, Lorg/ejml/data/DMatrix3x3;->a12:D

    iput-wide v0, p2, Lorg/ejml/data/DMatrix3;->a2:D

    .line 1393
    iget-wide p0, p0, Lorg/ejml/data/DMatrix3x3;->a13:D

    iput-wide p0, p2, Lorg/ejml/data/DMatrix3;->a3:D

    :goto_0
    return-object p2
.end method

.method public static fill(Lorg/ejml/data/DMatrix3;D)V
    .locals 0

    .line 1375
    iput-wide p1, p0, Lorg/ejml/data/DMatrix3;->a1:D

    .line 1376
    iput-wide p1, p0, Lorg/ejml/data/DMatrix3;->a2:D

    .line 1377
    iput-wide p1, p0, Lorg/ejml/data/DMatrix3;->a3:D

    return-void
.end method

.method public static fill(Lorg/ejml/data/DMatrix3x3;D)V
    .locals 0

    .line 1359
    iput-wide p1, p0, Lorg/ejml/data/DMatrix3x3;->a11:D

    iput-wide p1, p0, Lorg/ejml/data/DMatrix3x3;->a12:D

    iput-wide p1, p0, Lorg/ejml/data/DMatrix3x3;->a13:D

    .line 1360
    iput-wide p1, p0, Lorg/ejml/data/DMatrix3x3;->a21:D

    iput-wide p1, p0, Lorg/ejml/data/DMatrix3x3;->a22:D

    iput-wide p1, p0, Lorg/ejml/data/DMatrix3x3;->a23:D

    .line 1361
    iput-wide p1, p0, Lorg/ejml/data/DMatrix3x3;->a31:D

    iput-wide p1, p0, Lorg/ejml/data/DMatrix3x3;->a32:D

    iput-wide p1, p0, Lorg/ejml/data/DMatrix3x3;->a33:D

    return-void
.end method

.method public static invert(Lorg/ejml/data/DMatrix3x3;Lorg/ejml/data/DMatrix3x3;)Z
    .locals 32

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    .line 773
    invoke-static/range {p0 .. p0}, Lorg/ejml/dense/fixed/CommonOps_DDF3;->elementMaxAbs(Lorg/ejml/data/DMatrix3x3;)D

    move-result-wide v4

    div-double/2addr v2, v4

    .line 775
    iget-wide v4, v0, Lorg/ejml/data/DMatrix3x3;->a11:D

    mul-double/2addr v4, v2

    .line 776
    iget-wide v6, v0, Lorg/ejml/data/DMatrix3x3;->a12:D

    mul-double/2addr v6, v2

    .line 777
    iget-wide v8, v0, Lorg/ejml/data/DMatrix3x3;->a13:D

    mul-double/2addr v8, v2

    .line 778
    iget-wide v10, v0, Lorg/ejml/data/DMatrix3x3;->a21:D

    mul-double/2addr v10, v2

    .line 779
    iget-wide v12, v0, Lorg/ejml/data/DMatrix3x3;->a22:D

    mul-double/2addr v12, v2

    .line 780
    iget-wide v14, v0, Lorg/ejml/data/DMatrix3x3;->a23:D

    mul-double/2addr v14, v2

    move-wide/from16 v16, v4

    .line 781
    iget-wide v4, v0, Lorg/ejml/data/DMatrix3x3;->a31:D

    mul-double/2addr v4, v2

    move-wide/from16 v18, v8

    .line 782
    iget-wide v8, v0, Lorg/ejml/data/DMatrix3x3;->a32:D

    mul-double/2addr v8, v2

    .line 783
    iget-wide v0, v0, Lorg/ejml/data/DMatrix3x3;->a33:D

    mul-double/2addr v0, v2

    mul-double v20, v12, v0

    mul-double v22, v14, v8

    sub-double v20, v20, v22

    mul-double v22, v10, v0

    mul-double v24, v14, v4

    move-wide/from16 v26, v2

    sub-double v2, v22, v24

    neg-double v2, v2

    mul-double v22, v10, v8

    mul-double v24, v12, v4

    sub-double v22, v22, v24

    mul-double v24, v6, v0

    mul-double v28, v18, v8

    move-wide/from16 v30, v2

    sub-double v2, v24, v28

    neg-double v2, v2

    mul-double v0, v0, v16

    mul-double v24, v18, v4

    sub-double v0, v0, v24

    mul-double v8, v8, v16

    mul-double/2addr v4, v6

    sub-double/2addr v8, v4

    neg-double v4, v8

    mul-double v8, v6, v14

    mul-double v24, v18, v12

    sub-double v8, v8, v24

    mul-double v14, v14, v16

    mul-double v24, v18, v10

    sub-double v14, v14, v24

    neg-double v14, v14

    mul-double v12, v12, v16

    mul-double/2addr v10, v6

    sub-double/2addr v12, v10

    mul-double v10, v16, v20

    mul-double v6, v6, v30

    add-double/2addr v10, v6

    mul-double v6, v18, v22

    add-double/2addr v10, v6

    div-double v10, v10, v26

    div-double v6, v20, v10

    move-wide/from16 v16, v12

    move-object/from16 v12, p1

    .line 797
    iput-wide v6, v12, Lorg/ejml/data/DMatrix3x3;->a11:D

    div-double/2addr v2, v10

    .line 798
    iput-wide v2, v12, Lorg/ejml/data/DMatrix3x3;->a12:D

    div-double/2addr v8, v10

    .line 799
    iput-wide v8, v12, Lorg/ejml/data/DMatrix3x3;->a13:D

    div-double v2, v30, v10

    .line 800
    iput-wide v2, v12, Lorg/ejml/data/DMatrix3x3;->a21:D

    div-double/2addr v0, v10

    .line 801
    iput-wide v0, v12, Lorg/ejml/data/DMatrix3x3;->a22:D

    div-double/2addr v14, v10

    .line 802
    iput-wide v14, v12, Lorg/ejml/data/DMatrix3x3;->a23:D

    div-double v0, v22, v10

    .line 803
    iput-wide v0, v12, Lorg/ejml/data/DMatrix3x3;->a31:D

    div-double/2addr v4, v10

    .line 804
    iput-wide v4, v12, Lorg/ejml/data/DMatrix3x3;->a32:D

    div-double v0, v16, v10

    .line 805
    iput-wide v0, v12, Lorg/ejml/data/DMatrix3x3;->a33:D

    .line 807
    invoke-static {v10, v11}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {v10, v11}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static mult(DLorg/ejml/data/DMatrix3x3;Lorg/ejml/data/DMatrix3x3;Lorg/ejml/data/DMatrix3x3;)V
    .locals 6

    .line 291
    invoke-static {p2, p4}, Lorg/ejml/UtilEjml;->checkSameInstance(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 292
    invoke-static {p3, p4}, Lorg/ejml/UtilEjml;->checkSameInstance(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 293
    iget-wide v0, p2, Lorg/ejml/data/DMatrix3x3;->a11:D

    iget-wide v2, p3, Lorg/ejml/data/DMatrix3x3;->a11:D

    mul-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix3x3;->a12:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix3x3;->a21:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix3x3;->a13:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix3x3;->a31:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    mul-double/2addr v0, p0

    iput-wide v0, p4, Lorg/ejml/data/DMatrix3x3;->a11:D

    .line 294
    iget-wide v0, p2, Lorg/ejml/data/DMatrix3x3;->a11:D

    iget-wide v2, p3, Lorg/ejml/data/DMatrix3x3;->a12:D

    mul-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix3x3;->a12:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix3x3;->a22:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix3x3;->a13:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix3x3;->a32:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    mul-double/2addr v0, p0

    iput-wide v0, p4, Lorg/ejml/data/DMatrix3x3;->a12:D

    .line 295
    iget-wide v0, p2, Lorg/ejml/data/DMatrix3x3;->a11:D

    iget-wide v2, p3, Lorg/ejml/data/DMatrix3x3;->a13:D

    mul-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix3x3;->a12:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix3x3;->a23:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix3x3;->a13:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix3x3;->a33:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    mul-double/2addr v0, p0

    iput-wide v0, p4, Lorg/ejml/data/DMatrix3x3;->a13:D

    .line 296
    iget-wide v0, p2, Lorg/ejml/data/DMatrix3x3;->a21:D

    iget-wide v2, p3, Lorg/ejml/data/DMatrix3x3;->a11:D

    mul-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix3x3;->a22:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix3x3;->a21:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix3x3;->a23:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix3x3;->a31:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    mul-double/2addr v0, p0

    iput-wide v0, p4, Lorg/ejml/data/DMatrix3x3;->a21:D

    .line 297
    iget-wide v0, p2, Lorg/ejml/data/DMatrix3x3;->a21:D

    iget-wide v2, p3, Lorg/ejml/data/DMatrix3x3;->a12:D

    mul-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix3x3;->a22:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix3x3;->a22:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix3x3;->a23:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix3x3;->a32:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    mul-double/2addr v0, p0

    iput-wide v0, p4, Lorg/ejml/data/DMatrix3x3;->a22:D

    .line 298
    iget-wide v0, p2, Lorg/ejml/data/DMatrix3x3;->a21:D

    iget-wide v2, p3, Lorg/ejml/data/DMatrix3x3;->a13:D

    mul-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix3x3;->a22:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix3x3;->a23:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix3x3;->a23:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix3x3;->a33:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    mul-double/2addr v0, p0

    iput-wide v0, p4, Lorg/ejml/data/DMatrix3x3;->a23:D

    .line 299
    iget-wide v0, p2, Lorg/ejml/data/DMatrix3x3;->a31:D

    iget-wide v2, p3, Lorg/ejml/data/DMatrix3x3;->a11:D

    mul-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix3x3;->a32:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix3x3;->a21:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix3x3;->a33:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix3x3;->a31:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    mul-double/2addr v0, p0

    iput-wide v0, p4, Lorg/ejml/data/DMatrix3x3;->a31:D

    .line 300
    iget-wide v0, p2, Lorg/ejml/data/DMatrix3x3;->a31:D

    iget-wide v2, p3, Lorg/ejml/data/DMatrix3x3;->a12:D

    mul-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix3x3;->a32:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix3x3;->a22:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix3x3;->a33:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix3x3;->a32:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    mul-double/2addr v0, p0

    iput-wide v0, p4, Lorg/ejml/data/DMatrix3x3;->a32:D

    .line 301
    iget-wide v0, p2, Lorg/ejml/data/DMatrix3x3;->a31:D

    iget-wide v2, p3, Lorg/ejml/data/DMatrix3x3;->a13:D

    mul-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix3x3;->a32:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix3x3;->a23:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix3x3;->a33:D

    iget-wide p2, p3, Lorg/ejml/data/DMatrix3x3;->a33:D

    mul-double/2addr v2, p2

    add-double/2addr v0, v2

    mul-double/2addr p0, v0

    iput-wide p0, p4, Lorg/ejml/data/DMatrix3x3;->a33:D

    return-void
.end method

.method public static mult(Lorg/ejml/data/DMatrix3;Lorg/ejml/data/DMatrix3x3;Lorg/ejml/data/DMatrix3;)V
    .locals 6

    .line 728
    iget-wide v0, p0, Lorg/ejml/data/DMatrix3;->a1:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix3x3;->a11:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix3;->a2:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix3x3;->a21:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix3;->a3:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix3x3;->a31:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix3;->a1:D

    .line 729
    iget-wide v0, p0, Lorg/ejml/data/DMatrix3;->a1:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix3x3;->a12:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix3;->a2:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix3x3;->a22:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix3;->a3:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix3x3;->a32:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix3;->a2:D

    .line 730
    iget-wide v0, p0, Lorg/ejml/data/DMatrix3;->a1:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix3x3;->a13:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix3;->a2:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix3x3;->a23:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix3;->a3:D

    iget-wide p0, p1, Lorg/ejml/data/DMatrix3x3;->a33:D

    mul-double/2addr v2, p0

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix3;->a3:D

    return-void
.end method

.method public static mult(Lorg/ejml/data/DMatrix3x3;Lorg/ejml/data/DMatrix3;Lorg/ejml/data/DMatrix3;)V
    .locals 6

    .line 710
    iget-wide v0, p0, Lorg/ejml/data/DMatrix3x3;->a11:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix3;->a1:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix3x3;->a12:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix3;->a2:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix3x3;->a13:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix3;->a3:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix3;->a1:D

    .line 711
    iget-wide v0, p0, Lorg/ejml/data/DMatrix3x3;->a21:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix3;->a1:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix3x3;->a22:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix3;->a2:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix3x3;->a23:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix3;->a3:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix3;->a2:D

    .line 712
    iget-wide v0, p0, Lorg/ejml/data/DMatrix3x3;->a31:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix3;->a1:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix3x3;->a32:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix3;->a2:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix3x3;->a33:D

    iget-wide p0, p1, Lorg/ejml/data/DMatrix3;->a3:D

    mul-double/2addr v2, p0

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix3;->a3:D

    return-void
.end method

.method public static mult(Lorg/ejml/data/DMatrix3x3;Lorg/ejml/data/DMatrix3x3;Lorg/ejml/data/DMatrix3x3;)V
    .locals 6

    .line 264
    invoke-static {p0, p2}, Lorg/ejml/UtilEjml;->checkSameInstance(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 265
    invoke-static {p1, p2}, Lorg/ejml/UtilEjml;->checkSameInstance(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 266
    iget-wide v0, p0, Lorg/ejml/data/DMatrix3x3;->a11:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix3x3;->a11:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix3x3;->a12:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix3x3;->a21:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix3x3;->a13:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix3x3;->a31:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix3x3;->a11:D

    .line 267
    iget-wide v0, p0, Lorg/ejml/data/DMatrix3x3;->a11:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix3x3;->a12:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix3x3;->a12:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix3x3;->a22:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix3x3;->a13:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix3x3;->a32:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix3x3;->a12:D

    .line 268
    iget-wide v0, p0, Lorg/ejml/data/DMatrix3x3;->a11:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix3x3;->a13:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix3x3;->a12:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix3x3;->a23:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix3x3;->a13:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix3x3;->a33:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix3x3;->a13:D

    .line 269
    iget-wide v0, p0, Lorg/ejml/data/DMatrix3x3;->a21:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix3x3;->a11:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix3x3;->a22:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix3x3;->a21:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix3x3;->a23:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix3x3;->a31:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix3x3;->a21:D

    .line 270
    iget-wide v0, p0, Lorg/ejml/data/DMatrix3x3;->a21:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix3x3;->a12:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix3x3;->a22:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix3x3;->a22:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix3x3;->a23:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix3x3;->a32:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix3x3;->a22:D

    .line 271
    iget-wide v0, p0, Lorg/ejml/data/DMatrix3x3;->a21:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix3x3;->a13:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix3x3;->a22:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix3x3;->a23:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix3x3;->a23:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix3x3;->a33:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix3x3;->a23:D

    .line 272
    iget-wide v0, p0, Lorg/ejml/data/DMatrix3x3;->a31:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix3x3;->a11:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix3x3;->a32:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix3x3;->a21:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix3x3;->a33:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix3x3;->a31:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix3x3;->a31:D

    .line 273
    iget-wide v0, p0, Lorg/ejml/data/DMatrix3x3;->a31:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix3x3;->a12:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix3x3;->a32:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix3x3;->a22:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix3x3;->a33:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix3x3;->a32:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix3x3;->a32:D

    .line 274
    iget-wide v0, p0, Lorg/ejml/data/DMatrix3x3;->a31:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix3x3;->a13:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix3x3;->a32:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix3x3;->a23:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix3x3;->a33:D

    iget-wide p0, p1, Lorg/ejml/data/DMatrix3x3;->a33:D

    mul-double/2addr v2, p0

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix3x3;->a33:D

    return-void
.end method

.method public static multAdd(DLorg/ejml/data/DMatrix3x3;Lorg/ejml/data/DMatrix3x3;Lorg/ejml/data/DMatrix3x3;)V
    .locals 8

    .line 503
    invoke-static {p2, p4}, Lorg/ejml/UtilEjml;->checkSameInstance(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 504
    invoke-static {p3, p4}, Lorg/ejml/UtilEjml;->checkSameInstance(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 505
    iget-wide v0, p4, Lorg/ejml/data/DMatrix3x3;->a11:D

    iget-wide v2, p2, Lorg/ejml/data/DMatrix3x3;->a11:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix3x3;->a11:D

    mul-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix3x3;->a12:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix3x3;->a21:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix3x3;->a13:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix3x3;->a31:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    mul-double/2addr v2, p0

    add-double/2addr v0, v2

    iput-wide v0, p4, Lorg/ejml/data/DMatrix3x3;->a11:D

    .line 506
    iget-wide v0, p4, Lorg/ejml/data/DMatrix3x3;->a12:D

    iget-wide v2, p2, Lorg/ejml/data/DMatrix3x3;->a11:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix3x3;->a12:D

    mul-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix3x3;->a12:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix3x3;->a22:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix3x3;->a13:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix3x3;->a32:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    mul-double/2addr v2, p0

    add-double/2addr v0, v2

    iput-wide v0, p4, Lorg/ejml/data/DMatrix3x3;->a12:D

    .line 507
    iget-wide v0, p4, Lorg/ejml/data/DMatrix3x3;->a13:D

    iget-wide v2, p2, Lorg/ejml/data/DMatrix3x3;->a11:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix3x3;->a13:D

    mul-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix3x3;->a12:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix3x3;->a23:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix3x3;->a13:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix3x3;->a33:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    mul-double/2addr v2, p0

    add-double/2addr v0, v2

    iput-wide v0, p4, Lorg/ejml/data/DMatrix3x3;->a13:D

    .line 508
    iget-wide v0, p4, Lorg/ejml/data/DMatrix3x3;->a21:D

    iget-wide v2, p2, Lorg/ejml/data/DMatrix3x3;->a21:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix3x3;->a11:D

    mul-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix3x3;->a22:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix3x3;->a21:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix3x3;->a23:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix3x3;->a31:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    mul-double/2addr v2, p0

    add-double/2addr v0, v2

    iput-wide v0, p4, Lorg/ejml/data/DMatrix3x3;->a21:D

    .line 509
    iget-wide v0, p4, Lorg/ejml/data/DMatrix3x3;->a22:D

    iget-wide v2, p2, Lorg/ejml/data/DMatrix3x3;->a21:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix3x3;->a12:D

    mul-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix3x3;->a22:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix3x3;->a22:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix3x3;->a23:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix3x3;->a32:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    mul-double/2addr v2, p0

    add-double/2addr v0, v2

    iput-wide v0, p4, Lorg/ejml/data/DMatrix3x3;->a22:D

    .line 510
    iget-wide v0, p4, Lorg/ejml/data/DMatrix3x3;->a23:D

    iget-wide v2, p2, Lorg/ejml/data/DMatrix3x3;->a21:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix3x3;->a13:D

    mul-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix3x3;->a22:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix3x3;->a23:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix3x3;->a23:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix3x3;->a33:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    mul-double/2addr v2, p0

    add-double/2addr v0, v2

    iput-wide v0, p4, Lorg/ejml/data/DMatrix3x3;->a23:D

    .line 511
    iget-wide v0, p4, Lorg/ejml/data/DMatrix3x3;->a31:D

    iget-wide v2, p2, Lorg/ejml/data/DMatrix3x3;->a31:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix3x3;->a11:D

    mul-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix3x3;->a32:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix3x3;->a21:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix3x3;->a33:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix3x3;->a31:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    mul-double/2addr v2, p0

    add-double/2addr v0, v2

    iput-wide v0, p4, Lorg/ejml/data/DMatrix3x3;->a31:D

    .line 512
    iget-wide v0, p4, Lorg/ejml/data/DMatrix3x3;->a32:D

    iget-wide v2, p2, Lorg/ejml/data/DMatrix3x3;->a31:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix3x3;->a12:D

    mul-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix3x3;->a32:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix3x3;->a22:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix3x3;->a33:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix3x3;->a32:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    mul-double/2addr v2, p0

    add-double/2addr v0, v2

    iput-wide v0, p4, Lorg/ejml/data/DMatrix3x3;->a32:D

    .line 513
    iget-wide v0, p4, Lorg/ejml/data/DMatrix3x3;->a33:D

    iget-wide v2, p2, Lorg/ejml/data/DMatrix3x3;->a31:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix3x3;->a13:D

    mul-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix3x3;->a32:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix3x3;->a23:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix3x3;->a33:D

    iget-wide p2, p3, Lorg/ejml/data/DMatrix3x3;->a33:D

    mul-double/2addr v4, p2

    add-double/2addr v2, v4

    mul-double/2addr p0, v2

    add-double/2addr v0, p0

    iput-wide v0, p4, Lorg/ejml/data/DMatrix3x3;->a33:D

    return-void
.end method

.method public static multAdd(Lorg/ejml/data/DMatrix3x3;Lorg/ejml/data/DMatrix3x3;Lorg/ejml/data/DMatrix3x3;)V
    .locals 8

    .line 476
    invoke-static {p0, p2}, Lorg/ejml/UtilEjml;->checkSameInstance(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 477
    invoke-static {p1, p2}, Lorg/ejml/UtilEjml;->checkSameInstance(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 478
    iget-wide v0, p2, Lorg/ejml/data/DMatrix3x3;->a11:D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix3x3;->a11:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix3x3;->a11:D

    mul-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix3x3;->a12:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix3x3;->a21:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix3x3;->a13:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix3x3;->a31:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix3x3;->a11:D

    .line 479
    iget-wide v0, p2, Lorg/ejml/data/DMatrix3x3;->a12:D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix3x3;->a11:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix3x3;->a12:D

    mul-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix3x3;->a12:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix3x3;->a22:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix3x3;->a13:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix3x3;->a32:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix3x3;->a12:D

    .line 480
    iget-wide v0, p2, Lorg/ejml/data/DMatrix3x3;->a13:D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix3x3;->a11:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix3x3;->a13:D

    mul-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix3x3;->a12:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix3x3;->a23:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix3x3;->a13:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix3x3;->a33:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix3x3;->a13:D

    .line 481
    iget-wide v0, p2, Lorg/ejml/data/DMatrix3x3;->a21:D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix3x3;->a21:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix3x3;->a11:D

    mul-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix3x3;->a22:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix3x3;->a21:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix3x3;->a23:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix3x3;->a31:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix3x3;->a21:D

    .line 482
    iget-wide v0, p2, Lorg/ejml/data/DMatrix3x3;->a22:D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix3x3;->a21:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix3x3;->a12:D

    mul-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix3x3;->a22:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix3x3;->a22:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix3x3;->a23:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix3x3;->a32:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix3x3;->a22:D

    .line 483
    iget-wide v0, p2, Lorg/ejml/data/DMatrix3x3;->a23:D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix3x3;->a21:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix3x3;->a13:D

    mul-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix3x3;->a22:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix3x3;->a23:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix3x3;->a23:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix3x3;->a33:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix3x3;->a23:D

    .line 484
    iget-wide v0, p2, Lorg/ejml/data/DMatrix3x3;->a31:D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix3x3;->a31:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix3x3;->a11:D

    mul-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix3x3;->a32:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix3x3;->a21:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix3x3;->a33:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix3x3;->a31:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix3x3;->a31:D

    .line 485
    iget-wide v0, p2, Lorg/ejml/data/DMatrix3x3;->a32:D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix3x3;->a31:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix3x3;->a12:D

    mul-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix3x3;->a32:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix3x3;->a22:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix3x3;->a33:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix3x3;->a32:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix3x3;->a32:D

    .line 486
    iget-wide v0, p2, Lorg/ejml/data/DMatrix3x3;->a33:D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix3x3;->a31:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix3x3;->a13:D

    mul-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix3x3;->a32:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix3x3;->a23:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix3x3;->a33:D

    iget-wide p0, p1, Lorg/ejml/data/DMatrix3x3;->a33:D

    mul-double/2addr v4, p0

    add-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix3x3;->a33:D

    return-void
.end method

.method public static multAddOuter(DLorg/ejml/data/DMatrix3x3;DLorg/ejml/data/DMatrix3;Lorg/ejml/data/DMatrix3;Lorg/ejml/data/DMatrix3x3;)V
    .locals 6

    .line 686
    iget-wide v0, p2, Lorg/ejml/data/DMatrix3x3;->a11:D

    mul-double/2addr v0, p0

    iget-wide v2, p5, Lorg/ejml/data/DMatrix3;->a1:D

    mul-double/2addr v2, p3

    iget-wide v4, p6, Lorg/ejml/data/DMatrix3;->a1:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p7, Lorg/ejml/data/DMatrix3x3;->a11:D

    .line 687
    iget-wide v0, p2, Lorg/ejml/data/DMatrix3x3;->a12:D

    mul-double/2addr v0, p0

    iget-wide v2, p5, Lorg/ejml/data/DMatrix3;->a1:D

    mul-double/2addr v2, p3

    iget-wide v4, p6, Lorg/ejml/data/DMatrix3;->a2:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p7, Lorg/ejml/data/DMatrix3x3;->a12:D

    .line 688
    iget-wide v0, p2, Lorg/ejml/data/DMatrix3x3;->a13:D

    mul-double/2addr v0, p0

    iget-wide v2, p5, Lorg/ejml/data/DMatrix3;->a1:D

    mul-double/2addr v2, p3

    iget-wide v4, p6, Lorg/ejml/data/DMatrix3;->a3:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p7, Lorg/ejml/data/DMatrix3x3;->a13:D

    .line 689
    iget-wide v0, p2, Lorg/ejml/data/DMatrix3x3;->a21:D

    mul-double/2addr v0, p0

    iget-wide v2, p5, Lorg/ejml/data/DMatrix3;->a2:D

    mul-double/2addr v2, p3

    iget-wide v4, p6, Lorg/ejml/data/DMatrix3;->a1:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p7, Lorg/ejml/data/DMatrix3x3;->a21:D

    .line 690
    iget-wide v0, p2, Lorg/ejml/data/DMatrix3x3;->a22:D

    mul-double/2addr v0, p0

    iget-wide v2, p5, Lorg/ejml/data/DMatrix3;->a2:D

    mul-double/2addr v2, p3

    iget-wide v4, p6, Lorg/ejml/data/DMatrix3;->a2:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p7, Lorg/ejml/data/DMatrix3x3;->a22:D

    .line 691
    iget-wide v0, p2, Lorg/ejml/data/DMatrix3x3;->a23:D

    mul-double/2addr v0, p0

    iget-wide v2, p5, Lorg/ejml/data/DMatrix3;->a2:D

    mul-double/2addr v2, p3

    iget-wide v4, p6, Lorg/ejml/data/DMatrix3;->a3:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p7, Lorg/ejml/data/DMatrix3x3;->a23:D

    .line 692
    iget-wide v0, p2, Lorg/ejml/data/DMatrix3x3;->a31:D

    mul-double/2addr v0, p0

    iget-wide v2, p5, Lorg/ejml/data/DMatrix3;->a3:D

    mul-double/2addr v2, p3

    iget-wide v4, p6, Lorg/ejml/data/DMatrix3;->a1:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p7, Lorg/ejml/data/DMatrix3x3;->a31:D

    .line 693
    iget-wide v0, p2, Lorg/ejml/data/DMatrix3x3;->a32:D

    mul-double/2addr v0, p0

    iget-wide v2, p5, Lorg/ejml/data/DMatrix3;->a3:D

    mul-double/2addr v2, p3

    iget-wide v4, p6, Lorg/ejml/data/DMatrix3;->a2:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p7, Lorg/ejml/data/DMatrix3x3;->a32:D

    .line 694
    iget-wide v0, p2, Lorg/ejml/data/DMatrix3x3;->a33:D

    mul-double/2addr p0, v0

    iget-wide v0, p5, Lorg/ejml/data/DMatrix3;->a3:D

    mul-double/2addr p3, v0

    iget-wide p5, p6, Lorg/ejml/data/DMatrix3;->a3:D

    mul-double/2addr p3, p5

    add-double/2addr p0, p3

    iput-wide p0, p7, Lorg/ejml/data/DMatrix3x3;->a33:D

    return-void
.end method

.method public static multAddTransA(DLorg/ejml/data/DMatrix3x3;Lorg/ejml/data/DMatrix3x3;Lorg/ejml/data/DMatrix3x3;)V
    .locals 8

    .line 556
    invoke-static {p2, p4}, Lorg/ejml/UtilEjml;->checkSameInstance(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 557
    invoke-static {p3, p4}, Lorg/ejml/UtilEjml;->checkSameInstance(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 558
    iget-wide v0, p4, Lorg/ejml/data/DMatrix3x3;->a11:D

    iget-wide v2, p2, Lorg/ejml/data/DMatrix3x3;->a11:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix3x3;->a11:D

    mul-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix3x3;->a21:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix3x3;->a21:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix3x3;->a31:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix3x3;->a31:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    mul-double/2addr v2, p0

    add-double/2addr v0, v2

    iput-wide v0, p4, Lorg/ejml/data/DMatrix3x3;->a11:D

    .line 559
    iget-wide v0, p4, Lorg/ejml/data/DMatrix3x3;->a12:D

    iget-wide v2, p2, Lorg/ejml/data/DMatrix3x3;->a11:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix3x3;->a12:D

    mul-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix3x3;->a21:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix3x3;->a22:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix3x3;->a31:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix3x3;->a32:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    mul-double/2addr v2, p0

    add-double/2addr v0, v2

    iput-wide v0, p4, Lorg/ejml/data/DMatrix3x3;->a12:D

    .line 560
    iget-wide v0, p4, Lorg/ejml/data/DMatrix3x3;->a13:D

    iget-wide v2, p2, Lorg/ejml/data/DMatrix3x3;->a11:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix3x3;->a13:D

    mul-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix3x3;->a21:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix3x3;->a23:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix3x3;->a31:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix3x3;->a33:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    mul-double/2addr v2, p0

    add-double/2addr v0, v2

    iput-wide v0, p4, Lorg/ejml/data/DMatrix3x3;->a13:D

    .line 561
    iget-wide v0, p4, Lorg/ejml/data/DMatrix3x3;->a21:D

    iget-wide v2, p2, Lorg/ejml/data/DMatrix3x3;->a12:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix3x3;->a11:D

    mul-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix3x3;->a22:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix3x3;->a21:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix3x3;->a32:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix3x3;->a31:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    mul-double/2addr v2, p0

    add-double/2addr v0, v2

    iput-wide v0, p4, Lorg/ejml/data/DMatrix3x3;->a21:D

    .line 562
    iget-wide v0, p4, Lorg/ejml/data/DMatrix3x3;->a22:D

    iget-wide v2, p2, Lorg/ejml/data/DMatrix3x3;->a12:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix3x3;->a12:D

    mul-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix3x3;->a22:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix3x3;->a22:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix3x3;->a32:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix3x3;->a32:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    mul-double/2addr v2, p0

    add-double/2addr v0, v2

    iput-wide v0, p4, Lorg/ejml/data/DMatrix3x3;->a22:D

    .line 563
    iget-wide v0, p4, Lorg/ejml/data/DMatrix3x3;->a23:D

    iget-wide v2, p2, Lorg/ejml/data/DMatrix3x3;->a12:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix3x3;->a13:D

    mul-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix3x3;->a22:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix3x3;->a23:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix3x3;->a32:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix3x3;->a33:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    mul-double/2addr v2, p0

    add-double/2addr v0, v2

    iput-wide v0, p4, Lorg/ejml/data/DMatrix3x3;->a23:D

    .line 564
    iget-wide v0, p4, Lorg/ejml/data/DMatrix3x3;->a31:D

    iget-wide v2, p2, Lorg/ejml/data/DMatrix3x3;->a13:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix3x3;->a11:D

    mul-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix3x3;->a23:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix3x3;->a21:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix3x3;->a33:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix3x3;->a31:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    mul-double/2addr v2, p0

    add-double/2addr v0, v2

    iput-wide v0, p4, Lorg/ejml/data/DMatrix3x3;->a31:D

    .line 565
    iget-wide v0, p4, Lorg/ejml/data/DMatrix3x3;->a32:D

    iget-wide v2, p2, Lorg/ejml/data/DMatrix3x3;->a13:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix3x3;->a12:D

    mul-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix3x3;->a23:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix3x3;->a22:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix3x3;->a33:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix3x3;->a32:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    mul-double/2addr v2, p0

    add-double/2addr v0, v2

    iput-wide v0, p4, Lorg/ejml/data/DMatrix3x3;->a32:D

    .line 566
    iget-wide v0, p4, Lorg/ejml/data/DMatrix3x3;->a33:D

    iget-wide v2, p2, Lorg/ejml/data/DMatrix3x3;->a13:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix3x3;->a13:D

    mul-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix3x3;->a23:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix3x3;->a23:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix3x3;->a33:D

    iget-wide p2, p3, Lorg/ejml/data/DMatrix3x3;->a33:D

    mul-double/2addr v4, p2

    add-double/2addr v2, v4

    mul-double/2addr p0, v2

    add-double/2addr v0, p0

    iput-wide v0, p4, Lorg/ejml/data/DMatrix3x3;->a33:D

    return-void
.end method

.method public static multAddTransA(Lorg/ejml/data/DMatrix3x3;Lorg/ejml/data/DMatrix3x3;Lorg/ejml/data/DMatrix3x3;)V
    .locals 8

    .line 529
    invoke-static {p0, p2}, Lorg/ejml/UtilEjml;->checkSameInstance(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 530
    invoke-static {p1, p2}, Lorg/ejml/UtilEjml;->checkSameInstance(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 531
    iget-wide v0, p2, Lorg/ejml/data/DMatrix3x3;->a11:D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix3x3;->a11:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix3x3;->a11:D

    mul-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix3x3;->a21:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix3x3;->a21:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix3x3;->a31:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix3x3;->a31:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix3x3;->a11:D

    .line 532
    iget-wide v0, p2, Lorg/ejml/data/DMatrix3x3;->a12:D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix3x3;->a11:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix3x3;->a12:D

    mul-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix3x3;->a21:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix3x3;->a22:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix3x3;->a31:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix3x3;->a32:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix3x3;->a12:D

    .line 533
    iget-wide v0, p2, Lorg/ejml/data/DMatrix3x3;->a13:D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix3x3;->a11:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix3x3;->a13:D

    mul-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix3x3;->a21:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix3x3;->a23:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix3x3;->a31:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix3x3;->a33:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix3x3;->a13:D

    .line 534
    iget-wide v0, p2, Lorg/ejml/data/DMatrix3x3;->a21:D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix3x3;->a12:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix3x3;->a11:D

    mul-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix3x3;->a22:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix3x3;->a21:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix3x3;->a32:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix3x3;->a31:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix3x3;->a21:D

    .line 535
    iget-wide v0, p2, Lorg/ejml/data/DMatrix3x3;->a22:D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix3x3;->a12:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix3x3;->a12:D

    mul-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix3x3;->a22:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix3x3;->a22:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix3x3;->a32:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix3x3;->a32:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix3x3;->a22:D

    .line 536
    iget-wide v0, p2, Lorg/ejml/data/DMatrix3x3;->a23:D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix3x3;->a12:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix3x3;->a13:D

    mul-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix3x3;->a22:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix3x3;->a23:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix3x3;->a32:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix3x3;->a33:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix3x3;->a23:D

    .line 537
    iget-wide v0, p2, Lorg/ejml/data/DMatrix3x3;->a31:D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix3x3;->a13:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix3x3;->a11:D

    mul-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix3x3;->a23:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix3x3;->a21:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix3x3;->a33:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix3x3;->a31:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix3x3;->a31:D

    .line 538
    iget-wide v0, p2, Lorg/ejml/data/DMatrix3x3;->a32:D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix3x3;->a13:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix3x3;->a12:D

    mul-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix3x3;->a23:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix3x3;->a22:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix3x3;->a33:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix3x3;->a32:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix3x3;->a32:D

    .line 539
    iget-wide v0, p2, Lorg/ejml/data/DMatrix3x3;->a33:D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix3x3;->a13:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix3x3;->a13:D

    mul-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix3x3;->a23:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix3x3;->a23:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix3x3;->a33:D

    iget-wide p0, p1, Lorg/ejml/data/DMatrix3x3;->a33:D

    mul-double/2addr v4, p0

    add-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix3x3;->a33:D

    return-void
.end method

.method public static multAddTransAB(DLorg/ejml/data/DMatrix3x3;Lorg/ejml/data/DMatrix3x3;Lorg/ejml/data/DMatrix3x3;)V
    .locals 8

    .line 609
    invoke-static {p2, p4}, Lorg/ejml/UtilEjml;->checkSameInstance(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 610
    invoke-static {p3, p4}, Lorg/ejml/UtilEjml;->checkSameInstance(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 611
    iget-wide v0, p4, Lorg/ejml/data/DMatrix3x3;->a11:D

    iget-wide v2, p2, Lorg/ejml/data/DMatrix3x3;->a11:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix3x3;->a11:D

    mul-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix3x3;->a21:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix3x3;->a12:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix3x3;->a31:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix3x3;->a13:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    mul-double/2addr v2, p0

    add-double/2addr v0, v2

    iput-wide v0, p4, Lorg/ejml/data/DMatrix3x3;->a11:D

    .line 612
    iget-wide v0, p4, Lorg/ejml/data/DMatrix3x3;->a12:D

    iget-wide v2, p2, Lorg/ejml/data/DMatrix3x3;->a11:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix3x3;->a21:D

    mul-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix3x3;->a21:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix3x3;->a22:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix3x3;->a31:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix3x3;->a23:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    mul-double/2addr v2, p0

    add-double/2addr v0, v2

    iput-wide v0, p4, Lorg/ejml/data/DMatrix3x3;->a12:D

    .line 613
    iget-wide v0, p4, Lorg/ejml/data/DMatrix3x3;->a13:D

    iget-wide v2, p2, Lorg/ejml/data/DMatrix3x3;->a11:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix3x3;->a31:D

    mul-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix3x3;->a21:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix3x3;->a32:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix3x3;->a31:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix3x3;->a33:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    mul-double/2addr v2, p0

    add-double/2addr v0, v2

    iput-wide v0, p4, Lorg/ejml/data/DMatrix3x3;->a13:D

    .line 614
    iget-wide v0, p4, Lorg/ejml/data/DMatrix3x3;->a21:D

    iget-wide v2, p2, Lorg/ejml/data/DMatrix3x3;->a12:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix3x3;->a11:D

    mul-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix3x3;->a22:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix3x3;->a12:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix3x3;->a32:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix3x3;->a13:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    mul-double/2addr v2, p0

    add-double/2addr v0, v2

    iput-wide v0, p4, Lorg/ejml/data/DMatrix3x3;->a21:D

    .line 615
    iget-wide v0, p4, Lorg/ejml/data/DMatrix3x3;->a22:D

    iget-wide v2, p2, Lorg/ejml/data/DMatrix3x3;->a12:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix3x3;->a21:D

    mul-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix3x3;->a22:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix3x3;->a22:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix3x3;->a32:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix3x3;->a23:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    mul-double/2addr v2, p0

    add-double/2addr v0, v2

    iput-wide v0, p4, Lorg/ejml/data/DMatrix3x3;->a22:D

    .line 616
    iget-wide v0, p4, Lorg/ejml/data/DMatrix3x3;->a23:D

    iget-wide v2, p2, Lorg/ejml/data/DMatrix3x3;->a12:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix3x3;->a31:D

    mul-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix3x3;->a22:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix3x3;->a32:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix3x3;->a32:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix3x3;->a33:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    mul-double/2addr v2, p0

    add-double/2addr v0, v2

    iput-wide v0, p4, Lorg/ejml/data/DMatrix3x3;->a23:D

    .line 617
    iget-wide v0, p4, Lorg/ejml/data/DMatrix3x3;->a31:D

    iget-wide v2, p2, Lorg/ejml/data/DMatrix3x3;->a13:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix3x3;->a11:D

    mul-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix3x3;->a23:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix3x3;->a12:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix3x3;->a33:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix3x3;->a13:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    mul-double/2addr v2, p0

    add-double/2addr v0, v2

    iput-wide v0, p4, Lorg/ejml/data/DMatrix3x3;->a31:D

    .line 618
    iget-wide v0, p4, Lorg/ejml/data/DMatrix3x3;->a32:D

    iget-wide v2, p2, Lorg/ejml/data/DMatrix3x3;->a13:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix3x3;->a21:D

    mul-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix3x3;->a23:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix3x3;->a22:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix3x3;->a33:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix3x3;->a23:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    mul-double/2addr v2, p0

    add-double/2addr v0, v2

    iput-wide v0, p4, Lorg/ejml/data/DMatrix3x3;->a32:D

    .line 619
    iget-wide v0, p4, Lorg/ejml/data/DMatrix3x3;->a33:D

    iget-wide v2, p2, Lorg/ejml/data/DMatrix3x3;->a13:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix3x3;->a31:D

    mul-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix3x3;->a23:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix3x3;->a32:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix3x3;->a33:D

    iget-wide p2, p3, Lorg/ejml/data/DMatrix3x3;->a33:D

    mul-double/2addr v4, p2

    add-double/2addr v2, v4

    mul-double/2addr p0, v2

    add-double/2addr v0, p0

    iput-wide v0, p4, Lorg/ejml/data/DMatrix3x3;->a33:D

    return-void
.end method

.method public static multAddTransAB(Lorg/ejml/data/DMatrix3x3;Lorg/ejml/data/DMatrix3x3;Lorg/ejml/data/DMatrix3x3;)V
    .locals 8

    .line 582
    invoke-static {p0, p2}, Lorg/ejml/UtilEjml;->checkSameInstance(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 583
    invoke-static {p1, p2}, Lorg/ejml/UtilEjml;->checkSameInstance(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 584
    iget-wide v0, p2, Lorg/ejml/data/DMatrix3x3;->a11:D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix3x3;->a11:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix3x3;->a11:D

    mul-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix3x3;->a21:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix3x3;->a12:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix3x3;->a31:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix3x3;->a13:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix3x3;->a11:D

    .line 585
    iget-wide v0, p2, Lorg/ejml/data/DMatrix3x3;->a12:D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix3x3;->a11:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix3x3;->a21:D

    mul-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix3x3;->a21:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix3x3;->a22:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix3x3;->a31:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix3x3;->a23:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix3x3;->a12:D

    .line 586
    iget-wide v0, p2, Lorg/ejml/data/DMatrix3x3;->a13:D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix3x3;->a11:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix3x3;->a31:D

    mul-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix3x3;->a21:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix3x3;->a32:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix3x3;->a31:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix3x3;->a33:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix3x3;->a13:D

    .line 587
    iget-wide v0, p2, Lorg/ejml/data/DMatrix3x3;->a21:D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix3x3;->a12:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix3x3;->a11:D

    mul-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix3x3;->a22:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix3x3;->a12:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix3x3;->a32:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix3x3;->a13:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix3x3;->a21:D

    .line 588
    iget-wide v0, p2, Lorg/ejml/data/DMatrix3x3;->a22:D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix3x3;->a12:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix3x3;->a21:D

    mul-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix3x3;->a22:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix3x3;->a22:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix3x3;->a32:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix3x3;->a23:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix3x3;->a22:D

    .line 589
    iget-wide v0, p2, Lorg/ejml/data/DMatrix3x3;->a23:D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix3x3;->a12:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix3x3;->a31:D

    mul-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix3x3;->a22:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix3x3;->a32:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix3x3;->a32:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix3x3;->a33:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix3x3;->a23:D

    .line 590
    iget-wide v0, p2, Lorg/ejml/data/DMatrix3x3;->a31:D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix3x3;->a13:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix3x3;->a11:D

    mul-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix3x3;->a23:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix3x3;->a12:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix3x3;->a33:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix3x3;->a13:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix3x3;->a31:D

    .line 591
    iget-wide v0, p2, Lorg/ejml/data/DMatrix3x3;->a32:D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix3x3;->a13:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix3x3;->a21:D

    mul-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix3x3;->a23:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix3x3;->a22:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix3x3;->a33:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix3x3;->a23:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix3x3;->a32:D

    .line 592
    iget-wide v0, p2, Lorg/ejml/data/DMatrix3x3;->a33:D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix3x3;->a13:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix3x3;->a31:D

    mul-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix3x3;->a23:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix3x3;->a32:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix3x3;->a33:D

    iget-wide p0, p1, Lorg/ejml/data/DMatrix3x3;->a33:D

    mul-double/2addr v4, p0

    add-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix3x3;->a33:D

    return-void
.end method

.method public static multAddTransB(DLorg/ejml/data/DMatrix3x3;Lorg/ejml/data/DMatrix3x3;Lorg/ejml/data/DMatrix3x3;)V
    .locals 8

    .line 662
    invoke-static {p2, p4}, Lorg/ejml/UtilEjml;->checkSameInstance(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 663
    invoke-static {p3, p4}, Lorg/ejml/UtilEjml;->checkSameInstance(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 664
    iget-wide v0, p4, Lorg/ejml/data/DMatrix3x3;->a11:D

    iget-wide v2, p2, Lorg/ejml/data/DMatrix3x3;->a11:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix3x3;->a11:D

    mul-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix3x3;->a12:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix3x3;->a12:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix3x3;->a13:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix3x3;->a13:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    mul-double/2addr v2, p0

    add-double/2addr v0, v2

    iput-wide v0, p4, Lorg/ejml/data/DMatrix3x3;->a11:D

    .line 665
    iget-wide v0, p4, Lorg/ejml/data/DMatrix3x3;->a12:D

    iget-wide v2, p2, Lorg/ejml/data/DMatrix3x3;->a11:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix3x3;->a21:D

    mul-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix3x3;->a12:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix3x3;->a22:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix3x3;->a13:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix3x3;->a23:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    mul-double/2addr v2, p0

    add-double/2addr v0, v2

    iput-wide v0, p4, Lorg/ejml/data/DMatrix3x3;->a12:D

    .line 666
    iget-wide v0, p4, Lorg/ejml/data/DMatrix3x3;->a13:D

    iget-wide v2, p2, Lorg/ejml/data/DMatrix3x3;->a11:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix3x3;->a31:D

    mul-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix3x3;->a12:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix3x3;->a32:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix3x3;->a13:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix3x3;->a33:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    mul-double/2addr v2, p0

    add-double/2addr v0, v2

    iput-wide v0, p4, Lorg/ejml/data/DMatrix3x3;->a13:D

    .line 667
    iget-wide v0, p4, Lorg/ejml/data/DMatrix3x3;->a21:D

    iget-wide v2, p2, Lorg/ejml/data/DMatrix3x3;->a21:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix3x3;->a11:D

    mul-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix3x3;->a22:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix3x3;->a12:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix3x3;->a23:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix3x3;->a13:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    mul-double/2addr v2, p0

    add-double/2addr v0, v2

    iput-wide v0, p4, Lorg/ejml/data/DMatrix3x3;->a21:D

    .line 668
    iget-wide v0, p4, Lorg/ejml/data/DMatrix3x3;->a22:D

    iget-wide v2, p2, Lorg/ejml/data/DMatrix3x3;->a21:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix3x3;->a21:D

    mul-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix3x3;->a22:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix3x3;->a22:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix3x3;->a23:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix3x3;->a23:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    mul-double/2addr v2, p0

    add-double/2addr v0, v2

    iput-wide v0, p4, Lorg/ejml/data/DMatrix3x3;->a22:D

    .line 669
    iget-wide v0, p4, Lorg/ejml/data/DMatrix3x3;->a23:D

    iget-wide v2, p2, Lorg/ejml/data/DMatrix3x3;->a21:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix3x3;->a31:D

    mul-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix3x3;->a22:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix3x3;->a32:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix3x3;->a23:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix3x3;->a33:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    mul-double/2addr v2, p0

    add-double/2addr v0, v2

    iput-wide v0, p4, Lorg/ejml/data/DMatrix3x3;->a23:D

    .line 670
    iget-wide v0, p4, Lorg/ejml/data/DMatrix3x3;->a31:D

    iget-wide v2, p2, Lorg/ejml/data/DMatrix3x3;->a31:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix3x3;->a11:D

    mul-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix3x3;->a32:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix3x3;->a12:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix3x3;->a33:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix3x3;->a13:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    mul-double/2addr v2, p0

    add-double/2addr v0, v2

    iput-wide v0, p4, Lorg/ejml/data/DMatrix3x3;->a31:D

    .line 671
    iget-wide v0, p4, Lorg/ejml/data/DMatrix3x3;->a32:D

    iget-wide v2, p2, Lorg/ejml/data/DMatrix3x3;->a31:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix3x3;->a21:D

    mul-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix3x3;->a32:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix3x3;->a22:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix3x3;->a33:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix3x3;->a23:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    mul-double/2addr v2, p0

    add-double/2addr v0, v2

    iput-wide v0, p4, Lorg/ejml/data/DMatrix3x3;->a32:D

    .line 672
    iget-wide v0, p4, Lorg/ejml/data/DMatrix3x3;->a33:D

    iget-wide v2, p2, Lorg/ejml/data/DMatrix3x3;->a31:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix3x3;->a31:D

    mul-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix3x3;->a32:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix3x3;->a32:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix3x3;->a33:D

    iget-wide p2, p3, Lorg/ejml/data/DMatrix3x3;->a33:D

    mul-double/2addr v4, p2

    add-double/2addr v2, v4

    mul-double/2addr p0, v2

    add-double/2addr v0, p0

    iput-wide v0, p4, Lorg/ejml/data/DMatrix3x3;->a33:D

    return-void
.end method

.method public static multAddTransB(Lorg/ejml/data/DMatrix3x3;Lorg/ejml/data/DMatrix3x3;Lorg/ejml/data/DMatrix3x3;)V
    .locals 8

    .line 635
    invoke-static {p0, p2}, Lorg/ejml/UtilEjml;->checkSameInstance(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 636
    invoke-static {p1, p2}, Lorg/ejml/UtilEjml;->checkSameInstance(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 637
    iget-wide v0, p2, Lorg/ejml/data/DMatrix3x3;->a11:D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix3x3;->a11:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix3x3;->a11:D

    mul-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix3x3;->a12:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix3x3;->a12:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix3x3;->a13:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix3x3;->a13:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix3x3;->a11:D

    .line 638
    iget-wide v0, p2, Lorg/ejml/data/DMatrix3x3;->a12:D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix3x3;->a11:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix3x3;->a21:D

    mul-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix3x3;->a12:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix3x3;->a22:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix3x3;->a13:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix3x3;->a23:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix3x3;->a12:D

    .line 639
    iget-wide v0, p2, Lorg/ejml/data/DMatrix3x3;->a13:D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix3x3;->a11:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix3x3;->a31:D

    mul-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix3x3;->a12:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix3x3;->a32:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix3x3;->a13:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix3x3;->a33:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix3x3;->a13:D

    .line 640
    iget-wide v0, p2, Lorg/ejml/data/DMatrix3x3;->a21:D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix3x3;->a21:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix3x3;->a11:D

    mul-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix3x3;->a22:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix3x3;->a12:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix3x3;->a23:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix3x3;->a13:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix3x3;->a21:D

    .line 641
    iget-wide v0, p2, Lorg/ejml/data/DMatrix3x3;->a22:D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix3x3;->a21:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix3x3;->a21:D

    mul-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix3x3;->a22:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix3x3;->a22:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix3x3;->a23:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix3x3;->a23:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix3x3;->a22:D

    .line 642
    iget-wide v0, p2, Lorg/ejml/data/DMatrix3x3;->a23:D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix3x3;->a21:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix3x3;->a31:D

    mul-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix3x3;->a22:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix3x3;->a32:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix3x3;->a23:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix3x3;->a33:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix3x3;->a23:D

    .line 643
    iget-wide v0, p2, Lorg/ejml/data/DMatrix3x3;->a31:D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix3x3;->a31:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix3x3;->a11:D

    mul-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix3x3;->a32:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix3x3;->a12:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix3x3;->a33:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix3x3;->a13:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix3x3;->a31:D

    .line 644
    iget-wide v0, p2, Lorg/ejml/data/DMatrix3x3;->a32:D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix3x3;->a31:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix3x3;->a21:D

    mul-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix3x3;->a32:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix3x3;->a22:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix3x3;->a33:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix3x3;->a23:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix3x3;->a32:D

    .line 645
    iget-wide v0, p2, Lorg/ejml/data/DMatrix3x3;->a33:D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix3x3;->a31:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix3x3;->a31:D

    mul-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix3x3;->a32:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix3x3;->a32:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix3x3;->a33:D

    iget-wide p0, p1, Lorg/ejml/data/DMatrix3x3;->a33:D

    mul-double/2addr v4, p0

    add-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix3x3;->a33:D

    return-void
.end method

.method public static multTransA(DLorg/ejml/data/DMatrix3x3;Lorg/ejml/data/DMatrix3x3;Lorg/ejml/data/DMatrix3x3;)V
    .locals 6

    .line 344
    invoke-static {p2, p4}, Lorg/ejml/UtilEjml;->checkSameInstance(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 345
    invoke-static {p3, p4}, Lorg/ejml/UtilEjml;->checkSameInstance(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 346
    iget-wide v0, p2, Lorg/ejml/data/DMatrix3x3;->a11:D

    iget-wide v2, p3, Lorg/ejml/data/DMatrix3x3;->a11:D

    mul-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix3x3;->a21:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix3x3;->a21:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix3x3;->a31:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix3x3;->a31:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    mul-double/2addr v0, p0

    iput-wide v0, p4, Lorg/ejml/data/DMatrix3x3;->a11:D

    .line 347
    iget-wide v0, p2, Lorg/ejml/data/DMatrix3x3;->a11:D

    iget-wide v2, p3, Lorg/ejml/data/DMatrix3x3;->a12:D

    mul-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix3x3;->a21:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix3x3;->a22:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix3x3;->a31:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix3x3;->a32:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    mul-double/2addr v0, p0

    iput-wide v0, p4, Lorg/ejml/data/DMatrix3x3;->a12:D

    .line 348
    iget-wide v0, p2, Lorg/ejml/data/DMatrix3x3;->a11:D

    iget-wide v2, p3, Lorg/ejml/data/DMatrix3x3;->a13:D

    mul-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix3x3;->a21:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix3x3;->a23:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix3x3;->a31:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix3x3;->a33:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    mul-double/2addr v0, p0

    iput-wide v0, p4, Lorg/ejml/data/DMatrix3x3;->a13:D

    .line 349
    iget-wide v0, p2, Lorg/ejml/data/DMatrix3x3;->a12:D

    iget-wide v2, p3, Lorg/ejml/data/DMatrix3x3;->a11:D

    mul-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix3x3;->a22:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix3x3;->a21:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix3x3;->a32:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix3x3;->a31:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    mul-double/2addr v0, p0

    iput-wide v0, p4, Lorg/ejml/data/DMatrix3x3;->a21:D

    .line 350
    iget-wide v0, p2, Lorg/ejml/data/DMatrix3x3;->a12:D

    iget-wide v2, p3, Lorg/ejml/data/DMatrix3x3;->a12:D

    mul-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix3x3;->a22:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix3x3;->a22:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix3x3;->a32:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix3x3;->a32:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    mul-double/2addr v0, p0

    iput-wide v0, p4, Lorg/ejml/data/DMatrix3x3;->a22:D

    .line 351
    iget-wide v0, p2, Lorg/ejml/data/DMatrix3x3;->a12:D

    iget-wide v2, p3, Lorg/ejml/data/DMatrix3x3;->a13:D

    mul-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix3x3;->a22:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix3x3;->a23:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix3x3;->a32:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix3x3;->a33:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    mul-double/2addr v0, p0

    iput-wide v0, p4, Lorg/ejml/data/DMatrix3x3;->a23:D

    .line 352
    iget-wide v0, p2, Lorg/ejml/data/DMatrix3x3;->a13:D

    iget-wide v2, p3, Lorg/ejml/data/DMatrix3x3;->a11:D

    mul-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix3x3;->a23:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix3x3;->a21:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix3x3;->a33:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix3x3;->a31:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    mul-double/2addr v0, p0

    iput-wide v0, p4, Lorg/ejml/data/DMatrix3x3;->a31:D

    .line 353
    iget-wide v0, p2, Lorg/ejml/data/DMatrix3x3;->a13:D

    iget-wide v2, p3, Lorg/ejml/data/DMatrix3x3;->a12:D

    mul-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix3x3;->a23:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix3x3;->a22:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix3x3;->a33:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix3x3;->a32:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    mul-double/2addr v0, p0

    iput-wide v0, p4, Lorg/ejml/data/DMatrix3x3;->a32:D

    .line 354
    iget-wide v0, p2, Lorg/ejml/data/DMatrix3x3;->a13:D

    iget-wide v2, p3, Lorg/ejml/data/DMatrix3x3;->a13:D

    mul-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix3x3;->a23:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix3x3;->a23:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix3x3;->a33:D

    iget-wide p2, p3, Lorg/ejml/data/DMatrix3x3;->a33:D

    mul-double/2addr v2, p2

    add-double/2addr v0, v2

    mul-double/2addr p0, v0

    iput-wide p0, p4, Lorg/ejml/data/DMatrix3x3;->a33:D

    return-void
.end method

.method public static multTransA(Lorg/ejml/data/DMatrix3x3;Lorg/ejml/data/DMatrix3x3;Lorg/ejml/data/DMatrix3x3;)V
    .locals 6

    .line 317
    invoke-static {p0, p2}, Lorg/ejml/UtilEjml;->checkSameInstance(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 318
    invoke-static {p1, p2}, Lorg/ejml/UtilEjml;->checkSameInstance(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 319
    iget-wide v0, p0, Lorg/ejml/data/DMatrix3x3;->a11:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix3x3;->a11:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix3x3;->a21:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix3x3;->a21:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix3x3;->a31:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix3x3;->a31:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix3x3;->a11:D

    .line 320
    iget-wide v0, p0, Lorg/ejml/data/DMatrix3x3;->a11:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix3x3;->a12:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix3x3;->a21:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix3x3;->a22:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix3x3;->a31:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix3x3;->a32:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix3x3;->a12:D

    .line 321
    iget-wide v0, p0, Lorg/ejml/data/DMatrix3x3;->a11:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix3x3;->a13:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix3x3;->a21:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix3x3;->a23:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix3x3;->a31:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix3x3;->a33:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix3x3;->a13:D

    .line 322
    iget-wide v0, p0, Lorg/ejml/data/DMatrix3x3;->a12:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix3x3;->a11:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix3x3;->a22:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix3x3;->a21:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix3x3;->a32:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix3x3;->a31:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix3x3;->a21:D

    .line 323
    iget-wide v0, p0, Lorg/ejml/data/DMatrix3x3;->a12:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix3x3;->a12:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix3x3;->a22:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix3x3;->a22:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix3x3;->a32:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix3x3;->a32:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix3x3;->a22:D

    .line 324
    iget-wide v0, p0, Lorg/ejml/data/DMatrix3x3;->a12:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix3x3;->a13:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix3x3;->a22:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix3x3;->a23:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix3x3;->a32:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix3x3;->a33:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix3x3;->a23:D

    .line 325
    iget-wide v0, p0, Lorg/ejml/data/DMatrix3x3;->a13:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix3x3;->a11:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix3x3;->a23:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix3x3;->a21:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix3x3;->a33:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix3x3;->a31:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix3x3;->a31:D

    .line 326
    iget-wide v0, p0, Lorg/ejml/data/DMatrix3x3;->a13:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix3x3;->a12:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix3x3;->a23:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix3x3;->a22:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix3x3;->a33:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix3x3;->a32:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix3x3;->a32:D

    .line 327
    iget-wide v0, p0, Lorg/ejml/data/DMatrix3x3;->a13:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix3x3;->a13:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix3x3;->a23:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix3x3;->a23:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix3x3;->a33:D

    iget-wide p0, p1, Lorg/ejml/data/DMatrix3x3;->a33:D

    mul-double/2addr v2, p0

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix3x3;->a33:D

    return-void
.end method

.method public static multTransAB(DLorg/ejml/data/DMatrix3x3;Lorg/ejml/data/DMatrix3x3;Lorg/ejml/data/DMatrix3x3;)V
    .locals 6

    .line 397
    invoke-static {p2, p4}, Lorg/ejml/UtilEjml;->checkSameInstance(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 398
    invoke-static {p3, p4}, Lorg/ejml/UtilEjml;->checkSameInstance(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 399
    iget-wide v0, p2, Lorg/ejml/data/DMatrix3x3;->a11:D

    iget-wide v2, p3, Lorg/ejml/data/DMatrix3x3;->a11:D

    mul-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix3x3;->a21:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix3x3;->a12:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix3x3;->a31:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix3x3;->a13:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    mul-double/2addr v0, p0

    iput-wide v0, p4, Lorg/ejml/data/DMatrix3x3;->a11:D

    .line 400
    iget-wide v0, p2, Lorg/ejml/data/DMatrix3x3;->a11:D

    iget-wide v2, p3, Lorg/ejml/data/DMatrix3x3;->a21:D

    mul-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix3x3;->a21:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix3x3;->a22:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix3x3;->a31:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix3x3;->a23:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    mul-double/2addr v0, p0

    iput-wide v0, p4, Lorg/ejml/data/DMatrix3x3;->a12:D

    .line 401
    iget-wide v0, p2, Lorg/ejml/data/DMatrix3x3;->a11:D

    iget-wide v2, p3, Lorg/ejml/data/DMatrix3x3;->a31:D

    mul-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix3x3;->a21:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix3x3;->a32:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix3x3;->a31:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix3x3;->a33:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    mul-double/2addr v0, p0

    iput-wide v0, p4, Lorg/ejml/data/DMatrix3x3;->a13:D

    .line 402
    iget-wide v0, p2, Lorg/ejml/data/DMatrix3x3;->a12:D

    iget-wide v2, p3, Lorg/ejml/data/DMatrix3x3;->a11:D

    mul-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix3x3;->a22:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix3x3;->a12:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix3x3;->a32:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix3x3;->a13:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    mul-double/2addr v0, p0

    iput-wide v0, p4, Lorg/ejml/data/DMatrix3x3;->a21:D

    .line 403
    iget-wide v0, p2, Lorg/ejml/data/DMatrix3x3;->a12:D

    iget-wide v2, p3, Lorg/ejml/data/DMatrix3x3;->a21:D

    mul-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix3x3;->a22:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix3x3;->a22:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix3x3;->a32:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix3x3;->a23:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    mul-double/2addr v0, p0

    iput-wide v0, p4, Lorg/ejml/data/DMatrix3x3;->a22:D

    .line 404
    iget-wide v0, p2, Lorg/ejml/data/DMatrix3x3;->a12:D

    iget-wide v2, p3, Lorg/ejml/data/DMatrix3x3;->a31:D

    mul-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix3x3;->a22:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix3x3;->a32:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix3x3;->a32:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix3x3;->a33:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    mul-double/2addr v0, p0

    iput-wide v0, p4, Lorg/ejml/data/DMatrix3x3;->a23:D

    .line 405
    iget-wide v0, p2, Lorg/ejml/data/DMatrix3x3;->a13:D

    iget-wide v2, p3, Lorg/ejml/data/DMatrix3x3;->a11:D

    mul-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix3x3;->a23:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix3x3;->a12:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix3x3;->a33:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix3x3;->a13:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    mul-double/2addr v0, p0

    iput-wide v0, p4, Lorg/ejml/data/DMatrix3x3;->a31:D

    .line 406
    iget-wide v0, p2, Lorg/ejml/data/DMatrix3x3;->a13:D

    iget-wide v2, p3, Lorg/ejml/data/DMatrix3x3;->a21:D

    mul-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix3x3;->a23:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix3x3;->a22:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix3x3;->a33:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix3x3;->a23:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    mul-double/2addr v0, p0

    iput-wide v0, p4, Lorg/ejml/data/DMatrix3x3;->a32:D

    .line 407
    iget-wide v0, p2, Lorg/ejml/data/DMatrix3x3;->a13:D

    iget-wide v2, p3, Lorg/ejml/data/DMatrix3x3;->a31:D

    mul-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix3x3;->a23:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix3x3;->a32:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix3x3;->a33:D

    iget-wide p2, p3, Lorg/ejml/data/DMatrix3x3;->a33:D

    mul-double/2addr v2, p2

    add-double/2addr v0, v2

    mul-double/2addr p0, v0

    iput-wide p0, p4, Lorg/ejml/data/DMatrix3x3;->a33:D

    return-void
.end method

.method public static multTransAB(Lorg/ejml/data/DMatrix3x3;Lorg/ejml/data/DMatrix3x3;Lorg/ejml/data/DMatrix3x3;)V
    .locals 6

    .line 370
    invoke-static {p0, p2}, Lorg/ejml/UtilEjml;->checkSameInstance(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 371
    invoke-static {p1, p2}, Lorg/ejml/UtilEjml;->checkSameInstance(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 372
    iget-wide v0, p0, Lorg/ejml/data/DMatrix3x3;->a11:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix3x3;->a11:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix3x3;->a21:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix3x3;->a12:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix3x3;->a31:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix3x3;->a13:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix3x3;->a11:D

    .line 373
    iget-wide v0, p0, Lorg/ejml/data/DMatrix3x3;->a11:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix3x3;->a21:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix3x3;->a21:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix3x3;->a22:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix3x3;->a31:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix3x3;->a23:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix3x3;->a12:D

    .line 374
    iget-wide v0, p0, Lorg/ejml/data/DMatrix3x3;->a11:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix3x3;->a31:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix3x3;->a21:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix3x3;->a32:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix3x3;->a31:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix3x3;->a33:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix3x3;->a13:D

    .line 375
    iget-wide v0, p0, Lorg/ejml/data/DMatrix3x3;->a12:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix3x3;->a11:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix3x3;->a22:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix3x3;->a12:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix3x3;->a32:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix3x3;->a13:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix3x3;->a21:D

    .line 376
    iget-wide v0, p0, Lorg/ejml/data/DMatrix3x3;->a12:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix3x3;->a21:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix3x3;->a22:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix3x3;->a22:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix3x3;->a32:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix3x3;->a23:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix3x3;->a22:D

    .line 377
    iget-wide v0, p0, Lorg/ejml/data/DMatrix3x3;->a12:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix3x3;->a31:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix3x3;->a22:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix3x3;->a32:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix3x3;->a32:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix3x3;->a33:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix3x3;->a23:D

    .line 378
    iget-wide v0, p0, Lorg/ejml/data/DMatrix3x3;->a13:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix3x3;->a11:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix3x3;->a23:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix3x3;->a12:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix3x3;->a33:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix3x3;->a13:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix3x3;->a31:D

    .line 379
    iget-wide v0, p0, Lorg/ejml/data/DMatrix3x3;->a13:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix3x3;->a21:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix3x3;->a23:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix3x3;->a22:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix3x3;->a33:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix3x3;->a23:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix3x3;->a32:D

    .line 380
    iget-wide v0, p0, Lorg/ejml/data/DMatrix3x3;->a13:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix3x3;->a31:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix3x3;->a23:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix3x3;->a32:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix3x3;->a33:D

    iget-wide p0, p1, Lorg/ejml/data/DMatrix3x3;->a33:D

    mul-double/2addr v2, p0

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix3x3;->a33:D

    return-void
.end method

.method public static multTransB(DLorg/ejml/data/DMatrix3x3;Lorg/ejml/data/DMatrix3x3;Lorg/ejml/data/DMatrix3x3;)V
    .locals 6

    .line 450
    invoke-static {p2, p4}, Lorg/ejml/UtilEjml;->checkSameInstance(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 451
    invoke-static {p3, p4}, Lorg/ejml/UtilEjml;->checkSameInstance(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 452
    iget-wide v0, p2, Lorg/ejml/data/DMatrix3x3;->a11:D

    iget-wide v2, p3, Lorg/ejml/data/DMatrix3x3;->a11:D

    mul-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix3x3;->a12:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix3x3;->a12:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix3x3;->a13:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix3x3;->a13:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    mul-double/2addr v0, p0

    iput-wide v0, p4, Lorg/ejml/data/DMatrix3x3;->a11:D

    .line 453
    iget-wide v0, p2, Lorg/ejml/data/DMatrix3x3;->a11:D

    iget-wide v2, p3, Lorg/ejml/data/DMatrix3x3;->a21:D

    mul-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix3x3;->a12:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix3x3;->a22:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix3x3;->a13:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix3x3;->a23:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    mul-double/2addr v0, p0

    iput-wide v0, p4, Lorg/ejml/data/DMatrix3x3;->a12:D

    .line 454
    iget-wide v0, p2, Lorg/ejml/data/DMatrix3x3;->a11:D

    iget-wide v2, p3, Lorg/ejml/data/DMatrix3x3;->a31:D

    mul-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix3x3;->a12:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix3x3;->a32:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix3x3;->a13:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix3x3;->a33:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    mul-double/2addr v0, p0

    iput-wide v0, p4, Lorg/ejml/data/DMatrix3x3;->a13:D

    .line 455
    iget-wide v0, p2, Lorg/ejml/data/DMatrix3x3;->a21:D

    iget-wide v2, p3, Lorg/ejml/data/DMatrix3x3;->a11:D

    mul-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix3x3;->a22:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix3x3;->a12:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix3x3;->a23:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix3x3;->a13:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    mul-double/2addr v0, p0

    iput-wide v0, p4, Lorg/ejml/data/DMatrix3x3;->a21:D

    .line 456
    iget-wide v0, p2, Lorg/ejml/data/DMatrix3x3;->a21:D

    iget-wide v2, p3, Lorg/ejml/data/DMatrix3x3;->a21:D

    mul-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix3x3;->a22:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix3x3;->a22:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix3x3;->a23:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix3x3;->a23:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    mul-double/2addr v0, p0

    iput-wide v0, p4, Lorg/ejml/data/DMatrix3x3;->a22:D

    .line 457
    iget-wide v0, p2, Lorg/ejml/data/DMatrix3x3;->a21:D

    iget-wide v2, p3, Lorg/ejml/data/DMatrix3x3;->a31:D

    mul-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix3x3;->a22:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix3x3;->a32:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix3x3;->a23:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix3x3;->a33:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    mul-double/2addr v0, p0

    iput-wide v0, p4, Lorg/ejml/data/DMatrix3x3;->a23:D

    .line 458
    iget-wide v0, p2, Lorg/ejml/data/DMatrix3x3;->a31:D

    iget-wide v2, p3, Lorg/ejml/data/DMatrix3x3;->a11:D

    mul-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix3x3;->a32:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix3x3;->a12:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix3x3;->a33:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix3x3;->a13:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    mul-double/2addr v0, p0

    iput-wide v0, p4, Lorg/ejml/data/DMatrix3x3;->a31:D

    .line 459
    iget-wide v0, p2, Lorg/ejml/data/DMatrix3x3;->a31:D

    iget-wide v2, p3, Lorg/ejml/data/DMatrix3x3;->a21:D

    mul-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix3x3;->a32:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix3x3;->a22:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix3x3;->a33:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix3x3;->a23:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    mul-double/2addr v0, p0

    iput-wide v0, p4, Lorg/ejml/data/DMatrix3x3;->a32:D

    .line 460
    iget-wide v0, p2, Lorg/ejml/data/DMatrix3x3;->a31:D

    iget-wide v2, p3, Lorg/ejml/data/DMatrix3x3;->a31:D

    mul-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix3x3;->a32:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix3x3;->a32:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix3x3;->a33:D

    iget-wide p2, p3, Lorg/ejml/data/DMatrix3x3;->a33:D

    mul-double/2addr v2, p2

    add-double/2addr v0, v2

    mul-double/2addr p0, v0

    iput-wide p0, p4, Lorg/ejml/data/DMatrix3x3;->a33:D

    return-void
.end method

.method public static multTransB(Lorg/ejml/data/DMatrix3x3;Lorg/ejml/data/DMatrix3x3;Lorg/ejml/data/DMatrix3x3;)V
    .locals 6

    .line 423
    invoke-static {p0, p2}, Lorg/ejml/UtilEjml;->checkSameInstance(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 424
    invoke-static {p1, p2}, Lorg/ejml/UtilEjml;->checkSameInstance(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 425
    iget-wide v0, p0, Lorg/ejml/data/DMatrix3x3;->a11:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix3x3;->a11:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix3x3;->a12:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix3x3;->a12:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix3x3;->a13:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix3x3;->a13:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix3x3;->a11:D

    .line 426
    iget-wide v0, p0, Lorg/ejml/data/DMatrix3x3;->a11:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix3x3;->a21:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix3x3;->a12:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix3x3;->a22:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix3x3;->a13:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix3x3;->a23:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix3x3;->a12:D

    .line 427
    iget-wide v0, p0, Lorg/ejml/data/DMatrix3x3;->a11:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix3x3;->a31:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix3x3;->a12:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix3x3;->a32:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix3x3;->a13:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix3x3;->a33:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix3x3;->a13:D

    .line 428
    iget-wide v0, p0, Lorg/ejml/data/DMatrix3x3;->a21:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix3x3;->a11:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix3x3;->a22:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix3x3;->a12:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix3x3;->a23:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix3x3;->a13:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix3x3;->a21:D

    .line 429
    iget-wide v0, p0, Lorg/ejml/data/DMatrix3x3;->a21:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix3x3;->a21:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix3x3;->a22:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix3x3;->a22:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix3x3;->a23:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix3x3;->a23:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix3x3;->a22:D

    .line 430
    iget-wide v0, p0, Lorg/ejml/data/DMatrix3x3;->a21:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix3x3;->a31:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix3x3;->a22:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix3x3;->a32:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix3x3;->a23:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix3x3;->a33:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix3x3;->a23:D

    .line 431
    iget-wide v0, p0, Lorg/ejml/data/DMatrix3x3;->a31:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix3x3;->a11:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix3x3;->a32:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix3x3;->a12:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix3x3;->a33:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix3x3;->a13:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix3x3;->a31:D

    .line 432
    iget-wide v0, p0, Lorg/ejml/data/DMatrix3x3;->a31:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix3x3;->a21:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix3x3;->a32:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix3x3;->a22:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix3x3;->a33:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix3x3;->a23:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix3x3;->a32:D

    .line 433
    iget-wide v0, p0, Lorg/ejml/data/DMatrix3x3;->a31:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix3x3;->a31:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix3x3;->a32:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix3x3;->a32:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix3x3;->a33:D

    iget-wide p0, p1, Lorg/ejml/data/DMatrix3x3;->a33:D

    mul-double/2addr v2, p0

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix3x3;->a33:D

    return-void
.end method

.method public static scale(DLorg/ejml/data/DMatrix3;)V
    .locals 2

    .line 1211
    iget-wide v0, p2, Lorg/ejml/data/DMatrix3;->a1:D

    mul-double/2addr v0, p0

    iput-wide v0, p2, Lorg/ejml/data/DMatrix3;->a1:D

    .line 1212
    iget-wide v0, p2, Lorg/ejml/data/DMatrix3;->a2:D

    mul-double/2addr v0, p0

    iput-wide v0, p2, Lorg/ejml/data/DMatrix3;->a2:D

    .line 1213
    iget-wide v0, p2, Lorg/ejml/data/DMatrix3;->a3:D

    mul-double/2addr v0, p0

    iput-wide v0, p2, Lorg/ejml/data/DMatrix3;->a3:D

    return-void
.end method

.method public static scale(DLorg/ejml/data/DMatrix3;Lorg/ejml/data/DMatrix3;)V
    .locals 2

    .line 1245
    iget-wide v0, p2, Lorg/ejml/data/DMatrix3;->a1:D

    mul-double/2addr v0, p0

    iput-wide v0, p3, Lorg/ejml/data/DMatrix3;->a1:D

    .line 1246
    iget-wide v0, p2, Lorg/ejml/data/DMatrix3;->a2:D

    mul-double/2addr v0, p0

    iput-wide v0, p3, Lorg/ejml/data/DMatrix3;->a2:D

    .line 1247
    iget-wide v0, p2, Lorg/ejml/data/DMatrix3;->a3:D

    mul-double/2addr v0, p0

    iput-wide v0, p3, Lorg/ejml/data/DMatrix3;->a3:D

    return-void
.end method

.method public static scale(DLorg/ejml/data/DMatrix3x3;)V
    .locals 2

    .line 1195
    iget-wide v0, p2, Lorg/ejml/data/DMatrix3x3;->a11:D

    mul-double/2addr v0, p0

    iput-wide v0, p2, Lorg/ejml/data/DMatrix3x3;->a11:D

    iget-wide v0, p2, Lorg/ejml/data/DMatrix3x3;->a12:D

    mul-double/2addr v0, p0

    iput-wide v0, p2, Lorg/ejml/data/DMatrix3x3;->a12:D

    iget-wide v0, p2, Lorg/ejml/data/DMatrix3x3;->a13:D

    mul-double/2addr v0, p0

    iput-wide v0, p2, Lorg/ejml/data/DMatrix3x3;->a13:D

    .line 1196
    iget-wide v0, p2, Lorg/ejml/data/DMatrix3x3;->a21:D

    mul-double/2addr v0, p0

    iput-wide v0, p2, Lorg/ejml/data/DMatrix3x3;->a21:D

    iget-wide v0, p2, Lorg/ejml/data/DMatrix3x3;->a22:D

    mul-double/2addr v0, p0

    iput-wide v0, p2, Lorg/ejml/data/DMatrix3x3;->a22:D

    iget-wide v0, p2, Lorg/ejml/data/DMatrix3x3;->a23:D

    mul-double/2addr v0, p0

    iput-wide v0, p2, Lorg/ejml/data/DMatrix3x3;->a23:D

    .line 1197
    iget-wide v0, p2, Lorg/ejml/data/DMatrix3x3;->a31:D

    mul-double/2addr v0, p0

    iput-wide v0, p2, Lorg/ejml/data/DMatrix3x3;->a31:D

    iget-wide v0, p2, Lorg/ejml/data/DMatrix3x3;->a32:D

    mul-double/2addr v0, p0

    iput-wide v0, p2, Lorg/ejml/data/DMatrix3x3;->a32:D

    iget-wide v0, p2, Lorg/ejml/data/DMatrix3x3;->a33:D

    mul-double/2addr v0, p0

    iput-wide v0, p2, Lorg/ejml/data/DMatrix3x3;->a33:D

    return-void
.end method

.method public static scale(DLorg/ejml/data/DMatrix3x3;Lorg/ejml/data/DMatrix3x3;)V
    .locals 2

    .line 1228
    iget-wide v0, p2, Lorg/ejml/data/DMatrix3x3;->a11:D

    mul-double/2addr v0, p0

    iput-wide v0, p3, Lorg/ejml/data/DMatrix3x3;->a11:D

    iget-wide v0, p2, Lorg/ejml/data/DMatrix3x3;->a12:D

    mul-double/2addr v0, p0

    iput-wide v0, p3, Lorg/ejml/data/DMatrix3x3;->a12:D

    iget-wide v0, p2, Lorg/ejml/data/DMatrix3x3;->a13:D

    mul-double/2addr v0, p0

    iput-wide v0, p3, Lorg/ejml/data/DMatrix3x3;->a13:D

    .line 1229
    iget-wide v0, p2, Lorg/ejml/data/DMatrix3x3;->a21:D

    mul-double/2addr v0, p0

    iput-wide v0, p3, Lorg/ejml/data/DMatrix3x3;->a21:D

    iget-wide v0, p2, Lorg/ejml/data/DMatrix3x3;->a22:D

    mul-double/2addr v0, p0

    iput-wide v0, p3, Lorg/ejml/data/DMatrix3x3;->a22:D

    iget-wide v0, p2, Lorg/ejml/data/DMatrix3x3;->a23:D

    mul-double/2addr v0, p0

    iput-wide v0, p3, Lorg/ejml/data/DMatrix3x3;->a23:D

    .line 1230
    iget-wide v0, p2, Lorg/ejml/data/DMatrix3x3;->a31:D

    mul-double/2addr v0, p0

    iput-wide v0, p3, Lorg/ejml/data/DMatrix3x3;->a31:D

    iget-wide v0, p2, Lorg/ejml/data/DMatrix3x3;->a32:D

    mul-double/2addr v0, p0

    iput-wide v0, p3, Lorg/ejml/data/DMatrix3x3;->a32:D

    iget-wide v0, p2, Lorg/ejml/data/DMatrix3x3;->a33:D

    mul-double/2addr v0, p0

    iput-wide v0, p3, Lorg/ejml/data/DMatrix3x3;->a33:D

    return-void
.end method

.method public static setIdentity(Lorg/ejml/data/DMatrix3x3;)V
    .locals 4

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 756
    iput-wide v0, p0, Lorg/ejml/data/DMatrix3x3;->a11:D

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lorg/ejml/data/DMatrix3x3;->a21:D

    iput-wide v2, p0, Lorg/ejml/data/DMatrix3x3;->a31:D

    .line 757
    iput-wide v2, p0, Lorg/ejml/data/DMatrix3x3;->a12:D

    iput-wide v0, p0, Lorg/ejml/data/DMatrix3x3;->a22:D

    iput-wide v2, p0, Lorg/ejml/data/DMatrix3x3;->a32:D

    .line 758
    iput-wide v2, p0, Lorg/ejml/data/DMatrix3x3;->a13:D

    iput-wide v2, p0, Lorg/ejml/data/DMatrix3x3;->a23:D

    iput-wide v0, p0, Lorg/ejml/data/DMatrix3x3;->a33:D

    return-void
.end method

.method public static subtract(Lorg/ejml/data/DMatrix3;Lorg/ejml/data/DMatrix3;Lorg/ejml/data/DMatrix3;)V
    .locals 4

    .line 165
    iget-wide v0, p0, Lorg/ejml/data/DMatrix3;->a1:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix3;->a1:D

    sub-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix3;->a1:D

    .line 166
    iget-wide v0, p0, Lorg/ejml/data/DMatrix3;->a2:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix3;->a2:D

    sub-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix3;->a2:D

    .line 167
    iget-wide v0, p0, Lorg/ejml/data/DMatrix3;->a3:D

    iget-wide p0, p1, Lorg/ejml/data/DMatrix3;->a3:D

    sub-double/2addr v0, p0

    iput-wide v0, p2, Lorg/ejml/data/DMatrix3;->a3:D

    return-void
.end method

.method public static subtract(Lorg/ejml/data/DMatrix3x3;Lorg/ejml/data/DMatrix3x3;Lorg/ejml/data/DMatrix3x3;)V
    .locals 4

    .line 138
    iget-wide v0, p0, Lorg/ejml/data/DMatrix3x3;->a11:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix3x3;->a11:D

    sub-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix3x3;->a11:D

    .line 139
    iget-wide v0, p0, Lorg/ejml/data/DMatrix3x3;->a12:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix3x3;->a12:D

    sub-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix3x3;->a12:D

    .line 140
    iget-wide v0, p0, Lorg/ejml/data/DMatrix3x3;->a13:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix3x3;->a13:D

    sub-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix3x3;->a13:D

    .line 141
    iget-wide v0, p0, Lorg/ejml/data/DMatrix3x3;->a21:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix3x3;->a21:D

    sub-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix3x3;->a21:D

    .line 142
    iget-wide v0, p0, Lorg/ejml/data/DMatrix3x3;->a22:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix3x3;->a22:D

    sub-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix3x3;->a22:D

    .line 143
    iget-wide v0, p0, Lorg/ejml/data/DMatrix3x3;->a23:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix3x3;->a23:D

    sub-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix3x3;->a23:D

    .line 144
    iget-wide v0, p0, Lorg/ejml/data/DMatrix3x3;->a31:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix3x3;->a31:D

    sub-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix3x3;->a31:D

    .line 145
    iget-wide v0, p0, Lorg/ejml/data/DMatrix3x3;->a32:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix3x3;->a32:D

    sub-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix3x3;->a32:D

    .line 146
    iget-wide v0, p0, Lorg/ejml/data/DMatrix3x3;->a33:D

    iget-wide p0, p1, Lorg/ejml/data/DMatrix3x3;->a33:D

    sub-double/2addr v0, p0

    iput-wide v0, p2, Lorg/ejml/data/DMatrix3x3;->a33:D

    return-void
.end method

.method public static subtractEquals(Lorg/ejml/data/DMatrix3;Lorg/ejml/data/DMatrix3;)V
    .locals 4

    .line 203
    iget-wide v0, p0, Lorg/ejml/data/DMatrix3;->a1:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix3;->a1:D

    sub-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix3;->a1:D

    .line 204
    iget-wide v0, p0, Lorg/ejml/data/DMatrix3;->a2:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix3;->a2:D

    sub-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix3;->a2:D

    .line 205
    iget-wide v0, p0, Lorg/ejml/data/DMatrix3;->a3:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix3;->a3:D

    sub-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix3;->a3:D

    return-void
.end method

.method public static subtractEquals(Lorg/ejml/data/DMatrix3x3;Lorg/ejml/data/DMatrix3x3;)V
    .locals 4

    .line 181
    iget-wide v0, p0, Lorg/ejml/data/DMatrix3x3;->a11:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix3x3;->a11:D

    sub-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix3x3;->a11:D

    .line 182
    iget-wide v0, p0, Lorg/ejml/data/DMatrix3x3;->a12:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix3x3;->a12:D

    sub-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix3x3;->a12:D

    .line 183
    iget-wide v0, p0, Lorg/ejml/data/DMatrix3x3;->a13:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix3x3;->a13:D

    sub-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix3x3;->a13:D

    .line 184
    iget-wide v0, p0, Lorg/ejml/data/DMatrix3x3;->a21:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix3x3;->a21:D

    sub-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix3x3;->a21:D

    .line 185
    iget-wide v0, p0, Lorg/ejml/data/DMatrix3x3;->a22:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix3x3;->a22:D

    sub-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix3x3;->a22:D

    .line 186
    iget-wide v0, p0, Lorg/ejml/data/DMatrix3x3;->a23:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix3x3;->a23:D

    sub-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix3x3;->a23:D

    .line 187
    iget-wide v0, p0, Lorg/ejml/data/DMatrix3x3;->a31:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix3x3;->a31:D

    sub-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix3x3;->a31:D

    .line 188
    iget-wide v0, p0, Lorg/ejml/data/DMatrix3x3;->a32:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix3x3;->a32:D

    sub-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix3x3;->a32:D

    .line 189
    iget-wide v0, p0, Lorg/ejml/data/DMatrix3x3;->a33:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix3x3;->a33:D

    sub-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix3x3;->a33:D

    return-void
.end method

.method public static trace(Lorg/ejml/data/DMatrix3x3;)D
    .locals 4

    .line 879
    iget-wide v0, p0, Lorg/ejml/data/DMatrix3x3;->a11:D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix3x3;->a22:D

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix3x3;->a33:D

    add-double/2addr v0, v2

    return-wide v0
.end method

.method public static transpose(Lorg/ejml/data/DMatrix3x3;Lorg/ejml/data/DMatrix3x3;)Lorg/ejml/data/DMatrix3x3;
    .locals 2

    if-nez p0, :cond_0

    .line 235
    new-instance p0, Lorg/ejml/data/DMatrix3x3;

    invoke-direct {p0}, Lorg/ejml/data/DMatrix3x3;-><init>()V

    .line 237
    :cond_0
    invoke-static {p0, p1}, Lorg/ejml/UtilEjml;->checkSameInstance(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 238
    iget-wide v0, p0, Lorg/ejml/data/DMatrix3x3;->a11:D

    iput-wide v0, p1, Lorg/ejml/data/DMatrix3x3;->a11:D

    .line 239
    iget-wide v0, p0, Lorg/ejml/data/DMatrix3x3;->a21:D

    iput-wide v0, p1, Lorg/ejml/data/DMatrix3x3;->a12:D

    .line 240
    iget-wide v0, p0, Lorg/ejml/data/DMatrix3x3;->a31:D

    iput-wide v0, p1, Lorg/ejml/data/DMatrix3x3;->a13:D

    .line 241
    iget-wide v0, p0, Lorg/ejml/data/DMatrix3x3;->a12:D

    iput-wide v0, p1, Lorg/ejml/data/DMatrix3x3;->a21:D

    .line 242
    iget-wide v0, p0, Lorg/ejml/data/DMatrix3x3;->a22:D

    iput-wide v0, p1, Lorg/ejml/data/DMatrix3x3;->a22:D

    .line 243
    iget-wide v0, p0, Lorg/ejml/data/DMatrix3x3;->a32:D

    iput-wide v0, p1, Lorg/ejml/data/DMatrix3x3;->a23:D

    .line 244
    iget-wide v0, p0, Lorg/ejml/data/DMatrix3x3;->a13:D

    iput-wide v0, p1, Lorg/ejml/data/DMatrix3x3;->a31:D

    .line 245
    iget-wide v0, p0, Lorg/ejml/data/DMatrix3x3;->a23:D

    iput-wide v0, p1, Lorg/ejml/data/DMatrix3x3;->a32:D

    .line 246
    iget-wide v0, p0, Lorg/ejml/data/DMatrix3x3;->a33:D

    iput-wide v0, p1, Lorg/ejml/data/DMatrix3x3;->a33:D

    return-object p1
.end method

.method public static transpose(Lorg/ejml/data/DMatrix3x3;)V
    .locals 4

    .line 216
    iget-wide v0, p0, Lorg/ejml/data/DMatrix3x3;->a12:D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix3x3;->a21:D

    iput-wide v2, p0, Lorg/ejml/data/DMatrix3x3;->a12:D

    iput-wide v0, p0, Lorg/ejml/data/DMatrix3x3;->a21:D

    .line 217
    iget-wide v0, p0, Lorg/ejml/data/DMatrix3x3;->a13:D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix3x3;->a31:D

    iput-wide v2, p0, Lorg/ejml/data/DMatrix3x3;->a13:D

    iput-wide v0, p0, Lorg/ejml/data/DMatrix3x3;->a31:D

    .line 218
    iget-wide v0, p0, Lorg/ejml/data/DMatrix3x3;->a23:D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix3x3;->a32:D

    iput-wide v2, p0, Lorg/ejml/data/DMatrix3x3;->a23:D

    iput-wide v0, p0, Lorg/ejml/data/DMatrix3x3;->a32:D

    return-void
.end method
