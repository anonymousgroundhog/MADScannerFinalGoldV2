.class Lcom/brakefield/infinitestudio/geometry/PathTracer$Close;
.super Lcom/brakefield/infinitestudio/geometry/PathTracer$PathObject;
.source "PathTracer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/brakefield/infinitestudio/geometry/PathTracer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Close"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/brakefield/infinitestudio/geometry/PathTracer;


# direct methods
.method public constructor <init>(Lcom/brakefield/infinitestudio/geometry/PathTracer;)V
    .locals 0

    .line 1305
    iput-object p1, p0, Lcom/brakefield/infinitestudio/geometry/PathTracer$Close;->this$0:Lcom/brakefield/infinitestudio/geometry/PathTracer;

    invoke-direct {p0, p1}, Lcom/brakefield/infinitestudio/geometry/PathTracer$PathObject;-><init>(Lcom/brakefield/infinitestudio/geometry/PathTracer;)V

    const/4 p1, 0x0

    .line 1306
    iput p1, p0, Lcom/brakefield/infinitestudio/geometry/PathTracer$Close;->type:I

    return-void
.end method


# virtual methods
.method public addToPath(Landroid/graphics/Path;)V
    .locals 0

    .line 1329
    invoke-virtual {p1}, Landroid/graphics/Path;->close()V

    return-void
.end method

.method public copy()Lcom/brakefield/infinitestudio/geometry/PathTracer$PathObject;
    .locals 2

    .line 1318
    new-instance v0, Lcom/brakefield/infinitestudio/geometry/PathTracer$Close;

    iget-object v1, p0, Lcom/brakefield/infinitestudio/geometry/PathTracer$Close;->this$0:Lcom/brakefield/infinitestudio/geometry/PathTracer;

    invoke-direct {v0, v1}, Lcom/brakefield/infinitestudio/geometry/PathTracer$Close;-><init>(Lcom/brakefield/infinitestudio/geometry/PathTracer;)V

    return-object v0
.end method

.method public getData()[F
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [F

    return-object v0
.end method

.method public getLineSegments(Lcom/brakefield/infinitestudio/geometry/Point;Lcom/brakefield/infinitestudio/geometry/Point;)Ljava/util/ArrayList;
    .locals 2
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

    .line 1333
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1334
    new-instance v1, Lcom/brakefield/infinitestudio/geometry/Line;

    invoke-direct {v1, p2, p1}, Lcom/brakefield/infinitestudio/geometry/Line;-><init>(Lcom/brakefield/infinitestudio/geometry/Point;Lcom/brakefield/infinitestudio/geometry/Point;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1335
    iget v1, p1, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    iput v1, p2, Lcom/brakefield/infinitestudio/geometry/Point;->x:F

    .line 1336
    iget p1, p1, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

    iput p1, p2, Lcom/brakefield/infinitestudio/geometry/Point;->y:F

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

    .line 1342
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/FileOutputStream;->write([B)V

    return-void
.end method

.method public toEPS(Ljava/io/FileWriter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "closepath"

    .line 1346
    invoke-virtual {p1, v0}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    const-string v0, "line.separator"

    .line 1347
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    return-void
.end method

.method public toSVG()Ljava/lang/String;
    .locals 1

    const-string v0, "Z"

    return-object v0
.end method

.method public transform(Landroid/graphics/Matrix;)V
    .locals 0

    return-void
.end method
