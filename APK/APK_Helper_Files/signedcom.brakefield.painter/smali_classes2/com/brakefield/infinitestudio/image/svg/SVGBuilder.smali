.class public Lcom/brakefield/infinitestudio/image/svg/SVGBuilder;
.super Ljava/lang/Object;
.source "SVGBuilder.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public parseSVG()Lcom/brakefield/infinitestudio/geometry/PathTracer;
    .locals 1

    .line 16
    new-instance v0, Lcom/brakefield/infinitestudio/geometry/PathTracer;

    invoke-direct {v0}, Lcom/brakefield/infinitestudio/geometry/PathTracer;-><init>()V

    return-object v0
.end method

.method public writeSVG(Lcom/brakefield/infinitestudio/geometry/PathTracer;)V
    .locals 0

    return-void
.end method
