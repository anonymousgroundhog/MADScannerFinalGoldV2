.class public Lorg/ejml/dense/fixed/CommonOps_DDF2;
.super Ljava/lang/Object;
.source "CommonOps_DDF2.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static add(Lorg/ejml/data/DMatrix2;Lorg/ejml/data/DMatrix2;Lorg/ejml/data/DMatrix2;)V
    .locals 4

    .line 74
    iget-wide v0, p0, Lorg/ejml/data/DMatrix2;->a1:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix2;->a1:D

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix2;->a1:D

    .line 75
    iget-wide v0, p0, Lorg/ejml/data/DMatrix2;->a2:D

    iget-wide p0, p1, Lorg/ejml/data/DMatrix2;->a2:D

    add-double/2addr v0, p0

    iput-wide v0, p2, Lorg/ejml/data/DMatrix2;->a2:D

    return-void
.end method

.method public static add(Lorg/ejml/data/DMatrix2x2;Lorg/ejml/data/DMatrix2x2;Lorg/ejml/data/DMatrix2x2;)V
    .locals 4

    .line 52
    iget-wide v0, p0, Lorg/ejml/data/DMatrix2x2;->a11:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix2x2;->a11:D

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix2x2;->a11:D

    .line 53
    iget-wide v0, p0, Lorg/ejml/data/DMatrix2x2;->a12:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix2x2;->a12:D

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix2x2;->a12:D

    .line 54
    iget-wide v0, p0, Lorg/ejml/data/DMatrix2x2;->a21:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix2x2;->a21:D

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix2x2;->a21:D

    .line 55
    iget-wide v0, p0, Lorg/ejml/data/DMatrix2x2;->a22:D

    iget-wide p0, p1, Lorg/ejml/data/DMatrix2x2;->a22:D

    add-double/2addr v0, p0

    iput-wide v0, p2, Lorg/ejml/data/DMatrix2x2;->a22:D

    return-void
.end method

.method public static addEquals(Lorg/ejml/data/DMatrix2;Lorg/ejml/data/DMatrix2;)V
    .locals 4

    .line 106
    iget-wide v0, p0, Lorg/ejml/data/DMatrix2;->a1:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix2;->a1:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix2;->a1:D

    .line 107
    iget-wide v0, p0, Lorg/ejml/data/DMatrix2;->a2:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix2;->a2:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix2;->a2:D

    return-void
.end method

.method public static addEquals(Lorg/ejml/data/DMatrix2x2;Lorg/ejml/data/DMatrix2x2;)V
    .locals 4

    .line 89
    iget-wide v0, p0, Lorg/ejml/data/DMatrix2x2;->a11:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix2x2;->a11:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix2x2;->a11:D

    .line 90
    iget-wide v0, p0, Lorg/ejml/data/DMatrix2x2;->a12:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix2x2;->a12:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix2x2;->a12:D

    .line 91
    iget-wide v0, p0, Lorg/ejml/data/DMatrix2x2;->a21:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix2x2;->a21:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix2x2;->a21:D

    .line 92
    iget-wide v0, p0, Lorg/ejml/data/DMatrix2x2;->a22:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix2x2;->a22:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix2x2;->a22:D

    return-void
.end method

.method public static changeSign(Lorg/ejml/data/DMatrix2;)V
    .locals 2

    .line 1153
    iget-wide v0, p0, Lorg/ejml/data/DMatrix2;->a1:D

    neg-double v0, v0

    iput-wide v0, p0, Lorg/ejml/data/DMatrix2;->a1:D

    .line 1154
    iget-wide v0, p0, Lorg/ejml/data/DMatrix2;->a2:D

    neg-double v0, v0

    iput-wide v0, p0, Lorg/ejml/data/DMatrix2;->a2:D

    return-void
.end method

.method public static changeSign(Lorg/ejml/data/DMatrix2x2;)V
    .locals 2

    .line 1138
    iget-wide v0, p0, Lorg/ejml/data/DMatrix2x2;->a11:D

    neg-double v0, v0

    iput-wide v0, p0, Lorg/ejml/data/DMatrix2x2;->a11:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix2x2;->a12:D

    neg-double v0, v0

    iput-wide v0, p0, Lorg/ejml/data/DMatrix2x2;->a12:D

    .line 1139
    iget-wide v0, p0, Lorg/ejml/data/DMatrix2x2;->a21:D

    neg-double v0, v0

    iput-wide v0, p0, Lorg/ejml/data/DMatrix2x2;->a21:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix2x2;->a22:D

    neg-double v0, v0

    iput-wide v0, p0, Lorg/ejml/data/DMatrix2x2;->a22:D

    return-void
.end method

.method public static cholL(Lorg/ejml/data/DMatrix2x2;)Z
    .locals 6

    .line 696
    iget-wide v0, p0, Lorg/ejml/data/DMatrix2x2;->a11:D

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    iput-wide v0, p0, Lorg/ejml/data/DMatrix2x2;->a11:D

    const-wide/16 v0, 0x0

    .line 697
    iput-wide v0, p0, Lorg/ejml/data/DMatrix2x2;->a12:D

    .line 698
    iget-wide v0, p0, Lorg/ejml/data/DMatrix2x2;->a21:D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix2x2;->a11:D

    div-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix2x2;->a21:D

    .line 699
    iget-wide v0, p0, Lorg/ejml/data/DMatrix2x2;->a22:D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix2x2;->a21:D

    iget-wide v4, p0, Lorg/ejml/data/DMatrix2x2;->a21:D

    mul-double/2addr v2, v4

    sub-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    iput-wide v0, p0, Lorg/ejml/data/DMatrix2x2;->a22:D

    .line 700
    iget-wide v0, p0, Lorg/ejml/data/DMatrix2x2;->a22:D

    invoke-static {v0, v1}, Lorg/ejml/UtilEjml;->isUncountable(D)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static cholU(Lorg/ejml/data/DMatrix2x2;)Z
    .locals 6

    .line 711
    iget-wide v0, p0, Lorg/ejml/data/DMatrix2x2;->a11:D

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    iput-wide v0, p0, Lorg/ejml/data/DMatrix2x2;->a11:D

    const-wide/16 v0, 0x0

    .line 712
    iput-wide v0, p0, Lorg/ejml/data/DMatrix2x2;->a21:D

    .line 713
    iget-wide v0, p0, Lorg/ejml/data/DMatrix2x2;->a12:D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix2x2;->a11:D

    div-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix2x2;->a12:D

    .line 714
    iget-wide v0, p0, Lorg/ejml/data/DMatrix2x2;->a22:D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix2x2;->a12:D

    iget-wide v4, p0, Lorg/ejml/data/DMatrix2x2;->a12:D

    mul-double/2addr v2, v4

    sub-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    iput-wide v0, p0, Lorg/ejml/data/DMatrix2x2;->a22:D

    .line 715
    iget-wide v0, p0, Lorg/ejml/data/DMatrix2x2;->a22:D

    invoke-static {v0, v1}, Lorg/ejml/UtilEjml;->isUncountable(D)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static det(Lorg/ejml/data/DMatrix2x2;)D
    .locals 6

    .line 685
    iget-wide v0, p0, Lorg/ejml/data/DMatrix2x2;->a11:D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix2x2;->a22:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix2x2;->a12:D

    iget-wide v4, p0, Lorg/ejml/data/DMatrix2x2;->a21:D

    mul-double/2addr v2, v4

    sub-double/2addr v0, v2

    return-wide v0
.end method

.method public static diag(Lorg/ejml/data/DMatrix2x2;Lorg/ejml/data/DMatrix2;)V
    .locals 2

    .line 745
    iget-wide v0, p0, Lorg/ejml/data/DMatrix2x2;->a11:D

    iput-wide v0, p1, Lorg/ejml/data/DMatrix2;->a1:D

    .line 746
    iget-wide v0, p0, Lorg/ejml/data/DMatrix2x2;->a22:D

    iput-wide v0, p1, Lorg/ejml/data/DMatrix2;->a2:D

    return-void
.end method

.method public static divide(Lorg/ejml/data/DMatrix2;D)V
    .locals 2

    .line 1091
    iget-wide v0, p0, Lorg/ejml/data/DMatrix2;->a1:D

    div-double/2addr v0, p1

    iput-wide v0, p0, Lorg/ejml/data/DMatrix2;->a1:D

    .line 1092
    iget-wide v0, p0, Lorg/ejml/data/DMatrix2;->a2:D

    div-double/2addr v0, p1

    iput-wide v0, p0, Lorg/ejml/data/DMatrix2;->a2:D

    return-void
.end method

.method public static divide(Lorg/ejml/data/DMatrix2;DLorg/ejml/data/DMatrix2;)V
    .locals 2

    .line 1123
    iget-wide v0, p0, Lorg/ejml/data/DMatrix2;->a1:D

    div-double/2addr v0, p1

    iput-wide v0, p3, Lorg/ejml/data/DMatrix2;->a1:D

    .line 1124
    iget-wide v0, p0, Lorg/ejml/data/DMatrix2;->a2:D

    div-double/2addr v0, p1

    iput-wide v0, p3, Lorg/ejml/data/DMatrix2;->a2:D

    return-void
