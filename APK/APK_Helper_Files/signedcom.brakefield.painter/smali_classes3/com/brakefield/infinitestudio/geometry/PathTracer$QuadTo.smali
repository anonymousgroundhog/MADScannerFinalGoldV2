.class Lcom/brakefield/infinitestudio/geometry/PathTracer$QuadTo;
.super Lcom/brakefield/infinitestudio/geometry/PathTracer$PathObject;
.source "PathTracer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/brakefield/infinitestudio/geometry/PathTracer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QuadTo"
.end annotation


# instance fields
.field a:Lcom/brakefield/infinitestudio/geometry/Point;

.field b:Lcom/brakefield/infinitestudio/geometry/Point;

.field final synthetic this$0:Lcom/brakefield/infinitestudio/geometry/PathTracer;


# direct methods
.method public constructor <init>(Lcom/brakefield/infinitestudio/geometry/PathTracer;FFFF)V
    .locals 0

    .line 1141
    iput-object p1, p0, Lcom/brakefield/infinitestudio/geometry/PathTracer$QuadTo;->this$0:Lcom/brakefield/infinitestudio/geometry/PathTracer;

    invoke-direct {p0, p1}, Lcom/brakefield/infinitestudio/geometry/PathTracer$PathObject;-><init>(Lcom/brakefield/infinitestudio/geometry/PathTracer;)V

    const/4 p1, 0x3

    .line 1142
    iput p1, p0, Lcom/brakefield/infinitestudio/geometry/PathTracer$QuadTo;->type:I

    .line 1143
    new-instance p1, Lcom/brakefield/infinitestudio/geometry/Point;

    invoke-direct {p1, p2, p3}, Lcom/brakefield/infinitestudio/geometry/Point;-><init>(FF)V

    iput-object p1, p0, Lcom/brakefield/infinitestudio/geometry/PathTracer$QuadTo;->a:Lcom/brakefield/infinitestudio/geometry/Point;

    .line 1144
    new-instance p1, Lcom/brakefield/infinitestudio/geometry/Point;

    invoke-direct {p1, p4, p5}, Lcom/brakefield/infinitestudio/geometry/Point;-><init>(FF)V

    iput-object p1, p0, Lcom/brakefield/infinitestudio/geometry/PathTracer$QuadTo;->b:Lcom/brakefield/infinitestudio/geometry/Point;

    return-void
.end method


# virtual methods
.method public addToPath(Landroid/graphics/Path;)V
    .locals 4

    .line 1178
    iget-object v0, p0, Lcom/brakefield/infinitestudio/geometry/PathTracer$QuadTo;->a:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v0, v0, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iget-object v1, p0, Lcom/brakefield/infinitestudio/geometry/PathTracer$QuadTo;->a:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v1, v1, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    iget-object v2, p0, Lcom/brakefield/infinitestudio/geometry/PathTracer$QuadTo;->b:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v2, v2, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iget-object v3, p0, Lcom/brakefield/infinitestudio/geometry/PathTracer$QuadTo;->b:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v3, v3, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Path;->quadTo(FFFF)V

    return-void
.end method

.method public copy()Lcom/brakefield/infinitestudio/geometry/PathTracer$PathObject;
    .locals 7

    .line 1161
    new-instance v6, Lcom/brakefield/infinitestudio/geometry/PathTracer$QuadTo;

    iget-object v1, p0, Lcom/brakefield/infinitestudio/geometry/PathTracer$QuadTo;->this$0:Lcom/brakefield/infinitestudio/geometry/PathTracer;

    iget-object v0, p0, Lcom/brakefield/infinitestudio/geometry/PathTracer$QuadTo;->a:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v2, v0, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iget-object v0, p0, Lcom/brakefield/infinitestudio/geometry/PathTracer$QuadTo;->a:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v3, v0, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    iget-object v0, p0, Lcom/brakefield/infinitestudio/geometry/PathTracer$QuadTo;->b:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v4, v0, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iget-object v0, p0, Lcom/brakefield/infinitestudio/geometry/PathTracer$QuadTo;->b:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v5, v0, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/brakefield/infinitestudio/geometry/PathTracer$QuadTo;-><init>(Lcom/brakefield/infinitestudio/geometry/PathTracer;FFFF)V

    return-object v6
.end method

