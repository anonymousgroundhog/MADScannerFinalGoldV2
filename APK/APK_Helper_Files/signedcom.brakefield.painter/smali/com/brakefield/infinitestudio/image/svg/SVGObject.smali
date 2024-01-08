.class public Lcom/brakefield/infinitestudio/image/svg/SVGObject;
.super Ljava/lang/Object;
.source "SVGObject.java"


# instance fields
.field public fill:Lcom/brakefield/infinitestudio/color/PaintTracer;

.field public path:Lcom/brakefield/infinitestudio/geometry/PathTracer;

.field public stroke:Lcom/brakefield/infinitestudio/color/PaintTracer;


# direct methods
.method public constructor <init>(Lcom/brakefield/infinitestudio/geometry/PathTracer;Lcom/brakefield/infinitestudio/color/PaintTracer;Lcom/brakefield/infinitestudio/color/PaintTracer;)V
    .locals 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    new-instance v0, Lcom/brakefield/infinitestudio/geometry/PathTracer;

    invoke-direct {v0}, Lcom/brakefield/infinitestudio/geometry/PathTracer;-><init>()V

    iput-object v0, p0, Lcom/brakefield/infinitestudio/image/svg/SVGObject;->path:Lcom/brakefield/infinitestudio/geometry/PathTracer;

    .line 12
    new-instance v0, Lcom/brakefield/infinitestudio/color/PaintTracer;

    invoke-direct {v0}, Lcom/brakefield/infinitestudio/color/PaintTracer;-><init>()V

    iput-object v0, p0, Lcom/brakefield/infinitestudio/image/svg/SVGObject;->stroke:Lcom/brakefield/infinitestudio/color/PaintTracer;

    .line 13
    new-instance v0, Lcom/brakefield/infinitestudio/color/PaintTracer;

    invoke-direct {v0}, Lcom/brakefield/infinitestudio/color/PaintTracer;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/brakefield/infinitestudio/image/svg/SVGObject;->path:Lcom/brakefield/infinitestudio/geometry/PathTracer;

    .line 17
    iput-object p2, p0, Lcom/brakefield/infinitestudio/image/svg/SVGObject;->stroke:Lcom/brakefield/infinitestudio/color/PaintTracer;

    .line 18
    iput-object p3, p0, Lcom/brakefield/infinitestudio/image/svg/SVGObject;->fill:Lcom/brakefield/infinitestudio/color/PaintTracer;

    return-void
.end method
