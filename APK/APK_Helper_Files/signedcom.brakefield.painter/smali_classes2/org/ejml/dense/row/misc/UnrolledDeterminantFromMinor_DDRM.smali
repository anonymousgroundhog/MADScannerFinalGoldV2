.class public Lorg/ejml/dense/row/misc/UnrolledDeterminantFromMinor_DDRM;
.super Ljava/lang/Object;
.source "UnrolledDeterminantFromMinor_DDRM.java"


# static fields
.field public static final MAX:I = 0x6


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static det(Lorg/ejml/data/DMatrix1Row;)D
    .locals 2

    .line 38
    iget v0, p0, Lorg/ejml/data/DMatrix1Row;->numRows:I

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
    invoke-static {p0}, Lorg/ejml/dense/row/misc/UnrolledDeterminantFromMinor_DDRM;->det6(Lorg/ejml/data/DMatrix1Row;)D

    move-result-wide v0

    return-wide v0

    .line 44
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Not supported"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 42
    :cond_1
    invoke-static {p0}, Lorg/ejml/dense/row/misc/UnrolledDeterminantFromMinor_DDRM;->det5(Lorg/ejml/data/DMatrix1Row;)D

    move-result-wide v0

    return-wide v0

    .line 41
    :cond_2
    invoke-static {p0}, Lorg/ejml/dense/row/misc/UnrolledDeterminantFromMinor_DDRM;->det4(Lorg/ejml/data/DMatrix1Row;)D

    move-result-wide v0

    return-wide v0

    .line 40
    :cond_3
    invoke-static {p0}, Lorg/ejml/dense/row/misc/UnrolledDeterminantFromMinor_DDRM;->det3(Lorg/ejml/data/DMatrix1Row;)D

    move-result-wide v0

    return-wide v0

    .line 39
    :cond_4
    invoke-static {p0}, Lorg/ejml/dense/row/misc/UnrolledDeterminantFromMinor_DDRM;->det2(Lorg/ejml/data/DMatrix1Row;)D

    move-result-wide v0

    return-wide v0
.end method

