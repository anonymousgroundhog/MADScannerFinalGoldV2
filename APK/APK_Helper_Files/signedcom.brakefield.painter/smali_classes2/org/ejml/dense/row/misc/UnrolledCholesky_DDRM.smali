.class public Lorg/ejml/dense/row/misc/UnrolledCholesky_DDRM;
.super Ljava/lang/Object;
.source "UnrolledCholesky_DDRM.java"


# static fields
.field public static final MAX:I = 0x7


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static lower(Lorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;)Z
    .locals 1

    .line 38
    iget v0, p0, Lorg/ejml/data/DMatrix1Row;->numRows:I

    packed-switch v0, :pswitch_data_0

    const/4 p0, 0x0

    return p0

    .line 45
    :pswitch_0
    invoke-static {p0, p1}, Lorg/ejml/dense/row/misc/UnrolledCholesky_DDRM;->lower7(Lorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;)Z

    move-result p0

    return p0

    .line 44
    :pswitch_1
    invoke-static {p0, p1}, Lorg/ejml/dense/row/misc/UnrolledCholesky_DDRM;->lower6(Lorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;)Z

    move-result p0

    return p0

    .line 43
    :pswitch_2
    invoke-static {p0, p1}, Lorg/ejml/dense/row/misc/UnrolledCholesky_DDRM;->lower5(Lorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;)Z

    move-result p0

    return p0

    .line 42
    :pswitch_3
    invoke-static {p0, p1}, Lorg/ejml/dense/row/misc/UnrolledCholesky_DDRM;->lower4(Lorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;)Z

    move-result p0

    return p0

    .line 41
    :pswitch_4
    invoke-static {p0, p1}, Lorg/ejml/dense/row/misc/UnrolledCholesky_DDRM;->lower3(Lorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;)Z

    move-result p0

    return p0

    .line 40
    :pswitch_5
    invoke-static {p0, p1}, Lorg/ejml/dense/row/misc/UnrolledCholesky_DDRM;->lower2(Lorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;)Z

    move-result p0

    return p0

    .line 39
    :pswitch_6
    invoke-static {p0, p1}, Lorg/ejml/dense/row/misc/UnrolledCholesky_DDRM;->lower1(Lorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;)Z

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

