.class public Lorg/ejml/dense/row/FMatrixComponent;
.super Ljavax/swing/JPanel;
.source "FMatrixComponent.java"


# instance fields
.field image:Ljava/awt/image/BufferedImage;


# direct methods
.method public constructor <init>(II)V
    .locals 2

    .line 37
    invoke-direct {p0}, Ljavax/swing/JPanel;-><init>()V

    .line 38
    new-instance v0, Ljava/awt/image/BufferedImage;

    const/4 v1, 0x1

    invoke-direct {v0, p1, p2, v1}, Ljava/awt/image/BufferedImage;-><init>(III)V

    iput-object v0, p0, Lorg/ejml/dense/row/FMatrixComponent;->image:Ljava/awt/image/BufferedImage;

    .line 39
    new-instance v0, Ljava/awt/Dimension;

    invoke-direct {v0, p1, p2}, Ljava/awt/Dimension;-><init>(II)V

    invoke-virtual {p0, v0}, Lorg/ejml/dense/row/FMatrixComponent;->setPreferredSize(Ljava/awt/Dimension;)V

    .line 40
    new-instance v0, Ljava/awt/Dimension;

    invoke-direct {v0, p1, p2}, Ljava/awt/Dimension;-><init>(II)V

    invoke-virtual {p0, v0}, Lorg/ejml/dense/row/FMatrixComponent;->setMinimumSize(Ljava/awt/Dimension;)V

    return-void
.end method

.method public static renderMatrix(Lorg/ejml/data/FMatrixD1;Ljava/awt/image/BufferedImage;F)V
    .locals 11

    .line 50
    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result v0

    .line 51
    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getHeight()I

    move-result v1

    .line 53
    iget v2, p0, Lorg/ejml/data/FMatrixD1;->numCols:I

    int-to-float v2, v2

    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    .line 54
    iget v3, p0, Lorg/ejml/data/FMatrixD1;->numRows:I

    int-to-float v3, v3

    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v1, :cond_3

    move v6, v4

    :goto_1
    if-ge v6, v0, :cond_2

    int-to-float v7, v5

    mul-float/2addr v7, v3

    float-to-int v7, v7

    int-to-float v8, v6

    mul-float/2addr v8, v2

    float-to-int v8, v8

    .line 58
    invoke-virtual {p0, v7, v8}, Lorg/ejml/data/FMatrixD1;->get(II)F

    move-result v7

    const/4 v8, 0x0

    cmpl-float v8, v7, v8

    const/high16 v9, -0x1000000

    if-nez v8, :cond_0

    .line 61
    invoke-virtual {p1, v6, v5, v9}, Ljava/awt/image/BufferedImage;->setRGB(III)V

    goto :goto_2

    :cond_0
    const/high16 v10, 0x437f0000    # 255.0f

    if-lez v8, :cond_1

    div-float/2addr v7, p2

    mul-float/2addr v7, v10

    float-to-int v7, v7

    rsub-int v7, v7, 0xff

    shl-int/lit8 v8, v7, 0x8

    const/high16 v9, -0x10000

    or-int/2addr v8, v9

    or-int/2addr v7, v8

    .line 66
    invoke-virtual {p1, v6, v5, v7}, Ljava/awt/image/BufferedImage;->setRGB(III)V

    goto :goto_2

    :cond_1
    div-float/2addr v7, p2

    mul-float/2addr v7, v10

    float-to-int v7, v7

    add-int/lit16 v7, v7, 0xff

    shl-int/lit8 v8, v7, 0x10

    or-int/2addr v8, v9

    shl-int/lit8 v7, v7, 0x8

    or-int/2addr v7, v8

    or-int/lit16 v7, v7, 0xff

    .line 71
    invoke-virtual {p1, v6, v5, v7}, Ljava/awt/image/BufferedImage;->setRGB(III)V

    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method


# virtual methods
.method public declared-synchronized paint(Ljava/awt/Graphics;)V
    .locals 2

    monitor-enter p0

    .line 79
    :try_start_0
    iget-object v0, p0, Lorg/ejml/dense/row/FMatrixComponent;->image:Ljava/awt/image/BufferedImage;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, v1, p0}, Ljava/awt/Graphics;->drawImage(Ljava/awt/Image;IILjava/awt/image/ImageObserver;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 80
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setMatrix(Lorg/ejml/data/FMatrixD1;)V
    .locals 2

    monitor-enter p0

    .line 44
    :try_start_0
    invoke-static {p1}, Lorg/ejml/dense/row/CommonOps_FDRM;->elementMaxAbs(Lorg/ejml/data/FMatrixD1;)F

    move-result v0

    .line 45
    iget-object v1, p0, Lorg/ejml/dense/row/FMatrixComponent;->image:Ljava/awt/image/BufferedImage;

    invoke-static {p1, v1, v0}, Lorg/ejml/dense/row/FMatrixComponent;->renderMatrix(Lorg/ejml/data/FMatrixD1;Ljava/awt/image/BufferedImage;F)V

    .line 46
    invoke-virtual {p0}, Lorg/ejml/dense/row/FMatrixComponent;->repaint()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
