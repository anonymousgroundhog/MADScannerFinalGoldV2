.class Lcom/brakefield/infinitestudio/geometry/PathTracer$MoveTo;
.super Lcom/brakefield/infinitestudio/geometry/PathTracer$PathObject;
.source "PathTracer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/brakefield/infinitestudio/geometry/PathTracer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MoveTo"
.end annotation


# instance fields
.field a:Lcom/brakefield/infinitestudio/geometry/Point;

.field final synthetic this$0:Lcom/brakefield/infinitestudio/geometry/PathTracer;


# direct methods
.method public constructor <init>(Lcom/brakefield/infinitestudio/geometry/PathTracer;FF)V
    .locals 0

    .line 1019
    iput-object p1, p0, Lcom/brakefield/infinitestudio/geometry/PathTracer$MoveTo;->this$0:Lcom/brakefield/infinitestudio/geometry/PathTracer;

    invoke-direct {p0, p1}, Lcom/brakefield/infinitestudio/geometry/PathTracer$PathObject;-><init>(Lcom/brakefield/infinitestudio/geometry/PathTracer;)V

    const/4 p1, 0x1

    .line 1020
    iput p1, p0, Lcom/brakefield/infinitestudio/geometry/PathTracer$MoveTo;->type:I

    .line 1021
    new-instance p1, Lcom/brakefield/infinitestudio/geometry/Point;

    invoke-direct {p1, p2, p3}, Lcom/brakefield/infinitestudio/geometry/Point;-><init>(FF)V

    iput-object p1, p0, Lcom/brakefield/infinitestudio/geometry/PathTracer$MoveTo;->a:Lcom/brakefield/infinitestudio/geometry/Point;

    return-void
.end method


# virtual methods
.method public addToPath(Landroid/graphics/Path;)V
    .locals 2

    .line 1052
    iget-object v0, p0, Lcom/brakefield/infinitestudio/geometry/PathTracer$MoveTo;->a:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v0, v0, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iget-object v1, p0, Lcom/brakefield/infinitestudio/geometry/PathTracer$MoveTo;->a:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v1, v1, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Path;->moveTo(FF)V

    return-void
.end method

.method public copy()Lcom/brakefield/infinitestudio/geometry/PathTracer$PathObject;
    .locals 4

    .line 1036
    new-instance v0, Lcom/brakefield/infinitestudio/geometry/PathTracer$MoveTo;

    iget-object v1, p0, Lcom/brakefield/infinitestudio/geometry/PathTracer$MoveTo;->this$0:Lcom/brakefield/infinitestudio/geometry/PathTracer;

    iget-object v2, p0, Lcom/brakefield/infinitestudio/geometry/PathTracer$MoveTo;->a:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v2, v2, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iget-object v3, p0, Lcom/brakefield/infinitestudio/geometry/PathTracer$MoveTo;->a:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v3, v3, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    invoke-direct {v0, v1, v2, v3}, Lcom/brakefield/infinitestudio/geometry/PathTracer$MoveTo;-><init>(Lcom/brakefield/infinitestudio/geometry/PathTracer;FF)V

    return-object v0
.end method

.method public getData()[F
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 1025
    iget-object v1, p0, Lcom/brakefield/infinitestudio/geometry/PathTracer$MoveTo;->a:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v1, v1, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    const/4 v2, 0x0

    aput v1, v0, v2

    iget-object v1, p0, Lcom/brakefield/infinitestudio/geometry/PathTracer$MoveTo;->a:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v1, v1, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    const/4 v2, 0x1

    aput v1, v0, v2

    return-object v0
.end method

.method public getLineSegments(Lcom/brakefield/infinitestudio/geometry/Point;Lcom/brakefield/infinitestudio/geometry/Point;)Ljava/util/ArrayList;
    .locals 1
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

    .line 1056
    iget-object v0, p0, Lcom/brakefield/infinitestudio/geometry/PathTracer$MoveTo;->a:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v0, v0, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iput v0, p1, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    .line 1057
    iget-object v0, p0, Lcom/brakefield/infinitestudio/geometry/PathTracer$MoveTo;->a:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v0, v0, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    iput v0, p1, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    .line 1058
    iget-object p1, p0, Lcom/brakefield/infinitestudio/geometry/PathTracer$MoveTo;->a:Lcom/brakefield/infinitestudio/geometry/Point;

    iget p1, p1, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iput p1, p2, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    .line 1059
    iget-object p1, p0, Lcom/brakefield/infinitestudio/geometry/PathTracer$MoveTo;->a:Lcom/brakefield/infinitestudio/geometry/Point;

    iget p1, p1, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    iput p1, p2, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    const/4 p1, 0x0

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

    .line 1045
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1046
    iget-object v1, p0, Lcom/brakefield/infinitestudio/geometry/PathTracer$MoveTo;->a:Lcom/brakefield/infinitestudio/geometry/Point;

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

    .line 1064
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/FileOutputStream;->write([B)V

    .line 1065
    iget-object v0, p0, Lcom/brakefield/infinitestudio/geometry/PathTracer$MoveTo;->a:Lcom/brakefield/infinitestudio/geometry/Point;

    invoke-virtual {v0, p1}, Lcom/brakefield/infinitestudio/geometry/Point;->save(Ljava/io/FileOutputStream;)V

    return-void
.end method

.method public toEPS(Ljava/io/FileWriter;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1069
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/brakefield/infinitestudio/geometry/PathTracer$MoveTo;->a:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v1, v1, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/brakefield/infinitestudio/geometry/PathTracer$MoveTo;->a:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v1, v1, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    invoke-static {v1}, Lcom/brakefield/infinitestudio/image/eps/EPSUtils;->flip(F)F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " moveto"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    const-string v0, "line.separator"

    .line 1071
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    return-void
.end method

.method public toSVG()Ljava/lang/String;
    .locals 2

    .line 1041
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "M"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/brakefield/infinitestudio/geometry/PathTracer$MoveTo;->a:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v1, v1, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/brakefield/infinitestudio/geometry/PathTracer$MoveTo;->a:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v1, v1, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public transform(Landroid/graphics/Matrix;)V
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 1029
    iget-object v1, p0, Lcom/brakefield/infinitestudio/geometry/PathTracer$MoveTo;->a:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v1, v1, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    const/4 v2, 0x0

    aput v1, v0, v2

    iget-object v1, p0, Lcom/brakefield/infinitestudio/geometry/PathTracer$MoveTo;->a:Lcom/brakefield/infinitestudio/geometry/Point;

    iget v1, v1, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    const/4 v3, 0x1

    aput v1, v0, v3

    .line 1030
    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 1031
    iget-object p1, p0, Lcom/brakefield/infinitestudio/geometry/PathTracer$MoveTo;->a:Lcom/brakefield/infinitestudio/geometry/Point;

    aget v1, v0, v2

    iput v1, p1, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    .line 1032
    iget-object p1, p0, Lcom/brakefield/infinitestudio/geometry/PathTracer$MoveTo;->a:Lcom/brakefield/infinitestudio/geometry/Point;

    aget v0, v0, v3

    iput v0, p1, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    return-void
.end method