.end method

.method public static divide(Lorg/ejml/data/DMatrix2x2;D)V
    .locals 2

    .line 1076
    iget-wide v0, p0, Lorg/ejml/data/DMatrix2x2;->a11:D

    div-double/2addr v0, p1

    iput-wide v0, p0, Lorg/ejml/data/DMatrix2x2;->a11:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix2x2;->a12:D

    div-double/2addr v0, p1

    iput-wide v0, p0, Lorg/ejml/data/DMatrix2x2;->a12:D

    .line 1077
    iget-wide v0, p0, Lorg/ejml/data/DMatrix2x2;->a21:D

    div-double/2addr v0, p1

    iput-wide v0, p0, Lorg/ejml/data/DMatrix2x2;->a21:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix2x2;->a22:D

    div-double/2addr v0, p1

    iput-wide v0, p0, Lorg/ejml/data/DMatrix2x2;->a22:D

    return-void
.end method

.method public static divide(Lorg/ejml/data/DMatrix2x2;DLorg/ejml/data/DMatrix2x2;)V
    .locals 2

    .line 1107
    iget-wide v0, p0, Lorg/ejml/data/DMatrix2x2;->a11:D

    div-double/2addr v0, p1

    iput-wide v0, p3, Lorg/ejml/data/DMatrix2x2;->a11:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix2x2;->a12:D

    div-double/2addr v0, p1

    iput-wide v0, p3, Lorg/ejml/data/DMatrix2x2;->a12:D

    .line 1108
    iget-wide v0, p0, Lorg/ejml/data/DMatrix2x2;->a21:D

    div-double/2addr v0, p1

    iput-wide v0, p3, Lorg/ejml/data/DMatrix2x2;->a21:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix2x2;->a22:D

    div-double/2addr v0, p1

    iput-wide v0, p3, Lorg/ejml/data/DMatrix2x2;->a22:D

    return-void
.end method

.method public static dot(Lorg/ejml/data/DMatrix2;Lorg/ejml/data/DMatrix2;)D
    .locals 4

    .line 628
    iget-wide v0, p0, Lorg/ejml/data/DMatrix2;->a1:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix2;->a1:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix2;->a2:D

    iget-wide p0, p1, Lorg/ejml/data/DMatrix2;->a2:D

    mul-double/2addr v2, p0

    add-double/2addr v0, v2

    return-wide v0
.end method

.method public static elementDiv(Lorg/ejml/data/DMatrix2;Lorg/ejml/data/DMatrix2;)V
    .locals 4

    .line 971
    iget-wide v0, p0, Lorg/ejml/data/DMatrix2;->a1:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix2;->a1:D

    div-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix2;->a1:D

    .line 972
    iget-wide v0, p0, Lorg/ejml/data/DMatrix2;->a2:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix2;->a2:D

    div-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix2;->a2:D

    return-void
.end method

.method public static elementDiv(Lorg/ejml/data/DMatrix2;Lorg/ejml/data/DMatrix2;Lorg/ejml/data/DMatrix2;)V
    .locals 4

    .line 999
    iget-wide v0, p0, Lorg/ejml/data/DMatrix2;->a1:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix2;->a1:D

    div-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix2;->a1:D

    .line 1000
    iget-wide v0, p0, Lorg/ejml/data/DMatrix2;->a2:D

    iget-wide p0, p1, Lorg/ejml/data/DMatrix2;->a2:D

    div-double/2addr v0, p0

    iput-wide v0, p2, Lorg/ejml/data/DMatrix2;->a2:D

    return-void
.end method

.method public static elementDiv(Lorg/ejml/data/DMatrix2x2;Lorg/ejml/data/DMatrix2x2;)V
    .locals 4

    .line 958
    iget-wide v0, p0, Lorg/ejml/data/DMatrix2x2;->a11:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix2x2;->a11:D

    div-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix2x2;->a11:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix2x2;->a12:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix2x2;->a12:D

    div-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix2x2;->a12:D

    .line 959
    iget-wide v0, p0, Lorg/ejml/data/DMatrix2x2;->a21:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix2x2;->a21:D

    div-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix2x2;->a21:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix2x2;->a22:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix2x2;->a22:D

    div-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix2x2;->a22:D

    return-void
.end method

.method public static elementDiv(Lorg/ejml/data/DMatrix2x2;Lorg/ejml/data/DMatrix2x2;Lorg/ejml/data/DMatrix2x2;)V
    .locals 4

    .line 985
    iget-wide v0, p0, Lorg/ejml/data/DMatrix2x2;->a11:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix2x2;->a11:D

    div-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix2x2;->a11:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix2x2;->a12:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix2x2;->a12:D

    div-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix2x2;->a12:D

    .line 986
    iget-wide v0, p0, Lorg/ejml/data/DMatrix2x2;->a21:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix2x2;->a21:D

    div-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix2x2;->a21:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix2x2;->a22:D

    iget-wide p0, p1, Lorg/ejml/data/DMatrix2x2;->a22:D

    div-double/2addr v0, p0

    iput-wide v0, p2, Lorg/ejml/data/DMatrix2x2;->a22:D

    return-void
.end method

.method public static elementMax(Lorg/ejml/data/DMatrix2;)D
    .locals 4

    .line 779
    iget-wide v0, p0, Lorg/ejml/data/DMatrix2;->a1:D

    .line 780
    iget-wide v2, p0, Lorg/ejml/data/DMatrix2;->a2:D

    cmpl-double v2, v2, v0

    if-lez v2, :cond_0

    iget-wide v0, p0, Lorg/ejml/data/DMatrix2;->a2:D

    :cond_0
    return-wide v0
.end method

.method public static elementMax(Lorg/ejml/data/DMatrix2x2;)D
    .locals 4

    .line 760
    iget-wide v0, p0, Lorg/ejml/data/DMatrix2x2;->a11:D

    .line 761
    iget-wide v2, p0, Lorg/ejml/data/DMatrix2x2;->a12:D

    cmpl-double v2, v2, v0

    if-lez v2, :cond_0

    iget-wide v0, p0, Lorg/ejml/data/DMatrix2x2;->a12:D

    .line 762
    :cond_0
    iget-wide v2, p0, Lorg/ejml/data/DMatrix2x2;->a21:D

    cmpl-double v2, v2, v0

    if-lez v2, :cond_1

    iget-wide v0, p0, Lorg/ejml/data/DMatrix2x2;->a21:D

    .line 763
    :cond_1
    iget-wide v2, p0, Lorg/ejml/data/DMatrix2x2;->a22:D

    cmpl-double v2, v2, v0

    if-lez v2, :cond_2

    iget-wide v0, p0, Lorg/ejml/data/DMatrix2x2;->a22:D

    :cond_2
    return-wide v0
.end method

.method public static elementMaxAbs(Lorg/ejml/data/DMatrix2;)D
    .locals 5

    .line 815
    iget-wide v0, p0, Lorg/ejml/data/DMatrix2;->a1:D

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    .line 816
    iget-wide v2, p0, Lorg/ejml/data/DMatrix2;->a2:D

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    cmpl-double v4, v2, v0

    if-lez v4, :cond_0

    move-wide v0, v2

    .line 817
    :cond_0
    iget-wide v2, p0, Lorg/ejml/data/DMatrix2;->a2:D

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    cmpl-double p0, v2, v0

    if-lez p0, :cond_1

    move-wide v0, v2

    :cond_1
    return-wide v0
.end method

.method public static elementMaxAbs(Lorg/ejml/data/DMatrix2x2;)D
    .locals 5

    .line 796
    iget-wide v0, p0, Lorg/ejml/data/DMatrix2x2;->a11:D

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    .line 797
    iget-wide v2, p0, Lorg/ejml/data/DMatrix2x2;->a12:D

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    cmpl-double v4, v2, v0

    if-lez v4, :cond_0

    move-wide v0, v2

    .line 798
    :cond_0
    iget-wide v2, p0, Lorg/ejml/data/DMatrix2x2;->a21:D

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    cmpl-double v4, v2, v0

    if-lez v4, :cond_1

    move-wide v0, v2

    .line 799
    :cond_1
    iget-wide v2, p0, Lorg/ejml/data/DMatrix2x2;->a22:D

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    cmpl-double p0, v2, v0

    if-lez p0, :cond_2

    move-wide v0, v2

    :cond_2
    return-wide v0
.end method

.method public static elementMin(Lorg/ejml/data/DMatrix2;)D
    .locals 4

    .line 852
    iget-wide v0, p0, Lorg/ejml/data/DMatrix2;->a1:D

    .line 853
    iget-wide v2, p0, Lorg/ejml/data/DMatrix2;->a2:D

    cmpg-double v2, v2, v0

    if-gez v2, :cond_0

    iget-wide v0, p0, Lorg/ejml/data/DMatrix2;->a2:D

    :cond_0
    return-wide v0
.end method

