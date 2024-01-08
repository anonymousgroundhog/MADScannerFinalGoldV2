.class public Lorg/ejml/dense/row/misc/UnrolledDeterminantFromMinor_FDRM;
.super Ljava/lang/Object;
.source "UnrolledDeterminantFromMinor_FDRM.java"


# static fields
.field public static final MAX:I = 0x6


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static det(Lorg/ejml/data/FMatrix1Row;)F
    .locals 2

    .line 38
    iget v0, p0, Lorg/ejml/data/FMatrix1Row;->numRows:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_4

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    .line 43
    invoke-static {p0}, Lorg/ejml/dense/row/misc/UnrolledDeterminantFromMinor_FDRM;->det6(Lorg/ejml/data/FMatrix1Row;)F

    move-result p0

    return p0

    .line 44
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Not supported"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 42
    :cond_1
    invoke-static {p0}, Lorg/ejml/dense/row/misc/UnrolledDeterminantFromMinor_FDRM;->det5(Lorg/ejml/data/FMatrix1Row;)F

    move-result p0

    return p0

    .line 41
    :cond_2
    invoke-static {p0}, Lorg/ejml/dense/row/misc/UnrolledDeterminantFromMinor_FDRM;->det4(Lorg/ejml/data/FMatrix1Row;)F

    move-result p0

    return p0

    .line 40
    :cond_3
    invoke-static {p0}, Lorg/ejml/dense/row/misc/UnrolledDeterminantFromMinor_FDRM;->det3(Lorg/ejml/data/FMatrix1Row;)F

    move-result p0

    return p0

    .line 39
    :cond_4
    invoke-static {p0}, Lorg/ejml/dense/row/misc/UnrolledDeterminantFromMinor_FDRM;->det2(Lorg/ejml/data/FMatrix1Row;)F

    move-result p0

    return p0
.end method

