.class Lcom/brakefield/infinitestudio/image/svg/SVGParser$Gradient;
.super Ljava/lang/Object;
.source "SVGParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/brakefield/infinitestudio/image/svg/SVGParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Gradient"
.end annotation


# instance fields
.field colors:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field id:Ljava/lang/String;

.field isLinear:Z

.field matrix:Landroid/graphics/Matrix;

.field positions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field radius:F

.field x:F

.field x1:F

.field x2:F

.field xlink:Ljava/lang/String;

.field y:F

.field y1:F

.field y2:F


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 763
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 769
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/brakefield/infinitestudio/image/svg/SVGParser$Gradient;->positions:Ljava/util/ArrayList;

    .line 770
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/brakefield/infinitestudio/image/svg/SVGParser$Gradient;->colors:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 771
    iput-object v0, p0, Lcom/brakefield/infinitestudio/image/svg/SVGParser$Gradient;->matrix:Landroid/graphics/Matrix;

    return-void
.end method

.method synthetic constructor <init>(Lcom/brakefield/infinitestudio/image/svg/SVGParser$1;)V
    .locals 0

    .line 763
    invoke-direct {p0}, Lcom/brakefield/infinitestudio/image/svg/SVGParser$Gradient;-><init>()V

    return-void
.end method


# virtual methods
.method public createChild(Lcom/brakefield/infinitestudio/image/svg/SVGParser$Gradient;)Lcom/brakefield/infinitestudio/image/svg/SVGParser$Gradient;
    .locals 3

    .line 774
    new-instance v0, Lcom/brakefield/infinitestudio/image/svg/SVGParser$Gradient;

    invoke-direct {v0}, Lcom/brakefield/infinitestudio/image/svg/SVGParser$Gradient;-><init>()V

    .line 775
    iget-object v1, p1, Lcom/brakefield/infinitestudio/image/svg/SVGParser$Gradient;->id:Ljava/lang/String;

    iput-object v1, v0, Lcom/brakefield/infinitestudio/image/svg/SVGParser$Gradient;->id:Ljava/lang/String;

    .line 776
    iget-object v1, p0, Lcom/brakefield/infinitestudio/image/svg/SVGParser$Gradient;->id:Ljava/lang/String;

    iput-object v1, v0, Lcom/brakefield/infinitestudio/image/svg/SVGParser$Gradient;->xlink:Ljava/lang/String;

    .line 777
    iget-boolean v1, p1, Lcom/brakefield/infinitestudio/image/svg/SVGParser$Gradient;->isLinear:Z

    iput-boolean v1, v0, Lcom/brakefield/infinitestudio/image/svg/SVGParser$Gradient;->isLinear:Z

    .line 778
    iget v1, p1, Lcom/brakefield/infinitestudio/image/svg/SVGParser$Gradient;->x1:F

    iput v1, v0, Lcom/brakefield/infinitestudio/image/svg/SVGParser$Gradient;->x1:F

    .line 779
    iget v1, p1, Lcom/brakefield/infinitestudio/image/svg/SVGParser$Gradient;->x2:F

    iput v1, v0, Lcom/brakefield/infinitestudio/image/svg/SVGParser$Gradient;->x2:F

    .line 780
    iget v1, p1, Lcom/brakefield/infinitestudio/image/svg/SVGParser$Gradient;->y1:F

    iput v1, v0, Lcom/brakefield/infinitestudio/image/svg/SVGParser$Gradient;->y1:F

    .line 781
    iget v1, p1, Lcom/brakefield/infinitestudio/image/svg/SVGParser$Gradient;->y2:F

    iput v1, v0, Lcom/brakefield/infinitestudio/image/svg/SVGParser$Gradient;->y2:F

    .line 782
    iget v1, p1, Lcom/brakefield/infinitestudio/image/svg/SVGParser$Gradient;->x:F

    iput v1, v0, Lcom/brakefield/infinitestudio/image/svg/SVGParser$Gradient;->x:F

    .line 783
    iget v1, p1, Lcom/brakefield/infinitestudio/image/svg/SVGParser$Gradient;->y:F

    iput v1, v0, Lcom/brakefield/infinitestudio/image/svg/SVGParser$Gradient;->y:F

    .line 784
    iget v1, p1, Lcom/brakefield/infinitestudio/image/svg/SVGParser$Gradient;->radius:F

    iput v1, v0, Lcom/brakefield/infinitestudio/image/svg/SVGParser$Gradient;->radius:F

    .line 785
    iget-object v1, p0, Lcom/brakefield/infinitestudio/image/svg/SVGParser$Gradient;->positions:Ljava/util/ArrayList;

    iput-object v1, v0, Lcom/brakefield/infinitestudio/image/svg/SVGParser$Gradient;->positions:Ljava/util/ArrayList;

    .line 786
    iget-object v1, p0, Lcom/brakefield/infinitestudio/image/svg/SVGParser$Gradient;->colors:Ljava/util/ArrayList;

    iput-object v1, v0, Lcom/brakefield/infinitestudio/image/svg/SVGParser$Gradient;->colors:Ljava/util/ArrayList;

    .line 787
    iget-object v1, p0, Lcom/brakefield/infinitestudio/image/svg/SVGParser$Gradient;->matrix:Landroid/graphics/Matrix;

    iput-object v1, v0, Lcom/brakefield/infinitestudio/image/svg/SVGParser$Gradient;->matrix:Landroid/graphics/Matrix;

    .line 788
    iget-object v1, p1, Lcom/brakefield/infinitestudio/image/svg/SVGParser$Gradient;->matrix:Landroid/graphics/Matrix;

    if-eqz v1, :cond_1

    .line 789
    iget-object v2, p0, Lcom/brakefield/infinitestudio/image/svg/SVGParser$Gradient;->matrix:Landroid/graphics/Matrix;

    if-nez v2, :cond_0

    .line 790
    iput-object v1, v0, Lcom/brakefield/infinitestudio/image/svg/SVGParser$Gradient;->matrix:Landroid/graphics/Matrix;

    goto :goto_0

    .line 792
    :cond_0
    new-instance v1, Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/brakefield/infinitestudio/image/svg/SVGParser$Gradient;->matrix:Landroid/graphics/Matrix;

    invoke-direct {v1, v2}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    .line 793
    iget-object p1, p1, Lcom/brakefield/infinitestudio/image/svg/SVGParser$Gradient;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, p1}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    .line 794
    iput-object v1, v0, Lcom/brakefield/infinitestudio/image/svg/SVGParser$Gradient;->matrix:Landroid/graphics/Matrix;

    :cond_1
    :goto_0
    return-object v0
.end method