.method public static elementMin(Lorg/ejml/data/DMatrix2x2;)D
    .locals 4

    .line 833
    iget-wide v0, p0, Lorg/ejml/data/DMatrix2x2;->a11:D

    .line 834
    iget-wide v2, p0, Lorg/ejml/data/DMatrix2x2;->a12:D

    cmpg-double v2, v2, v0

    if-gez v2, :cond_0

    iget-wide v0, p0, Lorg/ejml/data/DMatrix2x2;->a12:D

    .line 835
    :cond_0
    iget-wide v2, p0, Lorg/ejml/data/DMatrix2x2;->a21:D

    cmpg-double v2, v2, v0

    if-gez v2, :cond_1

    iget-wide v0, p0, Lorg/ejml/data/DMatrix2x2;->a21:D

    .line 836
    :cond_1
    iget-wide v2, p0, Lorg/ejml/data/DMatrix2x2;->a22:D

    cmpg-double v2, v2, v0

    if-gez v2, :cond_2

    iget-wide v0, p0, Lorg/ejml/data/DMatrix2x2;->a22:D

    :cond_2
    return-wide v0
.end method

.method public static elementMinAbs(Lorg/ejml/data/DMatrix2;)D
    .locals 5

    .line 888
    iget-wide v0, p0, Lorg/ejml/data/DMatrix2;->a1:D

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    .line 889
    iget-wide v2, p0, Lorg/ejml/data/DMatrix2;->a1:D

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    cmpg-double v4, v2, v0

    if-gez v4, :cond_0

    move-wide v0, v2

    .line 890
    :cond_0
    iget-wide v2, p0, Lorg/ejml/data/DMatrix2;->a2:D

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    cmpg-double p0, v2, v0

    if-gez p0, :cond_1

    move-wide v0, v2

    :cond_1
    return-wide v0
.end method

.method public static elementMinAbs(Lorg/ejml/data/DMatrix2x2;)D
    .locals 5

    .line 869
    iget-wide v0, p0, Lorg/ejml/data/DMatrix2x2;->a11:D

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    .line 870
    iget-wide v2, p0, Lorg/ejml/data/DMatrix2x2;->a12:D

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    cmpg-double v4, v2, v0

    if-gez v4, :cond_0

    move-wide v0, v2

    .line 871
    :cond_0
    iget-wide v2, p0, Lorg/ejml/data/DMatrix2x2;->a21:D

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    cmpg-double v4, v2, v0

    if-gez v4, :cond_1

    move-wide v0, v2

    .line 872
    :cond_1
    iget-wide v2, p0, Lorg/ejml/data/DMatrix2x2;->a22:D

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    cmpg-double p0, v2, v0

    if-gez p0, :cond_2

    move-wide v0, v2

    :cond_2
    return-wide v0
.end method

.method public static elementMult(Lorg/ejml/data/DMatrix2;Lorg/ejml/data/DMatrix2;)V
    .locals 4

    .line 917
    iget-wide v0, p0, Lorg/ejml/data/DMatrix2;->a1:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix2;->a1:D

    mul-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix2;->a1:D

    .line 918
    iget-wide v0, p0, Lorg/ejml/data/DMatrix2;->a2:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix2;->a2:D

    mul-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix2;->a2:D

    return-void
.end method

.method public static elementMult(Lorg/ejml/data/DMatrix2;Lorg/ejml/data/DMatrix2;Lorg/ejml/data/DMatrix2;)V
    .locals 4

    .line 945
    iget-wide v0, p0, Lorg/ejml/data/DMatrix2;->a1:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix2;->a1:D

    mul-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix2;->a1:D

    .line 946
    iget-wide v0, p0, Lorg/ejml/data/DMatrix2;->a2:D

    iget-wide p0, p1, Lorg/ejml/data/DMatrix2;->a2:D

    mul-double/2addr v0, p0

    iput-wide v0, p2, Lorg/ejml/data/DMatrix2;->a2:D

    return-void
.end method

.method public static elementMult(Lorg/ejml/data/DMatrix2x2;Lorg/ejml/data/DMatrix2x2;)V
    .locals 4

    .line 904
    iget-wide v0, p0, Lorg/ejml/data/DMatrix2x2;->a11:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix2x2;->a11:D

    mul-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix2x2;->a11:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix2x2;->a12:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix2x2;->a12:D

    mul-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix2x2;->a12:D

    .line 905
    iget-wide v0, p0, Lorg/ejml/data/DMatrix2x2;->a21:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix2x2;->a21:D

    mul-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix2x2;->a21:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix2x2;->a22:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix2x2;->a22:D

    mul-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix2x2;->a22:D

    return-void
.end method

.method public static elementMult(Lorg/ejml/data/DMatrix2x2;Lorg/ejml/data/DMatrix2x2;Lorg/ejml/data/DMatrix2x2;)V
    .locals 4

    .line 931
    iget-wide v0, p0, Lorg/ejml/data/DMatrix2x2;->a11:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix2x2;->a11:D

    mul-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix2x2;->a11:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix2x2;->a12:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix2x2;->a12:D

    mul-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix2x2;->a12:D

    .line 932
    iget-wide v0, p0, Lorg/ejml/data/DMatrix2x2;->a21:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix2x2;->a21:D

    mul-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix2x2;->a21:D

    iget-wide v0, p0, Lorg/ejml/data/DMatrix2x2;->a22:D

    iget-wide p0, p1, Lorg/ejml/data/DMatrix2x2;->a22:D

    mul-double/2addr v0, p0

    iput-wide v0, p2, Lorg/ejml/data/DMatrix2x2;->a22:D

    return-void
.end method

.method public static extractColumn(Lorg/ejml/data/DMatrix2x2;ILorg/ejml/data/DMatrix2;)Lorg/ejml/data/DMatrix2;
    .locals 2

    if-nez p2, :cond_0

    .line 1219
    new-instance p2, Lorg/ejml/data/DMatrix2;

    invoke-direct {p2}, Lorg/ejml/data/DMatrix2;-><init>()V

    :cond_0
    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 1226
    iget-wide v0, p0, Lorg/ejml/data/DMatrix2x2;->a12:D

    iput-wide v0, p2, Lorg/ejml/data/DMatrix2;->a1:D

    .line 1227
    iget-wide p0, p0, Lorg/ejml/data/DMatrix2x2;->a22:D

    iput-wide p0, p2, Lorg/ejml/data/DMatrix2;->a2:D

    goto :goto_0

    .line 1230
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

    .line 1222
    :cond_2
    iget-wide v0, p0, Lorg/ejml/data/DMatrix2x2;->a11:D

    iput-wide v0, p2, Lorg/ejml/data/DMatrix2;->a1:D

    .line 1223
    iget-wide p0, p0, Lorg/ejml/data/DMatrix2x2;->a21:D

    iput-wide p0, p2, Lorg/ejml/data/DMatrix2;->a2:D

    :goto_0
    return-object p2
.end method

.method public static extractRow(Lorg/ejml/data/DMatrix2x2;ILorg/ejml/data/DMatrix2;)Lorg/ejml/data/DMatrix2;
    .locals 2

    if-nez p2, :cond_0

    .line 1195
    new-instance p2, Lorg/ejml/data/DMatrix2;

    invoke-direct {p2}, Lorg/ejml/data/DMatrix2;-><init>()V

    :cond_0
    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 1202
    iget-wide v0, p0, Lorg/ejml/data/DMatrix2x2;->a21:D

    iput-wide v0, p2, Lorg/ejml/data/DMatrix2;->a1:D

    .line 1203
    iget-wide p0, p0, Lorg/ejml/data/DMatrix2x2;->a22:D

    iput-wide p0, p2, Lorg/ejml/data/DMatrix2;->a2:D

    goto :goto_0

    .line 1206
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

    .line 1198
    :cond_2
    iget-wide v0, p0, Lorg/ejml/data/DMatrix2x2;->a11:D

    iput-wide v0, p2, Lorg/ejml/data/DMatrix2;->a1:D

    .line 1199
    iget-wide p0, p0, Lorg/ejml/data/DMatrix2x2;->a12:D

    iput-wide p0, p2, Lorg/ejml/data/DMatrix2;->a2:D

    :goto_0
    return-object p2
.end method

.method public static fill(Lorg/ejml/data/DMatrix2;D)V
    .locals 0

    .line 1183
    iput-wide p1, p0, Lorg/ejml/data/DMatrix2;->a1:D

    .line 1184
    iput-wide p1, p0, Lorg/ejml/data/DMatrix2;->a2:D

    return-void
.end method

.method public static fill(Lorg/ejml/data/DMatrix2x2;D)V
    .locals 0

    .line 1168
    iput-wide p1, p0, Lorg/ejml/data/DMatrix2x2;->a11:D

    iput-wide p1, p0, Lorg/ejml/data/DMatrix2x2;->a12:D

    .line 1169
    iput-wide p1, p0, Lorg/ejml/data/DMatrix2x2;->a21:D

    iput-wide p1, p0, Lorg/ejml/data/DMatrix2x2;->a22:D

    return-void
.end method

