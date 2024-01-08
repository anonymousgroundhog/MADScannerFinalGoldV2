.class public Lorg/ejml/dense/row/misc/UnrolledInverseFromMinor_FDRM;
.super Ljava/lang/Object;
.source "UnrolledInverseFromMinor_FDRM.java"


# static fields
.field public static final MAX:I = 0x5


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static inv(Lorg/ejml/data/FMatrixRMaj;Lorg/ejml/data/FMatrixRMaj;)V
    .locals 5

    .line 38
    iget-object v0, p0, Lorg/ejml/data/FMatrixRMaj;->data:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 39
    invoke-virtual {p0}, Lorg/ejml/data/FMatrixRMaj;->getNumElements()I

    move-result v1

    const/4 v2, 0x1

    :goto_0
    if-ge v2, v1, :cond_1

    .line 42
    iget-object v3, p0, Lorg/ejml/data/FMatrixRMaj;->data:[F

    aget v3, v3, v2

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpl-float v4, v3, v0

    if-lez v4, :cond_0

    move v0, v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 46
    :cond_1
    iget v1, p0, Lorg/ejml/data/FMatrixRMaj;->numRows:I

    const/4 v2, 0x2

    const/high16 v3, 0x3f800000    # 1.0f

    if-eq v1, v2, :cond_5

    const/4 v2, 0x3

    if-eq v1, v2, :cond_4

    const/4 v2, 0x4

    if-eq v1, v2, :cond_3

    const/4 v2, 0x5

    if-ne v1, v2, :cond_2

    div-float/2addr v3, v0

    .line 50
    invoke-static {p0, p1, v3}, Lorg/ejml/dense/row/misc/UnrolledInverseFromMinor_FDRM;->inv5(Lorg/ejml/data/FMatrixRMaj;Lorg/ejml/data/FMatrixRMaj;F)V

    goto :goto_1

    .line 51
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Not supported"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    div-float/2addr v3, v0

    .line 49
    invoke-static {p0, p1, v3}, Lorg/ejml/dense/row/misc/UnrolledInverseFromMinor_FDRM;->inv4(Lorg/ejml/data/FMatrixRMaj;Lorg/ejml/data/FMatrixRMaj;F)V

    goto :goto_1

    :cond_4
    div-float/2addr v3, v0

    .line 48
    invoke-static {p0, p1, v3}, Lorg/ejml/dense/row/misc/UnrolledInverseFromMinor_FDRM;->inv3(Lorg/ejml/data/FMatrixRMaj;Lorg/ejml/data/FMatrixRMaj;F)V

    goto :goto_1

    :cond_5
    div-float/2addr v3, v0

    .line 47
    invoke-static {p0, p1, v3}, Lorg/ejml/dense/row/misc/UnrolledInverseFromMinor_FDRM;->inv2(Lorg/ejml/data/FMatrixRMaj;Lorg/ejml/data/FMatrixRMaj;F)V

    :goto_1
    return-void
.end method

.method public static inv2(Lorg/ejml/data/FMatrixRMaj;Lorg/ejml/data/FMatrixRMaj;F)V
    .locals 9

    .line 57
    iget-object p0, p0, Lorg/ejml/data/FMatrixRMaj;->data:[F

    const/4 v0, 0x0

    .line 59
    aget v1, p0, v0

    mul-float/2addr v1, p2

    const/4 v2, 0x1

    .line 60
    aget v3, p0, v2

    mul-float/2addr v3, p2

    const/4 v4, 0x2

    .line 61
    aget v5, p0, v4

    mul-float/2addr v5, p2

    const/4 v6, 0x3

    .line 62
    aget p0, p0, v6

    mul-float/2addr p0, p2

    neg-float v5, v5

    neg-float v7, v3

    mul-float v8, v1, p0

    mul-float/2addr v3, v5

    add-float/2addr v8, v3

    div-float/2addr v8, p2

    .line 71
    iget-object p1, p1, Lorg/ejml/data/FMatrixRMaj;->data:[F

    div-float/2addr p0, v8

    .line 72
    aput p0, p1, v0

    div-float/2addr v7, v8

    .line 73
    aput v7, p1, v2

    div-float/2addr v5, v8

    .line 74
    aput v5, p1, v4

    div-float/2addr v1, v8

    .line 75
    aput v1, p1, v6

    return-void
.end method

.method public static inv3(Lorg/ejml/data/FMatrixRMaj;Lorg/ejml/data/FMatrixRMaj;F)V
    .locals 22

    move-object/from16 v0, p0

    .line 80
    iget-object v0, v0, Lorg/ejml/data/FMatrixRMaj;->data:[F

    const/4 v1, 0x0

    .line 82
    aget v2, v0, v1

    mul-float v2, v2, p2

    const/4 v3, 0x1

    .line 83
    aget v4, v0, v3

    mul-float v4, v4, p2

    const/4 v5, 0x2

    .line 84
    aget v6, v0, v5

    mul-float v6, v6, p2

    const/4 v7, 0x3

    .line 85
    aget v8, v0, v7

    mul-float v8, v8, p2

    const/4 v9, 0x4

    .line 86
    aget v10, v0, v9

    mul-float v10, v10, p2

    const/4 v11, 0x5

    .line 87
    aget v12, v0, v11

    mul-float v12, v12, p2

    const/4 v13, 0x6

    .line 88
    aget v14, v0, v13

    mul-float v14, v14, p2

    const/4 v15, 0x7

    .line 89
    aget v16, v0, v15

    mul-float v16, v16, p2

    const/16 v17, 0x8

    .line 90
    aget v0, v0, v17

    mul-float v0, v0, p2

    mul-float v18, v10, v0

    mul-float v19, v12, v16

    sub-float v18, v18, v19

    mul-float v19, v8, v0

    mul-float v20, v12, v14

    sub-float v15, v19, v20

    neg-float v15, v15

    mul-float v19, v8, v16

    mul-float v20, v10, v14

    sub-float v19, v19, v20

    mul-float v20, v4, v0

    mul-float v21, v6, v16

    sub-float v13, v20, v21

    neg-float v13, v13

    mul-float/2addr v0, v2

    mul-float v20, v6, v14

    sub-float v0, v0, v20

    mul-float v16, v16, v2

    mul-float/2addr v14, v4

    sub-float v14, v16, v14

    neg-float v14, v14

    mul-float v16, v4, v12

    mul-float v20, v6, v10

    sub-float v16, v16, v20

    mul-float/2addr v12, v2

    mul-float v20, v6, v8

    sub-float v12, v12, v20

    neg-float v12, v12

    mul-float/2addr v10, v2

    mul-float/2addr v8, v4

    sub-float/2addr v10, v8

    mul-float v2, v2, v18

    mul-float/2addr v4, v15

    add-float/2addr v2, v4

    mul-float v6, v6, v19

    add-float/2addr v2, v6

    div-float v2, v2, p2

    move-object/from16 v4, p1

    .line 104
    iget-object v4, v4, Lorg/ejml/data/FMatrixRMaj;->data:[F

    div-float v18, v18, v2

    .line 105
    aput v18, v4, v1

    div-float/2addr v13, v2

    .line 106
    aput v13, v4, v3

    div-float v16, v16, v2

    .line 107
    aput v16, v4, v5

    div-float/2addr v15, v2

    .line 108
    aput v15, v4, v7

    div-float/2addr v0, v2

    .line 109
    aput v0, v4, v9

    div-float/2addr v12, v2

    .line 110
    aput v12, v4, v11

    div-float v19, v19, v2

    const/4 v0, 0x6

    .line 111
    aput v19, v4, v0

    div-float/2addr v14, v2

    const/4 v0, 0x7

    .line 112
    aput v14, v4, v0

    div-float/2addr v10, v2

    .line 113
    aput v10, v4, v17

    return-void
.end method

.method public static inv4(Lorg/ejml/data/FMatrixRMaj;Lorg/ejml/data/FMatrixRMaj;F)V
    .locals 42

    move-object/from16 v0, p0

    .line 118
    iget-object v0, v0, Lorg/ejml/data/FMatrixRMaj;->data:[F

    const/4 v1, 0x0

    .line 120
    aget v2, v0, v1

    mul-float v2, v2, p2

    const/4 v3, 0x1

    .line 121
    aget v4, v0, v3

    mul-float v4, v4, p2

    const/4 v5, 0x2

    .line 122
    aget v6, v0, v5

    mul-float v6, v6, p2

    const/4 v7, 0x3

    .line 123
    aget v8, v0, v7

    mul-float v8, v8, p2

    const/4 v9, 0x4

    .line 124
    aget v10, v0, v9

    mul-float v10, v10, p2

    const/4 v11, 0x5

    .line 125
    aget v12, v0, v11

    mul-float v12, v12, p2

    const/4 v13, 0x6

    .line 126
    aget v14, v0, v13

    mul-float v14, v14, p2

    const/4 v15, 0x7

    .line 127
    aget v16, v0, v15

    mul-float v16, v16, p2

    const/16 v17, 0x8

    .line 128
    aget v18, v0, v17

    mul-float v18, v18, p2

    const/16 v19, 0x9

    .line 129
    aget v20, v0, v19

    mul-float v20, v20, p2

    const/16 v21, 0xa

    .line 130
    aget v22, v0, v21

    mul-float v22, v22, p2

    const/16 v23, 0xb

    .line 131
    aget v24, v0, v23

    mul-float v24, v24, p2

    const/16 v25, 0xc

    .line 132
    aget v26, v0, v25

    mul-float v26, v26, p2

    const/16 v27, 0xd

    .line 133
    aget v28, v0, v27

    mul-float v28, v28, p2

    const/16 v29, 0xe

    .line 134
    aget v30, v0, v29

    mul-float v30, v30, p2

    const/16 v31, 0xf

    .line 135
    aget v0, v0, v31

    mul-float v0, v0, p2

    mul-float v32, v22, v0

    mul-float v33, v24, v30

    sub-float v32, v32, v33

    mul-float v33, v12, v32

    mul-float v34, v20, v0

    mul-float v35, v24, v28

    sub-float v34, v34, v35

    mul-float v35, v14, v34

    sub-float v33, v33, v35

    mul-float v35, v20, v30

    mul-float v36, v22, v28

    sub-float v35, v35, v36

    mul-float v36, v16, v35

    add-float v33, v33, v36

    mul-float v36, v10, v32

    mul-float v37, v18, v0

    mul-float v38, v24, v26

    sub-float v37, v37, v38

    mul-float v38, v14, v37

    sub-float v36, v36, v38

    mul-float v38, v18, v30

    mul-float v39, v22, v26

    sub-float v38, v38, v39

    mul-float v39, v16, v38

    add-float v15, v36, v39

    neg-float v15, v15

    mul-float v36, v10, v34

    mul-float v39, v12, v37

    sub-float v36, v36, v39

    mul-float v39, v18, v28

    mul-float v40, v20, v26

    sub-float v39, v39, v40

    mul-float v40, v16, v39

    add-float v36, v36, v40

    mul-float v40, v10, v35

    mul-float v41, v12, v38

    sub-float v40, v40, v41

    mul-float v41, v14, v39

    add-float v13, v40, v41

    neg-float v13, v13

    mul-float v40, v4, v32

    mul-float v41, v6, v34

    sub-float v40, v40, v41

    mul-float v41, v8, v35

    add-float v11, v40, v41

    neg-float v11, v11

    mul-float v32, v32, v2

    mul-float v40, v6, v37

    sub-float v32, v32, v40

    mul-float v40, v8, v38

    add-float v32, v32, v40

    mul-float v34, v34, v2

    mul-float v37, v37, v4

    sub-float v34, v34, v37

    mul-float v37, v8, v39

    add-float v9, v34, v37

    neg-float v9, v9

    mul-float v35, v35, v2

    mul-float v38, v38, v4

    sub-float v35, v35, v38

    mul-float v39, v39, v6

    add-float v35, v35, v39

    mul-float v34, v14, v0

    mul-float v37, v16, v30

    sub-float v34, v34, v37

    mul-float v37, v4, v34

    mul-float v38, v12, v0

    mul-float v39, v16, v28

    sub-float v38, v38, v39

    mul-float v39, v6, v38

    sub-float v37, v37, v39

    mul-float v39, v12, v30

    mul-float v41, v14, v28

    sub-float v39, v39, v41

    mul-float v41, v8, v39

    add-float v37, v37, v41

    mul-float v34, v34, v2

    mul-float/2addr v0, v10

    mul-float v41, v16, v26

    sub-float v0, v0, v41

    mul-float v41, v6, v0

    sub-float v34, v34, v41

    mul-float v30, v30, v10

    mul-float v41, v14, v26

    sub-float v30, v30, v41

    mul-float v41, v8, v30

    add-float v7, v34, v41

    neg-float v7, v7

    mul-float v38, v38, v2

    mul-float/2addr v0, v4

    sub-float v38, v38, v0

    mul-float v28, v28, v10

    mul-float v26, v26, v12

    sub-float v28, v28, v26

    mul-float v0, v8, v28

    add-float v38, v38, v0

    mul-float v39, v39, v2

    mul-float v30, v30, v4

    sub-float v39, v39, v30

    mul-float v28, v28, v6

    add-float v0, v39, v28

    neg-float v0, v0

    mul-float v26, v14, v24

    mul-float v28, v16, v22

    sub-float v26, v26, v28

    mul-float v28, v4, v26

    mul-float v30, v12, v24

    mul-float v34, v16, v20

    sub-float v30, v30, v34

    mul-float v34, v6, v30

    sub-float v28, v28, v34

    mul-float v34, v12, v22

    mul-float v39, v14, v20

    sub-float v34, v34, v39

    mul-float v39, v8, v34

    add-float v5, v28, v39

    neg-float v5, v5

    mul-float v26, v26, v2

    mul-float v24, v24, v10

    mul-float v16, v16, v18

    sub-float v24, v24, v16

    mul-float v16, v6, v24

    sub-float v26, v26, v16

    mul-float v22, v22, v10

    mul-float v14, v14, v18

    sub-float v22, v22, v14

    mul-float v14, v8, v22

    add-float v26, v26, v14

    mul-float v30, v30, v2

    mul-float v24, v24, v4

    sub-float v30, v30, v24

    mul-float v10, v10, v20

    mul-float v12, v12, v18

    sub-float/2addr v10, v12

    mul-float v12, v8, v10

    add-float v12, v30, v12

    neg-float v12, v12

    mul-float v34, v34, v2

    mul-float v22, v22, v4

    sub-float v34, v34, v22

    mul-float/2addr v10, v6

    add-float v34, v34, v10

    mul-float v2, v2, v33

    mul-float/2addr v4, v15

    add-float/2addr v2, v4

    mul-float v6, v6, v36

    add-float/2addr v2, v6

    mul-float/2addr v8, v13

    add-float/2addr v2, v8

    div-float v2, v2, p2

    move-object/from16 v4, p1

    .line 156
    iget-object v4, v4, Lorg/ejml/data/FMatrixRMaj;->data:[F

    div-float v33, v33, v2

    .line 157
    aput v33, v4, v1

    div-float/2addr v11, v2

    .line 158
    aput v11, v4, v3

    div-float v37, v37, v2

    const/4 v1, 0x2

    .line 159
    aput v37, v4, v1

    div-float/2addr v5, v2

    const/4 v1, 0x3

    .line 160
    aput v5, v4, v1

    div-float/2addr v15, v2

    const/4 v1, 0x4

    .line 161
    aput v15, v4, v1

    div-float v32, v32, v2

    const/4 v1, 0x5

    .line 162
    aput v32, v4, v1

    div-float/2addr v7, v2

    const/4 v1, 0x6

    .line 163
    aput v7, v4, v1

    div-float v26, v26, v2

    const/4 v1, 0x7

    .line 164
    aput v26, v4, v1

    div-float v36, v36, v2

    .line 165
    aput v36, v4, v17

    div-float/2addr v9, v2

    .line 166
    aput v9, v4, v19

    div-float v38, v38, v2

    .line 167
    aput v38, v4, v21

    div-float/2addr v12, v2

    .line 168
    aput v12, v4, v23

    div-float/2addr v13, v2

    .line 169
    aput v13, v4, v25

    div-float v35, v35, v2

    .line 170
    aput v35, v4, v27

    div-float/2addr v0, v2

    .line 171
    aput v0, v4, v29

    div-float v34, v34, v2

    .line 172
    aput v34, v4, v31

    return-void
.end method

.method public static inv5(Lorg/ejml/data/FMatrixRMaj;Lorg/ejml/data/FMatrixRMaj;F)V
    .locals 72

    move-object/from16 v0, p0

    .line 177
    iget-object v0, v0, Lorg/ejml/data/FMatrixRMaj;->data:[F

    const/4 v1, 0x0

    .line 179
    aget v2, v0, v1

    mul-float v2, v2, p2

    const/4 v3, 0x1

    .line 180
    aget v4, v0, v3

    mul-float v4, v4, p2

    const/4 v5, 0x2

    .line 181
    aget v6, v0, v5

    mul-float v6, v6, p2

    const/4 v7, 0x3

    .line 182
    aget v8, v0, v7

    mul-float v8, v8, p2

    const/4 v9, 0x4

    .line 183
    aget v10, v0, v9

    mul-float v10, v10, p2

    const/4 v11, 0x5

    .line 184
    aget v12, v0, v11

    mul-float v12, v12, p2

    const/4 v13, 0x6

    .line 185
    aget v14, v0, v13

    mul-float v14, v14, p2

    const/4 v15, 0x7

    .line 186
    aget v16, v0, v15

    mul-float v16, v16, p2

    const/16 v17, 0x8

    .line 187
    aget v18, v0, v17

    mul-float v18, v18, p2

    const/16 v19, 0x9

    .line 188
    aget v20, v0, v19

    mul-float v20, v20, p2

    const/16 v21, 0xa

    .line 189
    aget v22, v0, v21

    mul-float v22, v22, p2

    const/16 v23, 0xb

    .line 190
    aget v24, v0, v23

    mul-float v24, v24, p2

    const/16 v25, 0xc

    .line 191
    aget v26, v0, v25

    mul-float v26, v26, p2

    const/16 v27, 0xd

    .line 192
    aget v28, v0, v27

    mul-float v28, v28, p2

    const/16 v29, 0xe

    .line 193
    aget v30, v0, v29

    mul-float v30, v30, p2

    const/16 v31, 0xf

    .line 194
    aget v32, v0, v31

    mul-float v32, v32, p2

    const/16 v33, 0x10

    .line 195
    aget v34, v0, v33

    mul-float v34, v34, p2

    const/16 v35, 0x11

    .line 196
    aget v36, v0, v35

    mul-float v36, v36, p2

    const/16 v37, 0x12

    .line 197
    aget v38, v0, v37

    mul-float v38, v38, p2

    const/16 v39, 0x13

    .line 198
    aget v40, v0, v39

    mul-float v40, v40, p2

    const/16 v41, 0x14

    .line 199
    aget v42, v0, v41

    mul-float v42, v42, p2

    const/16 v43, 0x15

    .line 200
    aget v44, v0, v43

    mul-float v44, v44, p2

    const/16 v45, 0x16

    .line 201
    aget v45, v0, v45

    mul-float v45, v45, p2

    const/16 v46, 0x17

    .line 202
    aget v46, v0, v46

    mul-float v46, v46, p2

    const/16 v47, 0x18

    .line 203
    aget v0, v0, v47

    mul-float v0, v0, p2

    mul-float v47, v38, v0

    mul-float v48, v40, v46

    sub-float v47, v47, v48

    mul-float v48, v26, v47

    mul-float v49, v36, v0

    mul-float v50, v40, v45

    sub-float v49, v49, v50

    mul-float v50, v28, v49

    sub-float v48, v48, v50

    mul-float v50, v36, v46

    mul-float v51, v38, v45

    sub-float v50, v50, v51

    mul-float v51, v30, v50

    add-float v48, v48, v51

    mul-float v51, v14, v48

    mul-float v52, v24, v47

    mul-float v53, v34, v0

    mul-float v54, v40, v44

    sub-float v53, v53, v54

    mul-float v54, v28, v53

    sub-float v52, v52, v54

    mul-float v54, v34, v46

    mul-float v55, v38, v44

    sub-float v54, v54, v55

    mul-float v55, v30, v54

    add-float v52, v52, v55

    mul-float v55, v16, v52

    sub-float v51, v51, v55

    mul-float v55, v24, v49

    mul-float v56, v26, v53

    sub-float v55, v55, v56

    mul-float v56, v34, v45

    mul-float v57, v36, v44

    sub-float v56, v56, v57

    mul-float v57, v30, v56

    add-float v55, v55, v57

    mul-float v57, v18, v55

    add-float v51, v51, v57

    mul-float v57, v24, v50

    mul-float v58, v26, v54

    sub-float v57, v57, v58

    mul-float v58, v28, v56

    add-float v57, v57, v58

    mul-float v58, v20, v57

    sub-float v51, v51, v58

    mul-float v58, v12, v48

    mul-float v59, v22, v47

    mul-float v60, v32, v0

    mul-float v61, v40, v42

    sub-float v60, v60, v61

    mul-float v61, v28, v60

    sub-float v59, v59, v61

    mul-float v61, v32, v46

    mul-float v62, v38, v42

    sub-float v61, v61, v62

    mul-float v62, v30, v61

    add-float v59, v59, v62

    mul-float v62, v16, v59

    sub-float v58, v58, v62

    mul-float v62, v22, v49

    mul-float v63, v26, v60

    sub-float v62, v62, v63

    mul-float v63, v32, v45

    mul-float v64, v36, v42

    sub-float v63, v63, v64

    mul-float v64, v30, v63

    add-float v62, v62, v64

    mul-float v64, v18, v62

    add-float v58, v58, v64

    mul-float v64, v22, v50

    mul-float v65, v26, v61

    sub-float v64, v64, v65

    mul-float v65, v28, v63

    add-float v64, v64, v65

    mul-float v65, v20, v64

    sub-float v15, v58, v65

    neg-float v15, v15

    mul-float v58, v12, v52

    mul-float v65, v14, v59

    sub-float v58, v58, v65

    mul-float v65, v22, v53

    mul-float v66, v24, v60

    sub-float v65, v65, v66

    mul-float v66, v32, v44

    mul-float v67, v34, v42

    sub-float v66, v66, v67

    mul-float v67, v30, v66

    add-float v65, v65, v67

    mul-float v67, v18, v65

    add-float v58, v58, v67

    mul-float v67, v22, v54

    mul-float v68, v24, v61

    sub-float v67, v67, v68

    mul-float v68, v28, v66

    add-float v67, v67, v68

    mul-float v68, v20, v67

    sub-float v58, v58, v68

    mul-float v68, v12, v55

    mul-float v69, v14, v62

    sub-float v68, v68, v69

    mul-float v69, v16, v65

    add-float v68, v68, v69

    mul-float v69, v22, v56

    mul-float v70, v24, v63

    sub-float v69, v69, v70

    mul-float v70, v26, v66

    add-float v69, v69, v70

    mul-float v70, v20, v69

    sub-float v13, v68, v70

    neg-float v13, v13

    mul-float v68, v12, v57

    mul-float v70, v14, v64

    sub-float v68, v68, v70

    mul-float v70, v16, v67

    add-float v68, v68, v70

    mul-float v70, v18, v69

    sub-float v68, v68, v70

    mul-float v70, v4, v48

    mul-float v71, v6, v52

    sub-float v70, v70, v71

    mul-float v71, v8, v55

    add-float v70, v70, v71

    mul-float v71, v10, v57

    sub-float v11, v70, v71

    neg-float v11, v11

    mul-float v48, v48, v2

    mul-float v70, v6, v59

    sub-float v48, v48, v70

    mul-float v70, v8, v62

    add-float v48, v48, v70

    mul-float v70, v10, v64

    sub-float v48, v48, v70

    mul-float v52, v52, v2

    mul-float v59, v59, v4

    sub-float v52, v52, v59

    mul-float v59, v8, v65

    add-float v52, v52, v59

    mul-float v59, v10, v67

    sub-float v9, v52, v59

    neg-float v9, v9

    mul-float v55, v55, v2

    mul-float v62, v62, v4

    sub-float v55, v55, v62

    mul-float v65, v65, v6

    add-float v55, v55, v65

    mul-float v52, v10, v69

    sub-float v55, v55, v52

    mul-float v57, v57, v2

    mul-float v64, v64, v4

    sub-float v57, v57, v64

    mul-float v67, v67, v6

    add-float v57, v57, v67

    mul-float v69, v69, v8

    sub-float v7, v57, v69

    neg-float v7, v7

    mul-float v57, v16, v47

    mul-float v59, v18, v49

    sub-float v57, v57, v59

    mul-float v59, v20, v50

    add-float v57, v57, v59

    mul-float v59, v4, v57

    mul-float v62, v14, v47

    mul-float v64, v18, v53

    sub-float v62, v62, v64

    mul-float v64, v20, v54

    add-float v62, v62, v64

    mul-float v64, v6, v62

    sub-float v59, v59, v64

    mul-float v64, v14, v49

    mul-float v65, v16, v53

    sub-float v64, v64, v65

    mul-float v65, v20, v56

    add-float v64, v64, v65

    mul-float v65, v8, v64

    add-float v59, v59, v65

    mul-float v65, v14, v50

    mul-float v67, v16, v54

    sub-float v65, v65, v67

    mul-float v67, v18, v56

    add-float v65, v65, v67

    mul-float v67, v10, v65

    sub-float v59, v59, v67

    mul-float v57, v57, v2

    mul-float v47, v47, v12

    mul-float v67, v18, v60

    sub-float v47, v47, v67

    mul-float v67, v20, v61

    add-float v47, v47, v67

    mul-float v67, v6, v47

    sub-float v57, v57, v67

    mul-float v49, v49, v12

    mul-float v67, v16, v60

    sub-float v49, v49, v67

    mul-float v67, v20, v63

    add-float v49, v49, v67

    mul-float v67, v8, v49

    add-float v57, v57, v67

    mul-float v50, v50, v12

    mul-float v67, v16, v61

    sub-float v50, v50, v67

    mul-float v67, v18, v63

    add-float v50, v50, v67

    mul-float v67, v10, v50

    sub-float v5, v57, v67

    neg-float v5, v5

    mul-float v62, v62, v2

    mul-float v47, v47, v4

    sub-float v62, v62, v47

    mul-float v53, v53, v12

    mul-float v60, v60, v14

    sub-float v53, v53, v60

    mul-float v47, v20, v66

    add-float v53, v53, v47

    mul-float v47, v8, v53

    add-float v62, v62, v47

    mul-float v54, v54, v12

    mul-float v61, v61, v14

    sub-float v54, v54, v61

    mul-float v47, v18, v66

    add-float v54, v54, v47

    mul-float v47, v10, v54

    sub-float v62, v62, v47

    mul-float v64, v64, v2

    mul-float v49, v49, v4

    sub-float v64, v64, v49

    mul-float v53, v53, v6

    add-float v64, v64, v53

    mul-float v56, v56, v12

    mul-float v63, v63, v14

    sub-float v56, v56, v63

    mul-float v66, v66, v16

    add-float v56, v56, v66

    mul-float v47, v10, v56

    sub-float v3, v64, v47

    neg-float v3, v3

    mul-float v65, v65, v2

    mul-float v50, v50, v4

    sub-float v65, v65, v50

    mul-float v54, v54, v6

    add-float v65, v65, v54

    mul-float v56, v56, v8

    sub-float v65, v65, v56

    mul-float v47, v28, v0

    mul-float v50, v30, v46

    sub-float v47, v47, v50

    mul-float v50, v16, v47

    mul-float v53, v26, v0

    mul-float v54, v30, v45

    sub-float v53, v53, v54

    mul-float v54, v18, v53

    sub-float v50, v50, v54

    mul-float v54, v26, v46

    mul-float v56, v28, v45

    sub-float v54, v54, v56

    mul-float v56, v20, v54

    add-float v50, v50, v56

    mul-float v56, v4, v50

    mul-float v57, v14, v47

    mul-float v60, v24, v0

    mul-float v61, v30, v44

    sub-float v60, v60, v61

    mul-float v61, v18, v60

    sub-float v57, v57, v61

    mul-float v61, v24, v46

    mul-float v63, v28, v44

    sub-float v61, v61, v63

    mul-float v63, v20, v61

    add-float v57, v57, v63

    mul-float v63, v6, v57

    sub-float v56, v56, v63

    mul-float v63, v14, v53

    mul-float v64, v16, v60

    sub-float v63, v63, v64

    mul-float v64, v24, v45

    mul-float v66, v26, v44

    sub-float v64, v64, v66

    mul-float v66, v20, v64

    add-float v63, v63, v66

    mul-float v66, v8, v63

    add-float v56, v56, v66

    mul-float v66, v14, v54

    mul-float v67, v16, v61

    sub-float v66, v66, v67

    mul-float v67, v18, v64

    add-float v66, v66, v67

    mul-float v67, v10, v66

    sub-float v1, v56, v67

    neg-float v1, v1

    mul-float v50, v50, v2

    mul-float v47, v47, v12

    mul-float v0, v0, v22

    mul-float v56, v30, v42

    sub-float v0, v0, v56

    mul-float v56, v18, v0

    sub-float v47, v47, v56

    mul-float v46, v46, v22

    mul-float v56, v28, v42

    sub-float v46, v46, v56

    mul-float v56, v20, v46

    add-float v47, v47, v56

    mul-float v56, v6, v47

    sub-float v50, v50, v56

    mul-float v53, v53, v12

    mul-float v56, v16, v0

    sub-float v53, v53, v56

    mul-float v45, v45, v22

    mul-float v56, v26, v42

    sub-float v45, v45, v56

    mul-float v56, v20, v45

    add-float v53, v53, v56

    mul-float v56, v8, v53

    add-float v50, v50, v56

    mul-float v54, v54, v12

    mul-float v56, v16, v46

    sub-float v54, v54, v56

    mul-float v56, v18, v45

    add-float v54, v54, v56

    mul-float v56, v10, v54

    sub-float v50, v50, v56

    mul-float v57, v57, v2

    mul-float v47, v47, v4

    sub-float v57, v57, v47

    mul-float v60, v60, v12

    mul-float/2addr v0, v14

    sub-float v60, v60, v0

    mul-float v44, v44, v22

    mul-float v42, v42, v24

    sub-float v44, v44, v42

    mul-float v0, v20, v44

    add-float v60, v60, v0

    mul-float v0, v8, v60

    add-float v57, v57, v0

    mul-float v61, v61, v12

    mul-float v46, v46, v14

    sub-float v61, v61, v46

    mul-float v0, v18, v44

    add-float v61, v61, v0

    mul-float v0, v10, v61

    sub-float v0, v57, v0

    neg-float v0, v0

    mul-float v63, v63, v2

    mul-float v53, v53, v4

    sub-float v63, v63, v53

    mul-float v60, v60, v6

    add-float v63, v63, v60

    mul-float v64, v64, v12

    mul-float v45, v45, v14

    sub-float v64, v64, v45

    mul-float v44, v44, v16

    add-float v64, v64, v44

    mul-float v42, v10, v64

    sub-float v63, v63, v42

    mul-float v66, v66, v2

    mul-float v54, v54, v4

    sub-float v66, v66, v54

    mul-float v61, v61, v6

    add-float v66, v66, v61

    mul-float v64, v64, v8

    move/from16 v42, v7

    sub-float v7, v66, v64

    neg-float v7, v7

    mul-float v44, v28, v40

    mul-float v45, v30, v38

    sub-float v44, v44, v45

    mul-float v45, v16, v44

    mul-float v46, v26, v40

    mul-float v47, v30, v36

    sub-float v46, v46, v47

    mul-float v47, v18, v46

    sub-float v45, v45, v47

    mul-float v47, v26, v38

    mul-float v53, v28, v36

    sub-float v47, v47, v53

    mul-float v53, v20, v47

    add-float v45, v45, v53

    mul-float v53, v4, v45

    mul-float v54, v14, v44

    mul-float v56, v24, v40

    mul-float v57, v30, v34

    sub-float v56, v56, v57

    mul-float v57, v18, v56

    sub-float v54, v54, v57

    mul-float v57, v24, v38

    mul-float v60, v28, v34

    sub-float v57, v57, v60

    mul-float v60, v20, v57

    add-float v54, v54, v60

    mul-float v60, v6, v54

    sub-float v53, v53, v60

    mul-float v60, v14, v46

    mul-float v61, v16, v56

    sub-float v60, v60, v61

    mul-float v61, v24, v36

    mul-float v64, v26, v34

    sub-float v61, v61, v64

    mul-float v64, v20, v61

    add-float v60, v60, v64

    mul-float v64, v8, v60

    add-float v53, v53, v64

    mul-float v64, v14, v47

    mul-float v66, v16, v57

    sub-float v64, v64, v66

    mul-float v66, v18, v61

    add-float v64, v64, v66

    mul-float v66, v10, v64

    sub-float v53, v53, v66

    mul-float v45, v45, v2

    mul-float v44, v44, v12

    mul-float v40, v40, v22

    mul-float v30, v30, v32

    sub-float v40, v40, v30

    mul-float v30, v18, v40

    sub-float v44, v44, v30

    mul-float v38, v38, v22

    mul-float v28, v28, v32

    sub-float v38, v38, v28

    mul-float v28, v20, v38

    add-float v44, v44, v28

    mul-float v28, v6, v44

    sub-float v45, v45, v28

    mul-float v46, v46, v12

    mul-float v28, v16, v40

    sub-float v46, v46, v28

    mul-float v36, v36, v22

    mul-float v26, v26, v32

    sub-float v36, v36, v26

    mul-float v26, v20, v36

    add-float v46, v46, v26

    mul-float v26, v8, v46

    add-float v45, v45, v26

    mul-float v47, v47, v12

    mul-float v26, v16, v38

    sub-float v47, v47, v26

    mul-float v26, v18, v36

    add-float v47, v47, v26

    mul-float v26, v10, v47

    move/from16 v28, v7

    sub-float v7, v45, v26

    neg-float v7, v7

    mul-float v54, v54, v2

    mul-float v44, v44, v4

    sub-float v54, v54, v44

    mul-float v56, v56, v12

    mul-float v40, v40, v14

    sub-float v56, v56, v40

    mul-float v22, v22, v34

    mul-float v24, v24, v32

    sub-float v22, v22, v24

    mul-float v20, v20, v22

    add-float v56, v56, v20

    mul-float v20, v8, v56

    add-float v54, v54, v20

    mul-float v57, v57, v12

    mul-float v38, v38, v14

    sub-float v57, v57, v38

    mul-float v18, v18, v22

    add-float v57, v57, v18

    mul-float v18, v10, v57

    sub-float v54, v54, v18

    mul-float v60, v60, v2

    mul-float v46, v46, v4

    sub-float v60, v60, v46

    mul-float v56, v56, v6

    add-float v60, v60, v56

    mul-float v12, v12, v61

    mul-float v14, v14, v36

    sub-float/2addr v12, v14

    mul-float v16, v16, v22

    add-float v12, v12, v16

    mul-float v14, v10, v12

    sub-float v14, v60, v14

    neg-float v14, v14

    mul-float v64, v64, v2

    mul-float v47, v47, v4

    sub-float v64, v64, v47

    mul-float v57, v57, v6

    add-float v64, v64, v57

    mul-float/2addr v12, v8

    sub-float v64, v64, v12

    mul-float v2, v2, v51

    mul-float/2addr v4, v15

    add-float/2addr v2, v4

    mul-float v6, v6, v58

    add-float/2addr v2, v6

    mul-float/2addr v8, v13

    add-float/2addr v2, v8

    mul-float v10, v10, v68

    add-float/2addr v2, v10

    div-float v2, v2, p2

    move-object/from16 v4, p1

    .line 233
    iget-object v4, v4, Lorg/ejml/data/FMatrixRMaj;->data:[F

    div-float v51, v51, v2

    const/4 v6, 0x0

    .line 234
    aput v51, v4, v6

    div-float/2addr v11, v2

    const/4 v6, 0x1

    .line 235
    aput v11, v4, v6

    div-float v59, v59, v2

    const/4 v6, 0x2

    .line 236
    aput v59, v4, v6

    div-float/2addr v1, v2

    const/4 v6, 0x3

    .line 237
    aput v1, v4, v6

    div-float v53, v53, v2

    const/4 v1, 0x4

    .line 238
    aput v53, v4, v1

    div-float/2addr v15, v2

    const/4 v1, 0x5

    .line 239
    aput v15, v4, v1

    div-float v48, v48, v2

    const/4 v1, 0x6

    .line 240
    aput v48, v4, v1

    div-float/2addr v5, v2

    const/4 v1, 0x7

    .line 241
    aput v5, v4, v1

    div-float v50, v50, v2

    .line 242
    aput v50, v4, v17

    div-float/2addr v7, v2

    .line 243
    aput v7, v4, v19

    div-float v58, v58, v2

    .line 244
    aput v58, v4, v21

    div-float/2addr v9, v2

    .line 245
    aput v9, v4, v23

    div-float v62, v62, v2

    .line 246
    aput v62, v4, v25

    div-float/2addr v0, v2

    .line 247
    aput v0, v4, v27

    div-float v54, v54, v2

    .line 248
    aput v54, v4, v29

    div-float/2addr v13, v2

    .line 249
    aput v13, v4, v31

    div-float v55, v55, v2

    .line 250
    aput v55, v4, v33

    div-float/2addr v3, v2

    .line 251
    aput v3, v4, v35

    div-float v63, v63, v2

    .line 252
    aput v63, v4, v37

    div-float/2addr v14, v2

    .line 253
    aput v14, v4, v39

    div-float v68, v68, v2

    .line 254
    aput v68, v4, v41

    div-float v7, v42, v2

    .line 255
    aput v7, v4, v43

    const/16 v0, 0x16

    div-float v65, v65, v2

    .line 256
    aput v65, v4, v0

    const/16 v0, 0x17

    div-float v7, v28, v2

    .line 257
    aput v7, v4, v0

    const/16 v0, 0x18

    div-float v64, v64, v2

    .line 258
    aput v64, v4, v0

    return-void
.end method
