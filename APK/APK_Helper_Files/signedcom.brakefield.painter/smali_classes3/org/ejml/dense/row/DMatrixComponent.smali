.class public Lorg/ejml/dense/row/DMatrixComponent;
.super Ljavax/swing/JPanel;
.source "DMatrixComponent.java"


# instance fields
.field image:Ljava/awt/image/BufferedImage;


# direct methods
.method public constructor <init>(II)V
    .locals 2

    .line 35
    invoke-direct {p0}, Ljavax/swing/JPanel;-><init>()V

    .line 36
    new-instance v0, Ljava/awt/image/BufferedImage;

    const/4 v1, 0x1

    invoke-direct {v0, p1, p2, v1}, Ljava/awt/image/BufferedImage;-><init>(III)V

    iput-object v0, p0, Lorg/ejml/dense/row/DMatrixComponent;->image:Ljava/awt/image/BufferedImage;

    .line 37
    new-instance v0, Ljava/awt/Dimension;

    invoke-direct {v0, p1, p2}, Ljava/awt/Dimension;-><init>(II)V

    invoke-virtual {p0, v0}, Lorg/ejml/dense/row/DMatrixComponent;->setPreferredSize(Ljava/awt/Dimension;)V

    .line 38
    new-instance v0, Ljava/awt/Dimension;

    invoke-direct {v0, p1, p2}, Ljava/awt/Dimension;-><init>(II)V

    invoke-virtual {p0, v0}, Lorg/ejml/dense/row/DMatrixComponent;->setMinimumSize(Ljava/awt/Dimension;)V

    return-void
.end method

.method public static renderMatrix(Lorg/ejml/data/DMatrixD1;Ljava/awt/image/BufferedImage;D)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 48
    invoke-virtual/range {p1 .. p1}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result v2

    .line 49
    invoke-virtual/range {p1 .. p1}, Ljava/awt/image/BufferedImage;->getHeight()I

    move-result v3

    .line 51
    iget v4, v0, Lorg/ejml/data/DMatrixD1;->numCols:I

    int-to-double v4, v4

    invoke-virtual/range {p1 .. p1}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result v6

    int-to-double v6, v6

    div-double/2addr v4, v6

    .line 52
    iget v6, v0, Lorg/ejml/data/DMatrixD1;->numRows:I

    int-to-double v6, v6

    invoke-virtual/range {p1 .. p1}, Ljava/awt/image/BufferedImage;->getHeight()I

    move-result v8

    int-to-double v8, v8

    div-double/2addr v6, v8

    const/4 v8, 0x0

    move v9, v8

    :goto_0
    if-ge v9, v3, :cond_3

    move v10, v8

    :goto_1
    if-ge v10, v2, :cond_2

    int-to-double v11, v9

    mul-double/2addr v11, v6

    double-to-int v11, v11

    int-to-double v12, v10

    mul-double/2addr v12, v4

    double-to-int v12, v12

    .line 56
    invoke-virtual {v0, v11, v12}, Lorg/ejml/data/DMatrixD1;->get(II)D

    move-result-wide v11

    const-wide/16 v13, 0x0

    cmpl-double v13, v11, v13

    const/high16 v14, -0x1000000

    if-nez v13, :cond_0

    .line 59
    invoke-virtual {v1, v10, v9, v14}, Ljava/awt/image/BufferedImage;->setRGB(III)V

    goto :goto_2

    :cond_0
    const-wide v15, 0x406fe00000000000L    # 255.0

    if-lez v13, :cond_1

    div-double v11, v11, p2

    mul-double/2addr v11, v15

    double-to-int v11, v11

    rsub-int v11, v11, 0xff

    shl-int/lit8 v12, v11, 0x8

    const/high16 v13, -0x10000

    or-int/2addr v12, v13

    or-int/2addr v11, v12

    .line 64
    invoke-virtual {v1, v10, v9, v11}, Ljava/awt/image/BufferedImage;->setRGB(III)V

    goto :goto_2

    :cond_1
    div-double v11, v11, p2

    mul-double/2addr v11, v15

    double-to-int v11, v11

    add-int/lit16 v11, v11, 0xff

    shl-int/lit8 v12, v11, 0x10

    or-int/2addr v12, v14

    shl-int/lit8 v11, v11, 0x8

    or-int/2addr v11, v12

    or-int/lit16 v11, v11, 0xff

    .line 69
    invoke-virtual {v1, v10, v9, v11}, Ljava/awt/image/BufferedImage;->setRGB(III)V

    :goto_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method


# virtual methods
.method public declared-synchronized paint(Ljava/awt/Graphics;)V
    .locals 2

    monitor-enter p0

    .line 77
    :try_start_0
    iget-object v0, p0, Lorg/ejml/dense/row/DMatrixComponent;->image:Ljava/awt/image/BufferedImage;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, v1, p0}, Ljava/awt/Graphics;->drawImage(Ljava/awt/Image;IILjava/awt/image/ImageObserver;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 78
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setMatrix(Lorg/ejml/data/DMatrixD1;)V
    .locals 3

    monitor-enter p0

    .line 42
    :try_start_0
    invoke-static {p1}, Lorg/ejml/dense/row/CommonOps_DDRM;->elementMaxAbs(Lorg/ejml/data/DMatrixD1;)D

    move-result-wide v0

    .line 43
    iget-object v2, p0, Lorg/ejml/dense/row/DMatrixComponent;->image:Ljava/awt/image/BufferedImage;

    invoke-static {p1, v2, v0, v1}, Lorg/ejml/dense/row/DMatrixComponent;->renderMatrix(Lorg/ejml/data/DMatrixD1;Ljava/awt/image/BufferedImage;D)V

    .line 44
    invoke-virtual {p0}, Lorg/ejml/dense/row/DMatrixComponent;->repaint()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
