.class public Lorg/ejml/dense/row/misc/UnrolledCholesky_FDRM;
.super Ljava/lang/Object;
.source "UnrolledCholesky_FDRM.java"


# static fields
.field public static final MAX:I = 0x7


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static lower(Lorg/ejml/data/FMatrix1Row;Lorg/ejml/data/FMatrix1Row;)Z
    .locals 1

    .line 38
    iget v0, p0, Lorg/ejml/data/FMatrix1Row;->numRows:I

    packed-switch v0, :pswitch_data_0

    const/4 p0, 0x0

    return p0

    .line 45
    :pswitch_0
    invoke-static {p0, p1}, Lorg/ejml/dense/row/misc/UnrolledCholesky_FDRM;->lower7(Lorg/ejml/data/FMatrix1Row;Lorg/ejml/data/FMatrix1Row;)Z

    move-result p0

    return p0

    .line 44
    :pswitch_1
    invoke-static {p0, p1}, Lorg/ejml/dense/row/misc/UnrolledCholesky_FDRM;->lower6(Lorg/ejml/data/FMatrix1Row;Lorg/ejml/data/FMatrix1Row;)Z

    move-result p0

    return p0

    .line 43
    :pswitch_2
    invoke-static {p0, p1}, Lorg/ejml/dense/row/misc/UnrolledCholesky_FDRM;->lower5(Lorg/ejml/data/FMatrix1Row;Lorg/ejml/data/FMatrix1Row;)Z

    move-result p0

    return p0

    .line 42
    :pswitch_3
    invoke-static {p0, p1}, Lorg/ejml/dense/row/misc/UnrolledCholesky_FDRM;->lower4(Lorg/ejml/data/FMatrix1Row;Lorg/ejml/data/FMatrix1Row;)Z

    move-result p0

    return p0

    .line 41
    :pswitch_4
    invoke-static {p0, p1}, Lorg/ejml/dense/row/misc/UnrolledCholesky_FDRM;->lower3(Lorg/ejml/data/FMatrix1Row;Lorg/ejml/data/FMatrix1Row;)Z

    move-result p0

    return p0

    .line 40
    :pswitch_5
    invoke-static {p0, p1}, Lorg/ejml/dense/row/misc/UnrolledCholesky_FDRM;->lower2(Lorg/ejml/data/FMatrix1Row;Lorg/ejml/data/FMatrix1Row;)Z

    move-result p0

    return p0

    .line 39
    :pswitch_6
    invoke-static {p0, p1}, Lorg/ejml/dense/row/misc/UnrolledCholesky_FDRM;->lower1(Lorg/ejml/data/FMatrix1Row;Lorg/ejml/data/FMatrix1Row;)Z

    move-result p0

    return p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static lower1(Lorg/ejml/data/FMatrix1Row;Lorg/ejml/data/FMatrix1Row;)Z
    .locals 4

    .line 65
    iget-object p0, p0, Lorg/ejml/data/FMatrix1Row;->data:[F

    const/4 v0, 0x0

    .line 67
    aget p0, p0, v0

    .line 69
    iget-object v1, p1, Lorg/ejml/data/FMatrix1Row;->data:[F

    float-to-double v2, p0

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float p0, v2

    aput p0, v1, v0

    .line 70
    iget-object p0, p1, Lorg/ejml/data/FMatrix1Row;->data:[F

    aget p0, p0, v0

    invoke-static {p0}, Lorg/ejml/UtilEjml;->isUncountable(F)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static lower2(Lorg/ejml/data/FMatrix1Row;Lorg/ejml/data/FMatrix1Row;)Z
    .locals 8

    .line 75
    iget-object p0, p0, Lorg/ejml/data/FMatrix1Row;->data:[F

    const/4 v0, 0x0

    .line 77
    aget v1, p0, v0

    const/4 v2, 0x2

    .line 78
    aget v3, p0, v2

    const/4 v4, 0x3

    .line 79
    aget p0, p0, v4

    .line 81
    iget-object v5, p1, Lorg/ejml/data/FMatrix1Row;->data:[F

    float-to-double v6, v1

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    double-to-float v1, v6

    aput v1, v5, v0

    .line 82
    iget-object v0, p1, Lorg/ejml/data/FMatrix1Row;->data:[F

    const/4 v5, 0x0

    const/4 v6, 0x1

    aput v5, v0, v6

    .line 83
    iget-object v0, p1, Lorg/ejml/data/FMatrix1Row;->data:[F

    div-float/2addr v3, v1

    aput v3, v0, v2

    .line 84
    iget-object v0, p1, Lorg/ejml/data/FMatrix1Row;->data:[F

    mul-float/2addr v3, v3

    sub-float/2addr p0, v3

    float-to-double v1, p0

    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    double-to-float p0, v1

    aput p0, v0, v4

    .line 85
    iget-object p0, p1, Lorg/ejml/data/FMatrix1Row;->data:[F

    aget p0, p0, v4

    invoke-static {p0}, Lorg/ejml/UtilEjml;->isUncountable(F)Z

    move-result p0

    xor-int/2addr p0, v6

    return p0
.end method

.method public static lower3(Lorg/ejml/data/FMatrix1Row;Lorg/ejml/data/FMatrix1Row;)Z
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 90
    iget-object v0, v0, Lorg/ejml/data/FMatrix1Row;->data:[F

    const/4 v2, 0x0

    .line 92
    aget v3, v0, v2

    const/4 v4, 0x3

    .line 93
    aget v5, v0, v4

    const/4 v6, 0x4

    .line 94
    aget v7, v0, v6

    const/4 v8, 0x6

    .line 95
    aget v9, v0, v8

    const/4 v10, 0x7

    .line 96
    aget v11, v0, v10

    const/16 v12, 0x8

    .line 97
    aget v0, v0, v12

    .line 99
    iget-object v13, v1, Lorg/ejml/data/FMatrix1Row;->data:[F

    float-to-double v14, v3

    invoke-static {v14, v15}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v14

    double-to-float v3, v14

    aput v3, v13, v2

    .line 100
    iget-object v2, v1, Lorg/ejml/data/FMatrix1Row;->data:[F

    const/4 v13, 0x1

    const/4 v14, 0x0

    aput v14, v2, v13

    .line 101
    iget-object v2, v1, Lorg/ejml/data/FMatrix1Row;->data:[F

    const/4 v15, 0x2

    aput v14, v2, v15

    .line 102
    iget-object v2, v1, Lorg/ejml/data/FMatrix1Row;->data:[F

    div-float/2addr v5, v3

    aput v5, v2, v4

    .line 103
    iget-object v2, v1, Lorg/ejml/data/FMatrix1Row;->data:[F

    mul-float v4, v5, v5

    sub-float/2addr v7, v4

    float-to-double v12, v7

    invoke-static {v12, v13}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v12

    double-to-float v7, v12

    aput v7, v2, v6

    .line 104
    iget-object v2, v1, Lorg/ejml/data/FMatrix1Row;->data:[F

    const/4 v6, 0x5

    aput v14, v2, v6

    .line 105
    iget-object v2, v1, Lorg/ejml/data/FMatrix1Row;->data:[F

    div-float/2addr v9, v3

    aput v9, v2, v8

    .line 106
    iget-object v2, v1, Lorg/ejml/data/FMatrix1Row;->data:[F

    mul-float/2addr v5, v9

    sub-float/2addr v11, v5

    div-float/2addr v11, v7

    aput v11, v2, v10

    .line 107
    iget-object v2, v1, Lorg/ejml/data/FMatrix1Row;->data:[F

    mul-float/2addr v9, v9

    sub-float/2addr v0, v9

    mul-float/2addr v11, v11

    sub-float/2addr v0, v11

    float-to-double v5, v0

    invoke-static {v5, v6}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v5

    double-to-float v0, v5

    const/16 v3, 0x8

    aput v0, v2, v3

    .line 108
    iget-object v0, v1, Lorg/ejml/data/FMatrix1Row;->data:[F

    aget v0, v0, v3

    invoke-static {v0}, Lorg/ejml/UtilEjml;->isUncountable(F)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    return v0
.end method

.method public static lower4(Lorg/ejml/data/FMatrix1Row;Lorg/ejml/data/FMatrix1Row;)Z
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 113
    iget-object v0, v0, Lorg/ejml/data/FMatrix1Row;->data:[F

    const/4 v2, 0x0

    .line 115
    aget v3, v0, v2

    const/4 v4, 0x4

    .line 116
    aget v5, v0, v4

    const/4 v6, 0x5

    .line 117
    aget v7, v0, v6

    const/16 v8, 0x8

    .line 118
    aget v9, v0, v8

    const/16 v10, 0x9

    .line 119
    aget v11, v0, v10

    const/16 v12, 0xa

    .line 120
    aget v13, v0, v12

    const/16 v14, 0xc

    .line 121
    aget v15, v0, v14

    const/16 v16, 0xd

    .line 122
    aget v17, v0, v16

    const/16 v18, 0xe

    .line 123
    aget v19, v0, v18

    const/16 v20, 0xf

    .line 124
    aget v0, v0, v20

    .line 126
    iget-object v14, v1, Lorg/ejml/data/FMatrix1Row;->data:[F

    move/from16 v21, v13

    float-to-double v12, v3

    invoke-static {v12, v13}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v12

    double-to-float v3, v12

    aput v3, v14, v2

    .line 127
    iget-object v2, v1, Lorg/ejml/data/FMatrix1Row;->data:[F

    const/4 v12, 0x1

    const/4 v13, 0x0

    aput v13, v2, v12

    .line 128
    iget-object v2, v1, Lorg/ejml/data/FMatrix1Row;->data:[F

    const/4 v14, 0x2

    aput v13, v2, v14

    .line 129
    iget-object v2, v1, Lorg/ejml/data/FMatrix1Row;->data:[F

    const/4 v14, 0x3

    aput v13, v2, v14

    .line 130
    iget-object v2, v1, Lorg/ejml/data/FMatrix1Row;->data:[F

    div-float/2addr v5, v3

    aput v5, v2, v4

    .line 131
    iget-object v2, v1, Lorg/ejml/data/FMatrix1Row;->data:[F

    mul-float v4, v5, v5

    sub-float/2addr v7, v4

    move v14, v11

    float-to-double v10, v7

    invoke-static {v10, v11}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v10

    double-to-float v7, v10

    aput v7, v2, v6

    .line 132
    iget-object v2, v1, Lorg/ejml/data/FMatrix1Row;->data:[F

    const/4 v6, 0x6

    aput v13, v2, v6

    .line 133
    iget-object v2, v1, Lorg/ejml/data/FMatrix1Row;->data:[F

    const/4 v6, 0x7

    aput v13, v2, v6

    .line 134
    iget-object v2, v1, Lorg/ejml/data/FMatrix1Row;->data:[F

    div-float/2addr v9, v3

    aput v9, v2, v8

    .line 135
    iget-object v2, v1, Lorg/ejml/data/FMatrix1Row;->data:[F

    mul-float v6, v9, v5

    sub-float v11, v14, v6

    div-float/2addr v11, v7

    const/16 v4, 0x9

    aput v11, v2, v4

    .line 136
    iget-object v2, v1, Lorg/ejml/data/FMatrix1Row;->data:[F

    mul-float v4, v9, v9

    sub-float v4, v21, v4

    mul-float v6, v11, v11

    sub-float/2addr v4, v6

    float-to-double v12, v4

    invoke-static {v12, v13}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v12

    double-to-float v4, v12

    const/16 v10, 0xa

    aput v4, v2, v10

    .line 137
    iget-object v2, v1, Lorg/ejml/data/FMatrix1Row;->data:[F

    const/16 v10, 0xb

    const/4 v8, 0x0

    aput v8, v2, v10

    .line 138
    iget-object v2, v1, Lorg/ejml/data/FMatrix1Row;->data:[F

    div-float/2addr v15, v3

    const/16 v3, 0xc

    aput v15, v2, v3

    .line 139
    iget-object v2, v1, Lorg/ejml/data/FMatrix1Row;->data:[F

    mul-float/2addr v5, v15

    sub-float v17, v17, v5

    div-float v17, v17, v7

    aput v17, v2, v16

    .line 140
    iget-object v2, v1, Lorg/ejml/data/FMatrix1Row;->data:[F

    mul-float/2addr v9, v15

    sub-float v19, v19, v9

    mul-float v11, v11, v17

    sub-float v19, v19, v11

    div-float v19, v19, v4

    aput v19, v2, v18

    .line 141
    iget-object v2, v1, Lorg/ejml/data/FMatrix1Row;->data:[F

    mul-float/2addr v15, v15

    sub-float/2addr v0, v15

    mul-float v17, v17, v17

    sub-float v0, v0, v17

    mul-float v19, v19, v19

    sub-float v0, v0, v19

    float-to-double v3, v0

    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    double-to-float v0, v3

    aput v0, v2, v20

    .line 142
    iget-object v0, v1, Lorg/ejml/data/FMatrix1Row;->data:[F

    aget v0, v0, v20

    invoke-static {v0}, Lorg/ejml/UtilEjml;->isUncountable(F)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    return v0
.end method

.method public static lower5(Lorg/ejml/data/FMatrix1Row;Lorg/ejml/data/FMatrix1Row;)Z
    .locals 32

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 147
    iget-object v0, v0, Lorg/ejml/data/FMatrix1Row;->data:[F

    const/4 v2, 0x0

    .line 149
    aget v3, v0, v2

    const/4 v4, 0x5

    .line 150
    aget v5, v0, v4

    const/4 v6, 0x6

    .line 151
    aget v7, v0, v6

    const/16 v8, 0xa

    .line 152
    aget v9, v0, v8

    const/16 v10, 0xb

    .line 153
    aget v11, v0, v10

    const/16 v12, 0xc

    .line 154
    aget v13, v0, v12

    const/16 v14, 0xf

    .line 155
    aget v15, v0, v14

    const/16 v16, 0x10

    .line 156
    aget v17, v0, v16

    const/16 v18, 0x11

    .line 157
    aget v19, v0, v18

    const/16 v20, 0x12

    .line 158
    aget v21, v0, v20

    const/16 v22, 0x14

    .line 159
    aget v23, v0, v22

    const/16 v24, 0x15

    .line 160
    aget v25, v0, v24

    const/16 v26, 0x16

    .line 161
    aget v27, v0, v26

    const/16 v28, 0x17

    .line 162
    aget v29, v0, v28

    const/16 v30, 0x18

    .line 163
    aget v0, v0, v30

    .line 165
    iget-object v14, v1, Lorg/ejml/data/FMatrix1Row;->data:[F

    move/from16 v31, v13

    float-to-double v12, v3

    invoke-static {v12, v13}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v12

    double-to-float v3, v12

    aput v3, v14, v2

    .line 166
    iget-object v2, v1, Lorg/ejml/data/FMatrix1Row;->data:[F

    const/4 v12, 0x1

    const/4 v13, 0x0

    aput v13, v2, v12

    .line 167
    iget-object v2, v1, Lorg/ejml/data/FMatrix1Row;->data:[F

    const/4 v14, 0x2

    aput v13, v2, v14

    .line 168
    iget-object v2, v1, Lorg/ejml/data/FMatrix1Row;->data:[F

    const/4 v14, 0x3

    aput v13, v2, v14

    .line 169
    iget-object v2, v1, Lorg/ejml/data/FMatrix1Row;->data:[F

    const/4 v14, 0x4

    aput v13, v2, v14

    .line 170
    iget-object v2, v1, Lorg/ejml/data/FMatrix1Row;->data:[F

    div-float/2addr v5, v3

    aput v5, v2, v4

    .line 171
    iget-object v2, v1, Lorg/ejml/data/FMatrix1Row;->data:[F

    mul-float v4, v5, v5

    sub-float/2addr v7, v4

    move v14, v11

    float-to-double v10, v7

    invoke-static {v10, v11}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v10

    double-to-float v7, v10

    aput v7, v2, v6

    .line 172
    iget-object v2, v1, Lorg/ejml/data/FMatrix1Row;->data:[F

    const/4 v6, 0x7

    aput v13, v2, v6

    .line 173
    iget-object v2, v1, Lorg/ejml/data/FMatrix1Row;->data:[F

    const/16 v6, 0x8

    aput v13, v2, v6

    .line 174
    iget-object v2, v1, Lorg/ejml/data/FMatrix1Row;->data:[F

    const/16 v6, 0x9

    aput v13, v2, v6

    .line 175
    iget-object v2, v1, Lorg/ejml/data/FMatrix1Row;->data:[F

    div-float/2addr v9, v3

    aput v9, v2, v8

    .line 176
    iget-object v2, v1, Lorg/ejml/data/FMatrix1Row;->data:[F

    mul-float v6, v9, v5

    sub-float v11, v14, v6

    div-float/2addr v11, v7

    const/16 v4, 0xb

    aput v11, v2, v4

    .line 177
    iget-object v2, v1, Lorg/ejml/data/FMatrix1Row;->data:[F

    mul-float v4, v9, v9

    sub-float v4, v31, v4

    mul-float v6, v11, v11

    sub-float/2addr v4, v6

    float-to-double v12, v4

    invoke-static {v12, v13}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v12

    double-to-float v4, v12

    const/16 v10, 0xc

    aput v4, v2, v10

    .line 178
    iget-object v2, v1, Lorg/ejml/data/FMatrix1Row;->data:[F

    const/16 v10, 0xd

    const/4 v8, 0x0

    aput v8, v2, v10

    .line 179
    iget-object v2, v1, Lorg/ejml/data/FMatrix1Row;->data:[F

    const/16 v10, 0xe

    aput v8, v2, v10

    .line 180
    iget-object v2, v1, Lorg/ejml/data/FMatrix1Row;->data:[F

    div-float/2addr v15, v3

    const/16 v10, 0xf

    aput v15, v2, v10

    .line 181
    iget-object v2, v1, Lorg/ejml/data/FMatrix1Row;->data:[F

    mul-float v10, v15, v5

    sub-float v17, v17, v10

    div-float v17, v17, v7

    aput v17, v2, v16

    .line 182
    iget-object v2, v1, Lorg/ejml/data/FMatrix1Row;->data:[F

    mul-float v10, v15, v9

    sub-float v19, v19, v10

    mul-float v10, v17, v11

    sub-float v19, v19, v10

    div-float v19, v19, v4

    aput v19, v2, v18

    .line 183
    iget-object v2, v1, Lorg/ejml/data/FMatrix1Row;->data:[F

    mul-float v10, v15, v15

    sub-float v21, v21, v10

    mul-float v10, v17, v17

    sub-float v21, v21, v10

    mul-float v10, v19, v19

    sub-float v10, v21, v10

    float-to-double v12, v10

    invoke-static {v12, v13}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v12

    double-to-float v10, v12

    aput v10, v2, v20

    .line 184
    iget-object v2, v1, Lorg/ejml/data/FMatrix1Row;->data:[F

    const/16 v12, 0x13

    const/4 v8, 0x0

    aput v8, v2, v12

    .line 185
    iget-object v2, v1, Lorg/ejml/data/FMatrix1Row;->data:[F

    div-float v23, v23, v3

    aput v23, v2, v22

    .line 186
    iget-object v2, v1, Lorg/ejml/data/FMatrix1Row;->data:[F

    mul-float v5, v5, v23

    sub-float v25, v25, v5

    div-float v25, v25, v7

    aput v25, v2, v24

    .line 187
    iget-object v2, v1, Lorg/ejml/data/FMatrix1Row;->data:[F

    mul-float v9, v9, v23

    sub-float v27, v27, v9

    mul-float v11, v11, v25

    sub-float v27, v27, v11

    div-float v27, v27, v4

    aput v27, v2, v26

    .line 188
    iget-object v2, v1, Lorg/ejml/data/FMatrix1Row;->data:[F

    mul-float v15, v15, v23

    sub-float v29, v29, v15

    mul-float v17, v17, v25

    sub-float v29, v29, v17

    mul-float v19, v19, v27

    sub-float v29, v29, v19

    div-float v29, v29, v10

    aput v29, v2, v28

    .line 189
    iget-object v2, v1, Lorg/ejml/data/FMatrix1Row;->data:[F

    mul-float v23, v23, v23

    sub-float v0, v0, v23

    mul-float v25, v25, v25

    sub-float v0, v0, v25

    mul-float v27, v27, v27

    sub-float v0, v0, v27

    mul-float v29, v29, v29

    sub-float v0, v0, v29

    float-to-double v3, v0

    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    double-to-float v0, v3

    aput v0, v2, v30

    .line 190
    iget-object v0, v1, Lorg/ejml/data/FMatrix1Row;->data:[F

    aget v0, v0, v30

    invoke-static {v0}, Lorg/ejml/UtilEjml;->isUncountable(F)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    return v0
.end method

.method public static lower6(Lorg/ejml/data/FMatrix1Row;Lorg/ejml/data/FMatrix1Row;)Z
    .locals 44

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 195
    iget-object v0, v0, Lorg/ejml/data/FMatrix1Row;->data:[F

    const/4 v2, 0x0

    .line 197
    aget v3, v0, v2

    const/4 v4, 0x6

    .line 198
    aget v5, v0, v4

    const/4 v6, 0x7

    .line 199
    aget v7, v0, v6

    const/16 v8, 0xc

    .line 200
    aget v9, v0, v8

    const/16 v10, 0xd

    .line 201
    aget v11, v0, v10

    const/16 v12, 0xe

    .line 202
    aget v13, v0, v12

    const/16 v14, 0x12

    .line 203
    aget v15, v0, v14

    const/16 v16, 0x13

    .line 204
    aget v17, v0, v16

    const/16 v18, 0x14

    .line 205
    aget v19, v0, v18

    const/16 v20, 0x15

    .line 206
    aget v21, v0, v20

    const/16 v22, 0x18

    .line 207
    aget v23, v0, v22

    const/16 v24, 0x19

    .line 208
    aget v25, v0, v24

    const/16 v26, 0x1a

    .line 209
    aget v27, v0, v26

    const/16 v28, 0x1b

    .line 210
    aget v29, v0, v28

    const/16 v30, 0x1c

    .line 211
    aget v31, v0, v30

    const/16 v32, 0x1e

    .line 212
    aget v33, v0, v32

    const/16 v34, 0x1f

    .line 213
    aget v35, v0, v34

    const/16 v36, 0x20

    .line 214
    aget v37, v0, v36

    const/16 v38, 0x21

    .line 215
    aget v39, v0, v38

    const/16 v40, 0x22

    .line 216
    aget v41, v0, v40

    const/16 v42, 0x23

    .line 217
    aget v0, v0, v42

    .line 219
    iget-object v14, v1, Lorg/ejml/data/FMatrix1Row;->data:[F

    move/from16 v43, v13

    float-to-double v12, v3

    invoke-static {v12, v13}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v12

    double-to-float v3, v12

    aput v3, v14, v2

    .line 220
    iget-object v2, v1, Lorg/ejml/data/FMatrix1Row;->data:[F

    const/4 v12, 0x1

    const/4 v13, 0x0

    aput v13, v2, v12

    .line 221
    iget-object v2, v1, Lorg/ejml/data/FMatrix1Row;->data:[F

    const/4 v12, 0x2

    aput v13, v2, v12

    .line 222
    iget-object v2, v1, Lorg/ejml/data/FMatrix1Row;->data:[F

    const/4 v12, 0x3

    aput v13, v2, v12

    .line 223
    iget-object v2, v1, Lorg/ejml/data/FMatrix1Row;->data:[F

    const/4 v12, 0x4

    aput v13, v2, v12

    .line 224
    iget-object v2, v1, Lorg/ejml/data/FMatrix1Row;->data:[F

    const/4 v12, 0x5

    aput v13, v2, v12

    .line 225
    iget-object v2, v1, Lorg/ejml/data/FMatrix1Row;->data:[F

    div-float/2addr v5, v3

    aput v5, v2, v4

    .line 226
    iget-object v2, v1, Lorg/ejml/data/FMatrix1Row;->data:[F

    mul-float v4, v5, v5

    sub-float/2addr v7, v4

    move v12, v11

    float-to-double v10, v7

    invoke-static {v10, v11}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v10

    double-to-float v7, v10

    aput v7, v2, v6

    .line 227
    iget-object v2, v1, Lorg/ejml/data/FMatrix1Row;->data:[F

    const/16 v6, 0x8

    aput v13, v2, v6

    .line 228
    iget-object v2, v1, Lorg/ejml/data/FMatrix1Row;->data:[F

    const/16 v6, 0x9

    aput v13, v2, v6

    .line 229
    iget-object v2, v1, Lorg/ejml/data/FMatrix1Row;->data:[F

    const/16 v6, 0xa

    aput v13, v2, v6

    .line 230
    iget-object v2, v1, Lorg/ejml/data/FMatrix1Row;->data:[F

    const/16 v6, 0xb

    aput v13, v2, v6

    .line 231
    iget-object v2, v1, Lorg/ejml/data/FMatrix1Row;->data:[F

    div-float/2addr v9, v3

    aput v9, v2, v8

    .line 232
    iget-object v2, v1, Lorg/ejml/data/FMatrix1Row;->data:[F

    mul-float v6, v9, v5

    sub-float v11, v12, v6

    div-float/2addr v11, v7

    const/16 v4, 0xd

    aput v11, v2, v4

    .line 233
    iget-object v2, v1, Lorg/ejml/data/FMatrix1Row;->data:[F

    mul-float v4, v9, v9

    sub-float v4, v43, v4

    mul-float v6, v11, v11

    sub-float/2addr v4, v6

    float-to-double v13, v4

    invoke-static {v13, v14}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v12

    double-to-float v4, v12

    const/16 v8, 0xe

    aput v4, v2, v8

    .line 234
    iget-object v2, v1, Lorg/ejml/data/FMatrix1Row;->data:[F

    const/16 v8, 0xf

    const/4 v6, 0x0

    aput v6, v2, v8

    .line 235
    iget-object v2, v1, Lorg/ejml/data/FMatrix1Row;->data:[F

    const/16 v8, 0x10

    aput v6, v2, v8

    .line 236
    iget-object v2, v1, Lorg/ejml/data/FMatrix1Row;->data:[F

    const/16 v8, 0x11

    aput v6, v2, v8

    .line 237
    iget-object v2, v1, Lorg/ejml/data/FMatrix1Row;->data:[F

    div-float/2addr v15, v3

    const/16 v8, 0x12

    aput v15, v2, v8

    .line 238
    iget-object v2, v1, Lorg/ejml/data/FMatrix1Row;->data:[F

    mul-float v8, v15, v5

    sub-float v17, v17, v8

    div-float v17, v17, v7

    aput v17, v2, v16

    .line 239
    iget-object v2, v1, Lorg/ejml/data/FMatrix1Row;->data:[F

    mul-float v8, v15, v9

    sub-float v19, v19, v8

    mul-float v8, v17, v11

    sub-float v19, v19, v8

    div-float v19, v19, v4

    aput v19, v2, v18

    .line 240
    iget-object v2, v1, Lorg/ejml/data/FMatrix1Row;->data:[F

    mul-float v8, v15, v15

    sub-float v21, v21, v8

    mul-float v8, v17, v17

    sub-float v21, v21, v8

    mul-float v8, v19, v19

    sub-float v8, v21, v8

    float-to-double v12, v8

    invoke-static {v12, v13}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v12

    double-to-float v8, v12

    aput v8, v2, v20

    .line 241
    iget-object v2, v1, Lorg/ejml/data/FMatrix1Row;->data:[F

    const/16 v10, 0x16

    const/4 v6, 0x0

    aput v6, v2, v10

    .line 242
    iget-object v2, v1, Lorg/ejml/data/FMatrix1Row;->data:[F

    const/16 v10, 0x17

    aput v6, v2, v10

    .line 243
    iget-object v2, v1, Lorg/ejml/data/FMatrix1Row;->data:[F

    div-float v23, v23, v3

    aput v23, v2, v22

    .line 244
    iget-object v2, v1, Lorg/ejml/data/FMatrix1Row;->data:[F

    mul-float v10, v23, v5

    sub-float v25, v25, v10

    div-float v25, v25, v7

    aput v25, v2, v24

    .line 245
    iget-object v2, v1, Lorg/ejml/data/FMatrix1Row;->data:[F

    mul-float v10, v23, v9

    sub-float v27, v27, v10

    mul-float v10, v25, v11

    sub-float v27, v27, v10

    div-float v27, v27, v4

    aput v27, v2, v26

    .line 246
    iget-object v2, v1, Lorg/ejml/data/FMatrix1Row;->data:[F

    mul-float v10, v23, v15

    sub-float v29, v29, v10

    mul-float v10, v25, v17

    sub-float v29, v29, v10

    mul-float v10, v27, v19

    sub-float v29, v29, v10

    div-float v29, v29, v8

    aput v29, v2, v28

    .line 247
    iget-object v2, v1, Lorg/ejml/data/FMatrix1Row;->data:[F

    mul-float v10, v23, v23

    sub-float v31, v31, v10

    mul-float v10, v25, v25

    sub-float v31, v31, v10

    mul-float v10, v27, v27

    sub-float v31, v31, v10

    mul-float v10, v29, v29

    sub-float v10, v31, v10

    float-to-double v12, v10

    invoke-static {v12, v13}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v12

    double-to-float v10, v12

    aput v10, v2, v30

    .line 248
    iget-object v2, v1, Lorg/ejml/data/FMatrix1Row;->data:[F

    const/16 v12, 0x1d

    const/4 v6, 0x0

    aput v6, v2, v12

    .line 249
    iget-object v2, v1, Lorg/ejml/data/FMatrix1Row;->data:[F

    div-float v33, v33, v3

    aput v33, v2, v32

    .line 250
    iget-object v2, v1, Lorg/ejml/data/FMatrix1Row;->data:[F

    mul-float v5, v5, v33

    sub-float v35, v35, v5

    div-float v35, v35, v7

    aput v35, v2, v34

    .line 251
    iget-object v2, v1, Lorg/ejml/data/FMatrix1Row;->data:[F

    mul-float v9, v9, v33

    sub-float v37, v37, v9

    mul-float v11, v11, v35

    sub-float v37, v37, v11

    div-float v37, v37, v4

    aput v37, v2, v36

    .line 252
    iget-object v2, v1, Lorg/ejml/data/FMatrix1Row;->data:[F

    mul-float v15, v15, v33

    sub-float v39, v39, v15

    mul-float v17, v17, v35

    sub-float v39, v39, v17

    mul-float v19, v19, v37

    sub-float v39, v39, v19

    div-float v39, v39, v8

    aput v39, v2, v38

    .line 253
    iget-object v2, v1, Lorg/ejml/data/FMatrix1Row;->data:[F

    mul-float v23, v23, v33

    sub-float v41, v41, v23

    mul-float v25, v25, v35

    sub-float v41, v41, v25

    mul-float v27, v27, v37

    sub-float v41, v41, v27

    mul-float v29, v29, v39

    sub-float v41, v41, v29

    div-float v41, v41, v10

    aput v41, v2, v40

    .line 254
    iget-object v2, v1, Lorg/ejml/data/FMatrix1Row;->data:[F

    mul-float v33, v33, v33

    sub-float v0, v0, v33

    mul-float v35, v35, v35

    sub-float v0, v0, v35

    mul-float v37, v37, v37

    sub-float v0, v0, v37

    mul-float v39, v39, v39

    sub-float v0, v0, v39

    mul-float v41, v41, v41

    sub-float v0, v0, v41

    float-to-double v3, v0

    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    double-to-float v0, v3

    aput v0, v2, v42

    .line 255
    iget-object v0, v1, Lorg/ejml/data/FMatrix1Row;->data:[F

    aget v0, v0, v42

    invoke-static {v0}, Lorg/ejml/UtilEjml;->isUncountable(F)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static lower7(Lorg/ejml/data/FMatrix1Row;Lorg/ejml/data/FMatrix1Row;)Z
    .locals 51

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 260
    iget-object v0, v0, Lorg/ejml/data/FMatrix1Row;->data:[F

    const/4 v2, 0x0

    .line 262
    aget v3, v0, v2

    const/4 v4, 0x7

    .line 263
    aget v5, v0, v4

    const/16 v6, 0x8

    .line 264
    aget v7, v0, v6

    const/16 v8, 0xe

    .line 265
    aget v9, v0, v8

    const/16 v10, 0xf

    .line 266
    aget v11, v0, v10

    const/16 v12, 0x10

    .line 267
    aget v13, v0, v12

    const/16 v14, 0x15

    .line 268
    aget v15, v0, v14

    const/16 v16, 0x16

    .line 269
    aget v17, v0, v16

    const/16 v18, 0x17

    .line 270
    aget v19, v0, v18

    const/16 v20, 0x18

    .line 271
    aget v21, v0, v20

    const/16 v22, 0x1c

    .line 272
    aget v23, v0, v22

    const/16 v24, 0x1d

    .line 273
    aget v25, v0, v24

    const/16 v26, 0x1e

    .line 274
    aget v27, v0, v26

    const/16 v28, 0x1f

    .line 275
    aget v29, v0, v28

    const/16 v30, 0x20

    .line 276
    aget v31, v0, v30

    const/16 v32, 0x23

    .line 277
    aget v33, v0, v32

    const/16 v34, 0x24

    .line 278
    aget v35, v0, v34

    const/16 v36, 0x25

    .line 279
    aget v37, v0, v36

    const/16 v38, 0x26

    .line 280
    aget v39, v0, v38

    const/16 v40, 0x27

    .line 281
    aget v41, v0, v40

    const/16 v42, 0x28

    .line 282
    aget v42, v0, v42

    const/16 v43, 0x2a

    .line 283
    aget v43, v0, v43

    const/16 v44, 0x2b

    .line 284
    aget v44, v0, v44

    const/16 v45, 0x2c

    .line 285
    aget v45, v0, v45

    const/16 v46, 0x2d

    .line 286
    aget v46, v0, v46

    const/16 v47, 0x2e

    .line 287
    aget v47, v0, v47

    const/16 v48, 0x2f

    .line 288
    aget v48, v0, v48

    const/16 v49, 0x30

    .line 289
    aget v0, v0, v49

    .line 291
    iget-object v14, v1, Lorg/ejml/data/FMatrix1Row;->data:[F

    move/from16 v50, v13

    float-to-double v12, v3

    invoke-static {v12, v13}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v12

    double-to-float v3, v12

    aput v3, v14, v2

    .line 292
    iget-object v2, v1, Lorg/ejml/data/FMatrix1Row;->data:[F

    const/4 v12, 0x1

    const/4 v13, 0x0

    aput v13, v2, v12

    .line 293
    iget-object v2, v1, Lorg/ejml/data/FMatrix1Row;->data:[F

    const/4 v12, 0x2

    aput v13, v2, v12

    .line 294
    iget-object v2, v1, Lorg/ejml/data/FMatrix1Row;->data:[F

    const/4 v12, 0x3

    aput v13, v2, v12

    .line 295
    iget-object v2, v1, Lorg/ejml/data/FMatrix1Row;->data:[F

    const/4 v12, 0x4

    aput v13, v2, v12

    .line 296
    iget-object v2, v1, Lorg/ejml/data/FMatrix1Row;->data:[F

    const/4 v12, 0x5

    aput v13, v2, v12

    .line 297
    iget-object v2, v1, Lorg/ejml/data/FMatrix1Row;->data:[F

    const/4 v12, 0x6

    aput v13, v2, v12

    .line 298
    iget-object v2, v1, Lorg/ejml/data/FMatrix1Row;->data:[F

    div-float/2addr v5, v3

    aput v5, v2, v4

    .line 299
    iget-object v2, v1, Lorg/ejml/data/FMatrix1Row;->data:[F

    mul-float v4, v5, v5

    sub-float/2addr v7, v4

    move v12, v11

    float-to-double v10, v7

    invoke-static {v10, v11}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v10

    double-to-float v7, v10

    aput v7, v2, v6

    .line 300
    iget-object v2, v1, Lorg/ejml/data/FMatrix1Row;->data:[F

    const/16 v6, 0x9

    aput v13, v2, v6

    .line 301
    iget-object v2, v1, Lorg/ejml/data/FMatrix1Row;->data:[F

    const/16 v6, 0xa

    aput v13, v2, v6

    .line 302
    iget-object v2, v1, Lorg/ejml/data/FMatrix1Row;->data:[F

    const/16 v6, 0xb

    aput v13, v2, v6

    .line 303
    iget-object v2, v1, Lorg/ejml/data/FMatrix1Row;->data:[F

    const/16 v6, 0xc

    aput v13, v2, v6

    .line 304
    iget-object v2, v1, Lorg/ejml/data/FMatrix1Row;->data:[F

    const/16 v6, 0xd

    aput v13, v2, v6

    .line 305
    iget-object v2, v1, Lorg/ejml/data/FMatrix1Row;->data:[F

    div-float/2addr v9, v3

    aput v9, v2, v8

    .line 306
    iget-object v2, v1, Lorg/ejml/data/FMatrix1Row;->data:[F

    mul-float v6, v9, v5

    sub-float v11, v12, v6

    div-float/2addr v11, v7

    const/16 v4, 0xf

    aput v11, v2, v4

    .line 307
    iget-object v2, v1, Lorg/ejml/data/FMatrix1Row;->data:[F

    mul-float v4, v9, v9

    sub-float v4, v50, v4

    mul-float v6, v11, v11

    sub-float/2addr v4, v6

    float-to-double v13, v4

    invoke-static {v13, v14}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v12

    double-to-float v4, v12

    const/16 v8, 0x10

    aput v4, v2, v8

    .line 308
    iget-object v2, v1, Lorg/ejml/data/FMatrix1Row;->data:[F

    const/16 v8, 0x11

    const/4 v6, 0x0

    aput v6, v2, v8

    .line 309
    iget-object v2, v1, Lorg/ejml/data/FMatrix1Row;->data:[F

    const/16 v8, 0x12

    aput v6, v2, v8

    .line 310
    iget-object v2, v1, Lorg/ejml/data/FMatrix1Row;->data:[F

    const/16 v8, 0x13

    aput v6, v2, v8

    .line 311
    iget-object v2, v1, Lorg/ejml/data/FMatrix1Row;->data:[F

    const/16 v8, 0x14

    aput v6, v2, v8

    .line 312
    iget-object v2, v1, Lorg/ejml/data/FMatrix1Row;->data:[F

    div-float/2addr v15, v3

    const/16 v8, 0x15

    aput v15, v2, v8

    .line 313
    iget-object v2, v1, Lorg/ejml/data/FMatrix1Row;->data:[F

    mul-float v8, v15, v5

    sub-float v17, v17, v8

    div-float v17, v17, v7

    aput v17, v2, v16

    .line 314
    iget-object v2, v1, Lorg/ejml/data/FMatrix1Row;->data:[F

    mul-float v8, v15, v9

    sub-float v19, v19, v8

    mul-float v8, v17, v11

    sub-float v19, v19, v8

    div-float v19, v19, v4

    aput v19, v2, v18

    .line 315
    iget-object v2, v1, Lorg/ejml/data/FMatrix1Row;->data:[F

    mul-float v8, v15, v15

    sub-float v21, v21, v8

    mul-float v8, v17, v17

    sub-float v21, v21, v8

    mul-float v8, v19, v19

    sub-float v8, v21, v8

    float-to-double v12, v8

    invoke-static {v12, v13}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v12

    double-to-float v8, v12

    aput v8, v2, v20

    .line 316
    iget-object v2, v1, Lorg/ejml/data/FMatrix1Row;->data:[F

    const/16 v10, 0x19

    const/4 v6, 0x0

    aput v6, v2, v10

    .line 317
    iget-object v2, v1, Lorg/ejml/data/FMatrix1Row;->data:[F

    const/16 v10, 0x1a

    aput v6, v2, v10

    .line 318
    iget-object v2, v1, Lorg/ejml/data/FMatrix1Row;->data:[F

    const/16 v10, 0x1b

    aput v6, v2, v10

    .line 319
    iget-object v2, v1, Lorg/ejml/data/FMatrix1Row;->data:[F

    div-float v23, v23, v3

    aput v23, v2, v22

    .line 320
    iget-object v2, v1, Lorg/ejml/data/FMatrix1Row;->data:[F

    mul-float v10, v23, v5

    sub-float v25, v25, v10

    div-float v25, v25, v7

    aput v25, v2, v24

    .line 321
    iget-object v2, v1, Lorg/ejml/data/FMatrix1Row;->data:[F

    mul-float v10, v23, v9

    sub-float v27, v27, v10

    mul-float v10, v25, v11

    sub-float v27, v27, v10

    div-float v27, v27, v4

    aput v27, v2, v26

    .line 322
    iget-object v2, v1, Lorg/ejml/data/FMatrix1Row;->data:[F

    mul-float v10, v23, v15

    sub-float v29, v29, v10

    mul-float v10, v25, v17

    sub-float v29, v29, v10

    mul-float v10, v27, v19

    sub-float v29, v29, v10

    div-float v29, v29, v8

    aput v29, v2, v28

    .line 323
    iget-object v2, v1, Lorg/ejml/data/FMatrix1Row;->data:[F

    mul-float v10, v23, v23

    sub-float v31, v31, v10

    mul-float v10, v25, v25

    sub-float v31, v31, v10

    mul-float v10, v27, v27

    sub-float v31, v31, v10

    mul-float v10, v29, v29

    sub-float v10, v31, v10

    float-to-double v12, v10

    invoke-static {v12, v13}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v12

    double-to-float v10, v12

    aput v10, v2, v30

    .line 324
    iget-object v2, v1, Lorg/ejml/data/FMatrix1Row;->data:[F

    const/16 v12, 0x21

    const/4 v6, 0x0

    aput v6, v2, v12

    .line 325
    iget-object v2, v1, Lorg/ejml/data/FMatrix1Row;->data:[F

    const/16 v12, 0x22

    aput v6, v2, v12

    .line 326
    iget-object v2, v1, Lorg/ejml/data/FMatrix1Row;->data:[F

    div-float v33, v33, v3

    aput v33, v2, v32

    .line 327
    iget-object v2, v1, Lorg/ejml/data/FMatrix1Row;->data:[F

    mul-float v12, v33, v5

    sub-float v35, v35, v12

    div-float v35, v35, v7

    aput v35, v2, v34

    .line 328
    iget-object v2, v1, Lorg/ejml/data/FMatrix1Row;->data:[F

    mul-float v12, v33, v9

    sub-float v37, v37, v12

    mul-float v12, v35, v11

    sub-float v37, v37, v12

    div-float v37, v37, v4

    aput v37, v2, v36

    .line 329
    iget-object v2, v1, Lorg/ejml/data/FMatrix1Row;->data:[F

    mul-float v12, v33, v15

    sub-float v39, v39, v12

    mul-float v12, v35, v17

    sub-float v39, v39, v12

    mul-float v12, v37, v19

    sub-float v39, v39, v12

    div-float v39, v39, v8

    aput v39, v2, v38

    .line 330
    iget-object v2, v1, Lorg/ejml/data/FMatrix1Row;->data:[F

    mul-float v12, v33, v23

    sub-float v41, v41, v12

    mul-float v12, v35, v25

    sub-float v41, v41, v12

    mul-float v12, v37, v27

    sub-float v41, v41, v12

    mul-float v12, v39, v29

    sub-float v41, v41, v12

    div-float v41, v41, v10

    aput v41, v2, v40

    .line 331
    iget-object v2, v1, Lorg/ejml/data/FMatrix1Row;->data:[F

    mul-float v12, v33, v33

    sub-float v42, v42, v12

    mul-float v12, v35, v35

    sub-float v42, v42, v12

    mul-float v12, v37, v37

    sub-float v42, v42, v12

    mul-float v12, v39, v39

    sub-float v42, v42, v12

    mul-float v12, v41, v41

    sub-float v12, v42, v12

    float-to-double v12, v12

    invoke-static {v12, v13}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v12

    double-to-float v12, v12

    const/16 v13, 0x28

    aput v12, v2, v13

    .line 332
    iget-object v2, v1, Lorg/ejml/data/FMatrix1Row;->data:[F

    const/16 v13, 0x29

    const/4 v6, 0x0

    aput v6, v2, v13

    .line 333
    iget-object v2, v1, Lorg/ejml/data/FMatrix1Row;->data:[F

    div-float v43, v43, v3

    const/16 v3, 0x2a

    aput v43, v2, v3

    .line 334
    iget-object v2, v1, Lorg/ejml/data/FMatrix1Row;->data:[F

    mul-float v5, v5, v43

    sub-float v44, v44, v5

    div-float v44, v44, v7

    const/16 v3, 0x2b

    aput v44, v2, v3

    .line 335
    iget-object v2, v1, Lorg/ejml/data/FMatrix1Row;->data:[F

    mul-float v9, v9, v43

    sub-float v45, v45, v9

    mul-float v11, v11, v44

    sub-float v45, v45, v11

    div-float v45, v45, v4

    const/16 v3, 0x2c

    aput v45, v2, v3

    .line 336
    iget-object v2, v1, Lorg/ejml/data/FMatrix1Row;->data:[F

    mul-float v15, v15, v43

    sub-float v46, v46, v15

    mul-float v17, v17, v44

    sub-float v46, v46, v17

    mul-float v19, v19, v45

    sub-float v46, v46, v19

    div-float v46, v46, v8

    const/16 v3, 0x2d

    aput v46, v2, v3

    .line 337
    iget-object v2, v1, Lorg/ejml/data/FMatrix1Row;->data:[F

    mul-float v23, v23, v43

    sub-float v47, v47, v23

    mul-float v25, v25, v44

    sub-float v47, v47, v25

    mul-float v27, v27, v45

    sub-float v47, v47, v27

    mul-float v29, v29, v46

    sub-float v47, v47, v29

    div-float v47, v47, v10

    const/16 v3, 0x2e

    aput v47, v2, v3

    .line 338
    iget-object v2, v1, Lorg/ejml/data/FMatrix1Row;->data:[F

    mul-float v33, v33, v43

    sub-float v48, v48, v33

    mul-float v35, v35, v44

    sub-float v48, v48, v35

    mul-float v37, v37, v45

    sub-float v48, v48, v37

    mul-float v39, v39, v46

    sub-float v48, v48, v39

    mul-float v41, v41, v47

    sub-float v48, v48, v41

    div-float v48, v48, v12

    const/16 v3, 0x2f

    aput v48, v2, v3

    .line 339
    iget-object v2, v1, Lorg/ejml/data/FMatrix1Row;->data:[F

    mul-float v43, v43, v43

    sub-float v0, v0, v43

    mul-float v44, v44, v44

    sub-float v0, v0, v44

    mul-float v45, v45, v45

    sub-float v0, v0, v45

    mul-float v46, v46, v46

    sub-float v0, v0, v46

    mul-float v47, v47, v47

    sub-float v0, v0, v47

    mul-float v48, v48, v48

    sub-float v0, v0, v48

    float-to-double v3, v0

    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    double-to-float v0, v3

    aput v0, v2, v49

    .line 340
    iget-object v0, v1, Lorg/ejml/data/FMatrix1Row;->data:[F

    aget v0, v0, v49

    invoke-static {v0}, Lorg/ejml/UtilEjml;->isUncountable(F)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static upper(Lorg/ejml/data/FMatrix1Row;Lorg/ejml/data/FMatrix1Row;)Z
    .locals 1

    .line 51
    iget v0, p0, Lorg/ejml/data/FMatrix1Row;->numRows:I

    packed-switch v0, :pswitch_data_0

    const/4 p0, 0x0

    return p0

    .line 58
    :pswitch_0
    invoke-static {p0, p1}, Lorg/ejml/dense/row/misc/UnrolledCholesky_FDRM;->upper7(Lorg/ejml/data/FMatrix1Row;Lorg/ejml/data/FMatrix1Row;)Z

    move-result p0

    return p0

    .line 57
    :pswitch_1
    invoke-static {p0, p1}, Lorg/ejml/dense/row/misc/UnrolledCholesky_FDRM;->upper6(Lorg/ejml/data/FMatrix1Row;Lorg/ejml/data/FMatrix1Row;)Z

    move-result p0

    return p0

    .line 56
    :pswitch_2
    invoke-static {p0, p1}, Lorg/ejml/dense/row/misc/UnrolledCholesky_FDRM;->upper5(Lorg/ejml/data/FMatrix1Row;Lorg/ejml/data/FMatrix1Row;)Z

    move-result p0

    return p0

    .line 55
    :pswitch_3
    invoke-static {p0, p1}, Lorg/ejml/dense/row/misc/UnrolledCholesky_FDRM;->upper4(Lorg/ejml/data/FMatrix1Row;Lorg/ejml/data/FMatrix1Row;)Z

    move-result p0

    return p0

    .line 54
    :pswitch_4
    invoke-static {p0, p1}, Lorg/ejml/dense/row/misc/UnrolledCholesky_FDRM;->upper3(Lorg/ejml/data/FMatrix1Row;Lorg/ejml/data/FMatrix1Row;)Z

    move-result p0

    return p0

    .line 53
    :pswitch_5
    invoke-static {p0, p1}, Lorg/ejml/dense/row/misc/UnrolledCholesky_FDRM;->upper2(Lorg/ejml/data/FMatrix1Row;Lorg/ejml/data/FMatrix1Row;)Z

    move-result p0

    return p0

    .line 52
    :pswitch_6
    invoke-static {p0, p1}, Lorg/ejml/dense/row/misc/UnrolledCholesky_FDRM;->upper1(Lorg/ejml/data/FMatrix1Row;Lorg/ejml/data/FMatrix1Row;)Z

    move-result p0

    return p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static upper1(Lorg/ejml/data/FMatrix1Row;Lorg/ejml/data/FMatrix1Row;)Z
    .locals 4

    .line 345
    iget-object p0, p0, Lorg/ejml/data/FMatrix1Row;->data:[F

    const/4 v0, 0x0

    .line 347
    aget p0, p0, v0

    .line 349
    iget-object v1, p1, Lorg/ejml/data/FMatrix1Row;->data:[F

    float-to-double v2, p0

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float p0, v2

    aput p0, v1, v0

    .line 350
    iget-object p0, p1, Lorg/ejml/data/FMatrix1Row;->data:[F

    aget p0, p0, v0

    invoke-static {p0}, Lorg/ejml/UtilEjml;->isUncountable(F)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static upper2(Lorg/ejml/data/FMatrix1Row;Lorg/ejml/data/FMatrix1Row;)Z
    .locals 8

    .line 355
    iget-object p0, p0, Lorg/ejml/data/FMatrix1Row;->data:[F

    const/4 v0, 0x0

    .line 357
    aget v1, p0, v0

    const/4 v2, 0x1

    .line 358
    aget v3, p0, v2

    const/4 v4, 0x3

    .line 359
    aget p0, p0, v4

    .line 361
    iget-object v5, p1, Lorg/ejml/data/FMatrix1Row;->data:[F

    float-to-double v6, v1

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    double-to-float v1, v6

    aput v1, v5, v0

    .line 362
    iget-object v0, p1, Lorg/ejml/data/FMatrix1Row;->data:[F

    const/4 v5, 0x2

    const/4 v6, 0x0

    aput v6, v0, v5

    .line 363
    iget-object v0, p1, Lorg/ejml/data/FMatrix1Row;->data:[F

    div-float/2addr v3, v1

    aput v3, v0, v2

    .line 364
    iget-object v0, p1, Lorg/ejml/data/FMatrix1Row;->data:[F

    mul-float/2addr v3, v3

    sub-float/2addr p0, v3

    float-to-double v5, p0

    invoke-static {v5, v6}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v5

    double-to-float p0, v5

    aput p0, v0, v4

    .line 365
    iget-object p0, p1, Lorg/ejml/data/FMatrix1Row;->data:[F

    aget p0, p0, v4

    invoke-static {p0}, Lorg/ejml/UtilEjml;->isUncountable(F)Z

    move-result p0

    xor-int/2addr p0, v2

    return p0
.end method

.method public static upper3(Lorg/ejml/data/FMatrix1Row;Lorg/ejml/data/FMatrix1Row;)Z
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 370
    iget-object v0, v0, Lorg/ejml/data/FMatrix1Row;->data:[F

    const/4 v2, 0x0

    .line 372
    aget v3, v0, v2

    const/4 v4, 0x1

    .line 373
    aget v5, v0, v4

    const/4 v6, 0x4

    .line 374
    aget v7, v0, v6

    const/4 v8, 0x2

    .line 375
    aget v9, v0, v8

    const/4 v10, 0x5

    .line 376
    aget v11, v0, v10

    const/16 v12, 0x8

    .line 377
    aget v0, v0, v12

    .line 379
    iget-object v13, v1, Lorg/ejml/data/FMatrix1Row;->data:[F

    float-to-double v14, v3

    invoke-static {v14, v15}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v14

    double-to-float v3, v14

    aput v3, v13, v2

    .line 380
    iget-object v2, v1, Lorg/ejml/data/FMatrix1Row;->data:[F

    const/4 v13, 0x3

    const/4 v14, 0x0

    aput v14, v2, v13

    .line 381
    iget-object v2, v1, Lorg/ejml/data/FMatrix1Row;->data:[F

    const/4 v13, 0x6

    aput v14, v2, v13

    .line 382
    iget-object v2, v1, Lorg/ejml/data/FMatrix1Row;->data:[F

    div-float/2addr v5, v3

    aput v5, v2, v4

    .line 383
    iget-object v2, v1, Lorg/ejml/data/FMatrix1Row;->data:[F

    mul-float v13, v5, v5

    sub-float/2addr v7, v13

    float-to-double v12, v7

    invoke-static {v12, v13}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v12

    double-to-float v7, v12

    aput v7, v2, v6

    .line 384
    iget-object v2, v1, Lorg/ejml/data/FMatrix1Row;->data:[F

    const/4 v6, 0x7

    aput v14, v2, v6

    .line 385
    iget-object v2, v1, Lorg/ejml/data/FMatrix1Row;->data:[F

    div-float/2addr v9, v3

    aput v9, v2, v8

    .line 386
    iget-object v2, v1, Lorg/ejml/data/FMatrix1Row;->data:[F

    mul-float/2addr v5, v9

    sub-float/2addr v11, v5

    div-float/2addr v11, v7

    aput v11, v2, v10

    .line 387
    iget-object v2, v1, Lorg/ejml/data/FMatrix1Row;->data:[F

    mul-float/2addr v9, v9

    sub-float/2addr v0, v9

    mul-float/2addr v11, v11

    sub-float/2addr v0, v11

    float-to-double v5, v0

    invoke-static {v5, v6}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v5

    double-to-float v0, v5

    const/16 v3, 0x8

    aput v0, v2, v3

    .line 388
    iget-object v0, v1, Lorg/ejml/data/FMatrix1Row;->data:[F

    aget v0, v0, v3

    invoke-static {v0}, Lorg/ejml/UtilEjml;->isUncountable(F)Z

    move-result v0

    xor-int/2addr v0, v4

    return v0
.end method

.method public static upper4(Lorg/ejml/data/FMatrix1Row;Lorg/ejml/data/FMatrix1Row;)Z
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 393
    iget-object v0, v0, Lorg/ejml/data/FMatrix1Row;->data:[F

    const/4 v2, 0x0

    .line 395
    aget v3, v0, v2

    const/4 v4, 0x1

    .line 396
    aget v5, v0, v4

    const/4 v6, 0x5

    .line 397
    aget v7, v0, v6

    const/4 v8, 0x2

    .line 398
    aget v9, v0, v8

    const/4 v10, 0x6

    .line 399
    aget v11, v0, v10

    const/16 v12, 0xa

    .line 400
    aget v13, v0, v12

    const/4 v14, 0x3

    .line 401
    aget v15, v0, v14

    const/16 v16, 0x7

    .line 402
    aget v17, v0, v16

    const/16 v18, 0xb

    .line 403
    aget v19, v0, v18

    const/16 v20, 0xf

    .line 404
    aget v0, v0, v20

    .line 406
    iget-object v14, v1, Lorg/ejml/data/FMatrix1Row;->data:[F

    move/from16 v21, v13

    float-to-double v12, v3

    invoke-static {v12, v13}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v12

    double-to-float v3, v12

    aput v3, v14, v2

    .line 407
    iget-object v2, v1, Lorg/ejml/data/FMatrix1Row;->data:[F

    const/4 v12, 0x4

    const/4 v13, 0x0

    aput v13, v2, v12

    .line 408
    iget-object v2, v1, Lorg/ejml/data/FMatrix1Row;->data:[F

    const/16 v12, 0x8

    aput v13, v2, v12

    .line 409
    iget-object v2, v1, Lorg/ejml/data/FMatrix1Row;->data:[F

    const/16 v12, 0xc

    aput v13, v2, v12

    .line 410
    iget-object v2, v1, Lorg/ejml/data/FMatrix1Row;->data:[F

    div-float/2addr v5, v3

    aput v5, v2, v4

    .line 411
    iget-object v2, v1, Lorg/ejml/data/FMatrix1Row;->data:[F

    mul-float v12, v5, v5

    sub-float/2addr v7, v12

    move v14, v11

    float-to-double v10, v7

    invoke-static {v10, v11}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v10

    double-to-float v7, v10

    aput v7, v2, v6

    .line 412
    iget-object v2, v1, Lorg/ejml/data/FMatrix1Row;->data:[F

    const/16 v6, 0x9

    aput v13, v2, v6

    .line 413
    iget-object v2, v1, Lorg/ejml/data/FMatrix1Row;->data:[F

    const/16 v6, 0xd

    aput v13, v2, v6

    .line 414
    iget-object v2, v1, Lorg/ejml/data/FMatrix1Row;->data:[F

    div-float/2addr v9, v3

    aput v9, v2, v8

    .line 415
    iget-object v2, v1, Lorg/ejml/data/FMatrix1Row;->data:[F

    mul-float v6, v5, v9

    sub-float v11, v14, v6

    div-float/2addr v11, v7

    const/4 v6, 0x6

    aput v11, v2, v6

    .line 416
    iget-object v2, v1, Lorg/ejml/data/FMatrix1Row;->data:[F

    mul-float v6, v9, v9

    sub-float v6, v21, v6

    mul-float v8, v11, v11

    sub-float/2addr v6, v8

    move v10, v5

    float-to-double v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-float v4, v4

    const/16 v5, 0xa

    aput v4, v2, v5

    .line 417
    iget-object v2, v1, Lorg/ejml/data/FMatrix1Row;->data:[F

    const/16 v5, 0xe

    aput v13, v2, v5

    .line 418
    iget-object v2, v1, Lorg/ejml/data/FMatrix1Row;->data:[F

    div-float/2addr v15, v3

    const/4 v3, 0x3

    aput v15, v2, v3

    .line 419
    iget-object v2, v1, Lorg/ejml/data/FMatrix1Row;->data:[F

    mul-float v5, v10, v15

    sub-float v17, v17, v5

    div-float v17, v17, v7

    aput v17, v2, v16

    .line 420
    iget-object v2, v1, Lorg/ejml/data/FMatrix1Row;->data:[F

    mul-float/2addr v9, v15

    sub-float v19, v19, v9

    mul-float v11, v11, v17

    sub-float v19, v19, v11

    div-float v19, v19, v4

    aput v19, v2, v18

    .line 421
    iget-object v2, v1, Lorg/ejml/data/FMatrix1Row;->data:[F

    mul-float/2addr v15, v15

    sub-float/2addr v0, v15

    mul-float v17, v17, v17

    sub-float v0, v0, v17

    mul-float v19, v19, v19

    sub-float v0, v0, v19

    float-to-double v3, v0

    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    double-to-float v0, v3

    aput v0, v2, v20

    .line 422
    iget-object v0, v1, Lorg/ejml/data/FMatrix1Row;->data:[F

    aget v0, v0, v20

    invoke-static {v0}, Lorg/ejml/UtilEjml;->isUncountable(F)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    return v0
.end method

.method public static upper5(Lorg/ejml/data/FMatrix1Row;Lorg/ejml/data/FMatrix1Row;)Z
    .locals 32

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 427
    iget-object v0, v0, Lorg/ejml/data/FMatrix1Row;->data:[F

    const/4 v2, 0x0

    .line 429
    aget v3, v0, v2

    const/4 v4, 0x1

    .line 430
    aget v5, v0, v4

    const/4 v6, 0x6

    .line 431
    aget v7, v0, v6

    const/4 v8, 0x2

    .line 432
    aget v9, v0, v8

    const/4 v10, 0x7

    .line 433
    aget v11, v0, v10

    const/16 v12, 0xc

    .line 434
    aget v13, v0, v12

    const/4 v14, 0x3

    .line 435
    aget v15, v0, v14

    const/16 v16, 0x8

    .line 436
    aget v17, v0, v16

    const/16 v18, 0xd

    .line 437
    aget v19, v0, v18

    const/16 v20, 0x12

    .line 438
    aget v21, v0, v20

    const/16 v22, 0x4

    .line 439
    aget v23, v0, v22

    const/16 v24, 0x9

    .line 440
    aget v25, v0, v24

    const/16 v26, 0xe

    .line 441
    aget v27, v0, v26

    const/16 v28, 0x13

    .line 442
    aget v29, v0, v28

    const/16 v30, 0x18

    .line 443
    aget v0, v0, v30

    .line 445
    iget-object v14, v1, Lorg/ejml/data/FMatrix1Row;->data:[F

    move/from16 v31, v13

    float-to-double v12, v3

    invoke-static {v12, v13}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v12

    double-to-float v3, v12

    aput v3, v14, v2

    .line 446
    iget-object v2, v1, Lorg/ejml/data/FMatrix1Row;->data:[F

    const/4 v12, 0x5

    const/4 v13, 0x0

    aput v13, v2, v12

    .line 447
    iget-object v2, v1, Lorg/ejml/data/FMatrix1Row;->data:[F

    const/16 v12, 0xa

    aput v13, v2, v12

    .line 448
    iget-object v2, v1, Lorg/ejml/data/FMatrix1Row;->data:[F

    const/16 v12, 0xf

    aput v13, v2, v12

    .line 449
    iget-object v2, v1, Lorg/ejml/data/FMatrix1Row;->data:[F

    const/16 v12, 0x14

    aput v13, v2, v12

    .line 450
    iget-object v2, v1, Lorg/ejml/data/FMatrix1Row;->data:[F

    div-float/2addr v5, v3

    aput v5, v2, v4

    .line 451
    iget-object v2, v1, Lorg/ejml/data/FMatrix1Row;->data:[F

    mul-float v12, v5, v5

    sub-float/2addr v7, v12

    move v14, v11

    float-to-double v10, v7

    invoke-static {v10, v11}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v10

    double-to-float v7, v10

    aput v7, v2, v6

    .line 452
    iget-object v2, v1, Lorg/ejml/data/FMatrix1Row;->data:[F

    const/16 v6, 0xb

    aput v13, v2, v6

    .line 453
    iget-object v2, v1, Lorg/ejml/data/FMatrix1Row;->data:[F

    const/16 v6, 0x10

    aput v13, v2, v6

    .line 454
    iget-object v2, v1, Lorg/ejml/data/FMatrix1Row;->data:[F

    const/16 v6, 0x15

    aput v13, v2, v6

    .line 455
    iget-object v2, v1, Lorg/ejml/data/FMatrix1Row;->data:[F

    div-float/2addr v9, v3

    aput v9, v2, v8

    .line 456
    iget-object v2, v1, Lorg/ejml/data/FMatrix1Row;->data:[F

    mul-float v6, v5, v9

    sub-float v11, v14, v6

    div-float/2addr v11, v7

    const/4 v6, 0x7

    aput v11, v2, v6

    .line 457
    iget-object v2, v1, Lorg/ejml/data/FMatrix1Row;->data:[F

    mul-float v6, v9, v9

    sub-float v6, v31, v6

    mul-float v8, v11, v11

    sub-float/2addr v6, v8

    move v10, v5

    float-to-double v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-float v4, v4

    const/16 v5, 0xc

    aput v4, v2, v5

    .line 458
    iget-object v2, v1, Lorg/ejml/data/FMatrix1Row;->data:[F

    const/16 v5, 0x11

    aput v13, v2, v5

    .line 459
    iget-object v2, v1, Lorg/ejml/data/FMatrix1Row;->data:[F

    const/16 v5, 0x16

    aput v13, v2, v5

    .line 460
    iget-object v2, v1, Lorg/ejml/data/FMatrix1Row;->data:[F

    div-float/2addr v15, v3

    const/4 v5, 0x3

    aput v15, v2, v5

    .line 461
    iget-object v2, v1, Lorg/ejml/data/FMatrix1Row;->data:[F

    mul-float v5, v10, v15

    sub-float v17, v17, v5

    div-float v17, v17, v7

    aput v17, v2, v16

    .line 462
    iget-object v2, v1, Lorg/ejml/data/FMatrix1Row;->data:[F

    mul-float v5, v9, v15

    sub-float v19, v19, v5

    mul-float v5, v11, v17

    sub-float v19, v19, v5

    div-float v19, v19, v4

    aput v19, v2, v18

    .line 463
    iget-object v2, v1, Lorg/ejml/data/FMatrix1Row;->data:[F

    mul-float v5, v15, v15

    sub-float v21, v21, v5

    mul-float v5, v17, v17

    sub-float v21, v21, v5

    mul-float v5, v19, v19

    sub-float v5, v21, v5

    float-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v5

    double-to-float v5, v5

    aput v5, v2, v20

    .line 464
    iget-object v2, v1, Lorg/ejml/data/FMatrix1Row;->data:[F

    const/16 v6, 0x17

    aput v13, v2, v6

    .line 465
    iget-object v2, v1, Lorg/ejml/data/FMatrix1Row;->data:[F

    div-float v23, v23, v3

    aput v23, v2, v22

    .line 466
    iget-object v2, v1, Lorg/ejml/data/FMatrix1Row;->data:[F

    mul-float v3, v10, v23

    sub-float v25, v25, v3

    div-float v25, v25, v7

    aput v25, v2, v24

    .line 467
    iget-object v2, v1, Lorg/ejml/data/FMatrix1Row;->data:[F

    mul-float v9, v9, v23

    sub-float v27, v27, v9

    mul-float v11, v11, v25

    sub-float v27, v27, v11

    div-float v27, v27, v4

    aput v27, v2, v26

    .line 468
    iget-object v2, v1, Lorg/ejml/data/FMatrix1Row;->data:[F

    mul-float v15, v15, v23

    sub-float v29, v29, v15

    mul-float v17, v17, v25

    sub-float v29, v29, v17

    mul-float v19, v19, v27

    sub-float v29, v29, v19

    div-float v29, v29, v5

    aput v29, v2, v28

    .line 469
    iget-object v2, v1, Lorg/ejml/data/FMatrix1Row;->data:[F

    mul-float v23, v23, v23

    sub-float v0, v0, v23

    mul-float v25, v25, v25

    sub-float v0, v0, v25

    mul-float v27, v27, v27

    sub-float v0, v0, v27

    mul-float v29, v29, v29

    sub-float v0, v0, v29

    float-to-double v3, v0

    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    double-to-float v0, v3

    aput v0, v2, v30

    .line 470
    iget-object v0, v1, Lorg/ejml/data/FMatrix1Row;->data:[F

    aget v0, v0, v30

    invoke-static {v0}, Lorg/ejml/UtilEjml;->isUncountable(F)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    return v0
.end method

.method public static upper6(Lorg/ejml/data/FMatrix1Row;Lorg/ejml/data/FMatrix1Row;)Z
    .locals 44

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 475
    iget-object v0, v0, Lorg/ejml/data/FMatrix1Row;->data:[F

    const/4 v2, 0x0

    .line 477
    aget v3, v0, v2

    const/4 v4, 0x1

    .line 478
    aget v5, v0, v4

    const/4 v6, 0x7

    .line 479
    aget v7, v0, v6

    const/4 v8, 0x2

    .line 480
    aget v9, v0, v8

    const/16 v10, 0x8

    .line 481
    aget v11, v0, v10

    const/16 v12, 0xe

    .line 482
    aget v13, v0, v12

    const/4 v14, 0x3

    .line 483
    aget v15, v0, v14

    const/16 v16, 0x9

    .line 484
    aget v17, v0, v16

    const/16 v18, 0xf

    .line 485
    aget v19, v0, v18

    const/16 v20, 0x15

    .line 486
    aget v21, v0, v20

    const/16 v22, 0x4

    .line 487
    aget v23, v0, v22

    const/16 v24, 0xa

    .line 488
    aget v25, v0, v24

    const/16 v26, 0x10

    .line 489
    aget v27, v0, v26

    const/16 v28, 0x16

    .line 490
    aget v29, v0, v28

    const/16 v30, 0x1c

    .line 491
    aget v31, v0, v30

    const/16 v32, 0x5

    .line 492
    aget v33, v0, v32

    const/16 v34, 0xb

    .line 493
    aget v35, v0, v34

    const/16 v36, 0x11

    .line 494
    aget v37, v0, v36

    const/16 v38, 0x17

    .line 495
    aget v39, v0, v38

    const/16 v40, 0x1d

    .line 496
    aget v41, v0, v40

    const/16 v42, 0x23

    .line 497
    aget v0, v0, v42

    .line 499
    iget-object v14, v1, Lorg/ejml/data/FMatrix1Row;->data:[F

    move/from16 v43, v13

    float-to-double v12, v3

    invoke-static {v12, v13}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v12

    double-to-float v3, v12

    aput v3, v14, v2

    .line 500
    iget-object v2, v1, Lorg/ejml/data/FMatrix1Row;->data:[F

    const/4 v12, 0x6

    const/4 v13, 0x0

    aput v13, v2, v12

    .line 501
    iget-object v2, v1, Lorg/ejml/data/FMatrix1Row;->data:[F

    const/16 v12, 0xc

    aput v13, v2, v12

    .line 502
    iget-object v2, v1, Lorg/ejml/data/FMatrix1Row;->data:[F

    const/16 v12, 0x12

    aput v13, v2, v12

    .line 503
    iget-object v2, v1, Lorg/ejml/data/FMatrix1Row;->data:[F

    const/16 v12, 0x18

    aput v13, v2, v12

    .line 504
    iget-object v2, v1, Lorg/ejml/data/FMatrix1Row;->data:[F

    const/16 v12, 0x1e

    aput v13, v2, v12

    .line 505
    iget-object v2, v1, Lorg/ejml/data/FMatrix1Row;->data:[F

    div-float/2addr v5, v3

    aput v5, v2, v4

    .line 506
    iget-object v2, v1, Lorg/ejml/data/FMatrix1Row;->data:[F

    mul-float v12, v5, v5

    sub-float/2addr v7, v12

    move v14, v11

    float-to-double v10, v7

    invoke-static {v10, v11}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v10

    double-to-float v7, v10

    aput v7, v2, v6

    .line 507
    iget-object v2, v1, Lorg/ejml/data/FMatrix1Row;->data:[F

    const/16 v6, 0xd

    aput v13, v2, v6

    .line 508
    iget-object v2, v1, Lorg/ejml/data/FMatrix1Row;->data:[F

    const/16 v6, 0x13

    aput v13, v2, v6

    .line 509
    iget-object v2, v1, Lorg/ejml/data/FMatrix1Row;->data:[F

    const/16 v6, 0x19

    aput v13, v2, v6

    .line 510
    iget-object v2, v1, Lorg/ejml/data/FMatrix1Row;->data:[F

    const/16 v6, 0x1f

    aput v13, v2, v6

    .line 511
    iget-object v2, v1, Lorg/ejml/data/FMatrix1Row;->data:[F

    div-float/2addr v9, v3

    aput v9, v2, v8

    .line 512
    iget-object v2, v1, Lorg/ejml/data/FMatrix1Row;->data:[F

    mul-float v6, v5, v9

    sub-float v11, v14, v6

    div-float/2addr v11, v7

    const/16 v6, 0x8

    aput v11, v2, v6

    .line 513
    iget-object v2, v1, Lorg/ejml/data/FMatrix1Row;->data:[F

    mul-float v6, v9, v9

    sub-float v6, v43, v6

    mul-float v8, v11, v11

    sub-float/2addr v6, v8

    move v10, v5

    float-to-double v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-float v4, v4

    const/16 v5, 0xe

    aput v4, v2, v5

    .line 514
    iget-object v2, v1, Lorg/ejml/data/FMatrix1Row;->data:[F

    const/16 v5, 0x14

    aput v13, v2, v5

    .line 515
    iget-object v2, v1, Lorg/ejml/data/FMatrix1Row;->data:[F

    const/16 v5, 0x1a

    aput v13, v2, v5

    .line 516
    iget-object v2, v1, Lorg/ejml/data/FMatrix1Row;->data:[F

    const/16 v5, 0x20

    aput v13, v2, v5

    .line 517
    iget-object v2, v1, Lorg/ejml/data/FMatrix1Row;->data:[F

    div-float/2addr v15, v3

    const/4 v5, 0x3

    aput v15, v2, v5

    .line 518
    iget-object v2, v1, Lorg/ejml/data/FMatrix1Row;->data:[F

    mul-float v5, v10, v15

    sub-float v17, v17, v5

    div-float v17, v17, v7

    aput v17, v2, v16

    .line 519
    iget-object v2, v1, Lorg/ejml/data/FMatrix1Row;->data:[F

    mul-float v5, v9, v15

    sub-float v19, v19, v5

    mul-float v5, v11, v17

    sub-float v19, v19, v5

    div-float v19, v19, v4

    aput v19, v2, v18

    .line 520
    iget-object v2, v1, Lorg/ejml/data/FMatrix1Row;->data:[F

    mul-float v5, v15, v15

    sub-float v21, v21, v5

    mul-float v5, v17, v17

    sub-float v21, v21, v5

    mul-float v5, v19, v19

    sub-float v5, v21, v5

    float-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v5

    double-to-float v5, v5

    aput v5, v2, v20

    .line 521
    iget-object v2, v1, Lorg/ejml/data/FMatrix1Row;->data:[F

    const/16 v6, 0x1b

    aput v13, v2, v6

    .line 522
    iget-object v2, v1, Lorg/ejml/data/FMatrix1Row;->data:[F

    const/16 v6, 0x21

    aput v13, v2, v6

    .line 523
    iget-object v2, v1, Lorg/ejml/data/FMatrix1Row;->data:[F

    div-float v23, v23, v3

    aput v23, v2, v22

    .line 524
    iget-object v2, v1, Lorg/ejml/data/FMatrix1Row;->data:[F

    mul-float v6, v10, v23

    sub-float v25, v25, v6

    div-float v25, v25, v7

    aput v25, v2, v24

    .line 525
    iget-object v2, v1, Lorg/ejml/data/FMatrix1Row;->data:[F

    mul-float v6, v9, v23

    sub-float v27, v27, v6

    mul-float v6, v11, v25

    sub-float v27, v27, v6

    div-float v27, v27, v4

    aput v27, v2, v26

    .line 526
    iget-object v2, v1, Lorg/ejml/data/FMatrix1Row;->data:[F

    mul-float v6, v15, v23

    sub-float v29, v29, v6

    mul-float v6, v17, v25

    sub-float v29, v29, v6

    mul-float v6, v19, v27

    sub-float v29, v29, v6

    div-float v29, v29, v5

    aput v29, v2, v28

    .line 527
    iget-object v2, v1, Lorg/ejml/data/FMatrix1Row;->data:[F

    mul-float v6, v23, v23

    sub-float v31, v31, v6

    mul-float v6, v25, v25

    sub-float v31, v31, v6

    mul-float v6, v27, v27

    sub-float v31, v31, v6

    mul-float v6, v29, v29

    sub-float v6, v31, v6

    move/from16 p0, v9

    float-to-double v8, v6

    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    double-to-float v6, v8

    aput v6, v2, v30

    .line 528
    iget-object v2, v1, Lorg/ejml/data/FMatrix1Row;->data:[F

    const/16 v8, 0x22

    aput v13, v2, v8

    .line 529
    iget-object v2, v1, Lorg/ejml/data/FMatrix1Row;->data:[F

    div-float v33, v33, v3

    aput v33, v2, v32

    .line 530
    iget-object v2, v1, Lorg/ejml/data/FMatrix1Row;->data:[F

    mul-float v3, v10, v33

    sub-float v35, v35, v3

    div-float v35, v35, v7

    aput v35, v2, v34

    .line 531
    iget-object v2, v1, Lorg/ejml/data/FMatrix1Row;->data:[F

    mul-float v9, p0, v33

    sub-float v37, v37, v9

    mul-float v11, v11, v35

    sub-float v37, v37, v11

    div-float v37, v37, v4

    aput v37, v2, v36

    .line 532
    iget-object v2, v1, Lorg/ejml/data/FMatrix1Row;->data:[F

    mul-float v15, v15, v33

    sub-float v39, v39, v15

    mul-float v17, v17, v35

    sub-float v39, v39, v17

    mul-float v19, v19, v37

    sub-float v39, v39, v19

    div-float v39, v39, v5

    aput v39, v2, v38

    .line 533
    iget-object v2, v1, Lorg/ejml/data/FMatrix1Row;->data:[F

    mul-float v23, v23, v33

    sub-float v41, v41, v23

    mul-float v25, v25, v35

    sub-float v41, v41, v25

    mul-float v27, v27, v37

    sub-float v41, v41, v27

    mul-float v29, v29, v39

    sub-float v41, v41, v29

    div-float v41, v41, v6

    aput v41, v2, v40

    .line 534
    iget-object v2, v1, Lorg/ejml/data/FMatrix1Row;->data:[F

    mul-float v33, v33, v33

    sub-float v0, v0, v33

    mul-float v35, v35, v35

    sub-float v0, v0, v35

    mul-float v37, v37, v37

    sub-float v0, v0, v37

    mul-float v39, v39, v39

    sub-float v0, v0, v39

    mul-float v41, v41, v41

    sub-float v0, v0, v41

    float-to-double v3, v0

    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    double-to-float v0, v3

    aput v0, v2, v42

    .line 535
    iget-object v0, v1, Lorg/ejml/data/FMatrix1Row;->data:[F

    aget v0, v0, v42

    invoke-static {v0}, Lorg/ejml/UtilEjml;->isUncountable(F)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    return v0
.end method

.method public static upper7(Lorg/ejml/data/FMatrix1Row;Lorg/ejml/data/FMatrix1Row;)Z
    .locals 51

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 540
    iget-object v0, v0, Lorg/ejml/data/FMatrix1Row;->data:[F

    const/4 v2, 0x0

    .line 542
    aget v3, v0, v2

    const/4 v4, 0x1

    .line 543
    aget v5, v0, v4

    const/16 v6, 0x8

    .line 544
    aget v7, v0, v6

    const/4 v8, 0x2

    .line 545
    aget v9, v0, v8

    const/16 v10, 0x9

    .line 546
    aget v11, v0, v10

    const/16 v12, 0x10

    .line 547
    aget v13, v0, v12

    const/4 v14, 0x3

    .line 548
    aget v15, v0, v14

    const/16 v16, 0xa

    .line 549
    aget v17, v0, v16

    const/16 v18, 0x11

    .line 550
    aget v19, v0, v18

    const/16 v20, 0x18

    .line 551
    aget v21, v0, v20

    const/16 v22, 0x4

    .line 552
    aget v23, v0, v22

    const/16 v24, 0xb

    .line 553
    aget v25, v0, v24

    const/16 v26, 0x12

    .line 554
    aget v27, v0, v26

    const/16 v28, 0x19

    .line 555
    aget v29, v0, v28

    const/16 v30, 0x20

    .line 556
    aget v31, v0, v30

    const/16 v32, 0x5

    .line 557
    aget v33, v0, v32

    const/16 v34, 0xc

    .line 558
    aget v35, v0, v34

    const/16 v36, 0x13

    .line 559
    aget v37, v0, v36

    const/16 v38, 0x1a

    .line 560
    aget v39, v0, v38

    const/16 v40, 0x21

    .line 561
    aget v41, v0, v40

    const/16 v42, 0x28

    .line 562
    aget v42, v0, v42

    const/16 v43, 0x6

    .line 563
    aget v43, v0, v43

    const/16 v44, 0xd

    .line 564
    aget v44, v0, v44

    const/16 v45, 0x14

    .line 565
    aget v45, v0, v45

    const/16 v46, 0x1b

    .line 566
    aget v46, v0, v46

    const/16 v47, 0x22

    .line 567
    aget v47, v0, v47

    const/16 v48, 0x29

    .line 568
    aget v48, v0, v48

    const/16 v49, 0x30

    .line 569
    aget v0, v0, v49

    .line 571
    iget-object v14, v1, Lorg/ejml/data/FMatrix1Row;->data:[F

    move/from16 v50, v13

    float-to-double v12, v3

    invoke-static {v12, v13}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v12

    double-to-float v3, v12

    aput v3, v14, v2

    .line 572
    iget-object v2, v1, Lorg/ejml/data/FMatrix1Row;->data:[F

    const/4 v12, 0x7

    const/4 v13, 0x0

    aput v13, v2, v12

    .line 573
    iget-object v2, v1, Lorg/ejml/data/FMatrix1Row;->data:[F

    const/16 v12, 0xe

    aput v13, v2, v12

    .line 574
    iget-object v2, v1, Lorg/ejml/data/FMatrix1Row;->data:[F

    const/16 v12, 0x15

    aput v13, v2, v12

    .line 575
    iget-object v2, v1, Lorg/ejml/data/FMatrix1Row;->data:[F

    const/16 v12, 0x1c

    aput v13, v2, v12

    .line 576
    iget-object v2, v1, Lorg/ejml/data/FMatrix1Row;->data:[F

    const/16 v12, 0x23

    aput v13, v2, v12

    .line 577
    iget-object v2, v1, Lorg/ejml/data/FMatrix1Row;->data:[F

    const/16 v12, 0x2a

    aput v13, v2, v12

    .line 578
    iget-object v2, v1, Lorg/ejml/data/FMatrix1Row;->data:[F

    div-float/2addr v5, v3

    aput v5, v2, v4

    .line 579
    iget-object v2, v1, Lorg/ejml/data/FMatrix1Row;->data:[F

    mul-float v12, v5, v5

    sub-float/2addr v7, v12

    move v14, v11

    float-to-double v10, v7

    invoke-static {v10, v11}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v10

    double-to-float v7, v10

    aput v7, v2, v6

    .line 580
    iget-object v2, v1, Lorg/ejml/data/FMatrix1Row;->data:[F

    const/16 v6, 0xf

    aput v13, v2, v6

    .line 581
    iget-object v2, v1, Lorg/ejml/data/FMatrix1Row;->data:[F

    const/16 v6, 0x16

    aput v13, v2, v6

    .line 582
    iget-object v2, v1, Lorg/ejml/data/FMatrix1Row;->data:[F

    const/16 v6, 0x1d

    aput v13, v2, v6

    .line 583
    iget-object v2, v1, Lorg/ejml/data/FMatrix1Row;->data:[F

    const/16 v6, 0x24

    aput v13, v2, v6

    .line 584
    iget-object v2, v1, Lorg/ejml/data/FMatrix1Row;->data:[F

    const/16 v6, 0x2b

    aput v13, v2, v6

    .line 585
    iget-object v2, v1, Lorg/ejml/data/FMatrix1Row;->data:[F

    div-float/2addr v9, v3

    aput v9, v2, v8

    .line 586
    iget-object v2, v1, Lorg/ejml/data/FMatrix1Row;->data:[F

    mul-float v6, v5, v9

    sub-float v11, v14, v6

    div-float/2addr v11, v7

    const/16 v6, 0x9

    aput v11, v2, v6

    .line 587
    iget-object v2, v1, Lorg/ejml/data/FMatrix1Row;->data:[F

    mul-float v6, v9, v9

    sub-float v6, v50, v6

    mul-float v8, v11, v11

    sub-float/2addr v6, v8

    move v10, v5

    float-to-double v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-float v4, v4

    const/16 v5, 0x10

    aput v4, v2, v5

    .line 588
    iget-object v2, v1, Lorg/ejml/data/FMatrix1Row;->data:[F

    const/16 v5, 0x17

    aput v13, v2, v5

    .line 589
    iget-object v2, v1, Lorg/ejml/data/FMatrix1Row;->data:[F

    const/16 v5, 0x1e

    aput v13, v2, v5

    .line 590
    iget-object v2, v1, Lorg/ejml/data/FMatrix1Row;->data:[F

    const/16 v5, 0x25

    aput v13, v2, v5

    .line 591
    iget-object v2, v1, Lorg/ejml/data/FMatrix1Row;->data:[F

    const/16 v5, 0x2c

    aput v13, v2, v5

    .line 592
    iget-object v2, v1, Lorg/ejml/data/FMatrix1Row;->data:[F

    div-float/2addr v15, v3

    const/4 v5, 0x3

    aput v15, v2, v5

    .line 593
    iget-object v2, v1, Lorg/ejml/data/FMatrix1Row;->data:[F

    mul-float v5, v10, v15

    sub-float v17, v17, v5

    div-float v17, v17, v7

    aput v17, v2, v16

    .line 594
    iget-object v2, v1, Lorg/ejml/data/FMatrix1Row;->data:[F

    mul-float v5, v9, v15

    sub-float v19, v19, v5

    mul-float v5, v11, v17

    sub-float v19, v19, v5

    div-float v19, v19, v4

    aput v19, v2, v18

    .line 595
    iget-object v2, v1, Lorg/ejml/data/FMatrix1Row;->data:[F

    mul-float v5, v15, v15

    sub-float v21, v21, v5

    mul-float v5, v17, v17

    sub-float v21, v21, v5

    mul-float v5, v19, v19

    sub-float v5, v21, v5

    float-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v5

    double-to-float v5, v5

    aput v5, v2, v20

    .line 596
    iget-object v2, v1, Lorg/ejml/data/FMatrix1Row;->data:[F

    const/16 v6, 0x1f

    aput v13, v2, v6

    .line 597
    iget-object v2, v1, Lorg/ejml/data/FMatrix1Row;->data:[F

    const/16 v6, 0x26

    aput v13, v2, v6

    .line 598
    iget-object v2, v1, Lorg/ejml/data/FMatrix1Row;->data:[F

    const/16 v6, 0x2d

    aput v13, v2, v6

    .line 599
    iget-object v2, v1, Lorg/ejml/data/FMatrix1Row;->data:[F

    div-float v23, v23, v3

    aput v23, v2, v22

    .line 600
    iget-object v2, v1, Lorg/ejml/data/FMatrix1Row;->data:[F

    mul-float v6, v10, v23

    sub-float v25, v25, v6

    div-float v25, v25, v7

    aput v25, v2, v24

    .line 601
    iget-object v2, v1, Lorg/ejml/data/FMatrix1Row;->data:[F

    mul-float v6, v9, v23

    sub-float v27, v27, v6

    mul-float v6, v11, v25

    sub-float v27, v27, v6

    div-float v27, v27, v4

    aput v27, v2, v26

    .line 602
    iget-object v2, v1, Lorg/ejml/data/FMatrix1Row;->data:[F

    mul-float v6, v15, v23

    sub-float v29, v29, v6

    mul-float v6, v17, v25

    sub-float v29, v29, v6

    mul-float v6, v19, v27

    sub-float v29, v29, v6

    div-float v29, v29, v5

    aput v29, v2, v28

    .line 603
    iget-object v2, v1, Lorg/ejml/data/FMatrix1Row;->data:[F

    mul-float v6, v23, v23

    sub-float v31, v31, v6

    mul-float v6, v25, v25

    sub-float v31, v31, v6

    mul-float v6, v27, v27

    sub-float v31, v31, v6

    mul-float v6, v29, v29

    sub-float v6, v31, v6

    move/from16 p0, v9

    float-to-double v8, v6

    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    double-to-float v6, v8

    aput v6, v2, v30

    .line 604
    iget-object v2, v1, Lorg/ejml/data/FMatrix1Row;->data:[F

    const/16 v8, 0x27

    aput v13, v2, v8

    .line 605
    iget-object v2, v1, Lorg/ejml/data/FMatrix1Row;->data:[F

    const/16 v8, 0x2e

    aput v13, v2, v8

    .line 606
    iget-object v2, v1, Lorg/ejml/data/FMatrix1Row;->data:[F

    div-float v33, v33, v3

    aput v33, v2, v32

    .line 607
    iget-object v2, v1, Lorg/ejml/data/FMatrix1Row;->data:[F

    mul-float v8, v10, v33

    sub-float v35, v35, v8

    div-float v35, v35, v7

    aput v35, v2, v34

    .line 608
    iget-object v2, v1, Lorg/ejml/data/FMatrix1Row;->data:[F

    mul-float v9, p0, v33

    sub-float v37, v37, v9

    mul-float v8, v11, v35

    sub-float v37, v37, v8

    div-float v37, v37, v4

    aput v37, v2, v36

    .line 609
    iget-object v2, v1, Lorg/ejml/data/FMatrix1Row;->data:[F

    mul-float v8, v15, v33

    sub-float v39, v39, v8

    mul-float v8, v17, v35

    sub-float v39, v39, v8

    mul-float v8, v19, v37

    sub-float v39, v39, v8

    div-float v39, v39, v5

    aput v39, v2, v38

    .line 610
    iget-object v2, v1, Lorg/ejml/data/FMatrix1Row;->data:[F

    mul-float v8, v23, v33

    sub-float v41, v41, v8

    mul-float v8, v25, v35

    sub-float v41, v41, v8

    mul-float v8, v27, v37

    sub-float v41, v41, v8

    mul-float v8, v29, v39

    sub-float v41, v41, v8

    div-float v41, v41, v6

    aput v41, v2, v40

    .line 611
    iget-object v2, v1, Lorg/ejml/data/FMatrix1Row;->data:[F

    mul-float v8, v33, v33

    sub-float v42, v42, v8

    mul-float v8, v35, v35

    sub-float v42, v42, v8

    mul-float v8, v37, v37

    sub-float v42, v42, v8

    mul-float v8, v39, v39

    sub-float v42, v42, v8

    mul-float v8, v41, v41

    sub-float v8, v42, v8

    float-to-double v8, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    double-to-float v8, v8

    const/16 v9, 0x28

    aput v8, v2, v9

    .line 612
    iget-object v2, v1, Lorg/ejml/data/FMatrix1Row;->data:[F

    const/16 v9, 0x2f

    aput v13, v2, v9

    .line 613
    iget-object v2, v1, Lorg/ejml/data/FMatrix1Row;->data:[F

    div-float v43, v43, v3

    const/4 v3, 0x6

    aput v43, v2, v3

    .line 614
    iget-object v2, v1, Lorg/ejml/data/FMatrix1Row;->data:[F

    mul-float v3, v10, v43

    sub-float v44, v44, v3

    div-float v44, v44, v7

    const/16 v3, 0xd

    aput v44, v2, v3

    .line 615
    iget-object v2, v1, Lorg/ejml/data/FMatrix1Row;->data:[F

    mul-float v9, p0, v43

    sub-float v45, v45, v9

    mul-float v11, v11, v44

    sub-float v45, v45, v11

    div-float v45, v45, v4

    const/16 v3, 0x14

    aput v45, v2, v3

    .line 616
    iget-object v2, v1, Lorg/ejml/data/FMatrix1Row;->data:[F

    mul-float v15, v15, v43

    sub-float v46, v46, v15

    mul-float v17, v17, v44

    sub-float v46, v46, v17

    mul-float v19, v19, v45

    sub-float v46, v46, v19

    div-float v46, v46, v5

    const/16 v3, 0x1b

    aput v46, v2, v3

    .line 617
    iget-object v2, v1, Lorg/ejml/data/FMatrix1Row;->data:[F

    mul-float v23, v23, v43

    sub-float v47, v47, v23

    mul-float v25, v25, v44

    sub-float v47, v47, v25

    mul-float v27, v27, v45

    sub-float v47, v47, v27

    mul-float v29, v29, v46

    sub-float v47, v47, v29

    div-float v47, v47, v6

    const/16 v3, 0x22

    aput v47, v2, v3

    .line 618
    iget-object v2, v1, Lorg/ejml/data/FMatrix1Row;->data:[F

    mul-float v33, v33, v43

    sub-float v48, v48, v33

    mul-float v35, v35, v44

    sub-float v48, v48, v35

    mul-float v37, v37, v45

    sub-float v48, v48, v37

    mul-float v39, v39, v46

    sub-float v48, v48, v39

    mul-float v41, v41, v47

    sub-float v48, v48, v41

    div-float v48, v48, v8

    const/16 v3, 0x29

    aput v48, v2, v3

    .line 619
    iget-object v2, v1, Lorg/ejml/data/FMatrix1Row;->data:[F

    mul-float v43, v43, v43

    sub-float v0, v0, v43

    mul-float v44, v44, v44

    sub-float v0, v0, v44

    mul-float v45, v45, v45

    sub-float v0, v0, v45

    mul-float v46, v46, v46

    sub-float v0, v0, v46

    mul-float v47, v47, v47

    sub-float v0, v0, v47

    mul-float v48, v48, v48

    sub-float v0, v0, v48

    float-to-double v3, v0

    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    double-to-float v0, v3

    aput v0, v2, v49

    .line 620
    iget-object v0, v1, Lorg/ejml/data/FMatrix1Row;->data:[F

    aget v0, v0, v49

    invoke-static {v0}, Lorg/ejml/UtilEjml;->isUncountable(F)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    return v0
.end method
