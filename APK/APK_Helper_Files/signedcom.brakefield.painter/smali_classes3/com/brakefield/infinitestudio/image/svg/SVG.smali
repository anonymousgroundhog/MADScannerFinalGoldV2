.class public Lcom/brakefield/infinitestudio/image/svg/SVG;
.super Ljava/lang/Object;
.source "SVG.java"


# instance fields
.field protected bitmap:Landroid/graphics/Bitmap;

.field private bounds:Landroid/graphics/RectF;

.field public groups:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/brakefield/infinitestudio/image/svg/SVGGroup;",
            ">;"
        }
    .end annotation
.end field

.field private limits:Landroid/graphics/RectF;


# direct methods
.method constructor <init>(Ljava/util/List;Landroid/graphics/RectF;Landroid/graphics/Bitmap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/brakefield/infinitestudio/image/svg/SVGGroup;",
            ">;",
            "Landroid/graphics/RectF;",
            "Landroid/graphics/Bitmap;",
            ")V"
        }
    .end annotation

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    .line 49
    iput-object v0, p0, Lcom/brakefield/infinitestudio/image/svg/SVG;->limits:Landroid/graphics/RectF;

    .line 60
    iput-object p1, p0, Lcom/brakefield/infinitestudio/image/svg/SVG;->groups:Ljava/util/List;

    .line 61
    iput-object p2, p0, Lcom/brakefield/infinitestudio/image/svg/SVG;->bounds:Landroid/graphics/RectF;

    .line 62
    iput-object p3, p0, Lcom/brakefield/infinitestudio/image/svg/SVG;->bitmap:Landroid/graphics/Bitmap;

    return-void
.end method


# virtual methods
.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/brakefield/infinitestudio/image/svg/SVG;->bitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getBounds()Landroid/graphics/RectF;
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/brakefield/infinitestudio/image/svg/SVG;->bounds:Landroid/graphics/RectF;

    return-object v0
.end method

.method public getLimits()Landroid/graphics/RectF;
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/brakefield/infinitestudio/image/svg/SVG;->limits:Landroid/graphics/RectF;

    return-object v0
.end method

.method setLimits(Landroid/graphics/RectF;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/brakefield/infinitestudio/image/svg/SVG;->limits:Landroid/graphics/RectF;

    return-void
.end method
