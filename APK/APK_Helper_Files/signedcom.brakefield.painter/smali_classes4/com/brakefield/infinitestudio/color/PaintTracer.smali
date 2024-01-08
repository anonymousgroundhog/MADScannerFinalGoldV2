.class public Lcom/brakefield/infinitestudio/color/PaintTracer;
.super Landroid/graphics/Paint;
.source "PaintTracer.java"


# instance fields
.field public cap:I

.field public join:I

.field style:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 12
    invoke-direct {p0}, Landroid/graphics/Paint;-><init>()V

    const/4 v0, 0x0

    .line 8
    iput v0, p0, Lcom/brakefield/infinitestudio/color/PaintTracer;->style:I

    .line 9
    iput v0, p0, Lcom/brakefield/infinitestudio/color/PaintTracer;->cap:I

    const/4 v0, 0x1

    .line 10
    iput v0, p0, Lcom/brakefield/infinitestudio/color/PaintTracer;->join:I

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 14
    invoke-direct {p0}, Landroid/graphics/Paint;-><init>()V

    const/4 v0, 0x0

    .line 8
    iput v0, p0, Lcom/brakefield/infinitestudio/color/PaintTracer;->style:I

    .line 9
    iput v0, p0, Lcom/brakefield/infinitestudio/color/PaintTracer;->cap:I

    const/4 v0, 0x1

    .line 10
    iput v0, p0, Lcom/brakefield/infinitestudio/color/PaintTracer;->join:I

    .line 15
    invoke-virtual {p0, p1}, Lcom/brakefield/infinitestudio/color/PaintTracer;->setFlags(I)V

    return-void
.end method


# virtual methods
.method public set(Lcom/brakefield/infinitestudio/color/PaintTracer;)V
    .locals 1

    .line 68
    invoke-virtual {p1}, Lcom/brakefield/infinitestudio/color/PaintTracer;->getStyle()Landroid/graphics/Paint$Style;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/brakefield/infinitestudio/color/PaintTracer;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 69
    invoke-virtual {p1}, Lcom/brakefield/infinitestudio/color/PaintTracer;->getStrokeCap()Landroid/graphics/Paint$Cap;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/brakefield/infinitestudio/color/PaintTracer;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 70
    invoke-virtual {p1}, Lcom/brakefield/infinitestudio/color/PaintTracer;->getStrokeJoin()Landroid/graphics/Paint$Join;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/brakefield/infinitestudio/color/PaintTracer;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 72
    invoke-super {p0, p1}, Landroid/graphics/Paint;->set(Landroid/graphics/Paint;)V

    return-void
.end method

