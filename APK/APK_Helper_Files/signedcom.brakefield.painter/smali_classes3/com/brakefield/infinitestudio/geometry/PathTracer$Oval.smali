.class Lcom/brakefield/infinitestudio/geometry/PathTracer$Oval;
.super Lcom/brakefield/infinitestudio/geometry/PathTracer$PathObject;
.source "PathTracer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/brakefield/infinitestudio/geometry/PathTracer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Oval"
.end annotation


# instance fields
.field dir:F

.field oval:Landroid/graphics/RectF;

.field final synthetic this$0:Lcom/brakefield/infinitestudio/geometry/PathTracer;


# direct methods
.method public constructor <init>(Lcom/brakefield/infinitestudio/geometry/PathTracer;Landroid/graphics/RectF;F)V
    .locals 0

    .line 883
    iput-object p1, p0, Lcom/brakefield/infinitestudio/geometry/PathTracer$Oval;->this$0:Lcom/brakefield/infinitestudio/geometry/PathTracer;

    invoke-direct {p0, p1}, Lcom/brakefield/infinitestudio/geometry/PathTracer$PathObject;-><init>(Lcom/brakefield/infinitestudio/geometry/PathTracer;)V

    const/4 p1, 0x6

    .line 884
    iput p1, p0, Lcom/brakefield/infinitestudio/geometry/PathTracer$Oval;->type:I

    .line 885
    iput-object p2, p0, Lcom/brakefield/infinitestudio/geometry/PathTracer$Oval;->oval:Landroid/graphics/RectF;

    .line 886
    iput p3, p0, Lcom/brakefield/infinitestudio/geometry/PathTracer$Oval;->dir:F

    return-void
.end method


# virtual methods
.method public addToPath(Landroid/graphics/Path;)V
    .locals 2

    .line 914
    iget-object v0, p0, Lcom/brakefield/infinitestudio/geometry/PathTracer$Oval;->oval:Landroid/graphics/RectF;

    sget-object v1, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Path;->addOval(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    return-void
.end method

.method public copy()Lcom/brakefield/infinitestudio/geometry/PathTracer$PathObject;
    .locals 7

    .line 901
    new-instance v0, Lcom/brakefield/infinitestudio/geometry/PathTracer$Oval;

    iget-object v1, p0, Lcom/brakefield/infinitestudio/geometry/PathTracer$Oval;->this$0:Lcom/brakefield/infinitestudio/geometry/PathTracer;

    new-instance v2, Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/brakefield/infinitestudio/geometry/PathTracer$Oval;->oval:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    iget-object v4, p0, Lcom/brakefield/infinitestudio/geometry/PathTracer$Oval;->oval:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    iget-object v5, p0, Lcom/brakefield/infinitestudio/geometry/PathTracer$Oval;->oval:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->right:F

    iget-object v6, p0, Lcom/brakefield/infinitestudio/geometry/PathTracer$Oval;->oval:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->bottom:F

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget v3, p0, Lcom/brakefield/infinitestudio/geometry/PathTracer$Oval;->dir:F

    invoke-direct {v0, v1, v2, v3}, Lcom/brakefield/infinitestudio/geometry/PathTracer$Oval;-><init>(Lcom/brakefield/infinitestudio/geometry/PathTracer;Landroid/graphics/RectF;F)V

    return-object v0
.end method

.method public getData()[F
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [F

    .line 890
    iget-object v1, p0, Lcom/brakefield/infinitestudio/geometry/PathTracer$Oval;->oval:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    const/4 v2, 0x0

    aput v1, v0, v2

    iget-object v1, p0, Lcom/brakefield/infinitestudio/geometry/PathTracer$Oval;->oval:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    const/4 v2, 0x1

    aput v1, v0, v2

    iget-object v1, p0, Lcom/brakefield/infinitestudio/geometry/PathTracer$Oval;->oval:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    const/4 v2, 0x2

    aput v1, v0, v2

    iget-object v1, p0, Lcom/brakefield/infinitestudio/geometry/PathTracer$Oval;->oval:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    const/4 v2, 0x3

    aput v1, v0, v2

    const/4 v1, 0x4

    iget v2, p0, Lcom/brakefield/infinitestudio/geometry/PathTracer$Oval;->dir:F

    aput v2, v0, v1

    return-object v0
.end method

.method public toSVG()Ljava/lang/String;
    .locals 3

    .line 906
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "<ellipse cx=\""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/brakefield/infinitestudio/geometry/PathTracer$Oval;->oval:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\" cy=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/brakefield/infinitestudio/geometry/PathTracer$Oval;->oval:Landroid/graphics/RectF;

    .line 907
    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\" rx=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/brakefield/infinitestudio/geometry/PathTracer$Oval;->oval:Landroid/graphics/RectF;

    .line 908
    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\" ry=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/brakefield/infinitestudio/geometry/PathTracer$Oval;->oval:Landroid/graphics/RectF;

    .line 909
    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\"/>\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public transform(Landroid/graphics/Matrix;)V
    .locals 6

    const/4 v0, 0x4

    new-array v0, v0, [F

    .line 895
    iget-object v1, p0, Lcom/brakefield/infinitestudio/geometry/PathTracer$Oval;->oval:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    const/4 v2, 0x0

    aput v1, v0, v2

    iget-object v1, p0, Lcom/brakefield/infinitestudio/geometry/PathTracer$Oval;->oval:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    const/4 v3, 0x1

    aput v1, v0, v3

    iget-object v1, p0, Lcom/brakefield/infinitestudio/geometry/PathTracer$Oval;->oval:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    const/4 v4, 0x2

    aput v1, v0, v4

    iget-object v1, p0, Lcom/brakefield/infinitestudio/geometry/PathTracer$Oval;->oval:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    const/4 v5, 0x3

    aput v1, v0, v5

    .line 896
    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 897
    iget-object p1, p0, Lcom/brakefield/infinitestudio/geometry/PathTracer$Oval;->oval:Landroid/graphics/RectF;

    aget v1, v0, v2

    aget v2, v0, v3

    aget v3, v0, v4

    aget v0, v0, v5

    invoke-virtual {p1, v1, v2, v3, v0}, Landroid/graphics/RectF;->set(FFFF)V

    return-void
.end method
