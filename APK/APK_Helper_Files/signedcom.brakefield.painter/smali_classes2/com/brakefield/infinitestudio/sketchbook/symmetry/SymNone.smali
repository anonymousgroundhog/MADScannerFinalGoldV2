.class public Lcom/brakefield/infinitestudio/sketchbook/symmetry/SymNone;
.super Lcom/brakefield/infinitestudio/sketchbook/symmetry/Sym;
.source "SymNone.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Lcom/brakefield/infinitestudio/sketchbook/symmetry/Sym;-><init>()V

    return-void
.end method


# virtual methods
.method public close(FF)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public copy()Lcom/brakefield/infinitestudio/sketchbook/symmetry/Sym;
    .locals 1

    .line 37
    new-instance v0, Lcom/brakefield/infinitestudio/sketchbook/symmetry/SymNone;

    invoke-direct {v0}, Lcom/brakefield/infinitestudio/sketchbook/symmetry/SymNone;-><init>()V

    return-object v0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 0

    return-void
.end method

.method public getAngle()F
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getCenterPoint()Lcom/brakefield/infinitestudio/geometry/Point;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getMatrices()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/graphics/Matrix;",
            ">;"
        }
    .end annotation

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 20
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public getType()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onDown(FF)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onMove(FF)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onUp()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public transform(Landroid/graphics/Matrix;)V
    .locals 0

    return-void
.end method