.method public setStrokeCap(Landroid/graphics/Paint$Cap;)V
    .locals 3

    .line 36
    sget-object v0, Lcom/brakefield/infinitestudio/color/PaintTracer$1;->$SwitchMap$android$graphics$Paint$Cap:[I

    invoke-virtual {p1}, Landroid/graphics/Paint$Cap;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 44
    :cond_0
    iput v2, p0, Lcom/brakefield/infinitestudio/color/PaintTracer;->cap:I

    goto :goto_0

    .line 41
    :cond_1
    iput v1, p0, Lcom/brakefield/infinitestudio/color/PaintTracer;->cap:I

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 38
    iput v0, p0, Lcom/brakefield/infinitestudio/color/PaintTracer;->cap:I

    .line 47
    :goto_0
    invoke-super {p0, p1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    return-void
.end method

.method public setStrokeJoin(Landroid/graphics/Paint$Join;)V
    .locals 3

    .line 52
    sget-object v0, Lcom/brakefield/infinitestudio/color/PaintTracer$1;->$SwitchMap$android$graphics$Paint$Join:[I

    invoke-virtual {p1}, Landroid/graphics/Paint$Join;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 60
    :cond_0
    iput v2, p0, Lcom/brakefield/infinitestudio/color/PaintTracer;->join:I

    goto :goto_0

    .line 57
    :cond_1
    iput v1, p0, Lcom/brakefield/infinitestudio/color/PaintTracer;->join:I

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 54
    iput v0, p0, Lcom/brakefield/infinitestudio/color/PaintTracer;->join:I

    .line 63
    :goto_0
    invoke-super {p0, p1}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    return-void
.end method

.method public setStyle(Landroid/graphics/Paint$Style;)V
    .locals 3

    .line 20
    sget-object v0, Lcom/brakefield/infinitestudio/color/PaintTracer$1;->$SwitchMap$android$graphics$Paint$Style:[I

    invoke-virtual {p1}, Landroid/graphics/Paint$Style;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    goto :goto_0

    .line 28
    :cond_0
    iput v1, p0, Lcom/brakefield/infinitestudio/color/PaintTracer;->style:I

    goto :goto_0

    .line 25
    :cond_1
    iput v2, p0, Lcom/brakefield/infinitestudio/color/PaintTracer;->style:I

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 22
    iput v0, p0, Lcom/brakefield/infinitestudio/color/PaintTracer;->style:I

    .line 31
    :goto_0
    invoke-super {p0, p1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    return-void
.end method

.method public specialToSVG()Ljava/lang/String;
    .locals 2

    .line 137
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<defs>\n<filter id=\"special\" x=\"0\" y=\"0\" width=\"200%\" height=\"200%\">\n<feGaussianBlur in=\"SourceGraphic\" stdDeviation=\"4\"/>\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</filter>\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 138
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</defs>\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toSVG()Ljava/lang/String;
    .locals 12

    .line 77
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/color/PaintTracer;->getColor()I

    move-result v0

    .line 78
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "rgb("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/graphics/Color;->red(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Landroid/graphics/Color;->green(I)I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 79
    invoke-static {v0}, Landroid/graphics/Color;->blue(I)I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 80
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/color/PaintTracer;->getAlpha()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x437f0000    # 255.0f

    div-float/2addr v1, v2

    .line 84
    iget v2, p0, Lcom/brakefield/infinitestudio/color/PaintTracer;->cap:I

    const-string v3, "round"

    const/4 v4, 0x2

    const/4 v5, 0x1

    const-string v6, ""

    if-eqz v2, :cond_2

    if-eq v2, v5, :cond_1

    if-eq v2, v4, :cond_0

    move-object v2, v6

    goto :goto_0

    :cond_0
    const-string/jumbo v2, "square"

    goto :goto_0

    :cond_1
    move-object v2, v3

    goto :goto_0

    :cond_2
    const-string v2, "butt"

    .line 96
    :goto_0
    iget v7, p0, Lcom/brakefield/infinitestudio/color/PaintTracer;->join:I

    if-eqz v7, :cond_4

    if-eq v7, v5, :cond_3

    if-eq v7, v4, :cond_5

    move-object v3, v6

    goto :goto_1

    :cond_3
    const-string v3, "miter"

    goto :goto_1

    :cond_4
    const-string v3, "bevel"

    .line 107
    :cond_5
    :goto_1
    iget v7, p0, Lcom/brakefield/infinitestudio/color/PaintTracer;->style:I

    const-string v8, "; fill-opacity:"

    const/4 v9, 0x0

    sget-object v9, Lcom/google/api/client/extensions/android/http/tr/rffuYzZsQ;->rocTI:Ljava/lang/String;

    if-eqz v7, :cond_8

    const-string v10, "; stroke-width:"

    const-string/jumbo v11, "stroke:"

    if-eq v7, v5, :cond_7

    if-eq v7, v4, :cond_6

    goto/16 :goto_2

    .line 113
    :cond_6
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/color/PaintTracer;->getStrokeWidth()F

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "; fill:none; stroke-opacity:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x0

    sget-object v1, Lcom/google/android/datatransport/runtime/dagger/multibindings/KN/fYvESXZ;->gRPJls:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_2

    .line 119
    :cond_7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/color/PaintTracer;->getStrokeWidth()F

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "; fill:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "; stroke-opacity:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_2

    .line 109
    :cond_8
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "fill:"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :goto_2
    return-object v6
.end method
