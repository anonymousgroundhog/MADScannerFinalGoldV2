.class public Lorg/ejml/dense/row/misc/UnrolledInverseFromMinor_DDRM;
.super Ljava/lang/Object;
.source "UnrolledInverseFromMinor_DDRM.java"


# static fields
.field public static final MAX:I = 0x5


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static inv(Lorg/ejml/data/DMatrixRMaj;Lorg/ejml/data/DMatrixRMaj;)V
    .locals 7

    .line 38
    iget-object v0, p0, Lorg/ejml/data/DMatrixRMaj;->data:[D

    const/4 v1, 0x0

    aget-wide v0, v0, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    .line 39
    invoke-virtual {p0}, Lorg/ejml/data/DMatrixRMaj;->getNumElements()I

    move-result v2

    const/4 v3, 0x1

    :goto_0
    if-ge v3, v2, :cond_1

    .line 42
    iget-object v4, p0, Lorg/ejml/data/DMatrixRMaj;->data:[D

    aget-wide v4, v4, v3

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    cmpl-double v6, v4, v0

    if-lez v6, :cond_0

    move-wide v0, v4

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 46
    :cond_1
    iget v2, p0, Lorg/ejml/data/DMatrixRMaj;->numRows:I

    const/4 v3, 0x2

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    if-eq v2, v3, :cond_5

    const/4 v3, 0x3

    if-eq v2, v3, :cond_4

    const/4 v3, 0x4

    if-eq v2, v3, :cond_3

    const/4 v3, 0x5

    if-ne v2, v3, :cond_2

    div-double/2addr v4, v0

    .line 50
    invoke-static {p0, p1, v4, v5}, Lorg/ejml/dense/row/misc/UnrolledInverseFromMinor_DDRM;->inv5(Lorg/ejml/data/DMatrixRMaj;Lorg/ejml/data/DMatrixRMaj;D)V

    goto :goto_1

    .line 51
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Not supported"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    div-double/2addr v4, v0

    .line 49
    invoke-static {p0, p1, v4, v5}, Lorg/ejml/dense/row/misc/UnrolledInverseFromMinor_DDRM;->inv4(Lorg/ejml/data/DMatrixRMaj;Lorg/ejml/data/DMatrixRMaj;D)V

    goto :goto_1

    :cond_4
    div-double/2addr v4, v0

    .line 48
    invoke-static {p0, p1, v4, v5}, Lorg/ejml/dense/row/misc/UnrolledInverseFromMinor_DDRM;->inv3(Lorg/ejml/data/DMatrixRMaj;Lorg/ejml/data/DMatrixRMaj;D)V

    goto :goto_1

    :cond_5
    div-double/2addr v4, v0

    .line 47
    invoke-static {p0, p1, v4, v5}, Lorg/ejml/dense/row/misc/UnrolledInverseFromMinor_DDRM;->inv2(Lorg/ejml/data/DMatrixRMaj;Lorg/ejml/data/DMatrixRMaj;D)V

    :goto_1
    return-void
.end method

.method public static inv2(Lorg/ejml/data/DMatrixRMaj;Lorg/ejml/data/DMatrixRMaj;D)V
    .locals 17

    move-object/from16 v0, p0

    .line 57
    iget-object v0, v0, Lorg/ejml/data/DMatrixRMaj;->data:[D

    const/4 v1, 0x0

    .line 59
    aget-wide v2, v0, v1

    mul-double v2, v2, p2

    const/4 v4, 0x1

    .line 60
    aget-wide v5, v0, v4

    mul-double v5, v5, p2

    const/4 v7, 0x2

    .line 61
    aget-wide v8, v0, v7

    mul-double v8, v8, p2

    const/4 v10, 0x3

    .line 62
    aget-wide v11, v0, v10

    mul-double v11, v11, p2

    neg-double v8, v8

    neg-double v13, v5

    mul-double v15, v2, v11

    mul-double/2addr v5, v8

    add-double/2addr v15, v5

    div-double v15, v15, p2

    move-object/from16 v0, p1

    .line 71
    iget-object v0, v0, Lorg/ejml/data/DMatrixRMaj;->data:[D

    div-double/2addr v11, v15

    .line 72
    aput-wide v11, v0, v1

    div-double/2addr v13, v15

    .line 73
    aput-wide v13, v0, v4

    div-double/2addr v8, v15

    .line 74
    aput-wide v8, v0, v7

    div-double/2addr v2, v15

    .line 75
    aput-wide v2, v0, v10

    return-void
.end method

.method public static inv3(Lorg/ejml/data/DMatrixRMaj;Lorg/ejml/data/DMatrixRMaj;D)V
    .locals 38

    move-object/from16 v0, p0

    .line 80
    iget-object v0, v0, Lorg/ejml/data/DMatrixRMaj;->data:[D

    const/4 v1, 0x0

    .line 82
    aget-wide v2, v0, v1

    mul-double v2, v2, p2

    const/4 v4, 0x1

    .line 83
    aget-wide v5, v0, v4

    mul-double v5, v5, p2

    const/4 v7, 0x2

    .line 84
    aget-wide v8, v0, v7

    mul-double v8, v8, p2

    const/4 v10, 0x3

    .line 85
    aget-wide v11, v0, v10

    mul-double v11, v11, p2

    const/4 v13, 0x4

    .line 86
    aget-wide v14, v0, v13

    mul-double v14, v14, p2

    const/16 v16, 0x5

    .line 87
    aget-wide v17, v0, v16

    mul-double v17, v17, p2

    const/16 v19, 0x6

    .line 88
    aget-wide v20, v0, v19

    mul-double v20, v20, p2

    const/16 v22, 0x7

    .line 89
    aget-wide v23, v0, v22

    mul-double v23, v23, p2

    const/16 v25, 0x8

    .line 90
    aget-wide v26, v0, v25

    mul-double v26, v26, p2

    mul-double v28, v14, v26

    mul-double v30, v17, v23

    sub-double v28, v28, v30

    mul-double v30, v11, v26

    mul-double v32, v17, v20

    move-wide/from16 v34, v2

    sub-double v1, v30, v32

    neg-double v0, v1

    mul-double v2, v11, v23

    mul-double v30, v14, v20

    sub-double v2, v2, v30

    mul-double v30, v5, v26

    mul-double v32, v8, v23

    move-wide/from16 v36, v11

    sub-double v10, v30, v32

    neg-double v10, v10

    mul-double v26, v26, v34

    mul-double v30, v8, v20

    sub-double v26, v26, v30

    mul-double v23, v23, v34

    mul-double v20, v20, v5

    move-wide/from16 v30, v8

    sub-double v7, v23, v20

    neg-double v7, v7

    mul-double v20, v5, v17

    mul-double v23, v30, v14

    sub-double v20, v20, v23

    mul-double v17, v17, v34

    mul-double v23, v30, v36

    sub-double v12, v17, v23

    neg-double v12, v12

    mul-double v14, v14, v34

    mul-double v17, v5, v36

    sub-double v14, v14, v17

    mul-double v17, v34, v28

    mul-double/2addr v5, v0

    add-double v17, v17, v5

    mul-double v5, v30, v2

    add-double v17, v17, v5

    div-double v17, v17, p2

    move-object/from16 v5, p1

    .line 104
    iget-object v5, v5, Lorg/ejml/data/DMatrixRMaj;->data:[D

    div-double v28, v28, v17

    const/4 v6, 0x0

    .line 105
    aput-wide v28, v5, v6

    div-double v10, v10, v17

    .line 106
    aput-wide v10, v5, v4

    div-double v20, v20, v17

    const/4 v4, 0x2

    .line 107
    aput-wide v20, v5, v4

    div-double v0, v0, v17

    const/4 v4, 0x3

    .line 108
    aput-wide v0, v5, v4

    div-double v26, v26, v17

    const/4 v0, 0x4

    .line 109
    aput-wide v26, v5, v0

    div-double v12, v12, v17

    .line 110
    aput-wide v12, v5, v16

    div-double v2, v2, v17

    .line 111
    aput-wide v2, v5, v19

    div-double v7, v7, v17

    .line 112
    aput-wide v7, v5, v22

    div-double v14, v14, v17

    .line 113
    aput-wide v14, v5, v25

    return-void
.end method

.method public static inv4(Lorg/ejml/data/DMatrixRMaj;Lorg/ejml/data/DMatrixRMaj;D)V
    .locals 73

    move-object/from16 v0, p0

    .line 118
    iget-object v0, v0, Lorg/ejml/data/DMatrixRMaj;->data:[D

    const/4 v1, 0x0

    .line 120
    aget-wide v2, v0, v1

    mul-double v2, v2, p2

    const/4 v4, 0x1

    .line 121
    aget-wide v5, v0, v4

    mul-double v5, v5, p2

    const/4 v7, 0x2

    .line 122
    aget-wide v8, v0, v7

    mul-double v8, v8, p2

    const/4 v10, 0x3

    .line 123
    aget-wide v11, v0, v10

    mul-double v11, v11, p2

    const/4 v13, 0x4

    .line 124
    aget-wide v14, v0, v13

    mul-double v14, v14, p2

    const/16 v16, 0x5

    .line 125
    aget-wide v17, v0, v16

    mul-double v17, v17, p2

    const/16 v19, 0x6

    .line 126
    aget-wide v20, v0, v19

    mul-double v20, v20, p2

    const/16 v22, 0x7

    .line 127
    aget-wide v23, v0, v22

    mul-double v23, v23, p2

    const/16 v25, 0x8

    .line 128
    aget-wide v26, v0, v25

    mul-double v26, v26, p2

    const/16 v28, 0x9

    .line 129
    aget-wide v29, v0, v28

    mul-double v29, v29, p2

    const/16 v31, 0xa

    .line 130
    aget-wide v32, v0, v31

    mul-double v32, v32, p2

    const/16 v34, 0xb

    .line 131
    aget-wide v35, v0, v34

    mul-double v35, v35, p2

    const/16 v37, 0xc

    .line 132
    aget-wide v38, v0, v37

    mul-double v38, v38, p2

    const/16 v40, 0xd

    .line 133
    aget-wide v41, v0, v40

    mul-double v41, v41, p2

    const/16 v43, 0xe

    .line 134
    aget-wide v44, v0, v43

    mul-double v44, v44, p2

    const/16 v46, 0xf

    .line 135
    aget-wide v47, v0, v46

    mul-double v47, v47, p2

    mul-double v49, v32, v47

    mul-double v51, v35, v44

    sub-double v49, v49, v51

    mul-double v51, v17, v49

    mul-double v53, v29, v47

    mul-double v55, v35, v41

    sub-double v53, v53, v55

    mul-double v55, v20, v53

    sub-double v51, v51, v55

    mul-double v55, v29, v44

    mul-double v57, v32, v41

    sub-double v55, v55, v57

    mul-double v57, v23, v55

    add-double v51, v51, v57

    mul-double v57, v14, v49

    mul-double v59, v26, v47

    mul-double v61, v35, v38

    sub-double v59, v59, v61

    mul-double v61, v20, v59

    sub-double v57, v57, v61

    mul-double v61, v26, v44

    mul-double v63, v32, v38

    sub-double v61, v61, v63

    mul-double v63, v23, v61

    move-wide/from16 v65, v2

    add-double v1, v57, v63

    neg-double v0, v1

    mul-double v2, v14, v53

    mul-double v57, v17, v59

    sub-double v2, v2, v57

    mul-double v57, v26, v41

    mul-double v63, v29, v38

    sub-double v57, v57, v63

    mul-double v63, v23, v57

    add-double v2, v2, v63

    mul-double v63, v14, v55

    mul-double v67, v17, v61

    sub-double v63, v63, v67

    mul-double v67, v20, v57

    move-wide/from16 v69, v14

    add-double v13, v63, v67

    neg-double v13, v13

    mul-double v63, v5, v49

    mul-double v67, v8, v53

    sub-double v63, v63, v67

    mul-double v67, v11, v55

    move-wide/from16 v71, v5

    add-double v4, v63, v67

    neg-double v4, v4

    mul-double v49, v49, v65

    mul-double v63, v8, v59

    sub-double v49, v49, v63

    mul-double v63, v11, v61

    add-double v49, v49, v63

    mul-double v53, v53, v65

    mul-double v59, v59, v71

    sub-double v53, v53, v59

    mul-double v59, v11, v57

    move-wide/from16 v63, v11

    add-double v10, v53, v59

    neg-double v10, v10

    mul-double v53, v65, v55

    mul-double v55, v71, v61

    sub-double v53, v53, v55

    mul-double v57, v57, v8

    add-double v53, v53, v57

    mul-double v55, v20, v47

    mul-double v57, v23, v44

    sub-double v55, v55, v57

    mul-double v57, v71, v55

    mul-double v59, v17, v47

    mul-double v61, v23, v41

    sub-double v59, v59, v61

    mul-double v61, v8, v59

    sub-double v57, v57, v61

    mul-double v61, v17, v44

    mul-double v67, v20, v41

    sub-double v61, v61, v67

    mul-double v67, v63, v61

    add-double v57, v57, v67

    mul-double v55, v55, v65

    mul-double v47, v47, v69

    mul-double v67, v23, v38

    sub-double v47, v47, v67

    mul-double v67, v8, v47

    sub-double v55, v55, v67

    mul-double v44, v44, v69

    mul-double v67, v20, v38

    sub-double v44, v44, v67

    mul-double v67, v63, v44

    add-double v6, v55, v67

    neg-double v6, v6

    mul-double v55, v65, v59

    mul-double v47, v47, v71

    sub-double v55, v55, v47

    mul-double v41, v41, v69

    mul-double v38, v38, v17

    sub-double v41, v41, v38

    mul-double v38, v63, v41

    add-double v55, v55, v38

    mul-double v38, v65, v61

    mul-double v44, v44, v71

    sub-double v38, v38, v44

    mul-double v41, v41, v8

    move-wide/from16 v44, v13

    add-double v12, v38, v41

    neg-double v12, v12

    mul-double v38, v20, v35

    mul-double v41, v23, v32

    sub-double v38, v38, v41

    mul-double v41, v71, v38

    mul-double v47, v17, v35

    mul-double v59, v23, v29

    sub-double v47, v47, v59

    mul-double v59, v8, v47

    sub-double v41, v41, v59

    mul-double v59, v17, v32

    mul-double v61, v20, v29

    sub-double v59, v59, v61

    mul-double v61, v63, v59

    add-double v14, v41, v61

    neg-double v14, v14

    mul-double v38, v38, v65

    mul-double v35, v35, v69

    mul-double v23, v23, v26

    sub-double v35, v35, v23

    mul-double v23, v8, v35

    sub-double v38, v38, v23

    mul-double v23, v69, v32

    mul-double v20, v20, v26

    sub-double v23, v23, v20

    mul-double v20, v63, v23

    add-double v38, v38, v20

    mul-double v20, v65, v47

    mul-double v32, v71, v35

    sub-double v20, v20, v32

    mul-double v29, v29, v69

    mul-double v17, v17, v26

    sub-double v29, v29, v17

    mul-double v17, v63, v29

    move-wide/from16 v26, v12

    add-double v12, v20, v17

    neg-double v12, v12

    mul-double v17, v65, v59

    mul-double v20, v71, v23

    sub-double v17, v17, v20

    mul-double v29, v29, v8

    add-double v17, v17, v29

    mul-double v20, v65, v51

    mul-double v23, v71, v0

    add-double v20, v20, v23

    mul-double/2addr v8, v2

    add-double v20, v20, v8

    mul-double v8, v63, v44

    add-double v20, v20, v8

    div-double v20, v20, p2

    move-object/from16 v8, p1

    .line 156
    iget-object v8, v8, Lorg/ejml/data/DMatrixRMaj;->data:[D

    div-double v51, v51, v20

    const/4 v9, 0x0

    .line 157
    aput-wide v51, v8, v9

    div-double v4, v4, v20

    const/4 v9, 0x1

    .line 158
    aput-wide v4, v8, v9

    div-double v57, v57, v20

    const/4 v4, 0x2

    .line 159
    aput-wide v57, v8, v4

    div-double v14, v14, v20

    const/4 v4, 0x3

    .line 160
    aput-wide v14, v8, v4

    div-double v0, v0, v20

    const/4 v4, 0x4

    .line 161
    aput-wide v0, v8, v4

    div-double v49, v49, v20

    .line 162
    aput-wide v49, v8, v16

    div-double v6, v6, v20

    .line 163
    aput-wide v6, v8, v19

    div-double v38, v38, v20

    .line 164
    aput-wide v38, v8, v22

    div-double v2, v2, v20

    .line 165
    aput-wide v2, v8, v25

    div-double v10, v10, v20

    .line 166
    aput-wide v10, v8, v28

    div-double v55, v55, v20

    .line 167
    aput-wide v55, v8, v31

    div-double v12, v12, v20

    .line 168
    aput-wide v12, v8, v34

    div-double v13, v44, v20

    .line 169
    aput-wide v13, v8, v37

    div-double v53, v53, v20

    .line 170
    aput-wide v53, v8, v40

    div-double v12, v26, v20

    .line 171
    aput-wide v12, v8, v43

    div-double v17, v17, v20

    .line 172
    aput-wide v17, v8, v46

    return-void
.end method

.method public static inv5(Lorg/ejml/data/DMatrixRMaj;Lorg/ejml/data/DMatrixRMaj;D)V
    .locals 127

    move-object/from16 v0, p0

    .line 177
    iget-object v0, v0, Lorg/ejml/data/DMatrixRMaj;->data:[D

    const/4 v1, 0x0

    .line 179
    aget-wide v2, v0, v1

    mul-double v2, v2, p2

    const/4 v4, 0x1

    .line 180
    aget-wide v5, v0, v4

    mul-double v5, v5, p2

    const/4 v7, 0x2

    .line 181
    aget-wide v8, v0, v7

    mul-double v8, v8, p2

    const/4 v10, 0x3

    .line 182
    aget-wide v11, v0, v10

    mul-double v11, v11, p2

    const/4 v13, 0x4

    .line 183
    aget-wide v14, v0, v13

    mul-double v14, v14, p2

    const/16 v16, 0x5

    .line 184
    aget-wide v17, v0, v16

    mul-double v17, v17, p2

    const/16 v19, 0x6

    .line 185
    aget-wide v20, v0, v19

    mul-double v20, v20, p2

    const/16 v22, 0x7

    .line 186
    aget-wide v23, v0, v22

    mul-double v23, v23, p2

    const/16 v25, 0x8

    .line 187
    aget-wide v26, v0, v25

    mul-double v26, v26, p2

    const/16 v28, 0x9

    .line 188
    aget-wide v29, v0, v28

    mul-double v29, v29, p2

    const/16 v31, 0xa

    .line 189
    aget-wide v32, v0, v31

    mul-double v32, v32, p2

    const/16 v34, 0xb

    .line 190
    aget-wide v35, v0, v34

    mul-double v35, v35, p2

    const/16 v37, 0xc

    .line 191
    aget-wide v38, v0, v37

    mul-double v38, v38, p2

    const/16 v40, 0xd

    .line 192
    aget-wide v41, v0, v40

    mul-double v41, v41, p2

    const/16 v43, 0xe

    .line 193
    aget-wide v44, v0, v43

    mul-double v44, v44, p2

    const/16 v46, 0xf

    .line 194
    aget-wide v47, v0, v46

    mul-double v47, v47, p2

    const/16 v49, 0x10

    .line 195
    aget-wide v50, v0, v49

    mul-double v50, v50, p2

    const/16 v52, 0x11

    .line 196
    aget-wide v53, v0, v52

    mul-double v53, v53, p2

    const/16 v55, 0x12

    .line 197
    aget-wide v56, v0, v55

    mul-double v56, v56, p2

    const/16 v58, 0x13

    .line 198
    aget-wide v59, v0, v58

    mul-double v59, v59, p2

    const/16 v61, 0x14

    .line 199
    aget-wide v62, v0, v61

    mul-double v62, v62, p2

    const/16 v64, 0x15

    .line 200
    aget-wide v65, v0, v64

    mul-double v65, v65, p2

    const/16 v67, 0x16

    .line 201
    aget-wide v67, v0, v67

    mul-double v67, v67, p2

    const/16 v69, 0x17

    .line 202
    aget-wide v69, v0, v69

    mul-double v69, v69, p2

    const/16 v71, 0x18

    .line 203
    aget-wide v71, v0, v71

    mul-double v71, v71, p2

    mul-double v73, v56, v71

    mul-double v75, v59, v69

    sub-double v73, v73, v75

    mul-double v75, v38, v73

    mul-double v77, v53, v71

    mul-double v79, v59, v67

    sub-double v77, v77, v79

    mul-double v79, v41, v77

    sub-double v75, v75, v79

    mul-double v79, v53, v69

    mul-double v81, v56, v67

    sub-double v79, v79, v81

    mul-double v81, v44, v79

    add-double v75, v75, v81

    mul-double v81, v20, v75

    mul-double v83, v35, v73

    mul-double v85, v50, v71

    mul-double v87, v59, v65

    sub-double v85, v85, v87

    mul-double v87, v41, v85

    sub-double v83, v83, v87

    mul-double v87, v50, v69

    mul-double v89, v56, v65

    sub-double v87, v87, v89

    mul-double v89, v44, v87

    add-double v83, v83, v89

    mul-double v89, v23, v83

    sub-double v81, v81, v89

    mul-double v89, v35, v77

    mul-double v91, v38, v85

    sub-double v89, v89, v91

    mul-double v91, v50, v67

    mul-double v93, v53, v65

    sub-double v91, v91, v93

    mul-double v93, v44, v91

    add-double v89, v89, v93

    mul-double v93, v26, v89

    add-double v81, v81, v93

    mul-double v93, v35, v79

    mul-double v95, v38, v87

    sub-double v93, v93, v95

    mul-double v95, v41, v91

    add-double v93, v93, v95

    mul-double v95, v29, v93

    sub-double v81, v81, v95

    mul-double v95, v17, v75

    mul-double v97, v32, v73

    mul-double v99, v47, v71

    mul-double v101, v59, v62

    sub-double v99, v99, v101

    mul-double v101, v41, v99

    sub-double v97, v97, v101

    mul-double v101, v47, v69

    mul-double v103, v56, v62

    sub-double v101, v101, v103

    mul-double v103, v44, v101

    add-double v97, v97, v103

    mul-double v103, v23, v97

    sub-double v95, v95, v103

    mul-double v103, v32, v77

    mul-double v105, v38, v99

    sub-double v103, v103, v105

    mul-double v105, v47, v67

    mul-double v107, v53, v62

    sub-double v105, v105, v107

    mul-double v107, v44, v105

    add-double v103, v103, v107

    mul-double v107, v26, v103

    add-double v95, v95, v107

    mul-double v107, v32, v79

    mul-double v109, v38, v101

    sub-double v107, v107, v109

    mul-double v109, v41, v105

    add-double v107, v107, v109

    mul-double v109, v29, v107

    move-wide/from16 v111, v2

    sub-double v1, v95, v109

    neg-double v0, v1

    mul-double v2, v17, v83

    mul-double v95, v20, v97

    sub-double v2, v2, v95

    mul-double v95, v32, v85

    mul-double v109, v35, v99

    sub-double v95, v95, v109

    mul-double v109, v47, v65

    mul-double v113, v50, v62

    sub-double v109, v109, v113

    mul-double v113, v44, v109

    add-double v95, v95, v113

    mul-double v113, v26, v95

    add-double v2, v2, v113

    mul-double v113, v32, v87

    mul-double v115, v35, v101

    sub-double v113, v113, v115

    mul-double v115, v41, v109

    add-double v113, v113, v115

    mul-double v115, v29, v113

    sub-double v2, v2, v115

    mul-double v115, v17, v89

    mul-double v117, v20, v103

    sub-double v115, v115, v117

    mul-double v117, v23, v95

    add-double v115, v115, v117

    mul-double v117, v32, v91

    mul-double v119, v35, v105

    sub-double v117, v117, v119

    mul-double v119, v38, v109

    add-double v117, v117, v119

    mul-double v119, v29, v117

    move-wide/from16 v121, v14

    sub-double v13, v115, v119

    neg-double v13, v13

    mul-double v115, v17, v93

    mul-double v119, v20, v107

    sub-double v115, v115, v119

    mul-double v119, v23, v113

    add-double v115, v115, v119

    mul-double v119, v26, v117

    sub-double v115, v115, v119

    mul-double v119, v5, v75

    mul-double v123, v8, v83

    sub-double v119, v119, v123

    mul-double v123, v11, v89

    add-double v119, v119, v123

    mul-double v123, v121, v93

    move-wide/from16 v125, v5

    sub-double v4, v119, v123

    neg-double v4, v4

    mul-double v75, v75, v111

    mul-double v119, v8, v97

    sub-double v75, v75, v119

    mul-double v119, v11, v103

    add-double v75, v75, v119

    mul-double v119, v121, v107

    sub-double v75, v75, v119

    mul-double v83, v83, v111

    mul-double v97, v97, v125

    sub-double v83, v83, v97

    mul-double v97, v11, v95

    add-double v83, v83, v97

    mul-double v97, v121, v113

    move-wide/from16 v119, v11

    sub-double v10, v83, v97

    neg-double v10, v10

    mul-double v83, v111, v89

    mul-double v89, v125, v103

    sub-double v83, v83, v89

    mul-double v95, v95, v8

    add-double v83, v83, v95

    mul-double v89, v121, v117

    sub-double v83, v83, v89

    mul-double v89, v111, v93

    mul-double v93, v125, v107

    sub-double v89, v89, v93

    mul-double v113, v113, v8

    add-double v89, v89, v113

    mul-double v93, v119, v117

    sub-double v6, v89, v93

    neg-double v6, v6

    mul-double v89, v23, v73

    mul-double v93, v26, v77

    sub-double v89, v89, v93

    mul-double v93, v29, v79

    add-double v89, v89, v93

    mul-double v93, v125, v89

    mul-double v96, v20, v73

    mul-double v103, v26, v85

    sub-double v96, v96, v103

    mul-double v103, v29, v87

    add-double v96, v96, v103

    mul-double v103, v8, v96

    sub-double v93, v93, v103

    mul-double v103, v20, v77

    mul-double v107, v23, v85

    sub-double v103, v103, v107

    mul-double v107, v29, v91

    add-double v103, v103, v107

    mul-double v107, v119, v103

    add-double v93, v93, v107

    mul-double v107, v20, v79

    mul-double v113, v23, v87

    sub-double v107, v107, v113

    mul-double v113, v26, v91

    add-double v107, v107, v113

    mul-double v113, v121, v107

    sub-double v93, v93, v113

    mul-double v89, v89, v111

    mul-double v73, v73, v17

    mul-double v113, v26, v99

    sub-double v73, v73, v113

    mul-double v113, v29, v101

    add-double v73, v73, v113

    mul-double v113, v8, v73

    sub-double v89, v89, v113

    mul-double v77, v77, v17

    mul-double v113, v23, v99

    sub-double v77, v77, v113

    mul-double v113, v29, v105

    add-double v77, v77, v113

    mul-double v113, v119, v77

    add-double v89, v89, v113

    mul-double v79, v79, v17

    mul-double v113, v23, v101

    sub-double v79, v79, v113

    mul-double v113, v26, v105

    add-double v79, v79, v113

    mul-double v113, v121, v79

    move-wide/from16 v117, v13

    sub-double v12, v89, v113

    neg-double v12, v12

    mul-double v89, v111, v96

    mul-double v73, v73, v125

    sub-double v89, v89, v73

    mul-double v85, v85, v17

    mul-double v99, v99, v20

    sub-double v85, v85, v99

    mul-double v73, v29, v109

    add-double v85, v85, v73

    mul-double v73, v119, v85

    add-double v89, v89, v73

    mul-double v87, v87, v17

    mul-double v101, v101, v20

    sub-double v87, v87, v101

    mul-double v73, v26, v109

    add-double v87, v87, v73

    mul-double v73, v121, v87

    sub-double v89, v89, v73

    mul-double v73, v111, v103

    mul-double v77, v77, v125

    sub-double v73, v73, v77

    mul-double v85, v85, v8

    add-double v73, v73, v85

    mul-double v91, v91, v17

    mul-double v105, v105, v20

    sub-double v91, v91, v105

    mul-double v109, v109, v23

    add-double v91, v91, v109

    mul-double v77, v121, v91

    sub-double v14, v73, v77

    neg-double v14, v14

    mul-double v73, v111, v107

    mul-double v77, v125, v79

    sub-double v73, v73, v77

    mul-double v87, v87, v8

    add-double v73, v73, v87

    mul-double v77, v119, v91

    sub-double v73, v73, v77

    mul-double v77, v41, v71

    mul-double v79, v44, v69

    sub-double v77, v77, v79

    mul-double v79, v23, v77

    mul-double v87, v38, v71

    mul-double v91, v44, v67

    sub-double v87, v87, v91

    mul-double v91, v26, v87

    sub-double v79, v79, v91

    mul-double v91, v38, v69

    mul-double v96, v41, v67

    sub-double v91, v91, v96

    mul-double v96, v29, v91

    add-double v79, v79, v96

    mul-double v96, v125, v79

    mul-double v98, v20, v77

    mul-double v100, v35, v71

    mul-double v102, v44, v65

    sub-double v100, v100, v102

    mul-double v102, v26, v100

    sub-double v98, v98, v102

    mul-double v102, v35, v69

    mul-double v104, v41, v65

    sub-double v102, v102, v104

    mul-double v104, v29, v102

    add-double v98, v98, v104

    mul-double v104, v8, v98

    sub-double v96, v96, v104

    mul-double v104, v20, v87

    mul-double v106, v23, v100

    sub-double v104, v104, v106

    mul-double v106, v35, v67

    mul-double v108, v38, v65

    sub-double v106, v106, v108

    mul-double v108, v29, v106

    add-double v104, v104, v108

    mul-double v108, v119, v104

    add-double v96, v96, v108

    mul-double v108, v20, v91

    mul-double v113, v23, v102

    sub-double v108, v108, v113

    mul-double v113, v26, v106

    add-double v108, v108, v113

    mul-double v113, v121, v108

    move-wide/from16 v123, v6

    sub-double v6, v96, v113

    neg-double v6, v6

    mul-double v79, v79, v111

    mul-double v77, v77, v17

    mul-double v71, v71, v32

    mul-double v96, v44, v62

    sub-double v71, v71, v96

    mul-double v96, v26, v71

    sub-double v77, v77, v96

    mul-double v69, v69, v32

    mul-double v96, v41, v62

    sub-double v69, v69, v96

    mul-double v96, v29, v69

    add-double v77, v77, v96

    mul-double v96, v8, v77

    sub-double v79, v79, v96

    mul-double v87, v87, v17

    mul-double v96, v23, v71

    sub-double v87, v87, v96

    mul-double v67, v67, v32

    mul-double v96, v38, v62

    sub-double v67, v67, v96

    mul-double v96, v29, v67

    add-double v87, v87, v96

    mul-double v96, v119, v87

    add-double v79, v79, v96

    mul-double v91, v91, v17

    mul-double v96, v23, v69

    sub-double v91, v91, v96

    mul-double v96, v26, v67

    add-double v91, v91, v96

    mul-double v96, v121, v91

    sub-double v79, v79, v96

    mul-double v96, v111, v98

    mul-double v77, v77, v125

    sub-double v96, v96, v77

    mul-double v100, v100, v17

    mul-double v71, v71, v20

    sub-double v100, v100, v71

    mul-double v65, v65, v32

    mul-double v62, v62, v35

    sub-double v65, v65, v62

    mul-double v62, v29, v65

    add-double v100, v100, v62

    mul-double v62, v119, v100

    add-double v96, v96, v62

    mul-double v102, v102, v17

    mul-double v69, v69, v20

    sub-double v102, v102, v69

    mul-double v62, v26, v65

    add-double v102, v102, v62

    mul-double v62, v121, v102

    move-wide/from16 v69, v14

    sub-double v14, v96, v62

    neg-double v14, v14

    mul-double v62, v111, v104

    mul-double v71, v125, v87

    sub-double v62, v62, v71

    mul-double v100, v100, v8

    add-double v62, v62, v100

    mul-double v106, v106, v17

    mul-double v67, v67, v20

    sub-double v106, v106, v67

    mul-double v65, v65, v23

    add-double v106, v106, v65

    mul-double v65, v121, v106

    sub-double v62, v62, v65

    mul-double v65, v111, v108

    mul-double v67, v125, v91

    sub-double v65, v65, v67

    mul-double v102, v102, v8

    add-double v65, v65, v102

    mul-double v67, v119, v106

    move-wide/from16 v71, v14

    sub-double v14, v65, v67

    neg-double v14, v14

    mul-double v65, v41, v59

    mul-double v67, v44, v56

    sub-double v65, v65, v67

    mul-double v67, v23, v65

    mul-double v77, v38, v59

    mul-double v87, v44, v53

    sub-double v77, v77, v87

    mul-double v87, v26, v77

    sub-double v67, v67, v87

    mul-double v87, v38, v56

    mul-double v91, v41, v53

    sub-double v87, v87, v91

    mul-double v91, v29, v87

    add-double v67, v67, v91

    mul-double v91, v125, v67

    mul-double v96, v20, v65

    mul-double v98, v35, v59

    mul-double v100, v44, v50

    sub-double v98, v98, v100

    mul-double v100, v26, v98

    sub-double v96, v96, v100

    mul-double v100, v35, v56

    mul-double v102, v41, v50

    sub-double v100, v100, v102

    mul-double v102, v29, v100

    add-double v96, v96, v102

    mul-double v102, v8, v96

    sub-double v91, v91, v102

    mul-double v102, v20, v77

    mul-double v104, v23, v98

    sub-double v102, v102, v104

    mul-double v104, v35, v53

    mul-double v106, v38, v50

    sub-double v104, v104, v106

    mul-double v106, v29, v104

    add-double v102, v102, v106

    mul-double v106, v119, v102

    add-double v91, v91, v106

    mul-double v106, v20, v87

    mul-double v108, v23, v100

    sub-double v106, v106, v108

    mul-double v108, v26, v104

    add-double v106, v106, v108

    mul-double v108, v121, v106

    sub-double v91, v91, v108

    mul-double v67, v67, v111

    mul-double v65, v65, v17

    mul-double v59, v59, v32

    mul-double v44, v44, v47

    sub-double v59, v59, v44

    mul-double v44, v26, v59

    sub-double v65, v65, v44

    mul-double v56, v56, v32

    mul-double v41, v41, v47

    sub-double v56, v56, v41

    mul-double v41, v29, v56

    add-double v65, v65, v41

    mul-double v41, v8, v65

    sub-double v67, v67, v41

    mul-double v77, v77, v17

    mul-double v41, v23, v59

    sub-double v77, v77, v41

    mul-double v53, v53, v32

    mul-double v38, v38, v47

    sub-double v53, v53, v38

    mul-double v38, v29, v53

    add-double v77, v77, v38

    mul-double v38, v119, v77

    add-double v67, v67, v38

    mul-double v87, v87, v17

    mul-double v38, v23, v56

    sub-double v87, v87, v38

    mul-double v38, v26, v53

    add-double v87, v87, v38

    mul-double v38, v121, v87

    move-wide/from16 v41, v14

    sub-double v14, v67, v38

    neg-double v14, v14

    mul-double v38, v111, v96

    mul-double v44, v125, v65

    sub-double v38, v38, v44

    mul-double v98, v98, v17

    mul-double v59, v59, v20

    sub-double v98, v98, v59

    mul-double v32, v32, v50

    mul-double v35, v35, v47

    sub-double v32, v32, v35

    mul-double v29, v29, v32

    add-double v98, v98, v29

    mul-double v29, v119, v98

    add-double v38, v38, v29

    mul-double v100, v100, v17

    mul-double v56, v56, v20

    sub-double v100, v100, v56

    mul-double v26, v26, v32

    add-double v100, v100, v26

    mul-double v26, v121, v100

    sub-double v38, v38, v26

    mul-double v26, v111, v102

    mul-double v29, v125, v77

    sub-double v26, v26, v29

    mul-double v98, v98, v8

    add-double v26, v26, v98

    mul-double v17, v17, v104

    mul-double v20, v20, v53

    sub-double v17, v17, v20

    mul-double v23, v23, v32

    add-double v17, v17, v23

    mul-double v20, v121, v17

    move-wide/from16 v23, v10

    sub-double v10, v26, v20

    neg-double v10, v10

    mul-double v20, v111, v106

    mul-double v26, v125, v87

    sub-double v20, v20, v26

    mul-double v100, v100, v8

    add-double v20, v20, v100

    mul-double v17, v17, v119

    sub-double v20, v20, v17

    mul-double v17, v111, v81

    mul-double v26, v125, v0

    add-double v17, v17, v26

    mul-double/2addr v8, v2

    add-double v17, v17, v8

    mul-double v8, v119, v117

    add-double v17, v17, v8

    mul-double v8, v121, v115

    add-double v17, v17, v8

    div-double v17, v17, p2

    move-object/from16 v8, p1

    .line 233
    iget-object v8, v8, Lorg/ejml/data/DMatrixRMaj;->data:[D

    div-double v81, v81, v17

    const/4 v9, 0x0

    .line 234
    aput-wide v81, v8, v9

    div-double v4, v4, v17

    const/4 v9, 0x1

    .line 235
    aput-wide v4, v8, v9

    div-double v93, v93, v17

    const/4 v4, 0x2

    .line 236
    aput-wide v93, v8, v4

    div-double v6, v6, v17

    const/4 v4, 0x3

    .line 237
    aput-wide v6, v8, v4

    div-double v91, v91, v17

    const/4 v4, 0x4

    .line 238
    aput-wide v91, v8, v4

    div-double v0, v0, v17

    .line 239
    aput-wide v0, v8, v16

    div-double v75, v75, v17

    .line 240
    aput-wide v75, v8, v19

    div-double v12, v12, v17

    .line 241
    aput-wide v12, v8, v22

    div-double v79, v79, v17

    .line 242
    aput-wide v79, v8, v25

    div-double v14, v14, v17

    .line 243
    aput-wide v14, v8, v28

    div-double v2, v2, v17

    .line 244
    aput-wide v2, v8, v31

    div-double v0, v23, v17

    .line 245
    aput-wide v0, v8, v34

    div-double v89, v89, v17

    .line 246
    aput-wide v89, v8, v37

    div-double v14, v71, v17

    .line 247
    aput-wide v14, v8, v40

    div-double v38, v38, v17

    .line 248
    aput-wide v38, v8, v43

    div-double v13, v117, v17

    .line 249
    aput-wide v13, v8, v46

    div-double v83, v83, v17

    .line 250
    aput-wide v83, v8, v49

    div-double v14, v69, v17

    .line 251
    aput-wide v14, v8, v52

    div-double v62, v62, v17

    .line 252
    aput-wide v62, v8, v55

    div-double v10, v10, v17

    .line 253
    aput-wide v10, v8, v58

    div-double v115, v115, v17

    .line 254
    aput-wide v115, v8, v61

    div-double v6, v123, v17

    .line 255
    aput-wide v6, v8, v64

    const/16 v0, 0x16

    div-double v73, v73, v17

    .line 256
    aput-wide v73, v8, v0

    const/16 v0, 0x17

    div-double v14, v41, v17

    .line 257
    aput-wide v14, v8, v0

    const/16 v0, 0x18

    div-double v20, v20, v17

    .line 258
    aput-wide v20, v8, v0

    return-void
.end method