.method public static det2(Lorg/ejml/data/DMatrix1Row;)D
    .locals 6

    .line 50
    iget-object p0, p0, Lorg/ejml/data/DMatrix1Row;->data:[D

    const/4 v0, 0x0

    .line 52
    aget-wide v0, p0, v0

    const/4 v2, 0x3

    aget-wide v2, p0, v2

    mul-double/2addr v0, v2

    const/4 v2, 0x1

    aget-wide v2, p0, v2

    const/4 v4, 0x2

    aget-wide v4, p0, v4

    mul-double/2addr v2, v4

    sub-double/2addr v0, v2

    return-wide v0
.end method

.method public static det3(Lorg/ejml/data/DMatrix1Row;)D
    .locals 23

    move-object/from16 v0, p0

    .line 57
    iget-object v0, v0, Lorg/ejml/data/DMatrix1Row;->data:[D

    const/4 v1, 0x0

    .line 59
    aget-wide v1, v0, v1

    const/4 v3, 0x1

    .line 60
    aget-wide v3, v0, v3

    const/4 v5, 0x2

    .line 61
    aget-wide v5, v0, v5

    const/4 v7, 0x3

    .line 62
    aget-wide v7, v0, v7

    const/4 v9, 0x4

    .line 63
    aget-wide v9, v0, v9

    const/4 v11, 0x5

    .line 64
    aget-wide v11, v0, v11

    const/4 v13, 0x6

    .line 65
    aget-wide v13, v0, v13

    const/4 v15, 0x7

    .line 66
    aget-wide v15, v0, v15

    const/16 v17, 0x8

    .line 67
    aget-wide v17, v0, v17

    mul-double v19, v9, v17

    mul-double v21, v11, v15

    sub-double v19, v19, v21

    mul-double v1, v1, v19

    mul-double v17, v17, v7

    mul-double/2addr v11, v13

    sub-double v17, v17, v11

    mul-double v3, v3, v17

    mul-double/2addr v7, v15

    mul-double/2addr v13, v9

    sub-double/2addr v7, v13

    mul-double/2addr v5, v7

    sub-double/2addr v1, v3

    add-double/2addr v1, v5

    return-wide v1
.end method

.method public static det4(Lorg/ejml/data/DMatrix1Row;)D
    .locals 37

    move-object/from16 v0, p0

    .line 78
    iget-object v0, v0, Lorg/ejml/data/DMatrix1Row;->data:[D

    const/4 v1, 0x5

    .line 80
    aget-wide v1, v0, v1

    const/4 v3, 0x6

    aget-wide v3, v0, v3

    const/4 v5, 0x7

    aget-wide v5, v0, v5

    const/16 v7, 0x9

    .line 81
    aget-wide v7, v0, v7

    const/16 v9, 0xa

    aget-wide v9, v0, v9

    const/16 v11, 0xb

    aget-wide v11, v0, v11

    const/16 v13, 0xd

    .line 82
    aget-wide v13, v0, v13

    const/16 v15, 0xe

    aget-wide v15, v0, v15

    const/16 v17, 0xf

    aget-wide v17, v0, v17

    const/16 v19, 0x0

    .line 85
    aget-wide v19, v0, v19

    mul-double v21, v9, v17

    mul-double v23, v11, v15

    sub-double v21, v21, v23

    mul-double v23, v1, v21

    mul-double v25, v7, v17

    mul-double v27, v11, v13

    sub-double v25, v25, v27

    mul-double v25, v25, v3

    sub-double v23, v23, v25

    mul-double v25, v7, v15

    mul-double v27, v9, v13

    sub-double v25, v25, v27

    mul-double v25, v25, v5

    add-double v23, v23, v25

    mul-double v19, v19, v23

    const-wide/16 v23, 0x0

    add-double v19, v19, v23

    const/16 v23, 0x4

    .line 86
    aget-wide v23, v0, v23

    const/16 v25, 0x8

    .line 87
    aget-wide v25, v0, v25

    const/16 v27, 0xc

    .line 88
    aget-wide v27, v0, v27

    const/16 v29, 0x1

    .line 89
    aget-wide v29, v0, v29

    mul-double v21, v21, v23

    mul-double v31, v25, v17

    mul-double v33, v11, v27

    sub-double v31, v31, v33

    mul-double v33, v3, v31

    sub-double v21, v21, v33

    mul-double v33, v25, v15

    mul-double v35, v9, v27

    sub-double v33, v33, v35

    mul-double v33, v33, v5

    add-double v21, v21, v33

    mul-double v29, v29, v21

    sub-double v19, v19, v29

    const/16 v21, 0x2

    .line 93
    aget-wide v21, v0, v21

    mul-double v17, v17, v7

    mul-double/2addr v11, v13

    sub-double v17, v17, v11

    mul-double v17, v17, v23

    mul-double v31, v31, v1

    sub-double v17, v17, v31

    mul-double v11, v25, v13

    mul-double v29, v7, v27

    sub-double v11, v11, v29

    mul-double/2addr v5, v11

    add-double v17, v17, v5

    mul-double v21, v21, v17

    add-double v19, v19, v21

    const/4 v5, 0x3

    .line 97
    aget-wide v5, v0, v5

    mul-double/2addr v7, v15

    mul-double/2addr v13, v9

    sub-double/2addr v7, v13

    mul-double v23, v23, v7

    mul-double v25, v25, v15

    mul-double v9, v9, v27

    sub-double v25, v25, v9

    mul-double v1, v1, v25

    sub-double v23, v23, v1

    mul-double/2addr v3, v11

    add-double v23, v23, v3

    mul-double v5, v5, v23

    sub-double v19, v19, v5

    return-wide v19
.end method

.method public static det5(Lorg/ejml/data/DMatrix1Row;)D
    .locals 63

    move-object/from16 v0, p0

    .line 103
    iget-object v0, v0, Lorg/ejml/data/DMatrix1Row;->data:[D

    const/4 v1, 0x6

    .line 105
    aget-wide v1, v0, v1

    const/4 v3, 0x7

    .line 106
    aget-wide v3, v0, v3

    const/16 v5, 0x8

    .line 107
    aget-wide v5, v0, v5

    const/16 v7, 0x9

    .line 108
    aget-wide v7, v0, v7

    const/16 v9, 0xb

    .line 109
    aget-wide v9, v0, v9

    const/16 v11, 0xc

    .line 110
    aget-wide v11, v0, v11

    const/16 v13, 0xd

    .line 111
    aget-wide v13, v0, v13

    const/16 v15, 0xe

    .line 112
    aget-wide v15, v0, v15

    const/16 v17, 0x10

    .line 113
    aget-wide v17, v0, v17

    const/16 v19, 0x11

    .line 114
    aget-wide v19, v0, v19

    const/16 v21, 0x12

    .line 115
    aget-wide v21, v0, v21

    const/16 v23, 0x13

    .line 116
    aget-wide v23, v0, v23

    const/16 v25, 0x15

    .line 117
    aget-wide v25, v0, v25

    const/16 v27, 0x16

    .line 118
    aget-wide v27, v0, v27

    const/16 v29, 0x17

    .line 119
    aget-wide v29, v0, v29

    const/16 v31, 0x18

    .line 120
    aget-wide v31, v0, v31

    const/16 v33, 0x0

    .line 123
    aget-wide v33, v0, v33

    mul-double v35, v21, v31

    mul-double v37, v23, v29

    sub-double v35, v35, v37

    mul-double v37, v11, v35

    mul-double v39, v19, v31

    mul-double v41, v23, v27

    sub-double v39, v39, v41

    mul-double v41, v13, v39

    sub-double v37, v37, v41

    mul-double v41, v19, v29

    mul-double v43, v21, v27

    sub-double v41, v41, v43

    mul-double v43, v15, v41

    add-double v37, v37, v43

    mul-double v43, v1, v37

    mul-double v45, v9, v35

    mul-double v47, v17, v31

    mul-double v49, v23, v25

    sub-double v47, v47, v49

    mul-double v49, v13, v47

    sub-double v45, v45, v49

    mul-double v49, v17, v29

    mul-double v51, v21, v25

    sub-double v49, v49, v51

    mul-double v51, v15, v49

    add-double v45, v45, v51

    mul-double v45, v45, v3

    sub-double v43, v43, v45

    mul-double v45, v9, v39

    mul-double v47, v47, v11

    sub-double v45, v45, v47

    mul-double v47, v17, v27

    mul-double v51, v19, v25

    sub-double v47, v47, v51

    mul-double v51, v15, v47

    add-double v45, v45, v51

    mul-double v45, v45, v5

    add-double v43, v43, v45

    mul-double v45, v9, v41

    mul-double v49, v49, v11

    sub-double v45, v45, v49

    mul-double v47, v47, v13

    add-double v45, v45, v47

    mul-double v45, v45, v7

    sub-double v43, v43, v45

    mul-double v33, v33, v43

    const-wide/16 v43, 0x0

    add-double v33, v33, v43

    const/16 v43, 0x5

    .line 124
    aget-wide v43, v0, v43

    const/16 v45, 0xa

    .line 125
    aget-wide v45, v0, v45

    const/16 v47, 0xf

    .line 126
    aget-wide v47, v0, v47

    const/16 v49, 0x14

    .line 127
    aget-wide v49, v0, v49

    const/16 v51, 0x1

    .line 128
    aget-wide v51, v0, v51

    mul-double v37, v37, v43

    mul-double v53, v45, v35

    mul-double v55, v47, v31

    mul-double v57, v23, v49

    sub-double v55, v55, v57

    mul-double v57, v13, v55

    sub-double v53, v53, v57

    mul-double v57, v47, v29

    mul-double v59, v21, v49

    sub-double v57, v57, v59

    mul-double v59, v15, v57

    add-double v53, v53, v59

    mul-double v59, v3, v53

    sub-double v37, v37, v59

    mul-double v39, v39, v45

    mul-double v59, v11, v55

    sub-double v39, v39, v59

    mul-double v59, v47, v27

    mul-double v61, v19, v49

    sub-double v59, v59, v61

    mul-double v61, v15, v59

    add-double v39, v39, v61

    mul-double v39, v39, v5

    add-double v37, v37, v39

    mul-double v41, v41, v45

    mul-double v39, v11, v57

    sub-double v41, v41, v39

    mul-double v59, v59, v13

    add-double v41, v41, v59

    mul-double v41, v41, v7

    sub-double v37, v37, v41

    mul-double v51, v51, v37

    sub-double v33, v33, v51

    const/16 v37, 0x2

    .line 133
    aget-wide v37, v0, v37

    mul-double v35, v35, v9

    mul-double v39, v17, v31

    mul-double v41, v23, v25

    sub-double v39, v39, v41

    mul-double v41, v13, v39

    sub-double v35, v35, v41

    mul-double v41, v17, v29

    mul-double v51, v21, v25

    sub-double v41, v41, v51

    mul-double v51, v15, v41

    add-double v35, v35, v51

    mul-double v35, v35, v43

    mul-double v53, v53, v1

    sub-double v35, v35, v53

    mul-double v51, v45, v39

    mul-double v53, v9, v55

    sub-double v51, v51, v53

    mul-double v53, v47, v25

    mul-double v59, v17, v49

    sub-double v53, v53, v59

    mul-double v59, v15, v53

    add-double v51, v51, v59

    mul-double v59, v5, v51

    add-double v35, v35, v59

    mul-double v41, v41, v45

    mul-double v57, v57, v9

    sub-double v41, v41, v57

    mul-double v57, v13, v53

    add-double v41, v41, v57

    mul-double v41, v41, v7

    sub-double v35, v35, v41

    mul-double v37, v37, v35

    add-double v33, v33, v37

    const/16 v35, 0x3

    .line 138
    aget-wide v35, v0, v35

    mul-double v31, v31, v19

    mul-double v23, v23, v27

    sub-double v31, v31, v23

    mul-double v23, v9, v31

    mul-double v39, v39, v11

    sub-double v23, v23, v39

    mul-double v37, v17, v27

    mul-double v39, v19, v25

    sub-double v37, v37, v39

    mul-double v39, v15, v37

    add-double v23, v23, v39

    mul-double v23, v23, v43

    mul-double v31, v31, v45

    mul-double v55, v55, v11

    sub-double v31, v31, v55

    mul-double v39, v47, v27

    mul-double v41, v19, v49

    sub-double v39, v39, v41

    mul-double v15, v15, v39

    add-double v31, v31, v15

    mul-double v31, v31, v1

    sub-double v23, v23, v31

    mul-double v51, v51, v3

    add-double v23, v23, v51

    mul-double v15, v45, v37

    mul-double v31, v9, v39

    sub-double v15, v15, v31

    mul-double v31, v11, v53

    add-double v15, v15, v31

    mul-double/2addr v7, v15

    sub-double v23, v23, v7

    mul-double v35, v35, v23

    sub-double v33, v33, v35

    const/4 v7, 0x4

    .line 143
    aget-wide v7, v0, v7

    mul-double v19, v19, v29

    mul-double v27, v27, v21

    sub-double v19, v19, v27

    mul-double v23, v9, v19

    mul-double v17, v17, v29

    mul-double v25, v25, v21

    sub-double v17, v17, v25

    mul-double v25, v11, v17

    sub-double v23, v23, v25

    mul-double v37, v37, v13

    add-double v23, v23, v37

    mul-double v43, v43, v23

    mul-double v19, v19, v45

    mul-double v47, v47, v29

    mul-double v21, v21, v49

    sub-double v47, v47, v21

    mul-double v11, v11, v47

    sub-double v19, v19, v11

    mul-double v39, v39, v13

    add-double v19, v19, v39

    mul-double v1, v1, v19

    sub-double v43, v43, v1

    mul-double v45, v45, v17

    mul-double v9, v9, v47

    sub-double v45, v45, v9

    mul-double v13, v13, v53

    add-double v45, v45, v13

    mul-double v3, v3, v45

    add-double v43, v43, v3

    mul-double/2addr v5, v15

    sub-double v43, v43, v5

    mul-double v7, v7, v43

    add-double v33, v33, v7

    return-wide v33
.end method

.method public static det6(Lorg/ejml/data/DMatrix1Row;)D
    .locals 105

    move-object/from16 v0, p0

    .line 149
    iget-object v0, v0, Lorg/ejml/data/DMatrix1Row;->data:[D

    const/4 v1, 0x7

    .line 151
    aget-wide v1, v0, v1

    const/16 v3, 0x8

    .line 152
    aget-wide v3, v0, v3

    const/16 v5, 0x9

    .line 153
    aget-wide v5, v0, v5

    const/16 v7, 0xa

    .line 154
    aget-wide v7, v0, v7

    const/16 v9, 0xb

    .line 155
    aget-wide v9, v0, v9

    const/16 v11, 0xd

    .line 156
    aget-wide v11, v0, v11

    const/16 v13, 0xe

    .line 157
    aget-wide v13, v0, v13

    const/16 v15, 0xf

    .line 158
    aget-wide v15, v0, v15

    const/16 v17, 0x10

    .line 159
    aget-wide v17, v0, v17

    const/16 v19, 0x11

    .line 160
    aget-wide v19, v0, v19

    const/16 v21, 0x13

    .line 161
    aget-wide v21, v0, v21

    const/16 v23, 0x14

    .line 162
    aget-wide v23, v0, v23

    const/16 v25, 0x15

    .line 163
    aget-wide v25, v0, v25

    const/16 v27, 0x16

    .line 164
    aget-wide v27, v0, v27

    const/16 v29, 0x17

    .line 165
    aget-wide v29, v0, v29

    const/16 v31, 0x19

    .line 166
    aget-wide v31, v0, v31

    const/16 v33, 0x1a

    .line 167
    aget-wide v33, v0, v33

    const/16 v35, 0x1b

    .line 168
    aget-wide v35, v0, v35

    const/16 v37, 0x1c

    .line 169
    aget-wide v37, v0, v37

    const/16 v39, 0x1d

    .line 170
    aget-wide v39, v0, v39

    const/16 v41, 0x1f

    .line 171
    aget-wide v41, v0, v41

    const/16 v43, 0x20

    .line 172
    aget-wide v43, v0, v43

    const/16 v45, 0x21

    .line 173
    aget-wide v45, v0, v45

    const/16 v47, 0x22

    .line 174
    aget-wide v47, v0, v47

    const/16 v49, 0x23

    .line 175
    aget-wide v49, v0, v49

    const/16 v51, 0x0

    .line 178
    aget-wide v51, v0, v51

    mul-double v53, v37, v49

    mul-double v55, v39, v47

    sub-double v53, v53, v55

    mul-double v55, v25, v53

    mul-double v57, v35, v49

    mul-double v59, v39, v45

    sub-double v57, v57, v59

    mul-double v59, v27, v57

    sub-double v55, v55, v59

    mul-double v59, v35, v47

    mul-double v61, v37, v45

    sub-double v59, v59, v61

    mul-double v61, v29, v59

    add-double v55, v55, v61

    mul-double v61, v13, v55

    mul-double v63, v23, v53

    mul-double v65, v33, v49

    mul-double v67, v39, v43

    sub-double v65, v65, v67

    mul-double v67, v27, v65

    sub-double v63, v63, v67

    mul-double v67, v33, v47

    mul-double v69, v37, v43

    sub-double v67, v67, v69

    mul-double v69, v29, v67

    add-double v63, v63, v69

    mul-double v69, v15, v63

    sub-double v61, v61, v69

    mul-double v69, v23, v57

    mul-double v71, v25, v65

    sub-double v69, v69, v71

    mul-double v71, v33, v45

    mul-double v73, v35, v43

    sub-double v71, v71, v73

    mul-double v73, v29, v71

    add-double v69, v69, v73

    mul-double v73, v17, v69

    add-double v61, v61, v73

    mul-double v73, v23, v59

    mul-double v75, v25, v67

    sub-double v73, v73, v75

    mul-double v75, v27, v71

    add-double v73, v73, v75

    mul-double v75, v19, v73

    sub-double v61, v61, v75

    mul-double v75, v1, v61

    mul-double v77, v11, v55

    mul-double v79, v21, v53

    mul-double v81, v31, v49

    mul-double v83, v39, v41

    sub-double v81, v81, v83

    mul-double v83, v27, v81

    sub-double v79, v79, v83

    mul-double v83, v31, v47

    mul-double v85, v37, v41

    sub-double v83, v83, v85

    mul-double v85, v29, v83

    add-double v79, v79, v85

    mul-double v85, v15, v79

    sub-double v77, v77, v85

    mul-double v85, v21, v57

    mul-double v87, v25, v81

    sub-double v85, v85, v87

    mul-double v87, v31, v45

    mul-double v89, v35, v41

    sub-double v87, v87, v89

    mul-double v89, v29, v87

    add-double v85, v85, v89

    mul-double v89, v17, v85

    add-double v77, v77, v89

    mul-double v89, v21, v59

    mul-double v91, v25, v83

    sub-double v89, v89, v91

    mul-double v91, v27, v87

    add-double v89, v89, v91

    mul-double v91, v19, v89

    sub-double v77, v77, v91

    mul-double v77, v77, v3

    sub-double v75, v75, v77

    mul-double v77, v11, v63

    mul-double v79, v79, v13

    sub-double v77, v77, v79

    mul-double v79, v21, v65

    mul-double v81, v81, v23

    sub-double v79, v79, v81

    mul-double v81, v31, v43

    mul-double v91, v33, v41

    sub-double v81, v81, v91

    mul-double v91, v29, v81

    add-double v79, v79, v91

    mul-double v91, v17, v79

    add-double v77, v77, v91

    mul-double v91, v21, v67

    mul-double v83, v83, v23

    sub-double v91, v91, v83

    mul-double v83, v27, v81

    add-double v91, v91, v83

    mul-double v83, v19, v91

    sub-double v77, v77, v83

    mul-double v77, v77, v5

    add-double v75, v75, v77

    mul-double v77, v11, v69

    mul-double v85, v85, v13

    sub-double v77, v77, v85

    mul-double v79, v79, v15

    add-double v77, v77, v79

    mul-double v79, v21, v71

    mul-double v87, v87, v23

    sub-double v79, v79, v87

    mul-double v81, v81, v25

    add-double v79, v79, v81

    mul-double v81, v19, v79

    sub-double v77, v77, v81

    mul-double v77, v77, v7

    sub-double v75, v75, v77

    mul-double v77, v11, v73

    mul-double v89, v89, v13

    sub-double v77, v77, v89

    mul-double v91, v91, v15

    add-double v77, v77, v91

    mul-double v79, v79, v17

    sub-double v77, v77, v79

    mul-double v77, v77, v9

    add-double v75, v75, v77

    mul-double v51, v51, v75

    const-wide/16 v75, 0x0

    add-double v51, v51, v75

    const/16 v75, 0x6

    .line 179
    aget-wide v75, v0, v75

    const/16 v77, 0xc

    .line 180
    aget-wide v77, v0, v77

    const/16 v79, 0x12

    .line 181
    aget-wide v79, v0, v79

    const/16 v81, 0x18

    .line 182
    aget-wide v81, v0, v81

    const/16 v83, 0x1e

    .line 183
    aget-wide v83, v0, v83

    const/16 v85, 0x1

    .line 184
    aget-wide v85, v0, v85

    mul-double v61, v61, v75

    mul-double v87, v77, v55

    mul-double v89, v79, v53

    mul-double v91, v81, v49

    mul-double v93, v39, v83

    sub-double v91, v91, v93

    mul-double v93, v27, v91

    sub-double v89, v89, v93

    mul-double v93, v81, v47

    mul-double v95, v37, v83

    sub-double v93, v93, v95

    mul-double v95, v29, v93

    add-double v89, v89, v95

    mul-double v95, v15, v89

    sub-double v87, v87, v95

    mul-double v95, v79, v57

    mul-double v97, v25, v91

    sub-double v95, v95, v97

    mul-double v97, v81, v45

    mul-double v99, v35, v83

    sub-double v97, v97, v99

    mul-double v99, v29, v97

    add-double v95, v95, v99

    mul-double v99, v17, v95

    add-double v87, v87, v99

    mul-double v99, v79, v59

    mul-double v101, v25, v93

    sub-double v99, v99, v101

    mul-double v101, v27, v97

    add-double v99, v99, v101

    mul-double v101, v19, v99

    sub-double v87, v87, v101

    mul-double v101, v3, v87

    sub-double v61, v61, v101

    mul-double v63, v63, v77

    mul-double v101, v13, v89

    sub-double v63, v63, v101

    mul-double v65, v65, v79

    mul-double v101, v23, v91

    sub-double v65, v65, v101

    mul-double v101, v81, v43

    mul-double v103, v33, v83

    sub-double v101, v101, v103

    mul-double v103, v29, v101

    add-double v65, v65, v103

    mul-double v103, v17, v65

    add-double v63, v63, v103

    mul-double v67, v67, v79

    mul-double v103, v23, v93

    sub-double v67, v67, v103

    mul-double v103, v27, v101

    add-double v67, v67, v103

    mul-double v103, v19, v67

    sub-double v63, v63, v103

    mul-double v63, v63, v5

    add-double v61, v61, v63

    mul-double v69, v69, v77

    mul-double v63, v13, v95

    sub-double v69, v69, v63

    mul-double v65, v65, v15

    add-double v69, v69, v65

    mul-double v71, v71, v79

    mul-double v63, v23, v97

    sub-double v71, v71, v63

    mul-double v101, v101, v25

    add-double v71, v71, v101

    mul-double v63, v19, v71

    sub-double v69, v69, v63

    mul-double v69, v69, v7

    sub-double v61, v61, v69

    mul-double v73, v73, v77

    mul-double v63, v13, v99

    sub-double v73, v73, v63

    mul-double v67, v67, v15

    add-double v73, v73, v67

    mul-double v71, v71, v17

    sub-double v73, v73, v71

    mul-double v73, v73, v9

    add-double v61, v61, v73

    mul-double v85, v85, v61

    sub-double v51, v51, v85

    const/16 v61, 0x2

    .line 190
    aget-wide v61, v0, v61

    mul-double v55, v55, v11

    mul-double v63, v21, v53

    mul-double v65, v31, v49

    mul-double v67, v39, v41

    sub-double v65, v65, v67

    mul-double v67, v27, v65

    sub-double v63, v63, v67

    mul-double v67, v31, v47

    mul-double v69, v37, v41

    sub-double v67, v67, v69

    mul-double v69, v29, v67

    add-double v63, v63, v69

    mul-double v69, v15, v63

    sub-double v55, v55, v69

    mul-double v57, v57, v21

    mul-double v69, v25, v65

    sub-double v57, v57, v69

    mul-double v69, v31, v45

    mul-double v71, v35, v41

    sub-double v69, v69, v71

    mul-double v71, v29, v69

    add-double v57, v57, v71

    mul-double v71, v17, v57

    add-double v55, v55, v71

    mul-double v59, v59, v21

    mul-double v71, v25, v67

    sub-double v59, v59, v71

    mul-double v71, v27, v69

    add-double v59, v59, v71

    mul-double v71, v19, v59

    sub-double v55, v55, v71

    mul-double v55, v55, v75

    mul-double v87, v87, v1

    sub-double v55, v55, v87

    mul-double v71, v77, v63

    mul-double v73, v11, v89

    sub-double v71, v71, v73

    mul-double v73, v79, v65

    mul-double v85, v21, v91

    sub-double v73, v73, v85

    mul-double v85, v81, v41

    mul-double v87, v31, v83

    sub-double v85, v85, v87

    mul-double v87, v29, v85

    add-double v73, v73, v87

    mul-double v87, v17, v73

    add-double v71, v71, v87

    mul-double v87, v79, v67

    mul-double v101, v21, v93

    sub-double v87, v87, v101

    mul-double v101, v27, v85

    add-double v87, v87, v101

    mul-double v101, v19, v87

    sub-double v71, v71, v101

    mul-double v101, v5, v71

    add-double v55, v55, v101

    mul-double v57, v57, v77

    mul-double v95, v95, v11

    sub-double v57, v57, v95

    mul-double v95, v15, v73

    add-double v57, v57, v95

    mul-double v69, v69, v79

    mul-double v97, v97, v21

    sub-double v69, v69, v97

    mul-double v95, v25, v85

    add-double v69, v69, v95

    mul-double v95, v19, v69

    sub-double v57, v57, v95

    mul-double v57, v57, v7

    sub-double v55, v55, v57

    mul-double v59, v59, v77

    mul-double v99, v99, v11

    sub-double v59, v59, v99

    mul-double v57, v15, v87

    add-double v59, v59, v57

    mul-double v69, v69, v17

    sub-double v59, v59, v69

    mul-double v59, v59, v9

    add-double v55, v55, v59

    mul-double v61, v61, v55

    add-double v51, v51, v61

    const/16 v55, 0x3

    .line 196
    aget-wide v55, v0, v55

    mul-double v53, v53, v23

    mul-double v57, v33, v49

    mul-double v59, v39, v43

    sub-double v57, v57, v59

    mul-double v59, v27, v57

    sub-double v53, v53, v59

    mul-double v59, v33, v47

    mul-double v61, v37, v43

    sub-double v59, v59, v61

    mul-double v61, v29, v59

    add-double v53, v53, v61

    mul-double v61, v11, v53

    mul-double v63, v63, v13

    sub-double v61, v61, v63

    mul-double v63, v21, v57

    mul-double v69, v23, v65

    sub-double v63, v63, v69

    mul-double v69, v31, v43

    mul-double v95, v33, v41

    sub-double v69, v69, v95

    mul-double v95, v29, v69

    add-double v63, v63, v95

    mul-double v95, v17, v63

    add-double v61, v61, v95

    mul-double v95, v21, v59

    mul-double v67, v67, v23

    sub-double v95, v95, v67

    mul-double v67, v27, v69

    add-double v95, v95, v67

    mul-double v67, v19, v95

    sub-double v61, v61, v67

    mul-double v61, v61, v75

    mul-double v53, v53, v77

    mul-double v89, v89, v13

    sub-double v53, v53, v89

    mul-double v67, v79, v57

    mul-double v89, v23, v91

    sub-double v67, v67, v89

    mul-double v89, v81, v43

    mul-double v97, v33, v83

    sub-double v89, v89, v97

    mul-double v97, v29, v89

    add-double v67, v67, v97

    mul-double v97, v17, v67

    add-double v53, v53, v97

    mul-double v59, v59, v79

    mul-double v93, v93, v23

    sub-double v59, v59, v93

    mul-double v93, v27, v89

    add-double v59, v59, v93

    mul-double v93, v19, v59

    sub-double v53, v53, v93

    mul-double v53, v53, v1

    sub-double v61, v61, v53

    mul-double v71, v71, v3

    add-double v61, v61, v71

    mul-double v53, v77, v63

    mul-double v71, v11, v67

    sub-double v53, v53, v71

    mul-double v71, v13, v73

    add-double v53, v53, v71

    mul-double v71, v79, v69

    mul-double v93, v21, v89

    sub-double v71, v71, v93

    mul-double v93, v23, v85

    add-double v71, v71, v93

    mul-double v93, v19, v71

    sub-double v53, v53, v93

    mul-double v93, v7, v53

    sub-double v61, v61, v93

    mul-double v95, v95, v77

    mul-double v59, v59, v11

    sub-double v95, v95, v59

    mul-double v87, v87, v13

    add-double v95, v95, v87

    mul-double v59, v17, v71

    sub-double v95, v95, v59

    mul-double v95, v95, v9

    add-double v61, v61, v95

    mul-double v55, v55, v61

    sub-double v51, v51, v55

    const/16 v55, 0x4

    .line 202
    aget-wide v55, v0, v55

    mul-double v49, v49, v35

    mul-double v39, v39, v45

    sub-double v49, v49, v39

    mul-double v39, v23, v49

    mul-double v57, v57, v25

    sub-double v39, v39, v57

    mul-double v57, v33, v45

    mul-double v59, v35, v43

    sub-double v57, v57, v59

    mul-double v59, v29, v57

    add-double v39, v39, v59

    mul-double v59, v11, v39

    mul-double v61, v21, v49

    mul-double v65, v65, v25

    sub-double v61, v61, v65

    mul-double v65, v31, v45

    mul-double v87, v35, v41

    sub-double v65, v65, v87

    mul-double v87, v29, v65

    add-double v61, v61, v87

    mul-double v87, v13, v61

    sub-double v59, v59, v87

    mul-double v63, v63, v15

    add-double v59, v59, v63

    mul-double v63, v21, v57

    mul-double v87, v23, v65

    sub-double v63, v63, v87

    mul-double v87, v25, v69

    add-double v63, v63, v87

    mul-double v87, v19, v63

    sub-double v59, v59, v87

    mul-double v59, v59, v75

    mul-double v39, v39, v77

    mul-double v49, v49, v79

    mul-double v91, v91, v25

    sub-double v49, v49, v91

    mul-double v87, v81, v45

    mul-double v91, v35, v83

    sub-double v87, v87, v91

    mul-double v29, v29, v87

    add-double v49, v49, v29

    mul-double v29, v13, v49

    sub-double v39, v39, v29

    mul-double v67, v67, v15

    add-double v39, v39, v67

    mul-double v29, v79, v57

    mul-double v67, v23, v87

    sub-double v29, v29, v67

    mul-double v67, v25, v89

    add-double v29, v29, v67

    mul-double v67, v19, v29

    sub-double v39, v39, v67

    mul-double v39, v39, v1

    sub-double v59, v59, v39

    mul-double v61, v61, v77

    mul-double v49, v49, v11

    sub-double v61, v61, v49

    mul-double v73, v73, v15

    add-double v61, v61, v73

    mul-double v39, v79, v65

    mul-double v49, v21, v87

    sub-double v39, v39, v49

    mul-double v49, v25, v85

    add-double v39, v39, v49

    mul-double v19, v19, v39

    sub-double v61, v61, v19

    mul-double v61, v61, v3

    add-double v59, v59, v61

    mul-double v53, v53, v5

    sub-double v59, v59, v53

    mul-double v19, v77, v63

    mul-double v49, v11, v29

    sub-double v19, v19, v49

    mul-double v49, v13, v39

    add-double v19, v19, v49

    mul-double v49, v15, v71

    sub-double v19, v19, v49

    mul-double v9, v9, v19

    add-double v59, v59, v9

    mul-double v55, v55, v59

    add-double v51, v51, v55

    const/4 v9, 0x5

    .line 208
    aget-wide v9, v0, v9

    mul-double v35, v35, v47

    mul-double v45, v45, v37

    sub-double v35, v35, v45

    mul-double v45, v23, v35

    mul-double v33, v33, v47

    mul-double v43, v43, v37

    sub-double v33, v33, v43

    mul-double v43, v25, v33

    sub-double v45, v45, v43

    mul-double v57, v57, v27

    add-double v45, v45, v57

    mul-double v43, v11, v45

    mul-double v49, v21, v35

    mul-double v31, v31, v47

    mul-double v41, v41, v37

    sub-double v31, v31, v41

    mul-double v41, v25, v31

    sub-double v49, v49, v41

    mul-double v65, v65, v27

    add-double v49, v49, v65

    mul-double v41, v13, v49

    sub-double v43, v43, v41

    mul-double v41, v21, v33

    mul-double v53, v23, v31

    sub-double v41, v41, v53

    mul-double v69, v69, v27

    add-double v41, v41, v69

    mul-double v53, v15, v41

    add-double v43, v43, v53

    mul-double v63, v63, v17

    sub-double v43, v43, v63

    mul-double v75, v75, v43

    mul-double v45, v45, v77

    mul-double v35, v35, v79

    mul-double v81, v81, v47

    mul-double v37, v37, v83

    sub-double v81, v81, v37

    mul-double v25, v25, v81

    sub-double v35, v35, v25

    mul-double v87, v87, v27

    add-double v35, v35, v87

    mul-double v25, v13, v35

    sub-double v45, v45, v25

    mul-double v33, v33, v79

    mul-double v23, v23, v81

    sub-double v33, v33, v23

    mul-double v89, v89, v27

    add-double v33, v33, v89

    mul-double v23, v15, v33

    add-double v45, v45, v23

    mul-double v29, v29, v17

    sub-double v45, v45, v29

    mul-double v1, v1, v45

    sub-double v75, v75, v1

    mul-double v49, v49, v77

    mul-double v35, v35, v11

    sub-double v49, v49, v35

    mul-double v79, v79, v31

    mul-double v21, v21, v81

    sub-double v79, v79, v21

    mul-double v27, v27, v85

    add-double v79, v79, v27

    mul-double v15, v15, v79

    add-double v49, v49, v15

    mul-double v39, v39, v17

    sub-double v49, v49, v39

    mul-double v3, v3, v49

    add-double v75, v75, v3

    mul-double v77, v77, v41

    mul-double v11, v11, v33

    sub-double v77, v77, v11

    mul-double v13, v13, v79

    add-double v77, v77, v13

    mul-double v17, v17, v71

    sub-double v77, v77, v17

    mul-double v5, v5, v77

    sub-double v75, v75, v5

    mul-double v7, v7, v19

    add-double v75, v75, v7

    mul-double v9, v9, v75

    sub-double v51, v51, v9

    return-wide v51
.end method
