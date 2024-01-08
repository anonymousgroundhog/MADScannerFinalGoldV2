.class public Lcom/brakefield/infinitestudio/sketchbook/symmetry/SymmetryAttributes;
.super Ljava/lang/Object;
.source "SymmetryAttributes.java"


# static fields
.field public static final JSON_ANGLE:Ljava/lang/String; = "angle"

.field public static final JSON_DATA:Ljava/lang/String; = "data"

.field public static final JSON_PLANES:Ljava/lang/String; = "planes"

.field public static final JSON_R_COUNT:Ljava/lang/String; = "r-count"

.field public static final JSON_SWEEP:Ljava/lang/String; = "sweep"

.field public static final JSON_TYPE:Ljava/lang/String; = "type"


# instance fields
.field private symmetry:Lcom/brakefield/infinitestudio/sketchbook/symmetry/Sym;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Lcom/brakefield/infinitestudio/sketchbook/symmetry/SymNone;

    invoke-direct {v0}, Lcom/brakefield/infinitestudio/sketchbook/symmetry/SymNone;-><init>()V

    iput-object v0, p0, Lcom/brakefield/infinitestudio/sketchbook/symmetry/SymmetryAttributes;->symmetry:Lcom/brakefield/infinitestudio/sketchbook/symmetry/Sym;

    return-void
.end method


# virtual methods
.method public copy()Lcom/brakefield/infinitestudio/sketchbook/symmetry/SymmetryAttributes;
    .locals 2

    .line 17
    new-instance v0, Lcom/brakefield/infinitestudio/sketchbook/symmetry/SymmetryAttributes;

    invoke-direct {v0}, Lcom/brakefield/infinitestudio/sketchbook/symmetry/SymmetryAttributes;-><init>()V

    .line 18
    iget-object v1, p0, Lcom/brakefield/infinitestudio/sketchbook/symmetry/SymmetryAttributes;->symmetry:Lcom/brakefield/infinitestudio/sketchbook/symmetry/Sym;

    invoke-virtual {v1}, Lcom/brakefield/infinitestudio/sketchbook/symmetry/Sym;->copy()Lcom/brakefield/infinitestudio/sketchbook/symmetry/Sym;

    move-result-object v1

    iput-object v1, v0, Lcom/brakefield/infinitestudio/sketchbook/symmetry/SymmetryAttributes;->symmetry:Lcom/brakefield/infinitestudio/sketchbook/symmetry/Sym;

    return-object v0
.end method

.method public getJSON()Lorg/json/JSONObject;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 44
    iget-object v0, p0, Lcom/brakefield/infinitestudio/sketchbook/symmetry/SymmetryAttributes;->symmetry:Lcom/brakefield/infinitestudio/sketchbook/symmetry/Sym;

    invoke-virtual {v0}, Lcom/brakefield/infinitestudio/sketchbook/symmetry/Sym;->getJSON()Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public getSymmetries()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/graphics/Matrix;",
            ">;"
        }
    .end annotation

    .line 91
    iget-object v0, p0, Lcom/brakefield/infinitestudio/sketchbook/symmetry/SymmetryAttributes;->symmetry:Lcom/brakefield/infinitestudio/sketchbook/symmetry/Sym;

    invoke-virtual {v0}, Lcom/brakefield/infinitestudio/sketchbook/symmetry/Sym;->getMatrices()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getSymmetry()Lcom/brakefield/infinitestudio/sketchbook/symmetry/Sym;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/brakefield/infinitestudio/sketchbook/symmetry/SymmetryAttributes;->symmetry:Lcom/brakefield/infinitestudio/sketchbook/symmetry/Sym;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/brakefield/infinitestudio/sketchbook/symmetry/SymmetryAttributes;->symmetry:Lcom/brakefield/infinitestudio/sketchbook/symmetry/Sym;

    invoke-virtual {v0}, Lcom/brakefield/infinitestudio/sketchbook/symmetry/Sym;->getType()I

    move-result v0

    return v0
.end method