.method public static invert(Lorg/ejml/data/DMatrix2x2;Lorg/ejml/data/DMatrix2x2;)Z
    .locals 14

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 654
    invoke-static {p0}, Lorg/ejml/dense/fixed/CommonOps_DDF2;->elementMaxAbs(Lorg/ejml/data/DMatrix2x2;)D

    move-result-wide v2

    div-double/2addr v0, v2

    .line 656
    iget-wide v2, p0, Lorg/ejml/data/DMatrix2x2;->a11:D

    mul-double/2addr v2, v0

    .line 657
    iget-wide v4, p0, Lorg/ejml/data/DMatrix2x2;->a12:D

    mul-double/2addr v4, v0

    .line 658
    iget-wide v6, p0, Lorg/ejml/data/DMatrix2x2;->a21:D

    mul-double/2addr v6, v0

    .line 659
    iget-wide v8, p0, Lorg/ejml/data/DMatrix2x2;->a22:D

    mul-double/2addr v8, v0

    neg-double v6, v6

    neg-double v10, v4

    mul-double v12, v2, v8

    mul-double/2addr v4, v6

    add-double/2addr v12, v4

    div-double/2addr v12, v0

    div-double/2addr v8, v12

    .line 668
    iput-wide v8, p1, Lorg/ejml/data/DMatrix2x2;->a11:D

    div-double/2addr v10, v12

    .line 669
    iput-wide v10, p1, Lorg/ejml/data/DMatrix2x2;->a12:D

    div-double/2addr v6, v12

    .line 670
    iput-wide v6, p1, Lorg/ejml/data/DMatrix2x2;->a21:D

    div-double/2addr v2, v12

    .line 671
    iput-wide v2, p1, Lorg/ejml/data/DMatrix2x2;->a22:D

    .line 673
    invoke-static {v12, v13}, Ljava/lang/Double;->isNaN(D)Z

    move-result p0

    if-nez p0, :cond_0

    invoke-static {v12, v13}, Ljava/lang/Double;->isInfinite(D)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static mult(DLorg/ejml/data/DMatrix2x2;Lorg/ejml/data/DMatrix2x2;Lorg/ejml/data/DMatrix2x2;)V
    .locals 6

    .line 255
    invoke-static {p2, p4}, Lorg/ejml/UtilEjml;->checkSameInstance(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 256
    invoke-static {p3, p4}, Lorg/ejml/UtilEjml;->checkSameInstance(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 257
    iget-wide v0, p2, Lorg/ejml/data/DMatrix2x2;->a11:D

    iget-wide v2, p3, Lorg/ejml/data/DMatrix2x2;->a11:D

    mul-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix2x2;->a12:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix2x2;->a21:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    mul-double/2addr v0, p0

    iput-wide v0, p4, Lorg/ejml/data/DMatrix2x2;->a11:D

    .line 258
    iget-wide v0, p2, Lorg/ejml/data/DMatrix2x2;->a11:D

    iget-wide v2, p3, Lorg/ejml/data/DMatrix2x2;->a12:D

    mul-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix2x2;->a12:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix2x2;->a22:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    mul-double/2addr v0, p0

    iput-wide v0, p4, Lorg/ejml/data/DMatrix2x2;->a12:D

    .line 259
    iget-wide v0, p2, Lorg/ejml/data/DMatrix2x2;->a21:D

    iget-wide v2, p3, Lorg/ejml/data/DMatrix2x2;->a11:D

    mul-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix2x2;->a22:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix2x2;->a21:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    mul-double/2addr v0, p0

    iput-wide v0, p4, Lorg/ejml/data/DMatrix2x2;->a21:D

    .line 260
    iget-wide v0, p2, Lorg/ejml/data/DMatrix2x2;->a21:D

    iget-wide v2, p3, Lorg/ejml/data/DMatrix2x2;->a12:D

    mul-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix2x2;->a22:D

    iget-wide p2, p3, Lorg/ejml/data/DMatrix2x2;->a22:D

    mul-double/2addr v2, p2

    add-double/2addr v0, v2

    mul-double/2addr p0, v0

    iput-wide p0, p4, Lorg/ejml/data/DMatrix2x2;->a22:D

    return-void
.end method

.method public static mult(Lorg/ejml/data/DMatrix2;Lorg/ejml/data/DMatrix2x2;Lorg/ejml/data/DMatrix2;)V
    .locals 6

    .line 611
    iget-wide v0, p0, Lorg/ejml/data/DMatrix2;->a1:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix2x2;->a11:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix2;->a2:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix2x2;->a21:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix2;->a1:D

    .line 612
    iget-wide v0, p0, Lorg/ejml/data/DMatrix2;->a1:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix2x2;->a12:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix2;->a2:D

    iget-wide p0, p1, Lorg/ejml/data/DMatrix2x2;->a22:D

    mul-double/2addr v2, p0

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix2;->a2:D

    return-void
.end method

.method public static mult(Lorg/ejml/data/DMatrix2x2;Lorg/ejml/data/DMatrix2;Lorg/ejml/data/DMatrix2;)V
    .locals 6

    .line 594
    iget-wide v0, p0, Lorg/ejml/data/DMatrix2x2;->a11:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix2;->a1:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix2x2;->a12:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix2;->a2:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix2;->a1:D

    .line 595
    iget-wide v0, p0, Lorg/ejml/data/DMatrix2x2;->a21:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix2;->a1:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix2x2;->a22:D

    iget-wide p0, p1, Lorg/ejml/data/DMatrix2;->a2:D

    mul-double/2addr v2, p0

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix2;->a2:D

    return-void
.end method

.method public static mult(Lorg/ejml/data/DMatrix2x2;Lorg/ejml/data/DMatrix2x2;Lorg/ejml/data/DMatrix2x2;)V
    .locals 6

    .line 233
    invoke-static {p0, p2}, Lorg/ejml/UtilEjml;->checkSameInstance(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 234
    invoke-static {p1, p2}, Lorg/ejml/UtilEjml;->checkSameInstance(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 235
    iget-wide v0, p0, Lorg/ejml/data/DMatrix2x2;->a11:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix2x2;->a11:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix2x2;->a12:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix2x2;->a21:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix2x2;->a11:D

    .line 236
    iget-wide v0, p0, Lorg/ejml/data/DMatrix2x2;->a11:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix2x2;->a12:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix2x2;->a12:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix2x2;->a22:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix2x2;->a12:D

    .line 237
    iget-wide v0, p0, Lorg/ejml/data/DMatrix2x2;->a21:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix2x2;->a11:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix2x2;->a22:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix2x2;->a21:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix2x2;->a21:D

    .line 238
    iget-wide v0, p0, Lorg/ejml/data/DMatrix2x2;->a21:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix2x2;->a12:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix2x2;->a22:D

    iget-wide p0, p1, Lorg/ejml/data/DMatrix2x2;->a22:D

    mul-double/2addr v2, p0

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix2x2;->a22:D

    return-void
.end method

.method public static multAdd(DLorg/ejml/data/DMatrix2x2;Lorg/ejml/data/DMatrix2x2;Lorg/ejml/data/DMatrix2x2;)V
    .locals 8

    .line 427
    invoke-static {p2, p4}, Lorg/ejml/UtilEjml;->checkSameInstance(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 428
    invoke-static {p3, p4}, Lorg/ejml/UtilEjml;->checkSameInstance(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 429
    iget-wide v0, p4, Lorg/ejml/data/DMatrix2x2;->a11:D

    iget-wide v2, p2, Lorg/ejml/data/DMatrix2x2;->a11:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix2x2;->a11:D

    mul-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix2x2;->a12:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix2x2;->a21:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    mul-double/2addr v2, p0

    add-double/2addr v0, v2

    iput-wide v0, p4, Lorg/ejml/data/DMatrix2x2;->a11:D

    .line 430
    iget-wide v0, p4, Lorg/ejml/data/DMatrix2x2;->a12:D

    iget-wide v2, p2, Lorg/ejml/data/DMatrix2x2;->a11:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix2x2;->a12:D

    mul-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix2x2;->a12:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix2x2;->a22:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    mul-double/2addr v2, p0

    add-double/2addr v0, v2

    iput-wide v0, p4, Lorg/ejml/data/DMatrix2x2;->a12:D

    .line 431
    iget-wide v0, p4, Lorg/ejml/data/DMatrix2x2;->a21:D

    iget-wide v2, p2, Lorg/ejml/data/DMatrix2x2;->a21:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix2x2;->a11:D

    mul-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix2x2;->a22:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix2x2;->a21:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    mul-double/2addr v2, p0

    add-double/2addr v0, v2

    iput-wide v0, p4, Lorg/ejml/data/DMatrix2x2;->a21:D

    .line 432
    iget-wide v0, p4, Lorg/ejml/data/DMatrix2x2;->a22:D

    iget-wide v2, p2, Lorg/ejml/data/DMatrix2x2;->a21:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix2x2;->a12:D

    mul-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix2x2;->a22:D

    iget-wide p2, p3, Lorg/ejml/data/DMatrix2x2;->a22:D

    mul-double/2addr v4, p2

    add-double/2addr v2, v4

    mul-double/2addr p0, v2

    add-double/2addr v0, p0

    iput-wide v0, p4, Lorg/ejml/data/DMatrix2x2;->a22:D

    return-void
.end method

.method public static multAdd(Lorg/ejml/data/DMatrix2x2;Lorg/ejml/data/DMatrix2x2;Lorg/ejml/data/DMatrix2x2;)V
    .locals 8

    .line 405
    invoke-static {p0, p2}, Lorg/ejml/UtilEjml;->checkSameInstance(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 406
    invoke-static {p1, p2}, Lorg/ejml/UtilEjml;->checkSameInstance(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 407
    iget-wide v0, p2, Lorg/ejml/data/DMatrix2x2;->a11:D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix2x2;->a11:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix2x2;->a11:D

    mul-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix2x2;->a12:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix2x2;->a21:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix2x2;->a11:D

    .line 408
    iget-wide v0, p2, Lorg/ejml/data/DMatrix2x2;->a12:D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix2x2;->a11:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix2x2;->a12:D

    mul-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix2x2;->a12:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix2x2;->a22:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix2x2;->a12:D

    .line 409
    iget-wide v0, p2, Lorg/ejml/data/DMatrix2x2;->a21:D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix2x2;->a21:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix2x2;->a11:D

    mul-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix2x2;->a22:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix2x2;->a21:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix2x2;->a21:D

    .line 410
    iget-wide v0, p2, Lorg/ejml/data/DMatrix2x2;->a22:D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix2x2;->a21:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix2x2;->a12:D

    mul-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix2x2;->a22:D

    iget-wide p0, p1, Lorg/ejml/data/DMatrix2x2;->a22:D

    mul-double/2addr v4, p0

    add-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix2x2;->a22:D

    return-void
.end method

.method public static multAddOuter(DLorg/ejml/data/DMatrix2x2;DLorg/ejml/data/DMatrix2;Lorg/ejml/data/DMatrix2;Lorg/ejml/data/DMatrix2x2;)V
    .locals 6

    .line 575
    iget-wide v0, p2, Lorg/ejml/data/DMatrix2x2;->a11:D

    mul-double/2addr v0, p0

    iget-wide v2, p5, Lorg/ejml/data/DMatrix2;->a1:D

    mul-double/2addr v2, p3

    iget-wide v4, p6, Lorg/ejml/data/DMatrix2;->a1:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p7, Lorg/ejml/data/DMatrix2x2;->a11:D

    .line 576
    iget-wide v0, p2, Lorg/ejml/data/DMatrix2x2;->a12:D

    mul-double/2addr v0, p0

    iget-wide v2, p5, Lorg/ejml/data/DMatrix2;->a1:D

    mul-double/2addr v2, p3

    iget-wide v4, p6, Lorg/ejml/data/DMatrix2;->a2:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p7, Lorg/ejml/data/DMatrix2x2;->a12:D

    .line 577
    iget-wide v0, p2, Lorg/ejml/data/DMatrix2x2;->a21:D

    mul-double/2addr v0, p0

    iget-wide v2, p5, Lorg/ejml/data/DMatrix2;->a2:D

    mul-double/2addr v2, p3

    iget-wide v4, p6, Lorg/ejml/data/DMatrix2;->a1:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p7, Lorg/ejml/data/DMatrix2x2;->a21:D

    .line 578
    iget-wide v0, p2, Lorg/ejml/data/DMatrix2x2;->a22:D

    mul-double/2addr p0, v0

    iget-wide v0, p5, Lorg/ejml/data/DMatrix2;->a2:D

    mul-double/2addr p3, v0

    iget-wide p5, p6, Lorg/ejml/data/DMatrix2;->a2:D

    mul-double/2addr p3, p5

    add-double/2addr p0, p3

    iput-wide p0, p7, Lorg/ejml/data/DMatrix2x2;->a22:D

    return-void
.end method

.method public static multAddTransA(DLorg/ejml/data/DMatrix2x2;Lorg/ejml/data/DMatrix2x2;Lorg/ejml/data/DMatrix2x2;)V
    .locals 8

    .line 470
    invoke-static {p2, p4}, Lorg/ejml/UtilEjml;->checkSameInstance(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 471
    invoke-static {p3, p4}, Lorg/ejml/UtilEjml;->checkSameInstance(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 472
    iget-wide v0, p4, Lorg/ejml/data/DMatrix2x2;->a11:D

    iget-wide v2, p2, Lorg/ejml/data/DMatrix2x2;->a11:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix2x2;->a11:D

    mul-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix2x2;->a21:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix2x2;->a21:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    mul-double/2addr v2, p0

    add-double/2addr v0, v2

    iput-wide v0, p4, Lorg/ejml/data/DMatrix2x2;->a11:D

    .line 473
    iget-wide v0, p4, Lorg/ejml/data/DMatrix2x2;->a12:D

    iget-wide v2, p2, Lorg/ejml/data/DMatrix2x2;->a11:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix2x2;->a12:D

    mul-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix2x2;->a21:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix2x2;->a22:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    mul-double/2addr v2, p0

    add-double/2addr v0, v2

    iput-wide v0, p4, Lorg/ejml/data/DMatrix2x2;->a12:D

    .line 474
    iget-wide v0, p4, Lorg/ejml/data/DMatrix2x2;->a21:D

    iget-wide v2, p2, Lorg/ejml/data/DMatrix2x2;->a12:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix2x2;->a11:D

    mul-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix2x2;->a22:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix2x2;->a21:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    mul-double/2addr v2, p0

    add-double/2addr v0, v2

    iput-wide v0, p4, Lorg/ejml/data/DMatrix2x2;->a21:D

    .line 475
    iget-wide v0, p4, Lorg/ejml/data/DMatrix2x2;->a22:D

    iget-wide v2, p2, Lorg/ejml/data/DMatrix2x2;->a12:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix2x2;->a12:D

    mul-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix2x2;->a22:D

    iget-wide p2, p3, Lorg/ejml/data/DMatrix2x2;->a22:D

    mul-double/2addr v4, p2

    add-double/2addr v2, v4

    mul-double/2addr p0, v2

    add-double/2addr v0, p0

    iput-wide v0, p4, Lorg/ejml/data/DMatrix2x2;->a22:D

    return-void
.end method

.method public static multAddTransA(Lorg/ejml/data/DMatrix2x2;Lorg/ejml/data/DMatrix2x2;Lorg/ejml/data/DMatrix2x2;)V
    .locals 8

    .line 448
    invoke-static {p0, p2}, Lorg/ejml/UtilEjml;->checkSameInstance(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 449
    invoke-static {p1, p2}, Lorg/ejml/UtilEjml;->checkSameInstance(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 450
    iget-wide v0, p2, Lorg/ejml/data/DMatrix2x2;->a11:D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix2x2;->a11:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix2x2;->a11:D

    mul-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix2x2;->a21:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix2x2;->a21:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix2x2;->a11:D

    .line 451
    iget-wide v0, p2, Lorg/ejml/data/DMatrix2x2;->a12:D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix2x2;->a11:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix2x2;->a12:D

    mul-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix2x2;->a21:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix2x2;->a22:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix2x2;->a12:D

    .line 452
    iget-wide v0, p2, Lorg/ejml/data/DMatrix2x2;->a21:D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix2x2;->a12:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix2x2;->a11:D

    mul-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix2x2;->a22:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix2x2;->a21:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix2x2;->a21:D

    .line 453
    iget-wide v0, p2, Lorg/ejml/data/DMatrix2x2;->a22:D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix2x2;->a12:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix2x2;->a12:D

    mul-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix2x2;->a22:D

    iget-wide p0, p1, Lorg/ejml/data/DMatrix2x2;->a22:D

    mul-double/2addr v4, p0

    add-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix2x2;->a22:D

    return-void
.end method

.method public static multAddTransAB(DLorg/ejml/data/DMatrix2x2;Lorg/ejml/data/DMatrix2x2;Lorg/ejml/data/DMatrix2x2;)V
    .locals 8

    .line 513
    invoke-static {p2, p4}, Lorg/ejml/UtilEjml;->checkSameInstance(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 514
    invoke-static {p3, p4}, Lorg/ejml/UtilEjml;->checkSameInstance(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 515
    iget-wide v0, p4, Lorg/ejml/data/DMatrix2x2;->a11:D

    iget-wide v2, p2, Lorg/ejml/data/DMatrix2x2;->a11:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix2x2;->a11:D

    mul-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix2x2;->a21:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix2x2;->a12:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    mul-double/2addr v2, p0

    add-double/2addr v0, v2

    iput-wide v0, p4, Lorg/ejml/data/DMatrix2x2;->a11:D

    .line 516
    iget-wide v0, p4, Lorg/ejml/data/DMatrix2x2;->a12:D

    iget-wide v2, p2, Lorg/ejml/data/DMatrix2x2;->a11:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix2x2;->a21:D

    mul-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix2x2;->a21:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix2x2;->a22:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    mul-double/2addr v2, p0

    add-double/2addr v0, v2

    iput-wide v0, p4, Lorg/ejml/data/DMatrix2x2;->a12:D

    .line 517
    iget-wide v0, p4, Lorg/ejml/data/DMatrix2x2;->a21:D

    iget-wide v2, p2, Lorg/ejml/data/DMatrix2x2;->a12:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix2x2;->a11:D

    mul-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix2x2;->a22:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix2x2;->a12:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    mul-double/2addr v2, p0

    add-double/2addr v0, v2

    iput-wide v0, p4, Lorg/ejml/data/DMatrix2x2;->a21:D

    .line 518
    iget-wide v0, p4, Lorg/ejml/data/DMatrix2x2;->a22:D

    iget-wide v2, p2, Lorg/ejml/data/DMatrix2x2;->a12:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix2x2;->a21:D

    mul-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix2x2;->a22:D

    iget-wide p2, p3, Lorg/ejml/data/DMatrix2x2;->a22:D

    mul-double/2addr v4, p2

    add-double/2addr v2, v4

    mul-double/2addr p0, v2

    add-double/2addr v0, p0

    iput-wide v0, p4, Lorg/ejml/data/DMatrix2x2;->a22:D

    return-void
.end method

.method public static multAddTransAB(Lorg/ejml/data/DMatrix2x2;Lorg/ejml/data/DMatrix2x2;Lorg/ejml/data/DMatrix2x2;)V
    .locals 8

    .line 491
    invoke-static {p0, p2}, Lorg/ejml/UtilEjml;->checkSameInstance(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 492
    invoke-static {p1, p2}, Lorg/ejml/UtilEjml;->checkSameInstance(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 493
    iget-wide v0, p2, Lorg/ejml/data/DMatrix2x2;->a11:D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix2x2;->a11:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix2x2;->a11:D

    mul-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix2x2;->a21:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix2x2;->a12:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix2x2;->a11:D

    .line 494
    iget-wide v0, p2, Lorg/ejml/data/DMatrix2x2;->a12:D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix2x2;->a11:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix2x2;->a21:D

    mul-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix2x2;->a21:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix2x2;->a22:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix2x2;->a12:D

    .line 495
    iget-wide v0, p2, Lorg/ejml/data/DMatrix2x2;->a21:D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix2x2;->a12:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix2x2;->a11:D

    mul-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix2x2;->a22:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix2x2;->a12:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix2x2;->a21:D

    .line 496
    iget-wide v0, p2, Lorg/ejml/data/DMatrix2x2;->a22:D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix2x2;->a12:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix2x2;->a21:D

    mul-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix2x2;->a22:D

    iget-wide p0, p1, Lorg/ejml/data/DMatrix2x2;->a22:D

    mul-double/2addr v4, p0

    add-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix2x2;->a22:D

    return-void
.end method

.method public static multAddTransB(DLorg/ejml/data/DMatrix2x2;Lorg/ejml/data/DMatrix2x2;Lorg/ejml/data/DMatrix2x2;)V
    .locals 8

    .line 556
    invoke-static {p2, p4}, Lorg/ejml/UtilEjml;->checkSameInstance(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 557
    invoke-static {p3, p4}, Lorg/ejml/UtilEjml;->checkSameInstance(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 558
    iget-wide v0, p4, Lorg/ejml/data/DMatrix2x2;->a11:D

    iget-wide v2, p2, Lorg/ejml/data/DMatrix2x2;->a11:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix2x2;->a11:D

    mul-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix2x2;->a12:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix2x2;->a12:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    mul-double/2addr v2, p0

    add-double/2addr v0, v2

    iput-wide v0, p4, Lorg/ejml/data/DMatrix2x2;->a11:D

    .line 559
    iget-wide v0, p4, Lorg/ejml/data/DMatrix2x2;->a12:D

    iget-wide v2, p2, Lorg/ejml/data/DMatrix2x2;->a11:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix2x2;->a21:D

    mul-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix2x2;->a12:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix2x2;->a22:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    mul-double/2addr v2, p0

    add-double/2addr v0, v2

    iput-wide v0, p4, Lorg/ejml/data/DMatrix2x2;->a12:D

    .line 560
    iget-wide v0, p4, Lorg/ejml/data/DMatrix2x2;->a21:D

    iget-wide v2, p2, Lorg/ejml/data/DMatrix2x2;->a21:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix2x2;->a11:D

    mul-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix2x2;->a22:D

    iget-wide v6, p3, Lorg/ejml/data/DMatrix2x2;->a12:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    mul-double/2addr v2, p0

    add-double/2addr v0, v2

    iput-wide v0, p4, Lorg/ejml/data/DMatrix2x2;->a21:D

    .line 561
    iget-wide v0, p4, Lorg/ejml/data/DMatrix2x2;->a22:D

    iget-wide v2, p2, Lorg/ejml/data/DMatrix2x2;->a21:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix2x2;->a21:D

    mul-double/2addr v2, v4

    iget-wide v4, p2, Lorg/ejml/data/DMatrix2x2;->a22:D

    iget-wide p2, p3, Lorg/ejml/data/DMatrix2x2;->a22:D

    mul-double/2addr v4, p2

    add-double/2addr v2, v4

    mul-double/2addr p0, v2

    add-double/2addr v0, p0

    iput-wide v0, p4, Lorg/ejml/data/DMatrix2x2;->a22:D

    return-void
.end method

.method public static multAddTransB(Lorg/ejml/data/DMatrix2x2;Lorg/ejml/data/DMatrix2x2;Lorg/ejml/data/DMatrix2x2;)V
    .locals 8

    .line 534
    invoke-static {p0, p2}, Lorg/ejml/UtilEjml;->checkSameInstance(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 535
    invoke-static {p1, p2}, Lorg/ejml/UtilEjml;->checkSameInstance(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 536
    iget-wide v0, p2, Lorg/ejml/data/DMatrix2x2;->a11:D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix2x2;->a11:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix2x2;->a11:D

    mul-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix2x2;->a12:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix2x2;->a12:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix2x2;->a11:D

    .line 537
    iget-wide v0, p2, Lorg/ejml/data/DMatrix2x2;->a12:D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix2x2;->a11:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix2x2;->a21:D

    mul-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix2x2;->a12:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix2x2;->a22:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix2x2;->a12:D

    .line 538
    iget-wide v0, p2, Lorg/ejml/data/DMatrix2x2;->a21:D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix2x2;->a21:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix2x2;->a11:D

    mul-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix2x2;->a22:D

    iget-wide v6, p1, Lorg/ejml/data/DMatrix2x2;->a12:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix2x2;->a21:D

    .line 539
    iget-wide v0, p2, Lorg/ejml/data/DMatrix2x2;->a22:D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix2x2;->a21:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix2x2;->a21:D

    mul-double/2addr v2, v4

    iget-wide v4, p0, Lorg/ejml/data/DMatrix2x2;->a22:D

    iget-wide p0, p1, Lorg/ejml/data/DMatrix2x2;->a22:D

    mul-double/2addr v4, p0

    add-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix2x2;->a22:D

    return-void
.end method

.method public static multTransA(DLorg/ejml/data/DMatrix2x2;Lorg/ejml/data/DMatrix2x2;Lorg/ejml/data/DMatrix2x2;)V
    .locals 6

    .line 298
    invoke-static {p2, p4}, Lorg/ejml/UtilEjml;->checkSameInstance(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 299
    invoke-static {p3, p4}, Lorg/ejml/UtilEjml;->checkSameInstance(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 300
    iget-wide v0, p2, Lorg/ejml/data/DMatrix2x2;->a11:D

    iget-wide v2, p3, Lorg/ejml/data/DMatrix2x2;->a11:D

    mul-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix2x2;->a21:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix2x2;->a21:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    mul-double/2addr v0, p0

    iput-wide v0, p4, Lorg/ejml/data/DMatrix2x2;->a11:D

    .line 301
    iget-wide v0, p2, Lorg/ejml/data/DMatrix2x2;->a11:D

    iget-wide v2, p3, Lorg/ejml/data/DMatrix2x2;->a12:D

    mul-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix2x2;->a21:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix2x2;->a22:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    mul-double/2addr v0, p0

    iput-wide v0, p4, Lorg/ejml/data/DMatrix2x2;->a12:D

    .line 302
    iget-wide v0, p2, Lorg/ejml/data/DMatrix2x2;->a12:D

    iget-wide v2, p3, Lorg/ejml/data/DMatrix2x2;->a11:D

    mul-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix2x2;->a22:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix2x2;->a21:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    mul-double/2addr v0, p0

    iput-wide v0, p4, Lorg/ejml/data/DMatrix2x2;->a21:D

    .line 303
    iget-wide v0, p2, Lorg/ejml/data/DMatrix2x2;->a12:D

    iget-wide v2, p3, Lorg/ejml/data/DMatrix2x2;->a12:D

    mul-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix2x2;->a22:D

    iget-wide p2, p3, Lorg/ejml/data/DMatrix2x2;->a22:D

    mul-double/2addr v2, p2

    add-double/2addr v0, v2

    mul-double/2addr p0, v0

    iput-wide p0, p4, Lorg/ejml/data/DMatrix2x2;->a22:D

    return-void
.end method

.method public static multTransA(Lorg/ejml/data/DMatrix2x2;Lorg/ejml/data/DMatrix2x2;Lorg/ejml/data/DMatrix2x2;)V
    .locals 6

    .line 276
    invoke-static {p0, p2}, Lorg/ejml/UtilEjml;->checkSameInstance(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 277
    invoke-static {p1, p2}, Lorg/ejml/UtilEjml;->checkSameInstance(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 278
    iget-wide v0, p0, Lorg/ejml/data/DMatrix2x2;->a11:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix2x2;->a11:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix2x2;->a21:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix2x2;->a21:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix2x2;->a11:D

    .line 279
    iget-wide v0, p0, Lorg/ejml/data/DMatrix2x2;->a11:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix2x2;->a12:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix2x2;->a21:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix2x2;->a22:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix2x2;->a12:D

    .line 280
    iget-wide v0, p0, Lorg/ejml/data/DMatrix2x2;->a12:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix2x2;->a11:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix2x2;->a22:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix2x2;->a21:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix2x2;->a21:D

    .line 281
    iget-wide v0, p0, Lorg/ejml/data/DMatrix2x2;->a12:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix2x2;->a12:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix2x2;->a22:D

    iget-wide p0, p1, Lorg/ejml/data/DMatrix2x2;->a22:D

    mul-double/2addr v2, p0

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix2x2;->a22:D

    return-void
.end method

.method public static multTransAB(DLorg/ejml/data/DMatrix2x2;Lorg/ejml/data/DMatrix2x2;Lorg/ejml/data/DMatrix2x2;)V
    .locals 6

    .line 341
    invoke-static {p2, p4}, Lorg/ejml/UtilEjml;->checkSameInstance(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 342
    invoke-static {p3, p4}, Lorg/ejml/UtilEjml;->checkSameInstance(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 343
    iget-wide v0, p2, Lorg/ejml/data/DMatrix2x2;->a11:D

    iget-wide v2, p3, Lorg/ejml/data/DMatrix2x2;->a11:D

    mul-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix2x2;->a21:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix2x2;->a12:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    mul-double/2addr v0, p0

    iput-wide v0, p4, Lorg/ejml/data/DMatrix2x2;->a11:D

    .line 344
    iget-wide v0, p2, Lorg/ejml/data/DMatrix2x2;->a11:D

    iget-wide v2, p3, Lorg/ejml/data/DMatrix2x2;->a21:D

    mul-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix2x2;->a21:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix2x2;->a22:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    mul-double/2addr v0, p0

    iput-wide v0, p4, Lorg/ejml/data/DMatrix2x2;->a12:D

    .line 345
    iget-wide v0, p2, Lorg/ejml/data/DMatrix2x2;->a12:D

    iget-wide v2, p3, Lorg/ejml/data/DMatrix2x2;->a11:D

    mul-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix2x2;->a22:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix2x2;->a12:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    mul-double/2addr v0, p0

    iput-wide v0, p4, Lorg/ejml/data/DMatrix2x2;->a21:D

    .line 346
    iget-wide v0, p2, Lorg/ejml/data/DMatrix2x2;->a12:D

    iget-wide v2, p3, Lorg/ejml/data/DMatrix2x2;->a21:D

    mul-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix2x2;->a22:D

    iget-wide p2, p3, Lorg/ejml/data/DMatrix2x2;->a22:D

    mul-double/2addr v2, p2

    add-double/2addr v0, v2

    mul-double/2addr p0, v0

    iput-wide p0, p4, Lorg/ejml/data/DMatrix2x2;->a22:D

    return-void
.end method

.method public static multTransAB(Lorg/ejml/data/DMatrix2x2;Lorg/ejml/data/DMatrix2x2;Lorg/ejml/data/DMatrix2x2;)V
    .locals 6

    .line 319
    invoke-static {p0, p2}, Lorg/ejml/UtilEjml;->checkSameInstance(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 320
    invoke-static {p1, p2}, Lorg/ejml/UtilEjml;->checkSameInstance(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 321
    iget-wide v0, p0, Lorg/ejml/data/DMatrix2x2;->a11:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix2x2;->a11:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix2x2;->a21:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix2x2;->a12:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix2x2;->a11:D

    .line 322
    iget-wide v0, p0, Lorg/ejml/data/DMatrix2x2;->a11:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix2x2;->a21:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix2x2;->a21:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix2x2;->a22:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix2x2;->a12:D

    .line 323
    iget-wide v0, p0, Lorg/ejml/data/DMatrix2x2;->a12:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix2x2;->a11:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix2x2;->a22:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix2x2;->a12:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix2x2;->a21:D

    .line 324
    iget-wide v0, p0, Lorg/ejml/data/DMatrix2x2;->a12:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix2x2;->a21:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix2x2;->a22:D

    iget-wide p0, p1, Lorg/ejml/data/DMatrix2x2;->a22:D

    mul-double/2addr v2, p0

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix2x2;->a22:D

    return-void
.end method

.method public static multTransB(DLorg/ejml/data/DMatrix2x2;Lorg/ejml/data/DMatrix2x2;Lorg/ejml/data/DMatrix2x2;)V
    .locals 6

    .line 384
    invoke-static {p2, p4}, Lorg/ejml/UtilEjml;->checkSameInstance(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 385
    invoke-static {p3, p4}, Lorg/ejml/UtilEjml;->checkSameInstance(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 386
    iget-wide v0, p2, Lorg/ejml/data/DMatrix2x2;->a11:D

    iget-wide v2, p3, Lorg/ejml/data/DMatrix2x2;->a11:D

    mul-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix2x2;->a12:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix2x2;->a12:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    mul-double/2addr v0, p0

    iput-wide v0, p4, Lorg/ejml/data/DMatrix2x2;->a11:D

    .line 387
    iget-wide v0, p2, Lorg/ejml/data/DMatrix2x2;->a11:D

    iget-wide v2, p3, Lorg/ejml/data/DMatrix2x2;->a21:D

    mul-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix2x2;->a12:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix2x2;->a22:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    mul-double/2addr v0, p0

    iput-wide v0, p4, Lorg/ejml/data/DMatrix2x2;->a12:D

    .line 388
    iget-wide v0, p2, Lorg/ejml/data/DMatrix2x2;->a21:D

    iget-wide v2, p3, Lorg/ejml/data/DMatrix2x2;->a11:D

    mul-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix2x2;->a22:D

    iget-wide v4, p3, Lorg/ejml/data/DMatrix2x2;->a12:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    mul-double/2addr v0, p0

    iput-wide v0, p4, Lorg/ejml/data/DMatrix2x2;->a21:D

    .line 389
    iget-wide v0, p2, Lorg/ejml/data/DMatrix2x2;->a21:D

    iget-wide v2, p3, Lorg/ejml/data/DMatrix2x2;->a21:D

    mul-double/2addr v0, v2

    iget-wide v2, p2, Lorg/ejml/data/DMatrix2x2;->a22:D

    iget-wide p2, p3, Lorg/ejml/data/DMatrix2x2;->a22:D

    mul-double/2addr v2, p2

    add-double/2addr v0, v2

    mul-double/2addr p0, v0

    iput-wide p0, p4, Lorg/ejml/data/DMatrix2x2;->a22:D

    return-void
.end method

.method public static multTransB(Lorg/ejml/data/DMatrix2x2;Lorg/ejml/data/DMatrix2x2;Lorg/ejml/data/DMatrix2x2;)V
    .locals 6

    .line 362
    invoke-static {p0, p2}, Lorg/ejml/UtilEjml;->checkSameInstance(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 363
    invoke-static {p1, p2}, Lorg/ejml/UtilEjml;->checkSameInstance(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 364
    iget-wide v0, p0, Lorg/ejml/data/DMatrix2x2;->a11:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix2x2;->a11:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix2x2;->a12:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix2x2;->a12:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix2x2;->a11:D

    .line 365
    iget-wide v0, p0, Lorg/ejml/data/DMatrix2x2;->a11:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix2x2;->a21:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix2x2;->a12:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix2x2;->a22:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix2x2;->a12:D

    .line 366
    iget-wide v0, p0, Lorg/ejml/data/DMatrix2x2;->a21:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix2x2;->a11:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix2x2;->a22:D

    iget-wide v4, p1, Lorg/ejml/data/DMatrix2x2;->a12:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix2x2;->a21:D

    .line 367
    iget-wide v0, p0, Lorg/ejml/data/DMatrix2x2;->a21:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix2x2;->a21:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/ejml/data/DMatrix2x2;->a22:D

    iget-wide p0, p1, Lorg/ejml/data/DMatrix2x2;->a22:D

    mul-double/2addr v2, p0

    add-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix2x2;->a22:D

    return-void
.end method

.method public static scale(DLorg/ejml/data/DMatrix2;)V
    .locals 2

    .line 1029
    iget-wide v0, p2, Lorg/ejml/data/DMatrix2;->a1:D

    mul-double/2addr v0, p0

    iput-wide v0, p2, Lorg/ejml/data/DMatrix2;->a1:D

    .line 1030
    iget-wide v0, p2, Lorg/ejml/data/DMatrix2;->a2:D

    mul-double/2addr v0, p0

    iput-wide v0, p2, Lorg/ejml/data/DMatrix2;->a2:D

    return-void
.end method

.method public static scale(DLorg/ejml/data/DMatrix2;Lorg/ejml/data/DMatrix2;)V
    .locals 2

    .line 1061
    iget-wide v0, p2, Lorg/ejml/data/DMatrix2;->a1:D

    mul-double/2addr v0, p0

    iput-wide v0, p3, Lorg/ejml/data/DMatrix2;->a1:D

    .line 1062
    iget-wide v0, p2, Lorg/ejml/data/DMatrix2;->a2:D

    mul-double/2addr v0, p0

    iput-wide v0, p3, Lorg/ejml/data/DMatrix2;->a2:D

    return-void
.end method

.method public static scale(DLorg/ejml/data/DMatrix2x2;)V
    .locals 2

    .line 1014
    iget-wide v0, p2, Lorg/ejml/data/DMatrix2x2;->a11:D

    mul-double/2addr v0, p0

    iput-wide v0, p2, Lorg/ejml/data/DMatrix2x2;->a11:D

    iget-wide v0, p2, Lorg/ejml/data/DMatrix2x2;->a12:D

    mul-double/2addr v0, p0

    iput-wide v0, p2, Lorg/ejml/data/DMatrix2x2;->a12:D

    .line 1015
    iget-wide v0, p2, Lorg/ejml/data/DMatrix2x2;->a21:D

    mul-double/2addr v0, p0

    iput-wide v0, p2, Lorg/ejml/data/DMatrix2x2;->a21:D

    iget-wide v0, p2, Lorg/ejml/data/DMatrix2x2;->a22:D

    mul-double/2addr v0, p0

    iput-wide v0, p2, Lorg/ejml/data/DMatrix2x2;->a22:D

    return-void
.end method

.method public static scale(DLorg/ejml/data/DMatrix2x2;Lorg/ejml/data/DMatrix2x2;)V
    .locals 2

    .line 1045
    iget-wide v0, p2, Lorg/ejml/data/DMatrix2x2;->a11:D

    mul-double/2addr v0, p0

    iput-wide v0, p3, Lorg/ejml/data/DMatrix2x2;->a11:D

    iget-wide v0, p2, Lorg/ejml/data/DMatrix2x2;->a12:D

    mul-double/2addr v0, p0

    iput-wide v0, p3, Lorg/ejml/data/DMatrix2x2;->a12:D

    .line 1046
    iget-wide v0, p2, Lorg/ejml/data/DMatrix2x2;->a21:D

    mul-double/2addr v0, p0

    iput-wide v0, p3, Lorg/ejml/data/DMatrix2x2;->a21:D

    iget-wide v0, p2, Lorg/ejml/data/DMatrix2x2;->a22:D

    mul-double/2addr v0, p0

    iput-wide v0, p3, Lorg/ejml/data/DMatrix2x2;->a22:D

    return-void
.end method

.method public static setIdentity(Lorg/ejml/data/DMatrix2x2;)V
    .locals 4

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 638
    iput-wide v0, p0, Lorg/ejml/data/DMatrix2x2;->a11:D

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lorg/ejml/data/DMatrix2x2;->a21:D

    .line 639
    iput-wide v2, p0, Lorg/ejml/data/DMatrix2x2;->a12:D

    iput-wide v0, p0, Lorg/ejml/data/DMatrix2x2;->a22:D

    return-void
.end method

.method public static subtract(Lorg/ejml/data/DMatrix2;Lorg/ejml/data/DMatrix2;Lorg/ejml/data/DMatrix2;)V
    .locals 4

    .line 148
    iget-wide v0, p0, Lorg/ejml/data/DMatrix2;->a1:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix2;->a1:D

    sub-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix2;->a1:D

    .line 149
    iget-wide v0, p0, Lorg/ejml/data/DMatrix2;->a2:D

    iget-wide p0, p1, Lorg/ejml/data/DMatrix2;->a2:D

    sub-double/2addr v0, p0

    iput-wide v0, p2, Lorg/ejml/data/DMatrix2;->a2:D

    return-void
.end method

.method public static subtract(Lorg/ejml/data/DMatrix2x2;Lorg/ejml/data/DMatrix2x2;Lorg/ejml/data/DMatrix2x2;)V
    .locals 4

    .line 126
    iget-wide v0, p0, Lorg/ejml/data/DMatrix2x2;->a11:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix2x2;->a11:D

    sub-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix2x2;->a11:D

    .line 127
    iget-wide v0, p0, Lorg/ejml/data/DMatrix2x2;->a12:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix2x2;->a12:D

    sub-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix2x2;->a12:D

    .line 128
    iget-wide v0, p0, Lorg/ejml/data/DMatrix2x2;->a21:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix2x2;->a21:D

    sub-double/2addr v0, v2

    iput-wide v0, p2, Lorg/ejml/data/DMatrix2x2;->a21:D

    .line 129
    iget-wide v0, p0, Lorg/ejml/data/DMatrix2x2;->a22:D

    iget-wide p0, p1, Lorg/ejml/data/DMatrix2x2;->a22:D

    sub-double/2addr v0, p0

    iput-wide v0, p2, Lorg/ejml/data/DMatrix2x2;->a22:D

    return-void
.end method

.method public static subtractEquals(Lorg/ejml/data/DMatrix2;Lorg/ejml/data/DMatrix2;)V
    .locals 4

    .line 180
    iget-wide v0, p0, Lorg/ejml/data/DMatrix2;->a1:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix2;->a1:D

    sub-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix2;->a1:D

    .line 181
    iget-wide v0, p0, Lorg/ejml/data/DMatrix2;->a2:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix2;->a2:D

    sub-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix2;->a2:D

    return-void
.end method

.method public static subtractEquals(Lorg/ejml/data/DMatrix2x2;Lorg/ejml/data/DMatrix2x2;)V
    .locals 4

    .line 163
    iget-wide v0, p0, Lorg/ejml/data/DMatrix2x2;->a11:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix2x2;->a11:D

    sub-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix2x2;->a11:D

    .line 164
    iget-wide v0, p0, Lorg/ejml/data/DMatrix2x2;->a12:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix2x2;->a12:D

    sub-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix2x2;->a12:D

    .line 165
    iget-wide v0, p0, Lorg/ejml/data/DMatrix2x2;->a21:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix2x2;->a21:D

    sub-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix2x2;->a21:D

    .line 166
    iget-wide v0, p0, Lorg/ejml/data/DMatrix2x2;->a22:D

    iget-wide v2, p1, Lorg/ejml/data/DMatrix2x2;->a22:D

    sub-double/2addr v0, v2

    iput-wide v0, p0, Lorg/ejml/data/DMatrix2x2;->a22:D

    return-void
.end method

.method public static trace(Lorg/ejml/data/DMatrix2x2;)D
    .locals 4

    .line 731
    iget-wide v0, p0, Lorg/ejml/data/DMatrix2x2;->a11:D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix2x2;->a22:D

    add-double/2addr v0, v2

    return-wide v0
.end method

.method public static transpose(Lorg/ejml/data/DMatrix2x2;Lorg/ejml/data/DMatrix2x2;)Lorg/ejml/data/DMatrix2x2;
    .locals 2

    if-nez p0, :cond_0

    .line 209
    new-instance p0, Lorg/ejml/data/DMatrix2x2;

    invoke-direct {p0}, Lorg/ejml/data/DMatrix2x2;-><init>()V

    .line 211
    :cond_0
    invoke-static {p0, p1}, Lorg/ejml/UtilEjml;->checkSameInstance(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 212
    iget-wide v0, p0, Lorg/ejml/data/DMatrix2x2;->a11:D

    iput-wide v0, p1, Lorg/ejml/data/DMatrix2x2;->a11:D

    .line 213
    iget-wide v0, p0, Lorg/ejml/data/DMatrix2x2;->a21:D

    iput-wide v0, p1, Lorg/ejml/data/DMatrix2x2;->a12:D

    .line 214
    iget-wide v0, p0, Lorg/ejml/data/DMatrix2x2;->a12:D

    iput-wide v0, p1, Lorg/ejml/data/DMatrix2x2;->a21:D

    .line 215
    iget-wide v0, p0, Lorg/ejml/data/DMatrix2x2;->a22:D

    iput-wide v0, p1, Lorg/ejml/data/DMatrix2x2;->a22:D

    return-object p1
.end method

.method public static transpose(Lorg/ejml/data/DMatrix2x2;)V
    .locals 4

    .line 192
    iget-wide v0, p0, Lorg/ejml/data/DMatrix2x2;->a12:D

    iget-wide v2, p0, Lorg/ejml/data/DMatrix2x2;->a21:D

    iput-wide v2, p0, Lorg/ejml/data/DMatrix2x2;->a12:D

    iput-wide v0, p0, Lorg/ejml/data/DMatrix2x2;->a21:D

    return-void
.end method