.method public static det2(Lorg/ejml/data/FMatrix1Row;)F
    .locals 3

    .line 50
    iget-object p0, p0, Lorg/ejml/data/FMatrix1Row;->data:[F

    const/4 v0, 0x0

    .line 52
    aget v0, p0, v0

    const/4 v1, 0x3

    aget v1, p0, v1

    mul-float/2addr v0, v1

    const/4 v1, 0x1

    aget v1, p0, v1

    const/4 v2, 0x2

    aget p0, p0, v2

    mul-float/2addr v1, p0

    sub-float/2addr v0, v1

    return v0
.end method

.method public static det3(Lorg/ejml/data/FMatrix1Row;)F
    .locals 10

    .line 57
    iget-object p0, p0, Lorg/ejml/data/FMatrix1Row;->data:[F

    const/4 v0, 0x0

    .line 59
    aget v0, p0, v0

    const/4 v1, 0x1

    .line 60
    aget v1, p0, v1

    const/4 v2, 0x2

    .line 61
    aget v2, p0, v2

    const/4 v3, 0x3

    .line 62
    aget v3, p0, v3

    const/4 v4, 0x4

    .line 63
    aget v4, p0, v4

    const/4 v5, 0x5

    .line 64
    aget v5, p0, v5

    const/4 v6, 0x6

    .line 65
    aget v6, p0, v6

    const/4 v7, 0x7

    .line 66
    aget v7, p0, v7

    const/16 v8, 0x8

    .line 67
    aget p0, p0, v8

    mul-float v8, v4, p0

    mul-float v9, v5, v7

    sub-float/2addr v8, v9

    mul-float/2addr v0, v8

    mul-float/2addr p0, v3

    mul-float/2addr v5, v6

    sub-float/2addr p0, v5

    mul-float/2addr v1, p0

    mul-float/2addr v3, v7

    mul-float/2addr v6, v4

    sub-float/2addr v3, v6

    mul-float/2addr v2, v3

    sub-float/2addr v0, v1

    add-float/2addr v0, v2

    return v0
.end method

.method public static det4(Lorg/ejml/data/FMatrix1Row;)F
    .locals 19

    move-object/from16 v0, p0

    .line 78
    iget-object v0, v0, Lorg/ejml/data/FMatrix1Row;->data:[F

    const/4 v1, 0x5

    .line 80
    aget v1, v0, v1

    const/4 v2, 0x6

    aget v2, v0, v2

    const/4 v3, 0x7

    aget v3, v0, v3

    const/16 v4, 0x9

    .line 81
    aget v4, v0, v4

    const/16 v5, 0xa

    aget v5, v0, v5

    const/16 v6, 0xb

    aget v6, v0, v6

    const/16 v7, 0xd

    .line 82
    aget v7, v0, v7

    const/16 v8, 0xe

    aget v8, v0, v8

    const/16 v9, 0xf

    aget v9, v0, v9

    const/4 v10, 0x0

    .line 85
    aget v10, v0, v10

    mul-float v11, v5, v9

    mul-float v12, v6, v8

    sub-float/2addr v11, v12

    mul-float v12, v1, v11

    mul-float v13, v4, v9

    mul-float v14, v6, v7

    sub-float/2addr v13, v14

    mul-float/2addr v13, v2

    sub-float/2addr v12, v13

    mul-float v13, v4, v8

    mul-float v14, v5, v7

    sub-float/2addr v13, v14

    mul-float/2addr v13, v3

    add-float/2addr v12, v13

    mul-float/2addr v10, v12

    const/4 v12, 0x0

    add-float/2addr v10, v12

    const/4 v12, 0x4

    .line 86
    aget v12, v0, v12

    const/16 v13, 0x8

    .line 87
    aget v13, v0, v13

    const/16 v14, 0xc

    .line 88
    aget v14, v0, v14

    const/4 v15, 0x1

    .line 89
    aget v15, v0, v15

    mul-float/2addr v11, v12

    mul-float v16, v13, v9

    mul-float v17, v6, v14

    sub-float v16, v16, v17

    mul-float v17, v2, v16

    sub-float v11, v11, v17

    mul-float v17, v13, v8

    mul-float v18, v5, v14

    sub-float v17, v17, v18

    mul-float v17, v17, v3

    add-float v11, v11, v17

    mul-float/2addr v15, v11

    sub-float/2addr v10, v15

    const/4 v11, 0x2

    .line 93
    aget v11, v0, v11

    mul-float/2addr v9, v4

    mul-float/2addr v6, v7

    sub-float/2addr v9, v6

    mul-float/2addr v9, v12

    mul-float v16, v16, v1

    sub-float v9, v9, v16

    mul-float v6, v13, v7

    mul-float v15, v4, v14

    sub-float/2addr v6, v15

    mul-float/2addr v3, v6

    add-float/2addr v9, v3

    mul-float/2addr v11, v9

    add-float/2addr v10, v11

    const/4 v3, 0x3

    .line 97
    aget v0, v0, v3

    mul-float/2addr v4, v8

    mul-float/2addr v7, v5

    sub-float/2addr v4, v7

    mul-float/2addr v12, v4

    mul-float/2addr v13, v8

    mul-float/2addr v5, v14

    sub-float/2addr v13, v5

    mul-float/2addr v1, v13

    sub-float/2addr v12, v1

    mul-float/2addr v2, v6

    add-float/2addr v12, v2

    mul-float/2addr v0, v12

    sub-float/2addr v10, v0

    return v10
.end method

.method public static det5(Lorg/ejml/data/FMatrix1Row;)F
    .locals 32

    move-object/from16 v0, p0

    .line 103
    iget-object v0, v0, Lorg/ejml/data/FMatrix1Row;->data:[F

    const/4 v1, 0x6

    .line 105
    aget v1, v0, v1

    const/4 v2, 0x7

    .line 106
    aget v2, v0, v2

    const/16 v3, 0x8

    .line 107
    aget v3, v0, v3

    const/16 v4, 0x9

    .line 108
    aget v4, v0, v4

    const/16 v5, 0xb

    .line 109
    aget v5, v0, v5

    const/16 v6, 0xc

    .line 110
    aget v6, v0, v6

    const/16 v7, 0xd

    .line 111
    aget v7, v0, v7

    const/16 v8, 0xe

    .line 112
    aget v8, v0, v8

    const/16 v9, 0x10

    .line 113
    aget v9, v0, v9

    const/16 v10, 0x11

    .line 114
    aget v10, v0, v10

    const/16 v11, 0x12

    .line 115
    aget v11, v0, v11

    const/16 v12, 0x13

    .line 116
    aget v12, v0, v12

    const/16 v13, 0x15

    .line 117
    aget v13, v0, v13

    const/16 v14, 0x16

    .line 118
    aget v14, v0, v14

    const/16 v15, 0x17

    .line 119
    aget v15, v0, v15

    const/16 v16, 0x18

    .line 120
    aget v16, v0, v16

    const/16 v17, 0x0

    .line 123
    aget v17, v0, v17

    mul-float v18, v11, v16

    mul-float v19, v12, v15

    sub-float v18, v18, v19

    mul-float v19, v6, v18

    mul-float v20, v10, v16

    mul-float v21, v12, v14

    sub-float v20, v20, v21

    mul-float v21, v7, v20

    sub-float v19, v19, v21

    mul-float v21, v10, v15

    mul-float v22, v11, v14

    sub-float v21, v21, v22

    mul-float v22, v8, v21

    add-float v19, v19, v22

    mul-float v22, v1, v19

    mul-float v23, v5, v18

    mul-float v24, v9, v16

    mul-float v25, v12, v13

    sub-float v24, v24, v25

    mul-float v25, v7, v24

    sub-float v23, v23, v25

    mul-float v25, v9, v15

    mul-float v26, v11, v13

    sub-float v25, v25, v26

    mul-float v26, v8, v25

    add-float v23, v23, v26

    mul-float v23, v23, v2

    sub-float v22, v22, v23

    mul-float v23, v5, v20

    mul-float v24, v24, v6

    sub-float v23, v23, v24

    mul-float v24, v9, v14

    mul-float v26, v10, v13

    sub-float v24, v24, v26

    mul-float v26, v8, v24

    add-float v23, v23, v26

    mul-float v23, v23, v3

    add-float v22, v22, v23

    mul-float v23, v5, v21

    mul-float v25, v25, v6

    sub-float v23, v23, v25

    mul-float v24, v24, v7

    add-float v23, v23, v24

    mul-float v23, v23, v4

    sub-float v22, v22, v23

    mul-float v17, v17, v22

    const/16 v22, 0x0

    add-float v17, v17, v22

    const/16 v22, 0x5

    .line 124
    aget v22, v0, v22

    const/16 v23, 0xa

    .line 125
    aget v23, v0, v23

    const/16 v24, 0xf

    .line 126
    aget v24, v0, v24

    const/16 v25, 0x14

    .line 127
    aget v25, v0, v25

    const/16 v26, 0x1

    .line 128
    aget v26, v0, v26

    mul-float v19, v19, v22

    mul-float v27, v23, v18

    mul-float v28, v24, v16

    mul-float v29, v12, v25

    sub-float v28, v28, v29

    mul-float v29, v7, v28

    sub-float v27, v27, v29

    mul-float v29, v24, v15

    mul-float v30, v11, v25

    sub-float v29, v29, v30

    mul-float v30, v8, v29

    add-float v27, v27, v30

    mul-float v30, v2, v27

    sub-float v19, v19, v30

    mul-float v20, v20, v23

    mul-float v30, v6, v28

    sub-float v20, v20, v30

    mul-float v30, v24, v14

    mul-float v31, v10, v25

    sub-float v30, v30, v31

    mul-float v31, v8, v30

    add-float v20, v20, v31

    mul-float v20, v20, v3

    add-float v19, v19, v20

    mul-float v21, v21, v23

    mul-float v20, v6, v29

    sub-float v21, v21, v20

    mul-float v30, v30, v7

    add-float v21, v21, v30

    mul-float v21, v21, v4

    sub-float v19, v19, v21

    mul-float v26, v26, v19

    sub-float v17, v17, v26

    const/16 v19, 0x2

    .line 133
    aget v19, v0, v19

    mul-float v18, v18, v5

    mul-float v20, v9, v16

    mul-float v21, v12, v13

    sub-float v20, v20, v21

    mul-float v21, v7, v20

    sub-float v18, v18, v21

    mul-float v21, v9, v15

    mul-float v26, v11, v13

    sub-float v21, v21, v26

    mul-float v26, v8, v21

    add-float v18, v18, v26

    mul-float v18, v18, v22

    mul-float v27, v27, v1

    sub-float v18, v18, v27

    mul-float v26, v23, v20

    mul-float v27, v5, v28

    sub-float v26, v26, v27

    mul-float v27, v24, v13

    mul-float v30, v9, v25

    sub-float v27, v27, v30

    mul-float v30, v8, v27

    add-float v26, v26, v30

    mul-float v30, v3, v26

    add-float v18, v18, v30

    mul-float v21, v21, v23

    mul-float v29, v29, v5

    sub-float v21, v21, v29

    mul-float v29, v7, v27

    add-float v21, v21, v29

    mul-float v21, v21, v4

    sub-float v18, v18, v21

    mul-float v19, v19, v18

    add-float v17, v17, v19

    const/16 v18, 0x3

    .line 138
    aget v18, v0, v18

    mul-float v16, v16, v10

    mul-float/2addr v12, v14

    sub-float v16, v16, v12

    mul-float v12, v5, v16

    mul-float v20, v20, v6

    sub-float v12, v12, v20

    mul-float v19, v9, v14

    mul-float v20, v10, v13

    sub-float v19, v19, v20

    mul-float v20, v8, v19

    add-float v12, v12, v20

    mul-float v12, v12, v22

    mul-float v16, v16, v23

    mul-float v28, v28, v6

    sub-float v16, v16, v28

    mul-float v20, v24, v14

    mul-float v21, v10, v25

    sub-float v20, v20, v21

    mul-float v8, v8, v20

    add-float v16, v16, v8

    mul-float v16, v16, v1

    sub-float v12, v12, v16

    mul-float v26, v26, v2

    add-float v12, v12, v26

    mul-float v8, v23, v19

    mul-float v16, v5, v20

    sub-float v8, v8, v16

    mul-float v16, v6, v27

    add-float v8, v8, v16

    mul-float/2addr v4, v8

    sub-float/2addr v12, v4

    mul-float v18, v18, v12

    sub-float v17, v17, v18

    const/4 v4, 0x4

    .line 143
    aget v0, v0, v4

    mul-float/2addr v10, v15

    mul-float/2addr v14, v11

    sub-float/2addr v10, v14

    mul-float v4, v5, v10

    mul-float/2addr v9, v15

    mul-float/2addr v13, v11

    sub-float/2addr v9, v13

    mul-float v12, v6, v9

    sub-float/2addr v4, v12

    mul-float v19, v19, v7

    add-float v4, v4, v19

    mul-float v22, v22, v4

    mul-float v10, v10, v23

    mul-float v24, v24, v15

    mul-float v11, v11, v25

    sub-float v24, v24, v11

    mul-float v6, v6, v24

    sub-float/2addr v10, v6

    mul-float v20, v20, v7

    add-float v10, v10, v20

    mul-float/2addr v1, v10

    sub-float v22, v22, v1

    mul-float v23, v23, v9

    mul-float v5, v5, v24

    sub-float v23, v23, v5

    mul-float v7, v7, v27

    add-float v23, v23, v7

    mul-float v2, v2, v23

    add-float v22, v22, v2

    mul-float/2addr v3, v8

    sub-float v22, v22, v3

    mul-float v0, v0, v22

    add-float v17, v17, v0

    return v17
.end method

.method public static det6(Lorg/ejml/data/FMatrix1Row;)F
    .locals 53

    move-object/from16 v0, p0

    .line 149
    iget-object v0, v0, Lorg/ejml/data/FMatrix1Row;->data:[F

    const/4 v1, 0x7

    .line 151
    aget v1, v0, v1

    const/16 v2, 0x8

    .line 152
    aget v2, v0, v2

    const/16 v3, 0x9

    .line 153
    aget v3, v0, v3

    const/16 v4, 0xa

    .line 154
    aget v4, v0, v4

    const/16 v5, 0xb

    .line 155
    aget v5, v0, v5

    const/16 v6, 0xd

    .line 156
    aget v6, v0, v6

    const/16 v7, 0xe

    .line 157
    aget v7, v0, v7

    const/16 v8, 0xf

    .line 158
    aget v8, v0, v8

    const/16 v9, 0x10

    .line 159
    aget v9, v0, v9

    const/16 v10, 0x11

    .line 160
    aget v10, v0, v10

    const/16 v11, 0x13

    .line 161
    aget v11, v0, v11

    const/16 v12, 0x14

    .line 162
    aget v12, v0, v12

    const/16 v13, 0x15

    .line 163
    aget v13, v0, v13

    const/16 v14, 0x16

    .line 164
    aget v14, v0, v14

    const/16 v15, 0x17

    .line 165
    aget v15, v0, v15

    const/16 v16, 0x19

    .line 166
    aget v16, v0, v16

    const/16 v17, 0x1a

    .line 167
    aget v17, v0, v17

    const/16 v18, 0x1b

    .line 168
    aget v18, v0, v18

    const/16 v19, 0x1c

    .line 169
    aget v19, v0, v19

    const/16 v20, 0x1d

    .line 170
    aget v20, v0, v20

    const/16 v21, 0x1f

    .line 171
    aget v21, v0, v21

    const/16 v22, 0x20

    .line 172
    aget v22, v0, v22

    const/16 v23, 0x21

    .line 173
    aget v23, v0, v23

    const/16 v24, 0x22

    .line 174
    aget v24, v0, v24

    const/16 v25, 0x23

    .line 175
    aget v25, v0, v25

    const/16 v26, 0x0

    .line 178
    aget v26, v0, v26

    mul-float v27, v19, v25

    mul-float v28, v20, v24

    sub-float v27, v27, v28

    mul-float v28, v13, v27

    mul-float v29, v18, v25

    mul-float v30, v20, v23

    sub-float v29, v29, v30

    mul-float v30, v14, v29

    sub-float v28, v28, v30

    mul-float v30, v18, v24

    mul-float v31, v19, v23

    sub-float v30, v30, v31

    mul-float v31, v15, v30

    add-float v28, v28, v31

    mul-float v31, v7, v28

    mul-float v32, v12, v27

    mul-float v33, v17, v25

    mul-float v34, v20, v22

    sub-float v33, v33, v34

    mul-float v34, v14, v33

    sub-float v32, v32, v34

    mul-float v34, v17, v24

    mul-float v35, v19, v22

    sub-float v34, v34, v35

    mul-float v35, v15, v34

    add-float v32, v32, v35

    mul-float v35, v8, v32

    sub-float v31, v31, v35

    mul-float v35, v12, v29

    mul-float v36, v13, v33

    sub-float v35, v35, v36

    mul-float v36, v17, v23

    mul-float v37, v18, v22

    sub-float v36, v36, v37

    mul-float v37, v15, v36

    add-float v35, v35, v37

    mul-float v37, v9, v35

    add-float v31, v31, v37

    mul-float v37, v12, v30

    mul-float v38, v13, v34

    sub-float v37, v37, v38

    mul-float v38, v14, v36

    add-float v37, v37, v38

    mul-float v38, v10, v37

    sub-float v31, v31, v38

    mul-float v38, v1, v31

    mul-float v39, v6, v28

    mul-float v40, v11, v27

    mul-float v41, v16, v25

    mul-float v42, v20, v21

    sub-float v41, v41, v42

    mul-float v42, v14, v41

    sub-float v40, v40, v42

    mul-float v42, v16, v24

    mul-float v43, v19, v21

    sub-float v42, v42, v43

    mul-float v43, v15, v42

    add-float v40, v40, v43

    mul-float v43, v8, v40

    sub-float v39, v39, v43

    mul-float v43, v11, v29

    mul-float v44, v13, v41

    sub-float v43, v43, v44

    mul-float v44, v16, v23

    mul-float v45, v18, v21

    sub-float v44, v44, v45

    mul-float v45, v15, v44

    add-float v43, v43, v45

    mul-float v45, v9, v43

    add-float v39, v39, v45

    mul-float v45, v11, v30

    mul-float v46, v13, v42

    sub-float v45, v45, v46

    mul-float v46, v14, v44

    add-float v45, v45, v46

    mul-float v46, v10, v45

    sub-float v39, v39, v46

    mul-float v39, v39, v2

    sub-float v38, v38, v39

    mul-float v39, v6, v32

    mul-float v40, v40, v7

    sub-float v39, v39, v40

    mul-float v40, v11, v33

    mul-float v41, v41, v12

    sub-float v40, v40, v41

    mul-float v41, v16, v22

    mul-float v46, v17, v21

    sub-float v41, v41, v46

    mul-float v46, v15, v41

    add-float v40, v40, v46

    mul-float v46, v9, v40

    add-float v39, v39, v46

    mul-float v46, v11, v34

    mul-float v42, v42, v12

    sub-float v46, v46, v42

    mul-float v42, v14, v41

    add-float v46, v46, v42

    mul-float v42, v10, v46

    sub-float v39, v39, v42

    mul-float v39, v39, v3

    add-float v38, v38, v39

    mul-float v39, v6, v35

    mul-float v43, v43, v7

    sub-float v39, v39, v43

    mul-float v40, v40, v8

    add-float v39, v39, v40

    mul-float v40, v11, v36

    mul-float v44, v44, v12

    sub-float v40, v40, v44

    mul-float v41, v41, v13

    add-float v40, v40, v41

    mul-float v41, v10, v40

    sub-float v39, v39, v41

    mul-float v39, v39, v4

    sub-float v38, v38, v39

    mul-float v39, v6, v37

    mul-float v45, v45, v7

    sub-float v39, v39, v45

    mul-float v46, v46, v8

    add-float v39, v39, v46

    mul-float v40, v40, v9

    sub-float v39, v39, v40

    mul-float v39, v39, v5

    add-float v38, v38, v39

    mul-float v26, v26, v38

    const/16 v38, 0x0

    add-float v26, v26, v38

    const/16 v38, 0x6

    .line 179
    aget v38, v0, v38

    const/16 v39, 0xc

    .line 180
    aget v39, v0, v39

    const/16 v40, 0x12

    .line 181
    aget v40, v0, v40

    const/16 v41, 0x18

    .line 182
    aget v41, v0, v41

    const/16 v42, 0x1e

    .line 183
    aget v42, v0, v42

    const/16 v43, 0x1

    .line 184
    aget v43, v0, v43

    mul-float v31, v31, v38

    mul-float v44, v39, v28

    mul-float v45, v40, v27

    mul-float v46, v41, v25

    mul-float v47, v20, v42

    sub-float v46, v46, v47

    mul-float v47, v14, v46

    sub-float v45, v45, v47

    mul-float v47, v41, v24

    mul-float v48, v19, v42

    sub-float v47, v47, v48

    mul-float v48, v15, v47

    add-float v45, v45, v48

    mul-float v48, v8, v45

    sub-float v44, v44, v48

    mul-float v48, v40, v29

    mul-float v49, v13, v46

    sub-float v48, v48, v49

    mul-float v49, v41, v23

    mul-float v50, v18, v42

    sub-float v49, v49, v50

    mul-float v50, v15, v49

    add-float v48, v48, v50

    mul-float v50, v9, v48

    add-float v44, v44, v50

    mul-float v50, v40, v30

    mul-float v51, v13, v47

    sub-float v50, v50, v51

    mul-float v51, v14, v49

    add-float v50, v50, v51

    mul-float v51, v10, v50

    sub-float v44, v44, v51

    mul-float v51, v2, v44

    sub-float v31, v31, v51

    mul-float v32, v32, v39

    mul-float v51, v7, v45

    sub-float v32, v32, v51

    mul-float v33, v33, v40

    mul-float v51, v12, v46

    sub-float v33, v33, v51

    mul-float v51, v41, v22

    mul-float v52, v17, v42

    sub-float v51, v51, v52

    mul-float v52, v15, v51

    add-float v33, v33, v52

    mul-float v52, v9, v33

    add-float v32, v32, v52

    mul-float v34, v34, v40

    mul-float v52, v12, v47

    sub-float v34, v34, v52

    mul-float v52, v14, v51

    add-float v34, v34, v52

    mul-float v52, v10, v34

    sub-float v32, v32, v52

    mul-float v32, v32, v3

    add-float v31, v31, v32

    mul-float v35, v35, v39

    mul-float v32, v7, v48

    sub-float v35, v35, v32

    mul-float v33, v33, v8

    add-float v35, v35, v33

    mul-float v36, v36, v40

    mul-float v32, v12, v49

    sub-float v36, v36, v32

    mul-float v51, v51, v13

    add-float v36, v36, v51

    mul-float v32, v10, v36

    sub-float v35, v35, v32

    mul-float v35, v35, v4

    sub-float v31, v31, v35

    mul-float v37, v37, v39

    mul-float v32, v7, v50

    sub-float v37, v37, v32

    mul-float v34, v34, v8

    add-float v37, v37, v34

    mul-float v36, v36, v9

    sub-float v37, v37, v36

    mul-float v37, v37, v5

    add-float v31, v31, v37

    mul-float v43, v43, v31

    sub-float v26, v26, v43

    const/16 v31, 0x2

    .line 190
    aget v31, v0, v31

    mul-float v28, v28, v6

    mul-float v32, v11, v27

    mul-float v33, v16, v25

    mul-float v34, v20, v21

    sub-float v33, v33, v34

    mul-float v34, v14, v33

    sub-float v32, v32, v34

    mul-float v34, v16, v24

    mul-float v35, v19, v21

    sub-float v34, v34, v35

    mul-float v35, v15, v34

    add-float v32, v32, v35

    mul-float v35, v8, v32

    sub-float v28, v28, v35

    mul-float v29, v29, v11

    mul-float v35, v13, v33

    sub-float v29, v29, v35

    mul-float v35, v16, v23

    mul-float v36, v18, v21

    sub-float v35, v35, v36

    mul-float v36, v15, v35

    add-float v29, v29, v36

    mul-float v36, v9, v29

    add-float v28, v28, v36

    mul-float v30, v30, v11

    mul-float v36, v13, v34

    sub-float v30, v30, v36

    mul-float v36, v14, v35

    add-float v30, v30, v36

    mul-float v36, v10, v30

    sub-float v28, v28, v36

    mul-float v28, v28, v38

    mul-float v44, v44, v1

    sub-float v28, v28, v44

    mul-float v36, v39, v32

    mul-float v37, v6, v45

    sub-float v36, v36, v37

    mul-float v37, v40, v33

    mul-float v43, v11, v46

    sub-float v37, v37, v43

    mul-float v43, v41, v21

    mul-float v44, v16, v42

    sub-float v43, v43, v44

    mul-float v44, v15, v43

    add-float v37, v37, v44

    mul-float v44, v9, v37

    add-float v36, v36, v44

    mul-float v44, v40, v34

    mul-float v51, v11, v47

    sub-float v44, v44, v51

    mul-float v51, v14, v43

    add-float v44, v44, v51

    mul-float v51, v10, v44

    sub-float v36, v36, v51

    mul-float v51, v3, v36

    add-float v28, v28, v51

    mul-float v29, v29, v39

    mul-float v48, v48, v6

    sub-float v29, v29, v48

    mul-float v48, v8, v37

    add-float v29, v29, v48

    mul-float v35, v35, v40

    mul-float v49, v49, v11

    sub-float v35, v35, v49

    mul-float v48, v13, v43

    add-float v35, v35, v48

    mul-float v48, v10, v35

    sub-float v29, v29, v48

    mul-float v29, v29, v4

    sub-float v28, v28, v29

    mul-float v30, v30, v39

    mul-float v50, v50, v6

    sub-float v30, v30, v50

    mul-float v29, v8, v44

    add-float v30, v30, v29

    mul-float v35, v35, v9

    sub-float v30, v30, v35

    mul-float v30, v30, v5

    add-float v28, v28, v30

    mul-float v31, v31, v28

    add-float v26, v26, v31

    const/16 v28, 0x3

    .line 196
    aget v28, v0, v28

    mul-float v27, v27, v12

    mul-float v29, v17, v25

    mul-float v30, v20, v22

    sub-float v29, v29, v30

    mul-float v30, v14, v29

    sub-float v27, v27, v30

    mul-float v30, v17, v24

    mul-float v31, v19, v22

    sub-float v30, v30, v31

    mul-float v31, v15, v30

    add-float v27, v27, v31

    mul-float v31, v6, v27

    mul-float v32, v32, v7

    sub-float v31, v31, v32

    mul-float v32, v11, v29

    mul-float v35, v12, v33

    sub-float v32, v32, v35

    mul-float v35, v16, v22

    mul-float v48, v17, v21

    sub-float v35, v35, v48

    mul-float v48, v15, v35

    add-float v32, v32, v48

    mul-float v48, v9, v32

    add-float v31, v31, v48

    mul-float v48, v11, v30

    mul-float v34, v34, v12

    sub-float v48, v48, v34

    mul-float v34, v14, v35

    add-float v48, v48, v34

    mul-float v34, v10, v48

    sub-float v31, v31, v34

    mul-float v31, v31, v38

    mul-float v27, v27, v39

    mul-float v45, v45, v7

    sub-float v27, v27, v45

    mul-float v34, v40, v29

    mul-float v45, v12, v46

    sub-float v34, v34, v45

    mul-float v45, v41, v22

    mul-float v49, v17, v42

    sub-float v45, v45, v49

    mul-float v49, v15, v45

    add-float v34, v34, v49

    mul-float v49, v9, v34

    add-float v27, v27, v49

    mul-float v30, v30, v40

    mul-float v47, v47, v12

    sub-float v30, v30, v47

    mul-float v47, v14, v45

    add-float v30, v30, v47

    mul-float v47, v10, v30

    sub-float v27, v27, v47

    mul-float v27, v27, v1

    sub-float v31, v31, v27

    mul-float v36, v36, v2

    add-float v31, v31, v36

    mul-float v27, v39, v32

    mul-float v36, v6, v34

    sub-float v27, v27, v36

    mul-float v36, v7, v37

    add-float v27, v27, v36

    mul-float v36, v40, v35

    mul-float v47, v11, v45

    sub-float v36, v36, v47

    mul-float v47, v12, v43

    add-float v36, v36, v47

    mul-float v47, v10, v36

    sub-float v27, v27, v47

    mul-float v47, v4, v27

    sub-float v31, v31, v47

    mul-float v48, v48, v39

    mul-float v30, v30, v6

    sub-float v48, v48, v30

    mul-float v44, v44, v7

    add-float v48, v48, v44

    mul-float v30, v9, v36

    sub-float v48, v48, v30

    mul-float v48, v48, v5

    add-float v31, v31, v48

    mul-float v28, v28, v31

    sub-float v26, v26, v28

    const/16 v28, 0x4

    .line 202
    aget v28, v0, v28

    mul-float v25, v25, v18

    mul-float v20, v20, v23

    sub-float v25, v25, v20

    mul-float v20, v12, v25

    mul-float v29, v29, v13

    sub-float v20, v20, v29

    mul-float v29, v17, v23

    mul-float v30, v18, v22

    sub-float v29, v29, v30

    mul-float v30, v15, v29

    add-float v20, v20, v30

    mul-float v30, v6, v20

    mul-float v31, v11, v25

    mul-float v33, v33, v13

    sub-float v31, v31, v33

    mul-float v33, v16, v23

    mul-float v44, v18, v21

    sub-float v33, v33, v44

    mul-float v44, v15, v33

    add-float v31, v31, v44

    mul-float v44, v7, v31

    sub-float v30, v30, v44

    mul-float v32, v32, v8

    add-float v30, v30, v32

    mul-float v32, v11, v29

    mul-float v44, v12, v33

    sub-float v32, v32, v44

    mul-float v44, v13, v35

    add-float v32, v32, v44

    mul-float v44, v10, v32

    sub-float v30, v30, v44

    mul-float v30, v30, v38

    mul-float v20, v20, v39

    mul-float v25, v25, v40

    mul-float v46, v46, v13

    sub-float v25, v25, v46

    mul-float v44, v41, v23

    mul-float v46, v18, v42

    sub-float v44, v44, v46

    mul-float v15, v15, v44

    add-float v25, v25, v15

    mul-float v15, v7, v25

    sub-float v20, v20, v15

    mul-float v34, v34, v8

    add-float v20, v20, v34

    mul-float v15, v40, v29

    mul-float v34, v12, v44

    sub-float v15, v15, v34

    mul-float v34, v13, v45

    add-float v15, v15, v34

    mul-float v34, v10, v15

    sub-float v20, v20, v34

    mul-float v20, v20, v1

    sub-float v30, v30, v20

    mul-float v31, v31, v39

    mul-float v25, v25, v6

    sub-float v31, v31, v25

    mul-float v37, v37, v8

    add-float v31, v31, v37

    mul-float v20, v40, v33

    mul-float v25, v11, v44

    sub-float v20, v20, v25

    mul-float v25, v13, v43

    add-float v20, v20, v25

    mul-float v10, v10, v20

    sub-float v31, v31, v10

    mul-float v31, v31, v2

    add-float v30, v30, v31

    mul-float v27, v27, v3

    sub-float v30, v30, v27

    mul-float v10, v39, v32

    mul-float v25, v6, v15

    sub-float v10, v10, v25

    mul-float v25, v7, v20

    add-float v10, v10, v25

    mul-float v25, v8, v36

    sub-float v10, v10, v25

    mul-float/2addr v5, v10

    add-float v30, v30, v5

    mul-float v28, v28, v30

    add-float v26, v26, v28

    const/4 v5, 0x5

    .line 208
    aget v0, v0, v5

    mul-float v18, v18, v24

    mul-float v23, v23, v19

    sub-float v18, v18, v23

    mul-float v5, v12, v18

    mul-float v17, v17, v24

    mul-float v22, v22, v19

    sub-float v17, v17, v22

    mul-float v22, v13, v17

    sub-float v5, v5, v22

    mul-float v29, v29, v14

    add-float v5, v5, v29

    mul-float v22, v6, v5

    mul-float v23, v11, v18

    mul-float v16, v16, v24

    mul-float v21, v21, v19

    sub-float v16, v16, v21

    mul-float v21, v13, v16

    sub-float v23, v23, v21

    mul-float v33, v33, v14

    add-float v23, v23, v33

    mul-float v21, v7, v23

    sub-float v22, v22, v21

    mul-float v21, v11, v17

    mul-float v25, v12, v16

    sub-float v21, v21, v25

    mul-float v35, v35, v14

    add-float v21, v21, v35

    mul-float v25, v8, v21

    add-float v22, v22, v25

    mul-float v32, v32, v9

    sub-float v22, v22, v32

    mul-float v38, v38, v22

    mul-float v5, v5, v39

    mul-float v18, v18, v40

    mul-float v41, v41, v24

    mul-float v19, v19, v42

    sub-float v41, v41, v19

    mul-float v13, v13, v41

    sub-float v18, v18, v13

    mul-float v44, v44, v14

    add-float v18, v18, v44

    mul-float v13, v7, v18

    sub-float/2addr v5, v13

    mul-float v17, v17, v40

    mul-float v12, v12, v41

    sub-float v17, v17, v12

    mul-float v45, v45, v14

    add-float v17, v17, v45

    mul-float v12, v8, v17

    add-float/2addr v5, v12

    mul-float/2addr v15, v9

    sub-float/2addr v5, v15

    mul-float/2addr v1, v5

    sub-float v38, v38, v1

    mul-float v23, v23, v39

    mul-float v18, v18, v6

    sub-float v23, v23, v18

    mul-float v40, v40, v16

    mul-float v11, v11, v41

    sub-float v40, v40, v11

    mul-float v14, v14, v43

    add-float v40, v40, v14

    mul-float v8, v8, v40

    add-float v23, v23, v8

    mul-float v20, v20, v9

    sub-float v23, v23, v20

    mul-float v2, v2, v23

    add-float v38, v38, v2

    mul-float v39, v39, v21

    mul-float v6, v6, v17

    sub-float v39, v39, v6

    mul-float v7, v7, v40

    add-float v39, v39, v7

    mul-float v9, v9, v36

    sub-float v39, v39, v9

    mul-float v3, v3, v39

    sub-float v38, v38, v3

    mul-float/2addr v4, v10

    add-float v38, v38, v4

    mul-float v0, v0, v38

    sub-float v26, v26, v0

    return v26
.end method