.method public loadJSON(Lorg/json/JSONObject;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string/jumbo v0, "type"

    .line 51
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    const-string v1, "data"

    .line 53
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x4

    if-eq v0, v4, :cond_2

    const/4 v5, 0x5

    if-eq v0, v5, :cond_1

    .line 73
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result p1

    const/4 v0, 0x3

    const/4 v6, 0x2

    if-le p1, v4, :cond_0

    .line 74
    invoke-virtual {v1, v6}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v2

    double-to-float p1, v2

    .line 75
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v2

    double-to-float v0, v2

    .line 76
    invoke-virtual {v1, v4}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v2

    double-to-float v2, v2

    .line 77
    invoke-virtual {v1, v5}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v3

    double-to-float v1, v3

    .line 78
    new-instance v3, Lcom/brakefield/infinitestudio/sketchbook/symmetry/SymLine;

    invoke-direct {v3, p1, v0, v2, v1}, Lcom/brakefield/infinitestudio/sketchbook/symmetry/SymLine;-><init>(FFFF)V

    iput-object v3, p0, Lcom/brakefield/infinitestudio/sketchbook/symmetry/SymmetryAttributes;->symmetry:Lcom/brakefield/infinitestudio/sketchbook/symmetry/Sym;

    goto :goto_0

    .line 80
    :cond_0
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v3

    double-to-float p1, v3

    .line 81
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v2

    double-to-float v2, v2

    .line 82
    invoke-virtual {v1, v6}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v3

    double-to-float v3, v3

    .line 83
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v0

    double-to-float v0, v0

    .line 84
    new-instance v1, Lcom/brakefield/infinitestudio/sketchbook/symmetry/SymLine;

    invoke-direct {v1, p1, v2, v3, v0}, Lcom/brakefield/infinitestudio/sketchbook/symmetry/SymLine;-><init>(FFFF)V

    iput-object v1, p0, Lcom/brakefield/infinitestudio/sketchbook/symmetry/SymmetryAttributes;->symmetry:Lcom/brakefield/infinitestudio/sketchbook/symmetry/Sym;

    goto :goto_0

    .line 66
    :cond_1
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v3

    double-to-float v0, v3

    .line 67
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v1

    double-to-float v1, v1

    const-string/jumbo v2, "planes"

    .line 68
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    const-string v3, "angle"

    .line 69
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v3

    double-to-float p1, v3

    .line 70
    new-instance v3, Lcom/brakefield/infinitestudio/sketchbook/symmetry/SymKaleido;

    invoke-direct {v3, v0, v1, v2, p1}, Lcom/brakefield/infinitestudio/sketchbook/symmetry/SymKaleido;-><init>(FFIF)V

    iput-object v3, p0, Lcom/brakefield/infinitestudio/sketchbook/symmetry/SymmetryAttributes;->symmetry:Lcom/brakefield/infinitestudio/sketchbook/symmetry/Sym;

    goto :goto_0

    .line 59
    :cond_2
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v3

    double-to-float v0, v3

    .line 60
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v1

    double-to-float v1, v1

    const-string/jumbo v2, "r-count"

    .line 61
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    const-string/jumbo v3, "sweep"

    .line 62
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v3

    double-to-float p1, v3

    .line 63
    new-instance v3, Lcom/brakefield/infinitestudio/sketchbook/symmetry/SymRadial;

    invoke-direct {v3, v0, v1, v2, p1}, Lcom/brakefield/infinitestudio/sketchbook/symmetry/SymRadial;-><init>(FFIF)V

    iput-object v3, p0, Lcom/brakefield/infinitestudio/sketchbook/symmetry/SymmetryAttributes;->symmetry:Lcom/brakefield/infinitestudio/sketchbook/symmetry/Sym;

    :goto_0
    return-void
.end method

.method public setSymmetry(Lcom/brakefield/infinitestudio/sketchbook/symmetry/Sym;)V
    .locals 0

    .line 24
    iput-object p1, p0, Lcom/brakefield/infinitestudio/sketchbook/symmetry/SymmetryAttributes;->symmetry:Lcom/brakefield/infinitestudio/sketchbook/symmetry/Sym;

    return-void
.end method

.method public transform(Landroid/graphics/Matrix;)V
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/brakefield/infinitestudio/sketchbook/symmetry/SymmetryAttributes;->symmetry:Lcom/brakefield/infinitestudio/sketchbook/symmetry/Sym;

    invoke-virtual {v0, p1}, Lcom/brakefield/infinitestudio/sketchbook/symmetry/Sym;->transform(Landroid/graphics/Matrix;)V

    return-void
.end method