.method public static lower1(Lorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;)Z
    .locals 3

    .line 65
    iget-object p0, p0, Lorg/ejml/data/DMatrix1Row;->data:[D

    const/4 v0, 0x0

    .line 67
    aget-wide v1, p0, v0

    .line 69
    iget-object p0, p1, Lorg/ejml/data/DMatrix1Row;->data:[D

    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    aput-wide v1, p0, v0

    .line 70
    iget-object p0, p1, Lorg/ejml/data/DMatrix1Row;->data:[D

    aget-wide p0, p0, v0

    invoke-static {p0, p1}, Lorg/ejml/UtilEjml;->isUncountable(D)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static lower2(Lorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;)Z
    .locals 11

    .line 75
    iget-object p0, p0, Lorg/ejml/data/DMatrix1Row;->data:[D

    const/4 v0, 0x0

    .line 77
    aget-wide v1, p0, v0

    const/4 v3, 0x2

    .line 78
    aget-wide v4, p0, v3

    const/4 v6, 0x3

    .line 79
    aget-wide v7, p0, v6

    .line 81
    iget-object p0, p1, Lorg/ejml/data/DMatrix1Row;->data:[D

    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    aput-wide v1, p0, v0

    .line 82
    iget-object p0, p1, Lorg/ejml/data/DMatrix1Row;->data:[D

    const-wide/16 v9, 0x0

    const/4 v0, 0x1

    aput-wide v9, p0, v0

    .line 83
    iget-object p0, p1, Lorg/ejml/data/DMatrix1Row;->data:[D

    div-double/2addr v4, v1

    aput-wide v4, p0, v3

    .line 84
    iget-object p0, p1, Lorg/ejml/data/DMatrix1Row;->data:[D

    mul-double/2addr v4, v4

    sub-double/2addr v7, v4

    invoke-static {v7, v8}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    aput-wide v1, p0, v6

    .line 85
    iget-object p0, p1, Lorg/ejml/data/DMatrix1Row;->data:[D

    aget-wide p0, p0, v6

    invoke-static {p0, p1}, Lorg/ejml/UtilEjml;->isUncountable(D)Z

    move-result p0

    xor-int/2addr p0, v0

    return p0
.end method

.method public static lower3(Lorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;)Z
    .locals 24

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 90
    iget-object v0, v0, Lorg/ejml/data/DMatrix1Row;->data:[D

    const/4 v2, 0x0

    .line 92
    aget-wide v3, v0, v2

    const/4 v5, 0x3

    .line 93
    aget-wide v6, v0, v5

    const/4 v8, 0x4

    .line 94
    aget-wide v9, v0, v8

    const/4 v11, 0x6

    .line 95
    aget-wide v12, v0, v11

    const/4 v14, 0x7

    .line 96
    aget-wide v15, v0, v14

    const/16 v17, 0x8

    .line 97
    aget-wide v18, v0, v17

    .line 99
    iget-object v0, v1, Lorg/ejml/data/DMatrix1Row;->data:[D

    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    aput-wide v3, v0, v2

    .line 100
    iget-object v0, v1, Lorg/ejml/data/DMatrix1Row;->data:[D

    const/4 v2, 0x1

    const-wide/16 v20, 0x0

    aput-wide v20, v0, v2

    .line 101
    iget-object v0, v1, Lorg/ejml/data/DMatrix1Row;->data:[D

    const/16 v22, 0x2

    aput-wide v20, v0, v22

    .line 102
    iget-object v0, v1, Lorg/ejml/data/DMatrix1Row;->data:[D

    div-double/2addr v6, v3

    aput-wide v6, v0, v5

    .line 103
    iget-object v0, v1, Lorg/ejml/data/DMatrix1Row;->data:[D

    mul-double v22, v6, v6

    sub-double v9, v9, v22

    invoke-static {v9, v10}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v9

    aput-wide v9, v0, v8

    .line 104
    iget-object v0, v1, Lorg/ejml/data/DMatrix1Row;->data:[D

    const/4 v5, 0x5

    aput-wide v20, v0, v5

    .line 105
    iget-object v0, v1, Lorg/ejml/data/DMatrix1Row;->data:[D

    div-double/2addr v12, v3

    aput-wide v12, v0, v11

    .line 106
    iget-object v0, v1, Lorg/ejml/data/DMatrix1Row;->data:[D

    mul-double/2addr v6, v12

    sub-double/2addr v15, v6

    div-double/2addr v15, v9

    aput-wide v15, v0, v14

    .line 107
    iget-object v0, v1, Lorg/ejml/data/DMatrix1Row;->data:[D

    mul-double/2addr v12, v12

    sub-double v18, v18, v12

    mul-double/2addr v15, v15

    sub-double v18, v18, v15

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    aput-wide v3, v0, v17

    .line 108
    iget-object v0, v1, Lorg/ejml/data/DMatrix1Row;->data:[D

    aget-wide v0, v0, v17

    invoke-static {v0, v1}, Lorg/ejml/UtilEjml;->isUncountable(D)Z

    move-result v0

    xor-int/2addr v0, v2

    return v0
.end method

.method public static lower4(Lorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;)Z
    .locals 36

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 113
    iget-object v0, v0, Lorg/ejml/data/DMatrix1Row;->data:[D

    const/4 v2, 0x0

    .line 115
    aget-wide v3, v0, v2

    const/4 v5, 0x4

    .line 116
    aget-wide v6, v0, v5

    const/4 v8, 0x5

    .line 117
    aget-wide v9, v0, v8

    const/16 v11, 0x8

    .line 118
    aget-wide v12, v0, v11

    const/16 v14, 0x9

    .line 119
    aget-wide v15, v0, v14

    const/16 v17, 0xa

    .line 120
    aget-wide v18, v0, v17

    const/16 v20, 0xc

    .line 121
    aget-wide v21, v0, v20

    const/16 v23, 0xd

    .line 122
    aget-wide v24, v0, v23

    const/16 v26, 0xe

    .line 123
    aget-wide v27, v0, v26

    const/16 v29, 0xf

    .line 124
    aget-wide v30, v0, v29

    .line 126
    iget-object v0, v1, Lorg/ejml/data/DMatrix1Row;->data:[D

    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    aput-wide v3, v0, v2

    .line 127
    iget-object v0, v1, Lorg/ejml/data/DMatrix1Row;->data:[D

    const/4 v2, 0x1

    const-wide/16 v32, 0x0

    aput-wide v32, v0, v2

    .line 128
    iget-object v0, v1, Lorg/ejml/data/DMatrix1Row;->data:[D

    const/16 v34, 0x2

    aput-wide v32, v0, v34

    .line 129
    iget-object v0, v1, Lorg/ejml/data/DMatrix1Row;->data:[D

    const/16 v34, 0x3

    aput-wide v32, v0, v34

    .line 130
    iget-object v0, v1, Lorg/ejml/data/DMatrix1Row;->data:[D

    div-double/2addr v6, v3

    aput-wide v6, v0, v5

    .line 131
    iget-object v0, v1, Lorg/ejml/data/DMatrix1Row;->data:[D

    mul-double v34, v6, v6

    sub-double v9, v9, v34

    invoke-static {v9, v10}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v9

    aput-wide v9, v0, v8

    .line 132
    iget-object v0, v1, Lorg/ejml/data/DMatrix1Row;->data:[D

    const/4 v5, 0x6

    aput-wide v32, v0, v5

    .line 133
    iget-object v0, v1, Lorg/ejml/data/DMatrix1Row;->data:[D

    const/4 v5, 0x7

    aput-wide v32, v0, v5

    .line 134
    iget-object v0, v1, Lorg/ejml/data/DMatrix1Row;->data:[D

    div-double/2addr v12, v3

    aput-wide v12, v0, v11

    .line 135
    iget-object v0, v1, Lorg/ejml/data/DMatrix1Row;->data:[D

    mul-double v34, v12, v6

    sub-double v15, v15, v34

    div-double/2addr v15, v9

    aput-wide v15, v0, v14

    .line 136
    iget-object v0, v1, Lorg/ejml/data/DMatrix1Row;->data:[D

    mul-double v34, v12, v12

    sub-double v18, v18, v34

    mul-double v34, v15, v15

    sub-double v18, v18, v34

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v18

    aput-wide v18, v0, v17

    .line 137
    iget-object v0, v1, Lorg/ejml/data/DMatrix1Row;->data:[D

    const/16 v5, 0xb

    aput-wide v32, v0, v5

    .line 138
    iget-object v0, v1, Lorg/ejml/data/DMatrix1Row;->data:[D

    div-double v21, v21, v3

    aput-wide v21, v0, v20

    .line 139
    iget-object v0, v1, Lorg/ejml/data/DMatrix1Row;->data:[D

    mul-double v6, v6, v21

    sub-double v24, v24, v6

    div-double v24, v24, v9

    aput-wide v24, v0, v23

    .line 140
    iget-object v0, v1, Lorg/ejml/data/DMatrix1Row;->data:[D

    mul-double v12, v12, v21

    sub-double v27, v27, v12

    mul-double v15, v15, v24

    sub-double v27, v27, v15

    div-double v27, v27, v18

    aput-wide v27, v0, v26

    .line 141
    iget-object v0, v1, Lorg/ejml/data/DMatrix1Row;->data:[D

    mul-double v21, v21, v21

    sub-double v30, v30, v21

    mul-double v24, v24, v24

    sub-double v30, v30, v24

    mul-double v27, v27, v27

    sub-double v30, v30, v27

    invoke-static/range {v30 .. v31}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    aput-wide v3, v0, v29

    .line 142
    iget-object v0, v1, Lorg/ejml/data/DMatrix1Row;->data:[D

    aget-wide v0, v0, v29

    invoke-static {v0, v1}, Lorg/ejml/UtilEjml;->isUncountable(D)Z

    move-result v0

    xor-int/2addr v0, v2

    return v0
.end method

.method public static lower5(Lorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;)Z
    .locals 51

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 147
    iget-object v0, v0, Lorg/ejml/data/DMatrix1Row;->data:[D

    const/4 v2, 0x0

    .line 149
    aget-wide v3, v0, v2

    const/4 v5, 0x5

    .line 150
    aget-wide v6, v0, v5

    const/4 v8, 0x6

    .line 151
    aget-wide v9, v0, v8

    const/16 v11, 0xa

    .line 152
    aget-wide v12, v0, v11

    const/16 v14, 0xb

    .line 153
    aget-wide v15, v0, v14

    const/16 v17, 0xc

    .line 154
    aget-wide v18, v0, v17

    const/16 v20, 0xf

    .line 155
    aget-wide v21, v0, v20

    const/16 v23, 0x10

    .line 156
    aget-wide v24, v0, v23

    const/16 v26, 0x11

    .line 157
    aget-wide v27, v0, v26

    const/16 v29, 0x12

    .line 158
    aget-wide v30, v0, v29

    const/16 v32, 0x14

    .line 159
    aget-wide v33, v0, v32

    const/16 v35, 0x15

    .line 160
    aget-wide v36, v0, v35

    const/16 v38, 0x16

    .line 161
    aget-wide v39, v0, v38

    const/16 v41, 0x17

    .line 162
    aget-wide v42, v0, v41

    const/16 v44, 0x18

    .line 163
    aget-wide v45, v0, v44

    .line 165
    iget-object v0, v1, Lorg/ejml/data/DMatrix1Row;->data:[D

    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    aput-wide v3, v0, v2

    .line 166
    iget-object v0, v1, Lorg/ejml/data/DMatrix1Row;->data:[D

    const/4 v2, 0x1

    const-wide/16 v47, 0x0

    aput-wide v47, v0, v2

    .line 167
    iget-object v0, v1, Lorg/ejml/data/DMatrix1Row;->data:[D

    const/16 v49, 0x2

    aput-wide v47, v0, v49

    .line 168
    iget-object v0, v1, Lorg/ejml/data/DMatrix1Row;->data:[D

    const/16 v49, 0x3

    aput-wide v47, v0, v49

    .line 169
    iget-object v0, v1, Lorg/ejml/data/DMatrix1Row;->data:[D

    const/16 v49, 0x4

    aput-wide v47, v0, v49

    .line 170
    iget-object v0, v1, Lorg/ejml/data/DMatrix1Row;->data:[D

    div-double/2addr v6, v3

    aput-wide v6, v0, v5

    .line 171
    iget-object v0, v1, Lorg/ejml/data/DMatrix1Row;->data:[D

    mul-double v49, v6, v6

    sub-double v9, v9, v49

    invoke-static {v9, v10}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v9

    aput-wide v9, v0, v8

    .line 172
    iget-object v0, v1, Lorg/ejml/data/DMatrix1Row;->data:[D

    const/4 v5, 0x7

    aput-wide v47, v0, v5

    .line 173
    iget-object v0, v1, Lorg/ejml/data/DMatrix1Row;->data:[D

    const/16 v5, 0x8

    aput-wide v47, v0, v5

    .line 174
    iget-object v0, v1, Lorg/ejml/data/DMatrix1Row;->data:[D

    const/16 v5, 0x9

    aput-wide v47, v0, v5

    .line 175
    iget-object v0, v1, Lorg/ejml/data/DMatrix1Row;->data:[D

    div-double/2addr v12, v3

    aput-wide v12, v0, v11

    .line 176
    iget-object v0, v1, Lorg/ejml/data/DMatrix1Row;->data:[D

    mul-double v49, v12, v6

    sub-double v15, v15, v49

    div-double/2addr v15, v9

    aput-wide v15, v0, v14

    .line 177
    iget-object v0, v1, Lorg/ejml/data/DMatrix1Row;->data:[D

    mul-double v49, v12, v12

    sub-double v18, v18, v49

    mul-double v49, v15, v15

    sub-double v18, v18, v49

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v18

    aput-wide v18, v0, v17

    .line 178
    iget-object v0, v1, Lorg/ejml/data/DMatrix1Row;->data:[D

    const/16 v5, 0xd

    aput-wide v47, v0, v5

    .line 179
    iget-object v0, v1, Lorg/ejml/data/DMatrix1Row;->data:[D

    const/16 v5, 0xe

    aput-wide v47, v0, v5

    .line 180
    iget-object v0, v1, Lorg/ejml/data/DMatrix1Row;->data:[D

    div-double v21, v21, v3

    aput-wide v21, v0, v20

    .line 181
    iget-object v0, v1, Lorg/ejml/data/DMatrix1Row;->data:[D

    mul-double v49, v21, v6

    sub-double v24, v24, v49

    div-double v24, v24, v9

    aput-wide v24, v0, v23

    .line 182
    iget-object v0, v1, Lorg/ejml/data/DMatrix1Row;->data:[D

    mul-double v49, v21, v12

    sub-double v27, v27, v49

    mul-double v49, v24, v15

    sub-double v27, v27, v49

    div-double v27, v27, v18

    aput-wide v27, v0, v26

    .line 183
    iget-object v0, v1, Lorg/ejml/data/DMatrix1Row;->data:[D

    mul-double v49, v21, v21

    sub-double v30, v30, v49

    mul-double v49, v24, v24

    sub-double v30, v30, v49

    mul-double v49, v27, v27

    sub-double v30, v30, v49

    invoke-static/range {v30 .. v31}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v30

    aput-wide v30, v0, v29

    .line 184
    iget-object v0, v1, Lorg/ejml/data/DMatrix1Row;->data:[D

    const/16 v5, 0x13

    aput-wide v47, v0, v5

    .line 185
    iget-object v0, v1, Lorg/ejml/data/DMatrix1Row;->data:[D

    div-double v33, v33, v3

    aput-wide v33, v0, v32

    .line 186
    iget-object v0, v1, Lorg/ejml/data/DMatrix1Row;->data:[D

    mul-double v6, v6, v33

    sub-double v36, v36, v6

    div-double v36, v36, v9

    aput-wide v36, v0, v35

    .line 187
    iget-object v0, v1, Lorg/ejml/data/DMatrix1Row;->data:[D

    mul-double v12, v12, v33

    sub-double v39, v39, v12

    mul-double v15, v15, v36

    sub-double v39, v39, v15

    div-double v39, v39, v18

    aput-wide v39, v0, v38

    .line 188
    iget-object v0, v1, Lorg/ejml/data/DMatrix1Row;->data:[D

    mul-double v21, v21, v33

    sub-double v42, v42, v21

    mul-double v24, v24, v36

    sub-double v42, v42, v24

    mul-double v27, v27, v39

    sub-double v42, v42, v27

    div-double v42, v42, v30

    aput-wide v42, v0, v41

    .line 189
    iget-object v0, v1, Lorg/ejml/data/DMatrix1Row;->data:[D

    mul-double v33, v33, v33

    sub-double v45, v45, v33

    mul-double v36, v36, v36

    sub-double v45, v45, v36

    mul-double v39, v39, v39

    sub-double v45, v45, v39

    mul-double v42, v42, v42

    sub-double v45, v45, v42

    invoke-static/range {v45 .. v46}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    aput-wide v3, v0, v44

    .line 190
    iget-object v0, v1, Lorg/ejml/data/DMatrix1Row;->data:[D

    aget-wide v0, v0, v44

    invoke-static {v0, v1}, Lorg/ejml/UtilEjml;->isUncountable(D)Z

    move-result v0

    xor-int/2addr v0, v2

    return v0
.end method

.method public static lower6(Lorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;)Z
    .locals 69

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 195
    iget-object v0, v0, Lorg/ejml/data/DMatrix1Row;->data:[D

    const/4 v2, 0x0

    .line 197
    aget-wide v3, v0, v2

    const/4 v5, 0x6

    .line 198
    aget-wide v6, v0, v5

    const/4 v8, 0x7

    .line 199
    aget-wide v9, v0, v8

    const/16 v11, 0xc

    .line 200
    aget-wide v12, v0, v11

    const/16 v14, 0xd

    .line 201
    aget-wide v15, v0, v14

    const/16 v17, 0xe

    .line 202
    aget-wide v18, v0, v17

    const/16 v20, 0x12

    .line 203
    aget-wide v21, v0, v20

    const/16 v23, 0x13

    .line 204
    aget-wide v24, v0, v23

    const/16 v26, 0x14

    .line 205
    aget-wide v27, v0, v26

    const/16 v29, 0x15

    .line 206
    aget-wide v30, v0, v29

    const/16 v32, 0x18

    .line 207
    aget-wide v33, v0, v32

    const/16 v35, 0x19

    .line 208
    aget-wide v36, v0, v35

    const/16 v38, 0x1a

    .line 209
    aget-wide v39, v0, v38

    const/16 v41, 0x1b

    .line 210
    aget-wide v42, v0, v41

    const/16 v44, 0x1c

    .line 211
    aget-wide v45, v0, v44

    const/16 v47, 0x1e

    .line 212
    aget-wide v48, v0, v47

    const/16 v50, 0x1f

    .line 213
    aget-wide v51, v0, v50

    const/16 v53, 0x20

    .line 214
    aget-wide v54, v0, v53

    const/16 v56, 0x21

    .line 215
    aget-wide v57, v0, v56

    const/16 v59, 0x22

    .line 216
    aget-wide v60, v0, v59

    const/16 v62, 0x23

    .line 217
    aget-wide v63, v0, v62

    .line 219
    iget-object v0, v1, Lorg/ejml/data/DMatrix1Row;->data:[D

    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    aput-wide v3, v0, v2

    .line 220
    iget-object v0, v1, Lorg/ejml/data/DMatrix1Row;->data:[D

    const/4 v2, 0x1

    const-wide/16 v65, 0x0

    aput-wide v65, v0, v2

    .line 221
    iget-object v0, v1, Lorg/ejml/data/DMatrix1Row;->data:[D

    const/4 v2, 0x2

    aput-wide v65, v0, v2

    .line 222
    iget-object v0, v1, Lorg/ejml/data/DMatrix1Row;->data:[D

    const/4 v2, 0x3

    aput-wide v65, v0, v2

    .line 223
    iget-object v0, v1, Lorg/ejml/data/DMatrix1Row;->data:[D

    const/4 v2, 0x4

    aput-wide v65, v0, v2

    .line 224
    iget-object v0, v1, Lorg/ejml/data/DMatrix1Row;->data:[D

    const/4 v2, 0x5

    aput-wide v65, v0, v2

    .line 225
    iget-object v0, v1, Lorg/ejml/data/DMatrix1Row;->data:[D

    div-double/2addr v6, v3

    aput-wide v6, v0, v5

    .line 226
    iget-object v0, v1, Lorg/ejml/data/DMatrix1Row;->data:[D

    mul-double v67, v6, v6

    sub-double v9, v9, v67

    invoke-static {v9, v10}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v9

    aput-wide v9, v0, v8

    .line 227
    iget-object v0, v1, Lorg/ejml/data/DMatrix1Row;->data:[D

    const/16 v2, 0x8

    aput-wide v65, v0, v2

    .line 228
    iget-object v0, v1, Lorg/ejml/data/DMatrix1Row;->data:[D

    const/16 v2, 0x9

    aput-wide v65, v0, v2

    .line 229
    iget-object v0, v1, Lorg/ejml/data/DMatrix1Row;->data:[D

    const/16 v2, 0xa

    aput-wide v65, v0, v2

    .line 230
    iget-object v0, v1, Lorg/ejml/data/DMatrix1Row;->data:[D

    const/16 v2, 0xb

    aput-wide v65, v0, v2

    .line 231
    iget-object v0, v1, Lorg/ejml/data/DMatrix1Row;->data:[D

    div-double/2addr v12, v3

    aput-wide v12, v0, v11

    .line 232
    iget-object v0, v1, Lorg/ejml/data/DMatrix1Row;->data:[D

    mul-double v67, v12, v6

    sub-double v15, v15, v67

    div-double/2addr v15, v9

    aput-wide v15, v0, v14

    .line 233
    iget-object v0, v1, Lorg/ejml/data/DMatrix1Row;->data:[D

    mul-double v67, v12, v12

    sub-double v18, v18, v67

    mul-double v67, v15, v15

    sub-double v18, v18, v67

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v18

    aput-wide v18, v0, v17

    .line 234
    iget-object v0, v1, Lorg/ejml/data/DMatrix1Row;->data:[D

    const/16 v2, 0xf

    aput-wide v65, v0, v2

    .line 235
    iget-object v0, v1, Lorg/ejml/data/DMatrix1Row;->data:[D

    const/16 v2, 0x10

    aput-wide v65, v0, v2

    .line 236
    iget-object v0, v1, Lorg/ejml/data/DMatrix1Row;->data:[D

    const/16 v2, 0x11

    aput-wide v65, v0, v2

    .line 237
    iget-object v0, v1, Lorg/ejml/data/DMatrix1Row;->data:[D

    div-double v21, v21, v3

    aput-wide v21, v0, v20

    .line 238
    iget-object v0, v1, Lorg/ejml/data/DMatrix1Row;->data:[D

    mul-double v67, v21, v6

    sub-double v24, v24, v67

    div-double v24, v24, v9

    aput-wide v24, v0, v23

    .line 239
    iget-object v0, v1, Lorg/ejml/data/DMatrix1Row;->data:[D

    mul-double v67, v21, v12

    sub-double v27, v27, v67

    mul-double v67, v24, v15

    sub-double v27, v27, v67

    div-double v27, v27, v18

    aput-wide v27, v0, v26

    .line 240
    iget-object v0, v1, Lorg/ejml/data/DMatrix1Row;->data:[D

    mul-double v67, v21, v21

    sub-double v30, v30, v67

    mul-double v67, v24, v24

    sub-double v30, v30, v67

    mul-double v67, v27, v27

    sub-double v30, v30, v67

    invoke-static/range {v30 .. v31}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v30

    aput-wide v30, v0, v29

    .line 241
    iget-object v0, v1, Lorg/ejml/data/DMatrix1Row;->data:[D

    const/16 v2, 0x16

    aput-wide v65, v0, v2

    .line 242
    iget-object v0, v1, Lorg/ejml/data/DMatrix1Row;->data:[D

    const/16 v2, 0x17

    aput-wide v65, v0, v2

    .line 243
    iget-object v0, v1, Lorg/ejml/data/DMatrix1Row;->data:[D

    div-double v33, v33, v3

    aput-wide v33, v0, v32

    .line 244
    iget-object v0, v1, Lorg/ejml/data/DMatrix1Row;->data:[D

    mul-double v67, v33, v6

    sub-double v36, v36, v67

    div-double v36, v36, v9

    aput-wide v36, v0, v35

    .line 245
    iget-object v0, v1, Lorg/ejml/data/DMatrix1Row;->data:[D

    mul-double v67, v33, v12

    sub-double v39, v39, v67

    mul-double v67, v36, v15

    sub-double v39, v39, v67

    div-double v39, v39, v18

    aput-wide v39, v0, v38

    .line 246
    iget-object v0, v1, Lorg/ejml/data/DMatrix1Row;->data:[D

    mul-double v67, v33, v21

    sub-double v42, v42, v67

    mul-double v67, v36, v24

    sub-double v42, v42, v67

    mul-double v67, v39, v27

    sub-double v42, v42, v67

    div-double v42, v42, v30

    aput-wide v42, v0, v41

    .line 247
    iget-object v0, v1, Lorg/ejml/data/DMatrix1Row;->data:[D

    mul-double v67, v33, v33

    sub-double v45, v45, v67

    mul-double v67, v36, v36

    sub-double v45, v45, v67

    mul-double v67, v39, v39

    sub-double v45, v45, v67

    mul-double v67, v42, v42

    sub-double v45, v45, v67

    invoke-static/range {v45 .. v46}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v45

    aput-wide v45, v0, v44

    .line 248
    iget-object v0, v1, Lorg/ejml/data/DMatrix1Row;->data:[D

    const/16 v2, 0x1d

    aput-wide v65, v0, v2

    .line 249
    iget-object v0, v1, Lorg/ejml/data/DMatrix1Row;->data:[D

    div-double v48, v48, v3

    aput-wide v48, v0, v47

    .line 250
    iget-object v0, v1, Lorg/ejml/data/DMatrix1Row;->data:[D

    mul-double v6, v6, v48

    sub-double v51, v51, v6

    div-double v51, v51, v9

    aput-wide v51, v0, v50

    .line 251
    iget-object v0, v1, Lorg/ejml/data/DMatrix1Row;->data:[D

    mul-double v12, v12, v48

    sub-double v54, v54, v12

    mul-double v15, v15, v51

    sub-double v54, v54, v15

    div-double v54, v54, v18

    aput-wide v54, v0, v53

    .line 252
    iget-object v0, v1, Lorg/ejml/data/DMatrix1Row;->data:[D

    mul-double v21, v21, v48

    sub-double v57, v57, v21

    mul-double v24, v24, v51

    sub-double v57, v57, v24

    mul-double v27, v27, v54

    sub-double v57, v57, v27

    div-double v57, v57, v30

    aput-wide v57, v0, v56

    .line 253
    iget-object v0, v1, Lorg/ejml/data/DMatrix1Row;->data:[D

    mul-double v33, v33, v48

    sub-double v60, v60, v33

    mul-double v36, v36, v51

    sub-double v60, v60, v36

    mul-double v39, v39, v54

    sub-double v60, v60, v39

    mul-double v42, v42, v57

    sub-double v60, v60, v42

    div-double v60, v60, v45

    aput-wide v60, v0, v59

    .line 254
    iget-object v0, v1, Lorg/ejml/data/DMatrix1Row;->data:[D

    mul-double v48, v48, v48

    sub-double v63, v63, v48

    mul-double v51, v51, v51

    sub-double v63, v63, v51

    mul-double v54, v54, v54

    sub-double v63, v63, v54

    mul-double v57, v57, v57

    sub-double v63, v63, v57

    mul-double v60, v60, v60

    sub-double v63, v63, v60

    invoke-static/range {v63 .. v64}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    aput-wide v2, v0, v62

    .line 255
    iget-object v0, v1, Lorg/ejml/data/DMatrix1Row;->data:[D

    aget-wide v0, v0, v62

    invoke-static {v0, v1}, Lorg/ejml/UtilEjml;->isUncountable(D)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static lower7(Lorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;)Z
    .locals 83

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 260
    iget-object v0, v0, Lorg/ejml/data/DMatrix1Row;->data:[D

    const/4 v2, 0x0

    .line 262
    aget-wide v3, v0, v2

    const/4 v5, 0x7

    .line 263
    aget-wide v6, v0, v5

    const/16 v8, 0x8

    .line 264
    aget-wide v9, v0, v8

    const/16 v11, 0xe

    .line 265
    aget-wide v12, v0, v11

    const/16 v14, 0xf

    .line 266
    aget-wide v15, v0, v14

    const/16 v17, 0x10

    .line 267
    aget-wide v18, v0, v17

    const/16 v20, 0x15

    .line 268
    aget-wide v21, v0, v20

    const/16 v23, 0x16

    .line 269
    aget-wide v24, v0, v23

    const/16 v26, 0x17

    .line 270
    aget-wide v27, v0, v26

    const/16 v29, 0x18

    .line 271
    aget-wide v30, v0, v29

    const/16 v32, 0x1c

    .line 272
    aget-wide v33, v0, v32

    const/16 v35, 0x1d

    .line 273
    aget-wide v36, v0, v35

    const/16 v38, 0x1e

    .line 274
    aget-wide v39, v0, v38

    const/16 v41, 0x1f

    .line 275
    aget-wide v42, v0, v41

    const/16 v44, 0x20

    .line 276
    aget-wide v45, v0, v44

    const/16 v47, 0x23

    .line 277
    aget-wide v48, v0, v47

    const/16 v50, 0x24

    .line 278
    aget-wide v51, v0, v50

    const/16 v53, 0x25

    .line 279
    aget-wide v54, v0, v53

    const/16 v56, 0x26

    .line 280
    aget-wide v57, v0, v56

    const/16 v59, 0x27

    .line 281
    aget-wide v60, v0, v59

    const/16 v62, 0x28

    .line 282
    aget-wide v62, v0, v62

    const/16 v64, 0x2a

    .line 283
    aget-wide v64, v0, v64

    const/16 v66, 0x2b

    .line 284
    aget-wide v66, v0, v66

    const/16 v68, 0x2c

    .line 285
    aget-wide v68, v0, v68

    const/16 v70, 0x2d

    .line 286
    aget-wide v70, v0, v70

    const/16 v72, 0x2e

    .line 287
    aget-wide v72, v0, v72

    const/16 v74, 0x2f

    .line 288
    aget-wide v74, v0, v74

    const/16 v76, 0x30

    .line 289
    aget-wide v77, v0, v76

    .line 291
    iget-object v0, v1, Lorg/ejml/data/DMatrix1Row;->data:[D

    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    aput-wide v3, v0, v2

    .line 292
    iget-object v0, v1, Lorg/ejml/data/DMatrix1Row;->data:[D

    const/4 v2, 0x1

    const-wide/16 v79, 0x0

    aput-wide v79, v0, v2

    .line 293
    iget-object v0, v1, Lorg/ejml/data/DMatrix1Row;->data:[D

    const/4 v2, 0x2

    aput-wide v79, v0, v2

    .line 294
    iget-object v0, v1, Lorg/ejml/data/DMatrix1Row;->data:[D

    const/4 v2, 0x3

    aput-wide v79, v0, v2

    .line 295
    iget-object v0, v1, Lorg/ejml/data/DMatrix1Row;->data:[D

    const/4 v2, 0x4

    aput-wide v79, v0, v2

    .line 296
    iget-object v0, v1, Lorg/ejml/data/DMatrix1Row;->data:[D

    const/4 v2, 0x5

    aput-wide v79, v0, v2

    .line 297
    iget-object v0, v1, Lorg/ejml/data/DMatrix1Row;->data:[D

    const/4 v2, 0x6

    aput-wide v79, v0, v2

    .line 298
    iget-object v0, v1, Lorg/ejml/data/DMatrix1Row;->data:[D

    div-double/2addr v6, v3

    aput-wide v6, v0, v5

    .line 299
    iget-object v0, v1, Lorg/ejml/data/DMatrix1Row;->data:[D

    mul-double v81, v6, v6

    sub-double v9, v9, v81

    invoke-static {v9, v10}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v9

    aput-wide v9, v0, v8

    .line 300
    iget-object v0, v1, Lorg/ejml/data/DMatrix1Row;->data:[D

    const/16 v2, 0x9

    aput-wide v79, v0, v2

    .line 301
    iget-object v0, v1, Lorg/ejml/data/DMatrix1Row;->data:[D

    const/16 v2, 0xa

    aput-wide v79, v0, v2

    .line 302
    iget-object v0, v1, Lorg/ejml/data/DMatrix1Row;->data:[D

    const/16 v2, 0xb

    aput-wide v79, v0, v2

    .line 303
    iget-object v0, v1, Lorg/ejml/data/DMatrix1Row;->data:[D

    const/16 v2, 0xc

    aput-wide v79, v0, v2

    .line 304
    iget-object v0, v1, Lorg/ejml/data/DMatrix1Row;->data:[D

    const/16 v2, 0xd

    aput-wide v79, v0, v2

    .line 305
    iget-object v0, v1, Lorg/ejml/data/DMatrix1Row;->data:[D

    div-double/2addr v12, v3

    aput-wide v12, v0, v11

    .line 306
    iget-object v0, v1, Lorg/ejml/data/DMatrix1Row;->data:[D

    mul-double v81, v12, v6

    sub-double v15, v15, v81

    div-double/2addr v15, v9

    aput-wide v15, v0, v14

    .line 307
    iget-object v0, v1, Lorg/ejml/data/DMatrix1Row;->data:[D

    mul-double v81, v12, v12

    sub-double v18, v18, v81

    mul-double v81, v15, v15

    sub-double v18, v18, v81

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v18

    aput-wide v18, v0, v17

    .line 308
    iget-object v0, v1, Lorg/ejml/data/DMatrix1Row;->data:[D

    const/16 v2, 0x11

    aput-wide v79, v0, v2

    .line 309
    iget-object v0, v1, Lorg/ejml/data/DMatrix1Row;->data:[D

    const/16 v2, 0x12

    aput-wide v79, v0, v2

    .line 310
    iget-object v0, v1, Lorg/ejml/data/DMatrix1Row;->data:[D

    const/16 v2, 0x13

    aput-wide v79, v0, v2

    .line 311
    iget-object v0, v1, Lorg/ejml/data/DMatrix1Row;->data:[D

    const/16 v2, 0x14

    aput-wide v79, v0, v2

    .line 312
    iget-object v0, v1, Lorg/ejml/data/DMatrix1Row;->data:[D

    div-double v21, v21, v3

    aput-wide v21, v0, v20

    .line 313
    iget-object v0, v1, Lorg/ejml/data/DMatrix1Row;->data:[D

    mul-double v81, v21, v6

    sub-double v24, v24, v81

    div-double v24, v24, v9

    aput-wide v24, v0, v23

    .line 314
    iget-object v0, v1, Lorg/ejml/data/DMatrix1Row;->data:[D

    mul-double v81, v21, v12

    sub-double v27, v27, v81

    mul-double v81, v24, v15

    sub-double v27, v27, v81

    div-double v27, v27, v18

    aput-wide v27, v0, v26

    .line 315
    iget-object v0, v1, Lorg/ejml/data/DMatrix1Row;->data:[D

    mul-double v81, v21, v21

    sub-double v30, v30, v81

    mul-double v81, v24, v24

    sub-double v30, v30, v81

    mul-double v81, v27, v27

    sub-double v30, v30, v81

    invoke-static/range {v30 .. v31}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v30

    aput-wide v30, v0, v29

    .line 316
    iget-object v0, v1, Lorg/ejml/data/DMatrix1Row;->data:[D

    const/16 v2, 0x19

    aput-wide v79, v0, v2

    .line 317
    iget-object v0, v1, Lorg/ejml/data/DMatrix1Row;->data:[D

    const/16 v2, 0x1a

    aput-wide v79, v0, v2

    .line 318
    iget-object v0, v1, Lorg/ejml/data/DMatrix1Row;->data:[D

    const/16 v2, 0x1b

    aput-wide v79, v0, v2

    .line 319
    iget-object v0, v1, Lorg/ejml/data/DMatrix1Row;->data:[D

    div-double v33, v33, v3

    aput-wide v33, v0, v32

    .line 320
    iget-object v0, v1, Lorg/ejml/data/DMatrix1Row;->data:[D

    mul-double v81, v33, v6

    sub-double v36, v36, v81

    div-double v36, v36, v9

    aput-wide v36, v0, v35

    .line 321
    iget-object v0, v1, Lorg/ejml/data/DMatrix1Row;->data:[D

    mul-double v81, v33, v12

    sub-double v39, v39, v81

    mul-double v81, v36, v15

    sub-double v39, v39, v81

    div-double v39, v39, v18

    aput-wide v39, v0, v38

    .line 322
    iget-object v0, v1, Lorg/ejml/data/DMatrix1Row;->data:[D

    mul-double v81, v33, v21

    sub-double v42, v42, v81

    mul-double v81, v36, v24

    sub-double v42, v42, v81

    mul-double v81, v39, v27

    sub-double v42, v42, v81

    div-double v42, v42, v30

    aput-wide v42, v0, v41

    .line 323
    iget-object v0, v1, Lorg/ejml/data/DMatrix1Row;->data:[D

    mul-double v81, v33, v33

    sub-double v45, v45, v81

    mul-double v81, v36, v36

    sub-double v45, v45, v81

    mul-double v81, v39, v39

    sub-double v45, v45, v81

    mul-double v81, v42, v42

    sub-double v45, v45, v81

    invoke-static/range {v45 .. v46}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v45

    aput-wide v45, v0, v44

    .line 324
    iget-object v0, v1, Lorg/ejml/data/DMatrix1Row;->data:[D

    const/16 v2, 0x21

    aput-wide v79, v0, v2

    .line 325
    iget-object v0, v1, Lorg/ejml/data/DMatrix1Row;->data:[D

    const/16 v2, 0x22

    aput-wide v79, v0, v2

    .line 326
    iget-object v0, v1, Lorg/ejml/data/DMatrix1Row;->data:[D

    div-double v48, v48, v3

    aput-wide v48, v0, v47

    .line 327
    iget-object v0, v1, Lorg/ejml/data/DMatrix1Row;->data:[D

    mul-double v81, v48, v6

    sub-double v51, v51, v81

    div-double v51, v51, v9

    aput-wide v51, v0, v50

    .line 328
    iget-object v0, v1, Lorg/ejml/data/DMatrix1Row;->data:[D

    mul-double v81, v48, v12

    sub-double v54, v54, v81

    mul-double v81, v51, v15

    sub-double v54, v54, v81

    div-double v54, v54, v18

    aput-wide v54, v0, v53

    .line 329
    iget-object v0, v1, Lorg/ejml/data/DMatrix1Row;->data:[D

    mul-double v81, v48, v21

    sub-double v57, v57, v81

    mul-double v81, v51, v24

    sub-double v57, v57, v81

    mul-double v81, v54, v27

    sub-double v57, v57, v81

    div-double v57, v57, v30

    aput-wide v57, v0, v56

    .line 330
    iget-object v0, v1, Lorg/ejml/data/DMatrix1Row;->data:[D

    mul-double v81, v48, v33

    sub-double v60, v60, v81

    mul-double v81, v51, v36

    sub-double v60, v60, v81

    mul-double v81, v54, v39

    sub-double v60, v60, v81

    mul-double v81, v57, v42

    sub-double v60, v60, v81

    div-double v60, v60, v45

    aput-wide v60, v0, v59

    .line 331
    iget-object v0, v1, Lorg/ejml/data/DMatrix1Row;->data:[D

    mul-double v81, v48, v48

    sub-double v62, v62, v81

    mul-double v81, v51, v51

    sub-double v62, v62, v81

    mul-double v81, v54, v54

    sub-double v62, v62, v81

    mul-double v81, v57, v57

    sub-double v62, v62, v81

    mul-double v81, v60, v60

    sub-double v62, v62, v81

    invoke-static/range {v62 .. v63}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v62

    const/16 v2, 0x28

    aput-wide v62, v0, v2

    .line 332
    iget-object v0, v1, Lorg/ejml/data/DMatrix1Row;->data:[D

    const/16 v2, 0x29

    aput-wide v79, v0, v2

    .line 333
    iget-object v0, v1, Lorg/ejml/data/DMatrix1Row;->data:[D

    div-double v64, v64, v3

    const/16 v2, 0x2a

    aput-wide v64, v0, v2

    .line 334
    iget-object v0, v1, Lorg/ejml/data/DMatrix1Row;->data:[D

    mul-double v6, v6, v64

    sub-double v66, v66, v6

    div-double v66, v66, v9

    const/16 v2, 0x2b

    aput-wide v66, v0, v2

    .line 335
    iget-object v0, v1, Lorg/ejml/data/DMatrix1Row;->data:[D

    mul-double v12, v12, v64

    sub-double v68, v68, v12

    mul-double v15, v15, v66

    sub-double v68, v68, v15

    div-double v68, v68, v18

    const/16 v2, 0x2c

    aput-wide v68, v0, v2

    .line 336
    iget-object v0, v1, Lorg/ejml/data/DMatrix1Row;->data:[D

    mul-double v21, v21, v64

    sub-double v70, v70, v21

    mul-double v24, v24, v66

    sub-double v70, v70, v24

    mul-double v27, v27, v68

    sub-double v70, v70, v27

    div-double v70, v70, v30

    const/16 v2, 0x2d

    aput-wide v70, v0, v2

    .line 337
    iget-object v0, v1, Lorg/ejml/data/DMatrix1Row;->data:[D

    mul-double v33, v33, v64

    sub-double v72, v72, v33

    mul-double v36, v36, v66

    sub-double v72, v72, v36

    mul-double v39, v39, v68

    sub-double v72, v72, v39

    mul-double v42, v42, v70

    sub-double v72, v72, v42

    div-double v72, v72, v45

    const/16 v2, 0x2e

    aput-wide v72, v0, v2

    .line 338
    iget-object v0, v1, Lorg/ejml/data/DMatrix1Row;->data:[D

    mul-double v48, v48, v64

    sub-double v74, v74, v48

    mul-double v51, v51, v66

    sub-double v74, v74, v51

    mul-double v54, v54, v68

    sub-double v74, v74, v54

    mul-double v57, v57, v70

    sub-double v74, v74, v57

    mul-double v60, v60, v72

    sub-double v74, v74, v60

    div-double v74, v74, v62

    const/16 v2, 0x2f

    aput-wide v74, v0, v2

    .line 339
    iget-object v0, v1, Lorg/ejml/data/DMatrix1Row;->data:[D

    mul-double v64, v64, v64

    sub-double v77, v77, v64

    mul-double v66, v66, v66

    sub-double v77, v77, v66

    mul-double v68, v68, v68

    sub-double v77, v77, v68

    mul-double v70, v70, v70

    sub-double v77, v77, v70

    mul-double v72, v72, v72

    sub-double v77, v77, v72

    mul-double v74, v74, v74

    sub-double v77, v77, v74

    invoke-static/range {v77 .. v78}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    aput-wide v2, v0, v76

    .line 340
    iget-object v0, v1, Lorg/ejml/data/DMatrix1Row;->data:[D

    aget-wide v0, v0, v76

    invoke-static {v0, v1}, Lorg/ejml/UtilEjml;->isUncountable(D)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static upper(Lorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;)Z
    .locals 1

    .line 51
    iget v0, p0, Lorg/ejml/data/DMatrix1Row;->numRows:I

    packed-switch v0, :pswitch_data_0

    const/4 p0, 0x0

    return p0

    .line 58
    :pswitch_0
    invoke-static {p0, p1}, Lorg/ejml/dense/row/misc/UnrolledCholesky_DDRM;->upper7(Lorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;)Z

    move-result p0

    return p0

    .line 57
    :pswitch_1
    invoke-static {p0, p1}, Lorg/ejml/dense/row/misc/UnrolledCholesky_DDRM;->upper6(Lorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;)Z

    move-result p0

    return p0

    .line 56
    :pswitch_2
    invoke-static {p0, p1}, Lorg/ejml/dense/row/misc/UnrolledCholesky_DDRM;->upper5(Lorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;)Z

    move-result p0

    return p0

    .line 55
    :pswitch_3
    invoke-static {p0, p1}, Lorg/ejml/dense/row/misc/UnrolledCholesky_DDRM;->upper4(Lorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;)Z

    move-result p0

    return p0

    .line 54
    :pswitch_4
    invoke-static {p0, p1}, Lorg/ejml/dense/row/misc/UnrolledCholesky_DDRM;->upper3(Lorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;)Z

    move-result p0

    return p0

    .line 53
    :pswitch_5
    invoke-static {p0, p1}, Lorg/ejml/dense/row/misc/UnrolledCholesky_DDRM;->upper2(Lorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;)Z

    move-result p0

    return p0

    .line 52
    :pswitch_6
    invoke-static {p0, p1}, Lorg/ejml/dense/row/misc/UnrolledCholesky_DDRM;->upper1(Lorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;)Z

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

.method public static upper1(Lorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;)Z
    .locals 3

    .line 345
    iget-object p0, p0, Lorg/ejml/data/DMatrix1Row;->data:[D

    const/4 v0, 0x0

    .line 347
    aget-wide v1, p0, v0

    .line 349
    iget-object p0, p1, Lorg/ejml/data/DMatrix1Row;->data:[D

    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    aput-wide v1, p0, v0

    .line 350
    iget-object p0, p1, Lorg/ejml/data/DMatrix1Row;->data:[D

    aget-wide p0, p0, v0

    invoke-static {p0, p1}, Lorg/ejml/UtilEjml;->isUncountable(D)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static upper2(Lorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;)Z
    .locals 11

    .line 355
    iget-object p0, p0, Lorg/ejml/data/DMatrix1Row;->data:[D

    const/4 v0, 0x0

    .line 357
    aget-wide v1, p0, v0

    const/4 v3, 0x1

    .line 358
    aget-wide v4, p0, v3

    const/4 v6, 0x3

    .line 359
    aget-wide v7, p0, v6

    .line 361
    iget-object p0, p1, Lorg/ejml/data/DMatrix1Row;->data:[D

    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    aput-wide v1, p0, v0

    .line 362
    iget-object p0, p1, Lorg/ejml/data/DMatrix1Row;->data:[D

    const/4 v0, 0x2

    const-wide/16 v9, 0x0

    aput-wide v9, p0, v0

    .line 363
    iget-object p0, p1, Lorg/ejml/data/DMatrix1Row;->data:[D

    div-double/2addr v4, v1

    aput-wide v4, p0, v3

    .line 364
    iget-object p0, p1, Lorg/ejml/data/DMatrix1Row;->data:[D

    mul-double/2addr v4, v4

    sub-double/2addr v7, v4

    invoke-static {v7, v8}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    aput-wide v0, p0, v6

    .line 365
    iget-object p0, p1, Lorg/ejml/data/DMatrix1Row;->data:[D

    aget-wide p0, p0, v6

    invoke-static {p0, p1}, Lorg/ejml/UtilEjml;->isUncountable(D)Z

    move-result p0

    xor-int/2addr p0, v3

    return p0
.end method

.method public static upper3(Lorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;)Z
    .locals 24

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 370
    iget-object v0, v0, Lorg/ejml/data/DMatrix1Row;->data:[D

    const/4 v2, 0x0

    .line 372
    aget-wide v3, v0, v2

    const/4 v5, 0x1

    .line 373
    aget-wide v6, v0, v5

    const/4 v8, 0x4

    .line 374
    aget-wide v9, v0, v8

    const/4 v11, 0x2

    .line 375
    aget-wide v12, v0, v11

    const/4 v14, 0x5

    .line 376
    aget-wide v15, v0, v14

    const/16 v17, 0x8

    .line 377
    aget-wide v18, v0, v17

    .line 379
    iget-object v0, v1, Lorg/ejml/data/DMatrix1Row;->data:[D

    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    aput-wide v3, v0, v2

    .line 380
    iget-object v0, v1, Lorg/ejml/data/DMatrix1Row;->data:[D

    const/4 v2, 0x3

    const-wide/16 v20, 0x0

    aput-wide v20, v0, v2

    .line 381
    iget-object v0, v1, Lorg/ejml/data/DMatrix1Row;->data:[D

    const/4 v2, 0x6

    aput-wide v20, v0, v2

    .line 382
    iget-object v0, v1, Lorg/ejml/data/DMatrix1Row;->data:[D

    div-double/2addr v6, v3

    aput-wide v6, v0, v5

    .line 383
    iget-object v0, v1, Lorg/ejml/data/DMatrix1Row;->data:[D

    mul-double v22, v6, v6

    sub-double v9, v9, v22

    invoke-static {v9, v10}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v9

    aput-wide v9, v0, v8

    .line 384
    iget-object v0, v1, Lorg/ejml/data/DMatrix1Row;->data:[D

    const/4 v2, 0x7

    aput-wide v20, v0, v2

    .line 385
    iget-object v0, v1, Lorg/ejml/data/DMatrix1Row;->data:[D

    div-double/2addr v12, v3

    aput-wide v12, v0, v11

    .line 386
    iget-object v0, v1, Lorg/ejml/data/DMatrix1Row;->data:[D

    mul-double/2addr v6, v12

    sub-double/2addr v15, v6

    div-double/2addr v15, v9

    aput-wide v15, v0, v14

    .line 387
    iget-object v0, v1, Lorg/ejml/data/DMatrix1Row;->data:[D

    mul-double/2addr v12, v12

    sub-double v18, v18, v12

    mul-double/2addr v15, v15

    sub-double v18, v18, v15

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    aput-wide v2, v0, v17

    .line 388
    iget-object v0, v1, Lorg/ejml/data/DMatrix1Row;->data:[D

    aget-wide v0, v0, v17

    invoke-static {v0, v1}, Lorg/ejml/UtilEjml;->isUncountable(D)Z

    move-result v0

    xor-int/2addr v0, v5

    return v0
.end method

.method public static upper4(Lorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;)Z
    .locals 36

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 393
    iget-object v0, v0, Lorg/ejml/data/DMatrix1Row;->data:[D

    const/4 v2, 0x0

    .line 395
    aget-wide v3, v0, v2

    const/4 v5, 0x1

    .line 396
    aget-wide v6, v0, v5

    const/4 v8, 0x5

    .line 397
    aget-wide v9, v0, v8

    const/4 v11, 0x2

    .line 398
    aget-wide v12, v0, v11

    const/4 v14, 0x6

    .line 399
    aget-wide v15, v0, v14

    const/16 v17, 0xa

    .line 400
    aget-wide v18, v0, v17

    const/16 v20, 0x3

    .line 401
    aget-wide v21, v0, v20

    const/16 v23, 0x7

    .line 402
    aget-wide v24, v0, v23

    const/16 v26, 0xb

    .line 403
    aget-wide v27, v0, v26

    const/16 v29, 0xf

    .line 404
    aget-wide v30, v0, v29

    .line 406
    iget-object v0, v1, Lorg/ejml/data/DMatrix1Row;->data:[D

    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    aput-wide v3, v0, v2

    .line 407
    iget-object v0, v1, Lorg/ejml/data/DMatrix1Row;->data:[D

    const/4 v2, 0x4

    const-wide/16 v32, 0x0

    aput-wide v32, v0, v2

    .line 408
    iget-object v0, v1, Lorg/ejml/data/DMatrix1Row;->data:[D

    const/16 v2, 0x8

    aput-wide v32, v0, v2

    .line 409
    iget-object v0, v1, Lorg/ejml/data/DMatrix1Row;->data:[D

    const/16 v2, 0xc

    aput-wide v32, v0, v2

    .line 410
    iget-object v0, v1, Lorg/ejml/data/DMatrix1Row;->data:[D

    div-double/2addr v6, v3

    aput-wide v6, v0, v5

    .line 411
    iget-object v0, v1, Lorg/ejml/data/DMatrix1Row;->data:[D

    mul-double v34, v6, v6

    sub-double v9, v9, v34

    invoke-static {v9, v10}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v9

    aput-wide v9, v0, v8

    .line 412
    iget-object v0, v1, Lorg/ejml/data/DMatrix1Row;->data:[D

    const/16 v2, 0x9

    aput-wide v32, v0, v2

    .line 413
    iget-object v0, v1, Lorg/ejml/data/DMatrix1Row;->data:[D

    const/16 v2, 0xd

    aput-wide v32, v0, v2

    .line 414
    iget-object v0, v1, Lorg/ejml/data/DMatrix1Row;->data:[D

    div-double/2addr v12, v3

    aput-wide v12, v0, v11

    .line 415
    iget-object v0, v1, Lorg/ejml/data/DMatrix1Row;->data:[D

    mul-double v34, v6, v12

    sub-double v15, v15, v34

    div-double/2addr v15, v9

    aput-wide v15, v0, v14

    .line 416
    iget-object v0, v1, Lorg/ejml/data/DMatrix1Row;->data:[D

    mul-double v34, v12, v12

    sub-double v18, v18, v34

    mul-double v34, v15, v15

    sub-double v18, v18, v34

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v18

    aput-wide v18, v0, v17

    .line 417
    iget-object v0, v1, Lorg/ejml/data/DMatrix1Row;->data:[D

    const/16 v2, 0xe

    aput-wide v32, v0, v2

    .line 418
    iget-object v0, v1, Lorg/ejml/data/DMatrix1Row;->data:[D

    div-double v21, v21, v3

    aput-wide v21, v0, v20

    .line 419
    iget-object v0, v1, Lorg/ejml/data/DMatrix1Row;->data:[D

    mul-double v6, v6, v21

    sub-double v24, v24, v6

    div-double v24, v24, v9

    aput-wide v24, v0, v23

    .line 420
    iget-object v0, v1, Lorg/ejml/data/DMatrix1Row;->data:[D

    mul-double v12, v12, v21

    sub-double v27, v27, v12

    mul-double v15, v15, v24

    sub-double v27, v27, v15

    div-double v27, v27, v18

    aput-wide v27, v0, v26

    .line 421
    iget-object v0, v1, Lorg/ejml/data/DMatrix1Row;->data:[D

    mul-double v21, v21, v21

    sub-double v30, v30, v21

    mul-double v24, v24, v24

    sub-double v30, v30, v24

    mul-double v27, v27, v27

    sub-double v30, v30, v27

    invoke-static/range {v30 .. v31}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    aput-wide v2, v0, v29

    .line 422
    iget-object v0, v1, Lorg/ejml/data/DMatrix1Row;->data:[D

    aget-wide v0, v0, v29

    invoke-static {v0, v1}, Lorg/ejml/UtilEjml;->isUncountable(D)Z

    move-result v0

    xor-int/2addr v0, v5

    return v0
.end method

.method public static upper5(Lorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;)Z
    .locals 51

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 427
    iget-object v0, v0, Lorg/ejml/data/DMatrix1Row;->data:[D

    const/4 v2, 0x0

    .line 429
    aget-wide v3, v0, v2

    const/4 v5, 0x1

    .line 430
    aget-wide v6, v0, v5

    const/4 v8, 0x6

    .line 431
    aget-wide v9, v0, v8

    const/4 v11, 0x2

    .line 432
    aget-wide v12, v0, v11

    const/4 v14, 0x7

    .line 433
    aget-wide v15, v0, v14

    const/16 v17, 0xc

    .line 434
    aget-wide v18, v0, v17

    const/16 v20, 0x3

    .line 435
    aget-wide v21, v0, v20

    const/16 v23, 0x8

    .line 436
    aget-wide v24, v0, v23

    const/16 v26, 0xd

    .line 437
    aget-wide v27, v0, v26

    const/16 v29, 0x12

    .line 438
    aget-wide v30, v0, v29

    const/16 v32, 0x4

    .line 439
    aget-wide v33, v0, v32

    const/16 v35, 0x9

    .line 440
    aget-wide v36, v0, v35

    const/16 v38, 0xe

    .line 441
    aget-wide v39, v0, v38

    const/16 v41, 0x13

    .line 442
    aget-wide v42, v0, v41

    const/16 v44, 0x18

    .line 443
    aget-wide v45, v0, v44

    .line 445
    iget-object v0, v1, Lorg/ejml/data/DMatrix1Row;->data:[D

    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    aput-wide v3, v0, v2

    .line 446
    iget-object v0, v1, Lorg/ejml/data/DMatrix1Row;->data:[D

    const/4 v2, 0x5

    const-wide/16 v47, 0x0

    aput-wide v47, v0, v2

    .line 447
    iget-object v0, v1, Lorg/ejml/data/DMatrix1Row;->data:[D

    const/16 v2, 0xa

    aput-wide v47, v0, v2

    .line 448
    iget-object v0, v1, Lorg/ejml/data/DMatrix1Row;->data:[D

    const/16 v2, 0xf

    aput-wide v47, v0, v2

    .line 449
    iget-object v0, v1, Lorg/ejml/data/DMatrix1Row;->data:[D

    const/16 v2, 0x14

    aput-wide v47, v0, v2

    .line 450
    iget-object v0, v1, Lorg/ejml/data/DMatrix1Row;->data:[D

    div-double/2addr v6, v3

    aput-wide v6, v0, v5

    .line 451
    iget-object v0, v1, Lorg/ejml/data/DMatrix1Row;->data:[D

    mul-double v49, v6, v6

    sub-double v9, v9, v49

    invoke-static {v9, v10}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v9

    aput-wide v9, v0, v8

    .line 452
    iget-object v0, v1, Lorg/ejml/data/DMatrix1Row;->data:[D

    const/16 v2, 0xb

    aput-wide v47, v0, v2

    .line 453
    iget-object v0, v1, Lorg/ejml/data/DMatrix1Row;->data:[D

    const/16 v2, 0x10

    aput-wide v47, v0, v2

    .line 454
    iget-object v0, v1, Lorg/ejml/data/DMatrix1Row;->data:[D

    const/16 v2, 0x15

    aput-wide v47, v0, v2

    .line 455
    iget-object v0, v1, Lorg/ejml/data/DMatrix1Row;->data:[D

    div-double/2addr v12, v3

    aput-wide v12, v0, v11

    .line 456
    iget-object v0, v1, Lorg/ejml/data/DMatrix1Row;->data:[D

    mul-double v49, v6, v12

    sub-double v15, v15, v49

    div-double/2addr v15, v9

    aput-wide v15, v0, v14

    .line 457
    iget-object v0, v1, Lorg/ejml/data/DMatrix1Row;->data:[D

    mul-double v49, v12, v12

    sub-double v18, v18, v49

    mul-double v49, v15, v15

    sub-double v18, v18, v49

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v18

    aput-wide v18, v0, v17

    .line 458
    iget-object v0, v1, Lorg/ejml/data/DMatrix1Row;->data:[D

    const/16 v2, 0x11

    aput-wide v47, v0, v2

    .line 459
    iget-object v0, v1, Lorg/ejml/data/DMatrix1Row;->data:[D

    const/16 v2, 0x16

    aput-wide v47, v0, v2

    .line 460
    iget-object v0, v1, Lorg/ejml/data/DMatrix1Row;->data:[D

    div-double v21, v21, v3

    aput-wide v21, v0, v20

    .line 461
    iget-object v0, v1, Lorg/ejml/data/DMatrix1Row;->data:[D

    mul-double v49, v6, v21

    sub-double v24, v24, v49

    div-double v24, v24, v9

    aput-wide v24, v0, v23

    .line 462
    iget-object v0, v1, Lorg/ejml/data/DMatrix1Row;->data:[D

    mul-double v49, v12, v21

    sub-double v27, v27, v49

    mul-double v49, v15, v24

    sub-double v27, v27, v49

    div-double v27, v27, v18

    aput-wide v27, v0, v26

    .line 463
    iget-object v0, v1, Lorg/ejml/data/DMatrix1Row;->data:[D

    mul-double v49, v21, v21

    sub-double v30, v30, v49

    mul-double v49, v24, v24

    sub-double v30, v30, v49

    mul-double v49, v27, v27

    sub-double v30, v30, v49

    invoke-static/range {v30 .. v31}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v30

    aput-wide v30, v0, v29

    .line 464
    iget-object v0, v1, Lorg/ejml/data/DMatrix1Row;->data:[D

    const/16 v2, 0x17

    aput-wide v47, v0, v2

    .line 465
    iget-object v0, v1, Lorg/ejml/data/DMatrix1Row;->data:[D

    div-double v33, v33, v3

    aput-wide v33, v0, v32

    .line 466
    iget-object v0, v1, Lorg/ejml/data/DMatrix1Row;->data:[D

    mul-double v6, v6, v33

    sub-double v36, v36, v6

    div-double v36, v36, v9

    aput-wide v36, v0, v35

    .line 467
    iget-object v0, v1, Lorg/ejml/data/DMatrix1Row;->data:[D

    mul-double v12, v12, v33

    sub-double v39, v39, v12

    mul-double v15, v15, v36

    sub-double v39, v39, v15

    div-double v39, v39, v18

    aput-wide v39, v0, v38

    .line 468
    iget-object v0, v1, Lorg/ejml/data/DMatrix1Row;->data:[D

    mul-double v21, v21, v33

    sub-double v42, v42, v21

    mul-double v24, v24, v36

    sub-double v42, v42, v24

    mul-double v27, v27, v39

    sub-double v42, v42, v27

    div-double v42, v42, v30

    aput-wide v42, v0, v41

    .line 469
    iget-object v0, v1, Lorg/ejml/data/DMatrix1Row;->data:[D

    mul-double v33, v33, v33

    sub-double v45, v45, v33

    mul-double v36, v36, v36

    sub-double v45, v45, v36

    mul-double v39, v39, v39

    sub-double v45, v45, v39

    mul-double v42, v42, v42

    sub-double v45, v45, v42

    invoke-static/range {v45 .. v46}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    aput-wide v2, v0, v44

    .line 470
    iget-object v0, v1, Lorg/ejml/data/DMatrix1Row;->data:[D

    aget-wide v0, v0, v44

    invoke-static {v0, v1}, Lorg/ejml/UtilEjml;->isUncountable(D)Z

    move-result v0

    xor-int/2addr v0, v5

    return v0
.end method

.method public static upper6(Lorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;)Z
    .locals 69

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 475
    iget-object v0, v0, Lorg/ejml/data/DMatrix1Row;->data:[D

    const/4 v2, 0x0

    .line 477
    aget-wide v3, v0, v2

    const/4 v5, 0x1

    .line 478
    aget-wide v6, v0, v5

    const/4 v8, 0x7

    .line 479
    aget-wide v9, v0, v8

    const/4 v11, 0x2

    .line 480
    aget-wide v12, v0, v11

    const/16 v14, 0x8

    .line 481
    aget-wide v15, v0, v14

    const/16 v17, 0xe

    .line 482
    aget-wide v18, v0, v17

    const/16 v20, 0x3

    .line 483
    aget-wide v21, v0, v20

    const/16 v23, 0x9

    .line 484
    aget-wide v24, v0, v23

    const/16 v26, 0xf

    .line 485
    aget-wide v27, v0, v26

    const/16 v29, 0x15

    .line 486
    aget-wide v30, v0, v29

    const/16 v32, 0x4

    .line 487
    aget-wide v33, v0, v32

    const/16 v35, 0xa

    .line 488
    aget-wide v36, v0, v35

    const/16 v38, 0x10

    .line 489
    aget-wide v39, v0, v38

    const/16 v41, 0x16

    .line 490
    aget-wide v42, v0, v41

    const/16 v44, 0x1c

    .line 491
    aget-wide v45, v0, v44

    const/16 v47, 0x5

    .line 492
    aget-wide v48, v0, v47

    const/16 v50, 0xb

    .line 493
    aget-wide v51, v0, v50

    const/16 v53, 0x11

    .line 494
    aget-wide v54, v0, v53

    const/16 v56, 0x17

    .line 495
    aget-wide v57, v0, v56

    const/16 v59, 0x1d

    .line 496
    aget-wide v60, v0, v59

    const/16 v62, 0x23

    .line 497
    aget-wide v63, v0, v62

    .line 499
    iget-object v0, v1, Lorg/ejml/data/DMatrix1Row;->data:[D

    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    aput-wide v3, v0, v2

    .line 500
    iget-object v0, v1, Lorg/ejml/data/DMatrix1Row;->data:[D

    const/4 v2, 0x6

    const-wide/16 v65, 0x0

    aput-wide v65, v0, v2

    .line 501
    iget-object v0, v1, Lorg/ejml/data/DMatrix1Row;->data:[D

    const/16 v2, 0xc

    aput-wide v65, v0, v2

    .line 502
    iget-object v0, v1, Lorg/ejml/data/DMatrix1Row;->data:[D

    const/16 v2, 0x12

    aput-wide v65, v0, v2

    .line 503
    iget-object v0, v1, Lorg/ejml/data/DMatrix1Row;->data:[D

    const/16 v2, 0x18

    aput-wide v65, v0, v2

    .line 504
    iget-object v0, v1, Lorg/ejml/data/DMatrix1Row;->data:[D

    const/16 v2, 0x1e

    aput-wide v65, v0, v2

    .line 505
    iget-object v0, v1, Lorg/ejml/data/DMatrix1Row;->data:[D

    div-double/2addr v6, v3

    aput-wide v6, v0, v5

    .line 506
    iget-object v0, v1, Lorg/ejml/data/DMatrix1Row;->data:[D

    mul-double v67, v6, v6

    sub-double v9, v9, v67

    invoke-static {v9, v10}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v9

    aput-wide v9, v0, v8

    .line 507
    iget-object v0, v1, Lorg/ejml/data/DMatrix1Row;->data:[D

    const/16 v2, 0xd

    aput-wide v65, v0, v2

    .line 508
    iget-object v0, v1, Lorg/ejml/data/DMatrix1Row;->data:[D

    const/16 v2, 0x13

    aput-wide v65, v0, v2

    .line 509
    iget-object v0, v1, Lorg/ejml/data/DMatrix1Row;->data:[D

    const/16 v2, 0x19

    aput-wide v65, v0, v2

    .line 510
    iget-object v0, v1, Lorg/ejml/data/DMatrix1Row;->data:[D

    const/16 v2, 0x1f

    aput-wide v65, v0, v2

    .line 511
    iget-object v0, v1, Lorg/ejml/data/DMatrix1Row;->data:[D

    div-double/2addr v12, v3

    aput-wide v12, v0, v11

    .line 512
    iget-object v0, v1, Lorg/ejml/data/DMatrix1Row;->data:[D

    mul-double v67, v6, v12

    sub-double v15, v15, v67

    div-double/2addr v15, v9

    aput-wide v15, v0, v14

    .line 513
    iget-object v0, v1, Lorg/ejml/data/DMatrix1Row;->data:[D

    mul-double v67, v12, v12

    sub-double v18, v18, v67

    mul-double v67, v15, v15

    sub-double v18, v18, v67

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v18

    aput-wide v18, v0, v17

    .line 514
    iget-object v0, v1, Lorg/ejml/data/DMatrix1Row;->data:[D

    const/16 v2, 0x14

    aput-wide v65, v0, v2

    .line 515
    iget-object v0, v1, Lorg/ejml/data/DMatrix1Row;->data:[D

    const/16 v2, 0x1a

    aput-wide v65, v0, v2

    .line 516
    iget-object v0, v1, Lorg/ejml/data/DMatrix1Row;->data:[D

    const/16 v2, 0x20

    aput-wide v65, v0, v2

    .line 517
    iget-object v0, v1, Lorg/ejml/data/DMatrix1Row;->data:[D

    div-double v21, v21, v3

    aput-wide v21, v0, v20

    .line 518
    iget-object v0, v1, Lorg/ejml/data/DMatrix1Row;->data:[D

    mul-double v67, v6, v21

    sub-double v24, v24, v67

    div-double v24, v24, v9

    aput-wide v24, v0, v23

    .line 519
    iget-object v0, v1, Lorg/ejml/data/DMatrix1Row;->data:[D

    mul-double v67, v12, v21

    sub-double v27, v27, v67

    mul-double v67, v15, v24

    sub-double v27, v27, v67

    div-double v27, v27, v18

    aput-wide v27, v0, v26

    .line 520
    iget-object v0, v1, Lorg/ejml/data/DMatrix1Row;->data:[D

    mul-double v67, v21, v21

    sub-double v30, v30, v67

    mul-double v67, v24, v24

    sub-double v30, v30, v67

    mul-double v67, v27, v27

    sub-double v30, v30, v67

    invoke-static/range {v30 .. v31}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v30

    aput-wide v30, v0, v29

    .line 521
    iget-object v0, v1, Lorg/ejml/data/DMatrix1Row;->data:[D

    const/16 v2, 0x1b

    aput-wide v65, v0, v2

    .line 522
    iget-object v0, v1, Lorg/ejml/data/DMatrix1Row;->data:[D

    const/16 v2, 0x21

    aput-wide v65, v0, v2

    .line 523
    iget-object v0, v1, Lorg/ejml/data/DMatrix1Row;->data:[D

    div-double v33, v33, v3

    aput-wide v33, v0, v32

    .line 524
    iget-object v0, v1, Lorg/ejml/data/DMatrix1Row;->data:[D

    mul-double v67, v6, v33

    sub-double v36, v36, v67

    div-double v36, v36, v9

    aput-wide v36, v0, v35

    .line 525
    iget-object v0, v1, Lorg/ejml/data/DMatrix1Row;->data:[D

    mul-double v67, v12, v33

    sub-double v39, v39, v67

    mul-double v67, v15, v36

    sub-double v39, v39, v67

    div-double v39, v39, v18

    aput-wide v39, v0, v38

    .line 526
    iget-object v0, v1, Lorg/ejml/data/DMatrix1Row;->data:[D

    mul-double v67, v21, v33

    sub-double v42, v42, v67

    mul-double v67, v24, v36

    sub-double v42, v42, v67

    mul-double v67, v27, v39

    sub-double v42, v42, v67

    div-double v42, v42, v30

    aput-wide v42, v0, v41

    .line 527
    iget-object v0, v1, Lorg/ejml/data/DMatrix1Row;->data:[D

    mul-double v67, v33, v33

    sub-double v45, v45, v67

    mul-double v67, v36, v36

    sub-double v45, v45, v67

    mul-double v67, v39, v39

    sub-double v45, v45, v67

    mul-double v67, v42, v42

    sub-double v45, v45, v67

    invoke-static/range {v45 .. v46}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v45

    aput-wide v45, v0, v44

    .line 528
    iget-object v0, v1, Lorg/ejml/data/DMatrix1Row;->data:[D

    const/16 v2, 0x22

    aput-wide v65, v0, v2

    .line 529
    iget-object v0, v1, Lorg/ejml/data/DMatrix1Row;->data:[D

    div-double v48, v48, v3

    aput-wide v48, v0, v47

    .line 530
    iget-object v0, v1, Lorg/ejml/data/DMatrix1Row;->data:[D

    mul-double v6, v6, v48

    sub-double v51, v51, v6

    div-double v51, v51, v9

    aput-wide v51, v0, v50

    .line 531
    iget-object v0, v1, Lorg/ejml/data/DMatrix1Row;->data:[D

    mul-double v12, v12, v48

    sub-double v54, v54, v12

    mul-double v15, v15, v51

    sub-double v54, v54, v15

    div-double v54, v54, v18

    aput-wide v54, v0, v53

    .line 532
    iget-object v0, v1, Lorg/ejml/data/DMatrix1Row;->data:[D

    mul-double v21, v21, v48

    sub-double v57, v57, v21

    mul-double v24, v24, v51

    sub-double v57, v57, v24

    mul-double v27, v27, v54

    sub-double v57, v57, v27

    div-double v57, v57, v30

    aput-wide v57, v0, v56

    .line 533
    iget-object v0, v1, Lorg/ejml/data/DMatrix1Row;->data:[D

    mul-double v33, v33, v48

    sub-double v60, v60, v33

    mul-double v36, v36, v51

    sub-double v60, v60, v36

    mul-double v39, v39, v54

    sub-double v60, v60, v39

    mul-double v42, v42, v57

    sub-double v60, v60, v42

    div-double v60, v60, v45

    aput-wide v60, v0, v59

    .line 534
    iget-object v0, v1, Lorg/ejml/data/DMatrix1Row;->data:[D

    mul-double v48, v48, v48

    sub-double v63, v63, v48

    mul-double v51, v51, v51

    sub-double v63, v63, v51

    mul-double v54, v54, v54

    sub-double v63, v63, v54

    mul-double v57, v57, v57

    sub-double v63, v63, v57

    mul-double v60, v60, v60

    sub-double v63, v63, v60

    invoke-static/range {v63 .. v64}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    aput-wide v2, v0, v62

    .line 535
    iget-object v0, v1, Lorg/ejml/data/DMatrix1Row;->data:[D

    aget-wide v0, v0, v62

    invoke-static {v0, v1}, Lorg/ejml/UtilEjml;->isUncountable(D)Z

    move-result v0

    xor-int/2addr v0, v5

    return v0
.end method

.method public static upper7(Lorg/ejml/data/DMatrix1Row;Lorg/ejml/data/DMatrix1Row;)Z
    .locals 83

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 540
    iget-object v0, v0, Lorg/ejml/data/DMatrix1Row;->data:[D

    const/4 v2, 0x0

    .line 542
    aget-wide v3, v0, v2

    const/4 v5, 0x1

    .line 543
    aget-wide v6, v0, v5

    const/16 v8, 0x8

    .line 544
    aget-wide v9, v0, v8

    const/4 v11, 0x2

    .line 545
    aget-wide v12, v0, v11

    const/16 v14, 0x9

    .line 546
    aget-wide v15, v0, v14

    const/16 v17, 0x10

    .line 547
    aget-wide v18, v0, v17

    const/16 v20, 0x3

    .line 548
    aget-wide v21, v0, v20

    const/16 v23, 0xa

    .line 549
    aget-wide v24, v0, v23

    const/16 v26, 0x11

    .line 550
    aget-wide v27, v0, v26

    const/16 v29, 0x18

    .line 551
    aget-wide v30, v0, v29

    const/16 v32, 0x4

    .line 552
    aget-wide v33, v0, v32

    const/16 v35, 0xb

    .line 553
    aget-wide v36, v0, v35

    const/16 v38, 0x12

    .line 554
    aget-wide v39, v0, v38

    const/16 v41, 0x19

    .line 555
    aget-wide v42, v0, v41

    const/16 v44, 0x20

    .line 556
    aget-wide v45, v0, v44

    const/16 v47, 0x5

    .line 557
    aget-wide v48, v0, v47

    const/16 v50, 0xc

    .line 558
    aget-wide v51, v0, v50

    const/16 v53, 0x13

    .line 559
    aget-wide v54, v0, v53

    const/16 v56, 0x1a

    .line 560
    aget-wide v57, v0, v56

    const/16 v59, 0x21

    .line 561
    aget-wide v60, v0, v59

    const/16 v62, 0x28

    .line 562
    aget-wide v62, v0, v62

    const/16 v64, 0x6

    .line 563
    aget-wide v64, v0, v64

    const/16 v66, 0xd

    .line 564
    aget-wide v66, v0, v66

    const/16 v68, 0x14

    .line 565
    aget-wide v68, v0, v68

    const/16 v70, 0x1b

    .line 566
    aget-wide v70, v0, v70

    const/16 v72, 0x22

    .line 567
    aget-wide v72, v0, v72

    const/16 v74, 0x29

    .line 568
    aget-wide v74, v0, v74

    const/16 v76, 0x30

    .line 569
    aget-wide v77, v0, v76

    .line 571
    iget-object v0, v1, Lorg/ejml/data/DMatrix1Row;->data:[D

    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    aput-wide v3, v0, v2

    .line 572
    iget-object v0, v1, Lorg/ejml/data/DMatrix1Row;->data:[D

    const/4 v2, 0x7

    const-wide/16 v79, 0x0

    aput-wide v79, v0, v2

    .line 573
    iget-object v0, v1, Lorg/ejml/data/DMatrix1Row;->data:[D

    const/16 v2, 0xe

    aput-wide v79, v0, v2

    .line 574
    iget-object v0, v1, Lorg/ejml/data/DMatrix1Row;->data:[D

    const/16 v2, 0x15

    aput-wide v79, v0, v2

    .line 575
    iget-object v0, v1, Lorg/ejml/data/DMatrix1Row;->data:[D

    const/16 v2, 0x1c

    aput-wide v79, v0, v2

    .line 576
    iget-object v0, v1, Lorg/ejml/data/DMatrix1Row;->data:[D

    const/16 v2, 0x23

    aput-wide v79, v0, v2

    .line 577
    iget-object v0, v1, Lorg/ejml/data/DMatrix1Row;->data:[D

    const/16 v2, 0x2a

    aput-wide v79, v0, v2

    .line 578
    iget-object v0, v1, Lorg/ejml/data/DMatrix1Row;->data:[D

    div-double/2addr v6, v3

    aput-wide v6, v0, v5

    .line 579
    iget-object v0, v1, Lorg/ejml/data/DMatrix1Row;->data:[D

    mul-double v81, v6, v6

    sub-double v9, v9, v81

    invoke-static {v9, v10}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v9

    aput-wide v9, v0, v8

    .line 580
    iget-object v0, v1, Lorg/ejml/data/DMatrix1Row;->data:[D

    const/16 v2, 0xf

    aput-wide v79, v0, v2

    .line 581
    iget-object v0, v1, Lorg/ejml/data/DMatrix1Row;->data:[D

    const/16 v2, 0x16

    aput-wide v79, v0, v2

    .line 582
    iget-object v0, v1, Lorg/ejml/data/DMatrix1Row;->data:[D

    const/16 v2, 0x1d

    aput-wide v79, v0, v2

    .line 583
    iget-object v0, v1, Lorg/ejml/data/DMatrix1Row;->data:[D

    const/16 v2, 0x24

    aput-wide v79, v0, v2

    .line 584
    iget-object v0, v1, Lorg/ejml/data/DMatrix1Row;->data:[D

    const/16 v2, 0x2b

    aput-wide v79, v0, v2

    .line 585
    iget-object v0, v1, Lorg/ejml/data/DMatrix1Row;->data:[D

    div-double/2addr v12, v3

    aput-wide v12, v0, v11

    .line 586
    iget-object v0, v1, Lorg/ejml/data/DMatrix1Row;->data:[D

    mul-double v81, v6, v12

    sub-double v15, v15, v81

    div-double/2addr v15, v9

    aput-wide v15, v0, v14

    .line 587
    iget-object v0, v1, Lorg/ejml/data/DMatrix1Row;->data:[D

    mul-double v81, v12, v12

    sub-double v18, v18, v81

    mul-double v81, v15, v15

    sub-double v18, v18, v81

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v18

    aput-wide v18, v0, v17

    .line 588
    iget-object v0, v1, Lorg/ejml/data/DMatrix1Row;->data:[D

    const/16 v2, 0x17

    aput-wide v79, v0, v2

    .line 589
    iget-object v0, v1, Lorg/ejml/data/DMatrix1Row;->data:[D

    const/16 v2, 0x1e

    aput-wide v79, v0, v2

    .line 590
    iget-object v0, v1, Lorg/ejml/data/DMatrix1Row;->data:[D

    const/16 v2, 0x25

    aput-wide v79, v0, v2

    .line 591
    iget-object v0, v1, Lorg/ejml/data/DMatrix1Row;->data:[D

    const/16 v2, 0x2c

    aput-wide v79, v0, v2

    .line 592
    iget-object v0, v1, Lorg/ejml/data/DMatrix1Row;->data:[D

    div-double v21, v21, v3

    aput-wide v21, v0, v20

    .line 593
    iget-object v0, v1, Lorg/ejml/data/DMatrix1Row;->data:[D

    mul-double v81, v6, v21

    sub-double v24, v24, v81

    div-double v24, v24, v9

    aput-wide v24, v0, v23

    .line 594
    iget-object v0, v1, Lorg/ejml/data/DMatrix1Row;->data:[D

    mul-double v81, v12, v21

    sub-double v27, v27, v81

    mul-double v81, v15, v24

    sub-double v27, v27, v81

    div-double v27, v27, v18

    aput-wide v27, v0, v26

    .line 595
    iget-object v0, v1, Lorg/ejml/data/DMatrix1Row;->data:[D

    mul-double v81, v21, v21

    sub-double v30, v30, v81

    mul-double v81, v24, v24

    sub-double v30, v30, v81

    mul-double v81, v27, v27

    sub-double v30, v30, v81

    invoke-static/range {v30 .. v31}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v30

    aput-wide v30, v0, v29

    .line 596
    iget-object v0, v1, Lorg/ejml/data/DMatrix1Row;->data:[D

    const/16 v2, 0x1f

    aput-wide v79, v0, v2

    .line 597
    iget-object v0, v1, Lorg/ejml/data/DMatrix1Row;->data:[D

    const/16 v2, 0x26

    aput-wide v79, v0, v2

    .line 598
    iget-object v0, v1, Lorg/ejml/data/DMatrix1Row;->data:[D

    const/16 v2, 0x2d

    aput-wide v79, v0, v2

    .line 599
    iget-object v0, v1, Lorg/ejml/data/DMatrix1Row;->data:[D

    div-double v33, v33, v3

    aput-wide v33, v0, v32

    .line 600
    iget-object v0, v1, Lorg/ejml/data/DMatrix1Row;->data:[D

    mul-double v81, v6, v33

    sub-double v36, v36, v81

    div-double v36, v36, v9

    aput-wide v36, v0, v35

    .line 601
    iget-object v0, v1, Lorg/ejml/data/DMatrix1Row;->data:[D

    mul-double v81, v12, v33

    sub-double v39, v39, v81

    mul-double v81, v15, v36

    sub-double v39, v39, v81

    div-double v39, v39, v18

    aput-wide v39, v0, v38

    .line 602
    iget-object v0, v1, Lorg/ejml/data/DMatrix1Row;->data:[D

    mul-double v81, v21, v33

    sub-double v42, v42, v81

    mul-double v81, v24, v36

    sub-double v42, v42, v81

    mul-double v81, v27, v39

    sub-double v42, v42, v81

    div-double v42, v42, v30

    aput-wide v42, v0, v41

    .line 603
    iget-object v0, v1, Lorg/ejml/data/DMatrix1Row;->data:[D

    mul-double v81, v33, v33

    sub-double v45, v45, v81

    mul-double v81, v36, v36

    sub-double v45, v45, v81

    mul-double v81, v39, v39

    sub-double v45, v45, v81

    mul-double v81, v42, v42

    sub-double v45, v45, v81

    invoke-static/range {v45 .. v46}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v45

    aput-wide v45, v0, v44

    .line 604
    iget-object v0, v1, Lorg/ejml/data/DMatrix1Row;->data:[D

    const/16 v2, 0x27

    aput-wide v79, v0, v2

    .line 605
    iget-object v0, v1, Lorg/ejml/data/DMatrix1Row;->data:[D

    const/16 v2, 0x2e

    aput-wide v79, v0, v2

    .line 606
    iget-object v0, v1, Lorg/ejml/data/DMatrix1Row;->data:[D

    div-double v48, v48, v3

    aput-wide v48, v0, v47

    .line 607
    iget-object v0, v1, Lorg/ejml/data/DMatrix1Row;->data:[D

    mul-double v81, v6, v48

    sub-double v51, v51, v81

    div-double v51, v51, v9

    aput-wide v51, v0, v50

    .line 608
    iget-object v0, v1, Lorg/ejml/data/DMatrix1Row;->data:[D

    mul-double v81, v12, v48

    sub-double v54, v54, v81

    mul-double v81, v15, v51

    sub-double v54, v54, v81

    div-double v54, v54, v18

    aput-wide v54, v0, v53

    .line 609
    iget-object v0, v1, Lorg/ejml/data/DMatrix1Row;->data:[D

    mul-double v81, v21, v48

    sub-double v57, v57, v81

    mul-double v81, v24, v51

    sub-double v57, v57, v81

    mul-double v81, v27, v54

    sub-double v57, v57, v81

    div-double v57, v57, v30

    aput-wide v57, v0, v56

    .line 610
    iget-object v0, v1, Lorg/ejml/data/DMatrix1Row;->data:[D

    mul-double v81, v33, v48

    sub-double v60, v60, v81

    mul-double v81, v36, v51

    sub-double v60, v60, v81

    mul-double v81, v39, v54

    sub-double v60, v60, v81

    mul-double v81, v42, v57

    sub-double v60, v60, v81

    div-double v60, v60, v45

    aput-wide v60, v0, v59

    .line 611
    iget-object v0, v1, Lorg/ejml/data/DMatrix1Row;->data:[D

    mul-double v81, v48, v48

    sub-double v62, v62, v81

    mul-double v81, v51, v51

    sub-double v62, v62, v81

    mul-double v81, v54, v54

    sub-double v62, v62, v81

    mul-double v81, v57, v57

    sub-double v62, v62, v81

    mul-double v81, v60, v60

    sub-double v62, v62, v81

    invoke-static/range {v62 .. v63}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v62

    const/16 v2, 0x28

    aput-wide v62, v0, v2

    .line 612
    iget-object v0, v1, Lorg/ejml/data/DMatrix1Row;->data:[D

    const/16 v2, 0x2f

    aput-wide v79, v0, v2

    .line 613
    iget-object v0, v1, Lorg/ejml/data/DMatrix1Row;->data:[D

    div-double v64, v64, v3

    const/4 v2, 0x6

    aput-wide v64, v0, v2

    .line 614
    iget-object v0, v1, Lorg/ejml/data/DMatrix1Row;->data:[D

    mul-double v6, v6, v64

    sub-double v66, v66, v6

    div-double v66, v66, v9

    const/16 v2, 0xd

    aput-wide v66, v0, v2

    .line 615
    iget-object v0, v1, Lorg/ejml/data/DMatrix1Row;->data:[D

    mul-double v12, v12, v64

    sub-double v68, v68, v12

    mul-double v15, v15, v66

    sub-double v68, v68, v15

    div-double v68, v68, v18

    const/16 v2, 0x14

    aput-wide v68, v0, v2

    .line 616
    iget-object v0, v1, Lorg/ejml/data/DMatrix1Row;->data:[D

    mul-double v21, v21, v64

    sub-double v70, v70, v21

    mul-double v24, v24, v66

    sub-double v70, v70, v24

    mul-double v27, v27, v68

    sub-double v70, v70, v27

    div-double v70, v70, v30

    const/16 v2, 0x1b

    aput-wide v70, v0, v2

    .line 617
    iget-object v0, v1, Lorg/ejml/data/DMatrix1Row;->data:[D

    mul-double v33, v33, v64

    sub-double v72, v72, v33

    mul-double v36, v36, v66

    sub-double v72, v72, v36

    mul-double v39, v39, v68

    sub-double v72, v72, v39

    mul-double v42, v42, v70

    sub-double v72, v72, v42

    div-double v72, v72, v45

    const/16 v2, 0x22

    aput-wide v72, v0, v2

    .line 618
    iget-object v0, v1, Lorg/ejml/data/DMatrix1Row;->data:[D

    mul-double v48, v48, v64

    sub-double v74, v74, v48

    mul-double v51, v51, v66

    sub-double v74, v74, v51

    mul-double v54, v54, v68

    sub-double v74, v74, v54

    mul-double v57, v57, v70

    sub-double v74, v74, v57

    mul-double v60, v60, v72

    sub-double v74, v74, v60

    div-double v74, v74, v62

    const/16 v2, 0x29

    aput-wide v74, v0, v2

    .line 619
    iget-object v0, v1, Lorg/ejml/data/DMatrix1Row;->data:[D

    mul-double v64, v64, v64

    sub-double v77, v77, v64

    mul-double v66, v66, v66

    sub-double v77, v77, v66

    mul-double v68, v68, v68

    sub-double v77, v77, v68

    mul-double v70, v70, v70

    sub-double v77, v77, v70

    mul-double v72, v72, v72

    sub-double v77, v77, v72

    mul-double v74, v74, v74

    sub-double v77, v77, v74

    invoke-static/range {v77 .. v78}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    aput-wide v2, v0, v76

    .line 620
    iget-object v0, v1, Lorg/ejml/data/DMatrix1Row;->data:[D

    aget-wide v0, v0, v76

    invoke-static {v0, v1}, Lorg/ejml/UtilEjml;->isUncountable(D)Z

    move-result v0

    xor-int/2addr v0, v5

    return v0
.end method
