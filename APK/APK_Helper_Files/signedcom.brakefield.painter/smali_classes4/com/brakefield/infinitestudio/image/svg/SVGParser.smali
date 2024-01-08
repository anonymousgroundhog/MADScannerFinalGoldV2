.class public Lcom/brakefield/infinitestudio/image/svg/SVGParser;
.super Ljava/lang/Object;
.source "SVGParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/brakefield/infinitestudio/image/svg/SVGParser$NumberParse;,
        Lcom/brakefield/infinitestudio/image/svg/SVGParser$SVGHandler;,
        Lcom/brakefield/infinitestudio/image/svg/SVGParser$Properties;,
        Lcom/brakefield/infinitestudio/image/svg/SVGParser$StyleSet;,
        Lcom/brakefield/infinitestudio/image/svg/SVGParser$Gradient;
    }
.end annotation


# static fields
.field static final TAG:Ljava/lang/String; = "SVGAndroid"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$1000(Ljava/lang/String;)Lcom/brakefield/infinitestudio/geometry/PathTracer;
    .locals 0

    .line 65
    invoke-static {p0}, Lcom/brakefield/infinitestudio/image/svg/SVGParser;->doPath(Ljava/lang/String;)Lcom/brakefield/infinitestudio/geometry/PathTracer;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/String;
    .locals 0

    .line 65
    invoke-static {p0, p1}, Lcom/brakefield/infinitestudio/image/svg/SVGParser;->getStringAttr(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$500(Ljava/lang/String;Lorg/xml/sax/Attributes;Ljava/lang/Float;)Ljava/lang/Float;
    .locals 0

    .line 65
    invoke-static {p0, p1, p2}, Lcom/brakefield/infinitestudio/image/svg/SVGParser;->getFloatAttr(Ljava/lang/String;Lorg/xml/sax/Attributes;Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$600(Ljava/lang/String;)Landroid/graphics/Matrix;
    .locals 0

    .line 65
    invoke-static {p0}, Lcom/brakefield/infinitestudio/image/svg/SVGParser;->parseTransform(Ljava/lang/String;)Landroid/graphics/Matrix;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$700(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/Float;
    .locals 0

    .line 65
    invoke-static {p0, p1}, Lcom/brakefield/infinitestudio/image/svg/SVGParser;->getFloatAttr(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$900(Ljava/lang/String;Lorg/xml/sax/Attributes;)Lcom/brakefield/infinitestudio/image/svg/SVGParser$NumberParse;
    .locals 0

    .line 65
    invoke-static {p0, p1}, Lcom/brakefield/infinitestudio/image/svg/SVGParser;->getNumberParseAttr(Ljava/lang/String;Lorg/xml/sax/Attributes;)Lcom/brakefield/infinitestudio/image/svg/SVGParser$NumberParse;

    move-result-object p0

    return-object p0
.end method

.method private static doPath(Ljava/lang/String;)Lcom/brakefield/infinitestudio/geometry/PathTracer;
    .locals 25

    move-object/from16 v0, p0

    .line 426
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 427
    new-instance v2, Lcom/brakefield/infinitestudio/image/svg/ParserHelper;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3}, Lcom/brakefield/infinitestudio/image/svg/ParserHelper;-><init>(Ljava/lang/CharSequence;I)V

    .line 428
    invoke-virtual {v2}, Lcom/brakefield/infinitestudio/image/svg/ParserHelper;->skipWhitespace()V

    .line 429
    new-instance v14, Lcom/brakefield/infinitestudio/geometry/PathTracer;

    invoke-direct {v14}, Lcom/brakefield/infinitestudio/geometry/PathTracer;-><init>()V

    const/4 v15, 0x0

    move v4, v3

    move v11, v15

    move v12, v11

    move/from16 v16, v12

    move/from16 v17, v16

    move/from16 v18, v17

    move/from16 v19, v18

    .line 437
    :goto_0
    iget v5, v2, Lcom/brakefield/infinitestudio/image/svg/ParserHelper;->pos:I

    if-ge v5, v1, :cond_e

    .line 438
    iget v5, v2, Lcom/brakefield/infinitestudio/image/svg/ParserHelper;->pos:I

    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x2b

    const/16 v7, 0x6c

    const/16 v8, 0x63

    const/16 v9, 0x6d

    if-eq v5, v6, :cond_0

    const/16 v6, 0x2d

    if-eq v5, v6, :cond_0

    packed-switch v5, :pswitch_data_0

    goto :goto_1

    :cond_0
    :pswitch_0
    if-eq v4, v9, :cond_5

    const/16 v6, 0x4d

    if-ne v4, v6, :cond_1

    goto :goto_3

    :cond_1
    if-eq v4, v8, :cond_4

    const/16 v6, 0x43

    if-ne v4, v6, :cond_2

    goto :goto_2

    :cond_2
    if-eq v4, v7, :cond_4

    const/16 v6, 0x4c

    if-ne v4, v6, :cond_3

    goto :goto_2

    .line 463
    :cond_3
    :goto_1
    invoke-virtual {v2}, Lcom/brakefield/infinitestudio/image/svg/ParserHelper;->advance()V

    move v4, v5

    :cond_4
    :goto_2
    move/from16 v20, v4

    goto :goto_4

    :cond_5
    :goto_3
    add-int/lit8 v5, v4, -0x1

    int-to-char v5, v5

    move/from16 v20, v4

    move v4, v5

    :goto_4
    const/4 v13, 0x1

    sparse-switch v4, :sswitch_data_0

    :goto_5
    move v13, v3

    goto/16 :goto_a

    .line 491
    :sswitch_0
    invoke-virtual {v14}, Lcom/brakefield/infinitestudio/geometry/PathTracer;->close()V

    move/from16 v11, v18

    move/from16 v16, v11

    move/from16 v12, v19

    move/from16 v17, v12

    goto/16 :goto_a

    .line 529
    :sswitch_1
    invoke-virtual {v2}, Lcom/brakefield/infinitestudio/image/svg/ParserHelper;->nextFloat()F

    move-result v5

    const/16 v6, 0x76

    if-ne v4, v6, :cond_6

    .line 531
    invoke-virtual {v14, v15, v5}, Lcom/brakefield/infinitestudio/geometry/PathTracer;->rLineTo(FF)V

    add-float/2addr v12, v5

    goto :goto_5

    .line 534
    :cond_6
    invoke-virtual {v14, v11, v5}, Lcom/brakefield/infinitestudio/geometry/PathTracer;->lineTo(FF)V

    move v13, v3

    move v12, v5

    goto/16 :goto_a

    .line 588
    :sswitch_2
    invoke-virtual {v2}, Lcom/brakefield/infinitestudio/image/svg/ParserHelper;->nextFloat()F

    move-result v21

    .line 589
    invoke-virtual {v2}, Lcom/brakefield/infinitestudio/image/svg/ParserHelper;->nextFloat()F

    move-result v22

    .line 590
    invoke-virtual {v2}, Lcom/brakefield/infinitestudio/image/svg/ParserHelper;->nextFloat()F

    move-result v23

    .line 591
    invoke-virtual {v2}, Lcom/brakefield/infinitestudio/image/svg/ParserHelper;->nextFloat()F

    move-result v24

    const/16 v5, 0x73

    const/high16 v6, 0x40000000    # 2.0f

    if-ne v4, v5, :cond_7

    mul-float v4, v11, v6

    sub-float v4, v4, v16

    sub-float v5, v4, v11

    mul-float/2addr v6, v12

    sub-float v6, v6, v17

    sub-float/2addr v6, v12

    move-object v4, v14

    move/from16 v7, v21

    move/from16 v8, v22

    move/from16 v9, v23

    move/from16 v10, v24

    .line 595
    invoke-virtual/range {v4 .. v10}, Lcom/brakefield/infinitestudio/geometry/PathTracer;->rCubicTo(FFFFFF)V

    add-float v21, v21, v11

    add-float v23, v23, v11

    add-float v22, v22, v12

    add-float v24, v24, v12

    goto :goto_6

    :cond_7
    mul-float/2addr v11, v6

    sub-float v5, v11, v16

    mul-float/2addr v12, v6

    sub-float v6, v12, v17

    move-object v4, v14

    move/from16 v7, v21

    move/from16 v8, v22

    move/from16 v9, v23

    move/from16 v10, v24

    .line 603
    invoke-virtual/range {v4 .. v10}, Lcom/brakefield/infinitestudio/geometry/PathTracer;->cubicTo(FFFFFF)V

    :goto_6
    move/from16 v16, v21

    move/from16 v17, v22

    move/from16 v11, v23

    move/from16 v12, v24

    goto/16 :goto_a

    .line 542
    :sswitch_3
    invoke-virtual {v2}, Lcom/brakefield/infinitestudio/image/svg/ParserHelper;->nextFloat()F

    move-result v5

    .line 543
    invoke-virtual {v2}, Lcom/brakefield/infinitestudio/image/svg/ParserHelper;->nextFloat()F

    move-result v6

    .line 544
    invoke-virtual {v2}, Lcom/brakefield/infinitestudio/image/svg/ParserHelper;->nextFloat()F

    move-result v7

    .line 545
    invoke-virtual {v2}, Lcom/brakefield/infinitestudio/image/svg/ParserHelper;->nextFloat()F

    move-result v8

    const/16 v9, 0x71

    if-ne v4, v9, :cond_8

    .line 547
    invoke-virtual {v14, v5, v6, v7, v8}, Lcom/brakefield/infinitestudio/geometry/PathTracer;->rQuadTo(FFFF)V

    add-float/2addr v7, v11

    add-float/2addr v8, v12

    goto :goto_7

    .line 553
    :cond_8
    invoke-virtual {v14, v5, v6, v7, v8}, Lcom/brakefield/infinitestudio/geometry/PathTracer;->quadTo(FFFF)V

    :goto_7
    move v11, v7

    move v12, v8

    goto/16 :goto_a

    .line 472
    :sswitch_4
    invoke-virtual {v2}, Lcom/brakefield/infinitestudio/image/svg/ParserHelper;->nextFloat()F

    move-result v5

    .line 473
    invoke-virtual {v2}, Lcom/brakefield/infinitestudio/image/svg/ParserHelper;->nextFloat()F

    move-result v6

    if-ne v4, v9, :cond_9

    add-float v18, v18, v5

    add-float v19, v19, v6

    .line 477
    invoke-virtual {v14, v5, v6}, Lcom/brakefield/infinitestudio/geometry/PathTracer;->rMoveTo(FF)V

    goto :goto_8

    .line 483
    :cond_9
    invoke-virtual {v14, v5, v6}, Lcom/brakefield/infinitestudio/geometry/PathTracer;->moveTo(FF)V

    move v13, v3

    move v11, v5

    move/from16 v18, v11

    move v12, v6

    move/from16 v19, v12

    goto/16 :goto_a

    .line 502
    :sswitch_5
    invoke-virtual {v2}, Lcom/brakefield/infinitestudio/image/svg/ParserHelper;->nextFloat()F

    move-result v5

    .line 503
    invoke-virtual {v2}, Lcom/brakefield/infinitestudio/image/svg/ParserHelper;->nextFloat()F

    move-result v6

    if-ne v4, v7, :cond_a

    .line 505
    invoke-virtual {v14, v5, v6}, Lcom/brakefield/infinitestudio/geometry/PathTracer;->rLineTo(FF)V

    :goto_8
    add-float/2addr v11, v5

    add-float/2addr v12, v6

    goto/16 :goto_5

    .line 509
    :cond_a
    invoke-virtual {v14, v5, v6}, Lcom/brakefield/infinitestudio/geometry/PathTracer;->lineTo(FF)V

    move v13, v3

    move v11, v5

    move v12, v6

    goto/16 :goto_a

    .line 517
    :sswitch_6
    invoke-virtual {v2}, Lcom/brakefield/infinitestudio/image/svg/ParserHelper;->nextFloat()F

    move-result v5

    const/16 v6, 0x68

    if-ne v4, v6, :cond_b

    .line 519
    invoke-virtual {v14, v5, v15}, Lcom/brakefield/infinitestudio/geometry/PathTracer;->rLineTo(FF)V

    add-float/2addr v11, v5

    goto/16 :goto_5

    .line 522
    :cond_b
    invoke-virtual {v14, v5, v12}, Lcom/brakefield/infinitestudio/geometry/PathTracer;->lineTo(FF)V

    move v13, v3

    move v11, v5

    goto/16 :goto_a

    .line 562
    :sswitch_7
    invoke-virtual {v2}, Lcom/brakefield/infinitestudio/image/svg/ParserHelper;->nextFloat()F

    move-result v5

    .line 563
    invoke-virtual {v2}, Lcom/brakefield/infinitestudio/image/svg/ParserHelper;->nextFloat()F

    move-result v6

    .line 564
    invoke-virtual {v2}, Lcom/brakefield/infinitestudio/image/svg/ParserHelper;->nextFloat()F

    move-result v16

    .line 565
    invoke-virtual {v2}, Lcom/brakefield/infinitestudio/image/svg/ParserHelper;->nextFloat()F

    move-result v17

    .line 566
    invoke-virtual {v2}, Lcom/brakefield/infinitestudio/image/svg/ParserHelper;->nextFloat()F

    move-result v21

    .line 567
    invoke-virtual {v2}, Lcom/brakefield/infinitestudio/image/svg/ParserHelper;->nextFloat()F

    move-result v22

    if-ne v4, v8, :cond_c

    move-object v4, v14

    move/from16 v7, v16

    move/from16 v8, v17

    move/from16 v9, v21

    move/from16 v10, v22

    .line 569
    invoke-virtual/range {v4 .. v10}, Lcom/brakefield/infinitestudio/geometry/PathTracer;->rCubicTo(FFFFFF)V

    add-float v16, v16, v11

    add-float v21, v21, v11

    add-float v17, v17, v12

    add-float v22, v22, v12

    goto :goto_9

    :cond_c
    move-object v4, v14

    move/from16 v7, v16

    move/from16 v8, v17

    move/from16 v9, v21

    move/from16 v10, v22

    .line 577
    invoke-virtual/range {v4 .. v10}, Lcom/brakefield/infinitestudio/geometry/PathTracer;->cubicTo(FFFFFF)V

    goto :goto_9

    .line 613
    :sswitch_8
    invoke-virtual {v2}, Lcom/brakefield/infinitestudio/image/svg/ParserHelper;->nextFloat()F

    move-result v9

    .line 614
    invoke-virtual {v2}, Lcom/brakefield/infinitestudio/image/svg/ParserHelper;->nextFloat()F

    move-result v10

    .line 615
    invoke-virtual {v2}, Lcom/brakefield/infinitestudio/image/svg/ParserHelper;->nextFloat()F

    move-result v13

    .line 616
    invoke-virtual {v2}, Lcom/brakefield/infinitestudio/image/svg/ParserHelper;->nextFloat()F

    move-result v4

    float-to-int v8, v4

    .line 617
    invoke-virtual {v2}, Lcom/brakefield/infinitestudio/image/svg/ParserHelper;->nextFloat()F

    move-result v4

    float-to-int v7, v4

    .line 618
    invoke-virtual {v2}, Lcom/brakefield/infinitestudio/image/svg/ParserHelper;->nextFloat()F

    move-result v21

    .line 619
    invoke-virtual {v2}, Lcom/brakefield/infinitestudio/image/svg/ParserHelper;->nextFloat()F

    move-result v22

    move-object v4, v14

    move v5, v11

    move v6, v12

    move/from16 v23, v7

    move/from16 v7, v21

    move v12, v8

    move/from16 v8, v22

    move v11, v13

    move/from16 v13, v23

    .line 620
    invoke-static/range {v4 .. v13}, Lcom/brakefield/infinitestudio/image/svg/SVGParser;->drawArc(Landroid/graphics/Path;FFFFFFFII)V

    move v13, v3

    :goto_9
    move/from16 v11, v21

    move/from16 v12, v22

    :goto_a
    if-nez v13, :cond_d

    move/from16 v16, v11

    move/from16 v17, v12

    .line 631
    :cond_d
    invoke-virtual {v2}, Lcom/brakefield/infinitestudio/image/svg/ParserHelper;->skipWhitespace()V

    move/from16 v4, v20

    goto/16 :goto_0

    :cond_e
    return-object v14

    nop

    :pswitch_data_0
    .packed-switch 0x30
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x41 -> :sswitch_8
        0x43 -> :sswitch_7
        0x48 -> :sswitch_6
        0x4c -> :sswitch_5
        0x4d -> :sswitch_4
        0x51 -> :sswitch_3
        0x53 -> :sswitch_2
        0x56 -> :sswitch_1
        0x5a -> :sswitch_0
        0x61 -> :sswitch_8
        0x63 -> :sswitch_7
        0x68 -> :sswitch_6
        0x6c -> :sswitch_5
        0x6d -> :sswitch_4
        0x71 -> :sswitch_3
        0x73 -> :sswitch_2
        0x76 -> :sswitch_1
        0x7a -> :sswitch_0
    .end sparse-switch
.end method

.method private static drawArc(Landroid/graphics/Path;FFFFFFFII)V
    .locals 0

    return-void
.end method

.method private static getFloatAttr(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/Float;
    .locals 1

    const/high16 v0, 0x43800000    # 256.0f

    .line 664
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/brakefield/infinitestudio/image/svg/SVGParser;->getFloatAttr(Ljava/lang/String;Lorg/xml/sax/Attributes;Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method

.method private static getFloatAttr(Ljava/lang/String;Lorg/xml/sax/Attributes;Ljava/lang/Float;)Ljava/lang/Float;
    .locals 1

    .line 672
    invoke-static {p0, p1}, Lcom/brakefield/infinitestudio/image/svg/SVGParser;->getStringAttr(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    return-object p2

    :cond_0
    const-string p1, "px"

    .line 687
    invoke-virtual {p0, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    const/4 p2, 0x0

    const/high16 v0, 0x3f800000    # 1.0f

    if-eqz p1, :cond_1

    .line 688
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    add-int/lit8 p1, p1, -0x2

    invoke-virtual {p0, p2, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0

    :cond_1
    const-string p1, "pt"

    .line 689
    invoke-virtual {p0, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 691
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    add-int/lit8 p1, p1, -0x2

    invoke-virtual {p0, p2, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    const/high16 v0, 0x3fa00000    # 1.25f

    goto :goto_0

    :cond_2
    const-string p1, "pc"

    .line 692
    invoke-virtual {p0, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 694
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    add-int/lit8 p1, p1, -0x2

    invoke-virtual {p0, p2, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    const/high16 v0, 0x41700000    # 15.0f

    goto :goto_0

    :cond_3
    const-string p1, "in"

    .line 695
    invoke-virtual {p0, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 697
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    add-int/lit8 p1, p1, -0x2

    invoke-virtual {p0, p2, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    const/high16 v0, 0x42b40000    # 90.0f

    goto :goto_0

    :cond_4
    const-string p1, "cm"

    .line 698
    invoke-virtual {p0, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 700
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    add-int/lit8 p1, p1, -0x2

    invoke-virtual {p0, p2, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    const v0, 0x420dbb77

    goto :goto_0

    :cond_5
    const-string p1, "mm"

    .line 701
    invoke-virtual {p0, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 703
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    add-int/lit8 p1, p1, -0x2

    invoke-virtual {p0, p2, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    const v0, 0x4062c58b

    goto :goto_0

    :cond_6
    const/4 p1, 0x0

    sget-object p1, Lcom/google/android/exoplayer2/upstream/cache/lCg/RbrVQrmMpaaGj;->uAqPOXjNmhfLW:Ljava/lang/String;

    .line 704
    invoke-virtual {p0, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 705
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {p0, p2, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 708
    :cond_7
    :goto_0
    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p0

    mul-float/2addr p0, v0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method

.method private static getHexAttr(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/Integer;
    .locals 4

    const-string v0, ""

    .line 713
    invoke-static {p0, p1}, Lcom/brakefield/infinitestudio/image/svg/SVGParser;->getStringAttr(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    if-nez p0, :cond_0

    return-object p1

    :cond_0
    const/4 v1, 0x1

    .line 718
    :try_start_0
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x10

    invoke-static {v2, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 721
    :catch_0
    :try_start_1
    invoke-static {p0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    .line 722
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    return-object p0

    :catch_1
    const-string v2, "rgb"

    .line 724
    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    :try_start_2
    const-string v2, "rgb("

    .line 726
    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    const-string v2, ")"

    .line 727
    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    const-string v0, ","

    .line 728
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    .line 729
    aget-object v0, p0, v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 730
    aget-object v1, p0, v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x2

    .line 731
    aget-object p0, p0, v2

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    .line 732
    invoke-static {v0, v1, p0}, Landroid/graphics/Color;->rgb(III)I

    move-result p0

    .line 733
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    return-object p0

    :catch_2
    :cond_1
    return-object p1
.end method

.method private static getNumberParseAttr(Ljava/lang/String;Lorg/xml/sax/Attributes;)Lcom/brakefield/infinitestudio/image/svg/SVGParser$NumberParse;
    .locals 3

    .line 644
    invoke-interface {p1}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 646
    invoke-interface {p1, v1}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 647
    invoke-interface {p1, v1}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/brakefield/infinitestudio/image/svg/SVGParser;->parseNumbers(Ljava/lang/String;)Lcom/brakefield/infinitestudio/image/svg/SVGParser$NumberParse;

    move-result-object p0

    return-object p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getSVGFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;IIZ)Lcom/brakefield/infinitestudio/image/svg/SVG;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/brakefield/infinitestudio/image/svg/SVGParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 205
    invoke-virtual {p0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0

    .line 206
    invoke-static {p0, p2, p3, p4}, Lcom/brakefield/infinitestudio/image/svg/SVGParser;->getSVGFromInputStream(Ljava/io/InputStream;IIZ)Lcom/brakefield/infinitestudio/image/svg/SVG;

    move-result-object p1

    .line 207
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    return-object p1
.end method

.method public static getSVGFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;Z)Lcom/brakefield/infinitestudio/image/svg/SVG;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/brakefield/infinitestudio/image/svg/SVGParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 126
    invoke-virtual {p0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0

    .line 127
    invoke-static {p0, p2}, Lcom/brakefield/infinitestudio/image/svg/SVGParser;->getSVGFromInputStream(Ljava/io/InputStream;Z)Lcom/brakefield/infinitestudio/image/svg/SVG;

    move-result-object p1

    .line 128
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    return-object p1
.end method

.method public static getSVGFromInputStream(Ljava/io/InputStream;IIZ)Lcom/brakefield/infinitestudio/image/svg/SVG;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/brakefield/infinitestudio/image/svg/SVGParseException;
        }
    .end annotation

    .line 148
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0, p3}, Lcom/brakefield/infinitestudio/image/svg/SVGParser;->parse(Ljava/io/InputStream;Ljava/lang/Integer;Ljava/lang/Integer;ZZ)Lcom/brakefield/infinitestudio/image/svg/SVG;

    move-result-object p0

    return-object p0
.end method

.method public static getSVGFromInputStream(Ljava/io/InputStream;Z)Lcom/brakefield/infinitestudio/image/svg/SVG;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/brakefield/infinitestudio/image/svg/SVGParseException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 80
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p0, v1, v1, v0, p1}, Lcom/brakefield/infinitestudio/image/svg/SVGParser;->parse(Ljava/io/InputStream;Ljava/lang/Integer;Ljava/lang/Integer;ZZ)Lcom/brakefield/infinitestudio/image/svg/SVG;

    move-result-object p0

    return-object p0
.end method

.method public static getSVGFromResource(Landroid/content/res/Resources;IIIZ)Lcom/brakefield/infinitestudio/image/svg/SVG;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/brakefield/infinitestudio/image/svg/SVGParseException;
        }
    .end annotation

    .line 184
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object p0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 p3, 0x0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/brakefield/infinitestudio/image/svg/SVGParser;->parse(Ljava/io/InputStream;Ljava/lang/Integer;Ljava/lang/Integer;ZZ)Lcom/brakefield/infinitestudio/image/svg/SVG;

    move-result-object p0

    return-object p0
.end method

.method public static getSVGFromResource(Landroid/content/res/Resources;IZ)Lcom/brakefield/infinitestudio/image/svg/SVG;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/brakefield/infinitestudio/image/svg/SVGParseException;
        }
    .end annotation

    .line 109
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object p0

    const/4 p1, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p0, v0, v0, p1, p2}, Lcom/brakefield/infinitestudio/image/svg/SVGParser;->parse(Ljava/io/InputStream;Ljava/lang/Integer;Ljava/lang/Integer;ZZ)Lcom/brakefield/infinitestudio/image/svg/SVG;

    move-result-object p0

    return-object p0
.end method

.method public static getSVGFromString(Ljava/lang/String;IIZ)Lcom/brakefield/infinitestudio/image/svg/SVG;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/brakefield/infinitestudio/image/svg/SVGParseException;
        }
    .end annotation

    .line 165
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p2, 0x0

    invoke-static {v0, p0, p1, p2, p3}, Lcom/brakefield/infinitestudio/image/svg/SVGParser;->parse(Ljava/io/InputStream;Ljava/lang/Integer;Ljava/lang/Integer;ZZ)Lcom/brakefield/infinitestudio/image/svg/SVG;

    move-result-object p0

    return-object p0
.end method

.method public static getSVGFromString(Ljava/lang/String;Z)Lcom/brakefield/infinitestudio/image/svg/SVG;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/brakefield/infinitestudio/image/svg/SVGParseException;
        }
    .end annotation

    .line 93
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const/4 p0, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1, v1, p0, p1}, Lcom/brakefield/infinitestudio/image/svg/SVGParser;->parse(Ljava/io/InputStream;Ljava/lang/Integer;Ljava/lang/Integer;ZZ)Lcom/brakefield/infinitestudio/image/svg/SVG;

    move-result-object p0

    return-object p0
.end method

.method private static getStringAttr(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/String;
    .locals 3

    .line 654
    invoke-interface {p1}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 656
    invoke-interface {p1, v1}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 657
    invoke-interface {p1, v1}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private static parse(Ljava/io/InputStream;Ljava/lang/Integer;Ljava/lang/Integer;ZZ)Lcom/brakefield/infinitestudio/image/svg/SVG;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/brakefield/infinitestudio/image/svg/SVGParseException;
        }
    .end annotation

    .line 226
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v0

    .line 227
    invoke-virtual {v0}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v0

    .line 228
    invoke-virtual {v0}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v0

    .line 229
    new-instance v1, Lcom/brakefield/infinitestudio/image/svg/SVGParser$SVGHandler;

    const/4 v2, 0x0

    invoke-direct {v1, p4, v2}, Lcom/brakefield/infinitestudio/image/svg/SVGParser$SVGHandler;-><init>(ZLcom/brakefield/infinitestudio/image/svg/SVGParser$1;)V

    .line 230
    invoke-virtual {v1, p1, p2}, Lcom/brakefield/infinitestudio/image/svg/SVGParser$SVGHandler;->setColorSwap(Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 231
    invoke-virtual {v1, p3}, Lcom/brakefield/infinitestudio/image/svg/SVGParser$SVGHandler;->setWhiteMode(Z)V

    .line 232
    invoke-interface {v0, v1}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 234
    new-instance p1, Lorg/xml/sax/InputSource;

    invoke-direct {p1, p0}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    invoke-interface {v0, p1}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V

    .line 235
    invoke-virtual {v1}, Lcom/brakefield/infinitestudio/image/svg/SVGParser$SVGHandler;->cleanUp()V

    .line 236
    new-instance p0, Lcom/brakefield/infinitestudio/image/svg/SVG;

    invoke-virtual {v1}, Lcom/brakefield/infinitestudio/image/svg/SVGParser$SVGHandler;->getGroups()Ljava/util/List;

    move-result-object p1

    iget-object p2, v1, Lcom/brakefield/infinitestudio/image/svg/SVGParser$SVGHandler;->bounds:Landroid/graphics/RectF;

    iget-object p3, v1, Lcom/brakefield/infinitestudio/image/svg/SVGParser$SVGHandler;->bitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0, p1, p2, p3}, Lcom/brakefield/infinitestudio/image/svg/SVG;-><init>(Ljava/util/List;Landroid/graphics/RectF;Landroid/graphics/Bitmap;)V

    .line 239
    iget-object p1, v1, Lcom/brakefield/infinitestudio/image/svg/SVGParser$SVGHandler;->limits:Landroid/graphics/RectF;

    invoke-virtual {p0, p1}, Lcom/brakefield/infinitestudio/image/svg/SVG;->setLimits(Landroid/graphics/RectF;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 244
    new-instance p1, Lcom/brakefield/infinitestudio/image/svg/SVGParseException;

    invoke-direct {p1, p0}, Lcom/brakefield/infinitestudio/image/svg/SVGParseException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method private static parseNumbers(Ljava/lang/String;)Lcom/brakefield/infinitestudio/image/svg/SVGParser$NumberParse;
    .locals 10

    .line 249
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 251
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x1

    move v5, v2

    move v6, v5

    move v4, v3

    :goto_0
    if-ge v4, v0, :cond_4

    if-eqz v6, :cond_0

    move v6, v2

    goto :goto_1

    .line 258
    :cond_0
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v7

    sparse-switch v7, :sswitch_data_0

    goto :goto_1

    .line 282
    :sswitch_0
    invoke-virtual {p0, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 283
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 284
    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    .line 285
    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 288
    :cond_1
    new-instance p0, Lcom/brakefield/infinitestudio/image/svg/SVGParser$NumberParse;

    invoke-direct {p0, v1, v4}, Lcom/brakefield/infinitestudio/image/svg/SVGParser$NumberParse;-><init>(Ljava/util/ArrayList;I)V

    return-object p0

    .line 295
    :sswitch_1
    invoke-virtual {p0, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 297
    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_3

    .line 298
    invoke-static {v8}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    .line 299
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v5, 0x2d

    if-ne v7, v5, :cond_2

    move v5, v4

    goto :goto_1

    :cond_2
    add-int/lit8 v5, v4, 0x1

    move v6, v3

    goto :goto_1

    :cond_3
    add-int/lit8 v5, v5, 0x1

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 313
    :cond_4
    invoke-virtual {p0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 314
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_5

    .line 316
    :try_start_0
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 320
    :catch_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    .line 322
    :cond_5
    new-instance p0, Lcom/brakefield/infinitestudio/image/svg/SVGParser$NumberParse;

    invoke-direct {p0, v1, v5}, Lcom/brakefield/infinitestudio/image/svg/SVGParser$NumberParse;-><init>(Ljava/util/ArrayList;I)V

    return-object p0

    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_1
        0xa -> :sswitch_1
        0x20 -> :sswitch_1
        0x29 -> :sswitch_0
        0x2c -> :sswitch_1
        0x2d -> :sswitch_1
        0x41 -> :sswitch_0
        0x43 -> :sswitch_0
        0x48 -> :sswitch_0
        0x4c -> :sswitch_0
        0x4d -> :sswitch_0
        0x51 -> :sswitch_0
        0x53 -> :sswitch_0
        0x54 -> :sswitch_0
        0x56 -> :sswitch_0
        0x5a -> :sswitch_0
        0x61 -> :sswitch_0
        0x63 -> :sswitch_0
        0x68 -> :sswitch_0
        0x6c -> :sswitch_0
        0x6d -> :sswitch_0
        0x71 -> :sswitch_0
        0x73 -> :sswitch_0
        0x74 -> :sswitch_0
        0x76 -> :sswitch_0
        0x7a -> :sswitch_0
    .end sparse-switch
.end method

.method public static parsePath(Ljava/lang/String;)Lcom/brakefield/infinitestudio/geometry/PathTracer;
    .locals 0

    .line 221
    invoke-static {p0}, Lcom/brakefield/infinitestudio/image/svg/SVGParser;->doPath(Ljava/lang/String;)Lcom/brakefield/infinitestudio/geometry/PathTracer;

    move-result-object p0

    return-object p0
.end method

.method private static parseTransform(Ljava/lang/String;)Landroid/graphics/Matrix;
    .locals 9

    const-string v0, "matrix("

    .line 326
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x7

    const/4 v2, 0x2

    const/4 v3, 0x6

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    if-eqz v0, :cond_0

    .line 327
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/brakefield/infinitestudio/image/svg/SVGParser;->parseNumbers(Ljava/lang/String;)Lcom/brakefield/infinitestudio/image/svg/SVGParser$NumberParse;

    move-result-object p0

    .line 328
    invoke-static {p0}, Lcom/brakefield/infinitestudio/image/svg/SVGParser$NumberParse;->access$100(Lcom/brakefield/infinitestudio/image/svg/SVGParser$NumberParse;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v0, v3, :cond_8

    .line 329
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    const/16 v7, 0x9

    new-array v7, v7, [F

    .line 332
    invoke-static {p0}, Lcom/brakefield/infinitestudio/image/svg/SVGParser$NumberParse;->access$100(Lcom/brakefield/infinitestudio/image/svg/SVGParser$NumberParse;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Float;

    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v8

    aput v8, v7, v5

    invoke-static {p0}, Lcom/brakefield/infinitestudio/image/svg/SVGParser$NumberParse;->access$100(Lcom/brakefield/infinitestudio/image/svg/SVGParser$NumberParse;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    aput v5, v7, v4

    .line 333
    invoke-static {p0}, Lcom/brakefield/infinitestudio/image/svg/SVGParser$NumberParse;->access$100(Lcom/brakefield/infinitestudio/image/svg/SVGParser$NumberParse;)Ljava/util/ArrayList;

    move-result-object v5

    const/4 v8, 0x4

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    aput v5, v7, v2

    .line 335
    invoke-static {p0}, Lcom/brakefield/infinitestudio/image/svg/SVGParser$NumberParse;->access$100(Lcom/brakefield/infinitestudio/image/svg/SVGParser$NumberParse;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    const/4 v4, 0x3

    aput v2, v7, v4

    invoke-static {p0}, Lcom/brakefield/infinitestudio/image/svg/SVGParser$NumberParse;->access$100(Lcom/brakefield/infinitestudio/image/svg/SVGParser$NumberParse;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    aput v2, v7, v8

    .line 336
    invoke-static {p0}, Lcom/brakefield/infinitestudio/image/svg/SVGParser$NumberParse;->access$100(Lcom/brakefield/infinitestudio/image/svg/SVGParser$NumberParse;)Ljava/util/ArrayList;

    move-result-object p0

    const/4 v2, 0x5

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    aput p0, v7, v2

    aput v6, v7, v3

    aput v6, v7, v1

    const/16 p0, 0x8

    const/high16 v1, 0x3f800000    # 1.0f

    aput v1, v7, p0

    .line 330
    invoke-virtual {v0, v7}, Landroid/graphics/Matrix;->setValues([F)V

    return-object v0

    :cond_0
    const-string/jumbo v0, "translate("

    .line 341
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0xa

    .line 342
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/brakefield/infinitestudio/image/svg/SVGParser;->parseNumbers(Ljava/lang/String;)Lcom/brakefield/infinitestudio/image/svg/SVGParser$NumberParse;

    move-result-object p0

    .line 343
    invoke-static {p0}, Lcom/brakefield/infinitestudio/image/svg/SVGParser$NumberParse;->access$100(Lcom/brakefield/infinitestudio/image/svg/SVGParser$NumberParse;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_8

    .line 344
    invoke-static {p0}, Lcom/brakefield/infinitestudio/image/svg/SVGParser$NumberParse;->access$100(Lcom/brakefield/infinitestudio/image/svg/SVGParser$NumberParse;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 346
    invoke-static {p0}, Lcom/brakefield/infinitestudio/image/svg/SVGParser$NumberParse;->access$100(Lcom/brakefield/infinitestudio/image/svg/SVGParser$NumberParse;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-le v1, v4, :cond_1

    .line 347
    invoke-static {p0}, Lcom/brakefield/infinitestudio/image/svg/SVGParser$NumberParse;->access$100(Lcom/brakefield/infinitestudio/image/svg/SVGParser$NumberParse;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result v6

    .line 349
    :cond_1
    new-instance p0, Landroid/graphics/Matrix;

    invoke-direct {p0}, Landroid/graphics/Matrix;-><init>()V

    .line 350
    invoke-virtual {p0, v0, v6}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    return-object p0

    :cond_2
    const-string/jumbo v0, "scale("

    .line 353
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 354
    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/brakefield/infinitestudio/image/svg/SVGParser;->parseNumbers(Ljava/lang/String;)Lcom/brakefield/infinitestudio/image/svg/SVGParser$NumberParse;

    move-result-object p0

    .line 355
    invoke-static {p0}, Lcom/brakefield/infinitestudio/image/svg/SVGParser$NumberParse;->access$100(Lcom/brakefield/infinitestudio/image/svg/SVGParser$NumberParse;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_8

    .line 356
    invoke-static {p0}, Lcom/brakefield/infinitestudio/image/svg/SVGParser$NumberParse;->access$100(Lcom/brakefield/infinitestudio/image/svg/SVGParser$NumberParse;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 358
    invoke-static {p0}, Lcom/brakefield/infinitestudio/image/svg/SVGParser$NumberParse;->access$100(Lcom/brakefield/infinitestudio/image/svg/SVGParser$NumberParse;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-le v1, v4, :cond_3

    .line 359
    invoke-static {p0}, Lcom/brakefield/infinitestudio/image/svg/SVGParser$NumberParse;->access$100(Lcom/brakefield/infinitestudio/image/svg/SVGParser$NumberParse;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result v6

    .line 361
    :cond_3
    new-instance p0, Landroid/graphics/Matrix;

    invoke-direct {p0}, Landroid/graphics/Matrix;-><init>()V

    .line 362
    invoke-virtual {p0, v0, v6}, Landroid/graphics/Matrix;->postScale(FF)Z

    return-object p0

    :cond_4
    const-string/jumbo v0, "skewX("

    .line 365
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 366
    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/brakefield/infinitestudio/image/svg/SVGParser;->parseNumbers(Ljava/lang/String;)Lcom/brakefield/infinitestudio/image/svg/SVGParser$NumberParse;

    move-result-object p0

    .line 367
    invoke-static {p0}, Lcom/brakefield/infinitestudio/image/svg/SVGParser$NumberParse;->access$100(Lcom/brakefield/infinitestudio/image/svg/SVGParser$NumberParse;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_8

    .line 368
    invoke-static {p0}, Lcom/brakefield/infinitestudio/image/svg/SVGParser$NumberParse;->access$100(Lcom/brakefield/infinitestudio/image/svg/SVGParser$NumberParse;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    .line 369
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    float-to-double v1, p0

    .line 370
    invoke-static {v1, v2}, Ljava/lang/Math;->tan(D)D

    move-result-wide v1

    double-to-float p0, v1

    invoke-virtual {v0, p0, v6}, Landroid/graphics/Matrix;->postSkew(FF)Z

    return-object v0

    :cond_5
    const-string/jumbo v0, "skewY("

    .line 373
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 374
    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/brakefield/infinitestudio/image/svg/SVGParser;->parseNumbers(Ljava/lang/String;)Lcom/brakefield/infinitestudio/image/svg/SVGParser$NumberParse;

    move-result-object p0

    .line 375
    invoke-static {p0}, Lcom/brakefield/infinitestudio/image/svg/SVGParser$NumberParse;->access$100(Lcom/brakefield/infinitestudio/image/svg/SVGParser$NumberParse;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_8

    .line 376
    invoke-static {p0}, Lcom/brakefield/infinitestudio/image/svg/SVGParser$NumberParse;->access$100(Lcom/brakefield/infinitestudio/image/svg/SVGParser$NumberParse;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    .line 377
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    float-to-double v1, p0

    .line 378
    invoke-static {v1, v2}, Ljava/lang/Math;->tan(D)D

    move-result-wide v1

    double-to-float p0, v1

    invoke-virtual {v0, v6, p0}, Landroid/graphics/Matrix;->postSkew(FF)Z

    return-object v0

    :cond_6
    const-string v0, "rotate("

    .line 381
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 382
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/brakefield/infinitestudio/image/svg/SVGParser;->parseNumbers(Ljava/lang/String;)Lcom/brakefield/infinitestudio/image/svg/SVGParser$NumberParse;

    move-result-object p0

    .line 383
    invoke-static {p0}, Lcom/brakefield/infinitestudio/image/svg/SVGParser$NumberParse;->access$100(Lcom/brakefield/infinitestudio/image/svg/SVGParser$NumberParse;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_8

    .line 384
    invoke-static {p0}, Lcom/brakefield/infinitestudio/image/svg/SVGParser$NumberParse;->access$100(Lcom/brakefield/infinitestudio/image/svg/SVGParser$NumberParse;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 387
    invoke-static {p0}, Lcom/brakefield/infinitestudio/image/svg/SVGParser$NumberParse;->access$100(Lcom/brakefield/infinitestudio/image/svg/SVGParser$NumberParse;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-le v1, v2, :cond_7

    .line 388
    invoke-static {p0}, Lcom/brakefield/infinitestudio/image/svg/SVGParser$NumberParse;->access$100(Lcom/brakefield/infinitestudio/image/svg/SVGParser$NumberParse;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v6

    .line 389
    invoke-static {p0}, Lcom/brakefield/infinitestudio/image/svg/SVGParser$NumberParse;->access$100(Lcom/brakefield/infinitestudio/image/svg/SVGParser$NumberParse;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    goto :goto_0

    :cond_7
    move p0, v6

    .line 391
    :goto_0
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    .line 392
    invoke-virtual {v1, v6, p0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 393
    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->postRotate(F)Z

    neg-float v0, v6

    neg-float p0, p0

    .line 394
    invoke-virtual {v1, v0, p0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    return-object v1

    :cond_8
    const/4 p0, 0x0

    return-object p0
.end method