.method public getData()[F
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [F

    .line 1148
    iget-object v1, p0, Lcom/brakefield/infinitestudio/geometry/PathTracer$QuadTo;->a:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v1, v1, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    const/4 v2, 0x0

    aput v1, v0, v2

    iget-object v1, p0, Lcom/brakefield/infinitestudio/geometry/PathTracer$QuadTo;->a:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v1, v1, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    const/4 v2, 0x1

    aput v1, v0, v2

    iget-object v1, p0, Lcom/brakefield/infinitestudio/geometry/PathTracer$QuadTo;->b:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v1, v1, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    const/4 v2, 0x2

    aput v1, v0, v2

    iget-object v1, p0, Lcom/brakefield/infinitestudio/geometry/PathTracer$QuadTo;->b:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v1, v1, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    const/4 v2, 0x3

    aput v1, v0, v2

    return-object v0
.end method

.method public getLineSegments(Lcom/brakefield/infinitestudio/geometry/Point;Lcom/brakefield/infinitestudio/geometry/Point;)Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/brakefield/infinitestudio/geometry/Point;",
            "Lcom/brakefield/infinitestudio/geometry/Point;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/brakefield/infinitestudio/geometry/Line;",
            ">;"
        }
    .end annotation

    .line 1182
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 1183
    new-instance v7, Lcom/brakefield/infinitestudio/geometry/QuadraticBezier;

    iget v1, p2, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iget v2, p2, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    iget-object v0, p0, Lcom/brakefield/infinitestudio/geometry/PathTracer$QuadTo;->a:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v3, v0, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iget-object v0, p0, Lcom/brakefield/infinitestudio/geometry/PathTracer$QuadTo;->a:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v4, v0, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    iget-object v0, p0, Lcom/brakefield/infinitestudio/geometry/PathTracer$QuadTo;->b:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v5, v0, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iget-object v0, p0, Lcom/brakefield/infinitestudio/geometry/PathTracer$QuadTo;->b:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v6, v0, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/brakefield/infinitestudio/geometry/QuadraticBezier;-><init>(FFFFFF)V

    .line 1184
    new-instance v0, Lcom/brakefield/infinitestudio/geometry/Line;

    iget-object v1, p0, Lcom/brakefield/infinitestudio/geometry/PathTracer$QuadTo;->a:Lcom/brakefield/infinitestudio/geometry/Point;

    invoke-direct {v0, p2, v1}, Lcom/brakefield/infinitestudio/geometry/Line;-><init>(Lcom/brakefield/infinitestudio/geometry/Point;Lcom/brakefield/infinitestudio/geometry/Point;)V

    .line 1185
    new-instance v1, Lcom/brakefield/infinitestudio/geometry/Line;

    iget-object v2, p0, Lcom/brakefield/infinitestudio/geometry/PathTracer$QuadTo;->a:Lcom/brakefield/infinitestudio/geometry/Point;

    iget-object v3, p0, Lcom/brakefield/infinitestudio/geometry/PathTracer$QuadTo;->b:Lcom/brakefield/infinitestudio/geometry/Point;

    invoke-direct {v1, v2, v3}, Lcom/brakefield/infinitestudio/geometry/Line;-><init>(Lcom/brakefield/infinitestudio/geometry/Point;Lcom/brakefield/infinitestudio/geometry/Point;)V

    .line 1186
    invoke-virtual {v0}, Lcom/brakefield/infinitestudio/geometry/Line;->getLength()F

    move-result v0

    invoke-virtual {v1}, Lcom/brakefield/infinitestudio/geometry/Line;->getLength()F

    move-result v1

    add-float/2addr v0, v1

    .line 1187
    iget v1, p0, Lcom/brakefield/infinitestudio/geometry/PathTracer$QuadTo;->quality:F

    div-float/2addr v0, v1

    float-to-int v0, v0

    const/4 v1, 0x0

    move-object v2, p2

    :goto_0
    if-ge v1, v0, :cond_0

    int-to-float v3, v1

    int-to-float v4, v0

    div-float/2addr v3, v4

    .line 1190
    invoke-virtual {v7, v3}, Lcom/brakefield/infinitestudio/geometry/QuadraticBezier;->getPointAtT(F)Lcom/brakefield/infinitestudio/geometry/Point;

    move-result-object v3

    .line 1191
    new-instance v4, Lcom/brakefield/infinitestudio/geometry/Line;

    invoke-direct {v4, v2, v3}, Lcom/brakefield/infinitestudio/geometry/Line;-><init>(Lcom/brakefield/infinitestudio/geometry/Point;Lcom/brakefield/infinitestudio/geometry/Point;)V

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    move-object v2, v3

    goto :goto_0

    .line 1194
    :cond_0
    iget-object v0, p0, Lcom/brakefield/infinitestudio/geometry/PathTracer$QuadTo;->b:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v0, v0, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iput v0, p2, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    .line 1195
    iget-object v0, p0, Lcom/brakefield/infinitestudio/geometry/PathTracer$QuadTo;->b:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v0, v0, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    iput v0, p2, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    return-object p1
.end method

.method public getPoints()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/brakefield/infinitestudio/geometry/Point;",
            ">;"
        }
    .end annotation

    .line 1170
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1171
    iget-object v1, p0, Lcom/brakefield/infinitestudio/geometry/PathTracer$QuadTo;->a:Lcom/brakefield/infinitestudio/geometry/Point;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1172
    iget-object v1, p0, Lcom/brakefield/infinitestudio/geometry/PathTracer$QuadTo;->b:Lcom/brakefield/infinitestudio/geometry/Point;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public save(Ljava/io/FileOutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x4

    .line 1201
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/FileOutputStream;->write([B)V

    .line 1204
    iget-object v0, p0, Lcom/brakefield/infinitestudio/geometry/PathTracer$QuadTo;->a:Lcom/brakefield/infinitestudio/geometry/Point;

    invoke-virtual {v0, p1}, Lcom/brakefield/infinitestudio/geometry/Point;->save(Ljava/io/FileOutputStream;)V

    .line 1205
    iget-object v0, p0, Lcom/brakefield/infinitestudio/geometry/PathTracer$QuadTo;->b:Lcom/brakefield/infinitestudio/geometry/Point;

    invoke-virtual {v0, p1}, Lcom/brakefield/infinitestudio/geometry/Point;->save(Ljava/io/FileOutputStream;)V

    return-void
.end method

.method public toEPS(Ljava/io/FileWriter;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1209
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/brakefield/infinitestudio/geometry/PathTracer$QuadTo;->a:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v1, v1, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/brakefield/infinitestudio/geometry/PathTracer$QuadTo;->a:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v2, v2, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    invoke-static {v2}, Lcom/brakefield/infinitestudio/image/eps/EPSUtils;->flip(F)F

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/brakefield/infinitestudio/geometry/PathTracer$QuadTo;->b:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v2, v2, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/brakefield/infinitestudio/geometry/PathTracer$QuadTo;->b:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v2, v2, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    .line 1210
    invoke-static {v2}, Lcom/brakefield/infinitestudio/image/eps/EPSUtils;->flip(F)F

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/brakefield/infinitestudio/geometry/PathTracer$QuadTo;->b:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v2, v2, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/brakefield/infinitestudio/geometry/PathTracer$QuadTo;->b:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v1, v1, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    invoke-static {v1}, Lcom/brakefield/infinitestudio/image/eps/EPSUtils;->flip(F)F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " curveto"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1209
    invoke-virtual {p1, v0}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    const-string v0, "line.separator"

    .line 1212
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    return-void
.end method

.method public toSVG()Ljava/lang/String;
    .locals 3

    .line 1166
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Q"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/brakefield/infinitestudio/geometry/PathTracer$QuadTo;->a:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v1, v1, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/brakefield/infinitestudio/geometry/PathTracer$QuadTo;->a:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v2, v2, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/brakefield/infinitestudio/geometry/PathTracer$QuadTo;->b:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v2, v2, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/brakefield/infinitestudio/geometry/PathTracer$QuadTo;->b:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v1, v1, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public transform(Landroid/graphics/Matrix;)V
    .locals 6

    const/4 v0, 0x4

    new-array v0, v0, [F

    .line 1152
    iget-object v1, p0, Lcom/brakefield/infinitestudio/geometry/PathTracer$QuadTo;->a:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v1, v1, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    const/4 v2, 0x0

    aput v1, v0, v2

    iget-object v1, p0, Lcom/brakefield/infinitestudio/geometry/PathTracer$QuadTo;->a:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v1, v1, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    const/4 v3, 0x1

    aput v1, v0, v3

    iget-object v1, p0, Lcom/brakefield/infinitestudio/geometry/PathTracer$QuadTo;->b:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v1, v1, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    const/4 v4, 0x2

    aput v1, v0, v4

    iget-object v1, p0, Lcom/brakefield/infinitestudio/geometry/PathTracer$QuadTo;->b:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v1, v1, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    const/4 v5, 0x3

    aput v1, v0, v5

    .line 1153
    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 1154
    iget-object p1, p0, Lcom/brakefield/infinitestudio/geometry/PathTracer$QuadTo;->a:Lcom/brakefield/infinitestudio/geometry/Point;

    aget v1, v0, v2

    iput v1, p1, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    .line 1155
    iget-object p1, p0, Lcom/brakefield/infinitestudio/geometry/PathTracer$QuadTo;->a:Lcom/brakefield/infinitestudio/geometry/Point;

    aget v1, v0, v3

    iput v1, p1, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    .line 1156
    iget-object p1, p0, Lcom/brakefield/infinitestudio/geometry/PathTracer$QuadTo;->b:Lcom/brakefield/infinitestudio/geometry/Point;

    aget v1, v0, v4

    iput v1, p1, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    .line 1157
    iget-object p1, p0, Lcom/brakefield/infinitestudio/geometry/PathTracer$QuadTo;->b:Lcom/brakefield/infinitestudio/geometry/Point;

    aget v0, v0, v5

    iput v0, p1, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    return-void
.end method
