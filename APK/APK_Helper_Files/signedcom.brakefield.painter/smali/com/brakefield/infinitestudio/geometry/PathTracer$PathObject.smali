.class public abstract Lcom/brakefield/infinitestudio/geometry/PathTracer$PathObject;
.super Ljava/lang/Object;
.source "PathTracer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/brakefield/infinitestudio/geometry/PathTracer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "PathObject"
.end annotation


# static fields
.field public static final ARC:I = 0x5

.field public static final CLOSE:I = 0x0

.field public static final CUBIC_TO:I = 0x4

.field public static final LINE_TO:I = 0x2

.field public static final MOVE_TO:I = 0x1

.field public static final OVAL:I = 0x6

.field public static final QUAD_TO:I = 0x3

.field public static final RECT:I = 0x7

.field public static final ROUND_RECT:I = 0x8


# instance fields
.field protected quality:F

.field final synthetic this$0:Lcom/brakefield/infinitestudio/geometry/PathTracer;

.field public type:I


# direct methods
.method public constructor <init>(Lcom/brakefield/infinitestudio/geometry/PathTracer;)V
    .locals 0

    .line 823
    iput-object p1, p0, Lcom/brakefield/infinitestudio/geometry/PathTracer$PathObject;->this$0:Lcom/brakefield/infinitestudio/geometry/PathTracer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 p1, 0x40800000    # 4.0f

    .line 821
    iput p1, p0, Lcom/brakefield/infinitestudio/geometry/PathTracer$PathObject;->quality:F

    return-void
.end method


# virtual methods
.method public abstract addToPath(Landroid/graphics/Path;)V
.end method

.method public abstract copy()Lcom/brakefield/infinitestudio/geometry/PathTracer$PathObject;
.end method

.method public abstract getData()[F
.end method

.method public getLineSegments(Lcom/brakefield/infinitestudio/geometry/Point;Lcom/brakefield/infinitestudio/geometry/Point;)Ljava/util/ArrayList;
    .locals 0
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

    const/4 p1, 0x0

    return-object p1
.end method

.method public getPoints()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/brakefield/infinitestudio/geometry/Point;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public save(Ljava/io/FileOutputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method public toEPS(Ljava/io/FileWriter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method public abstract toSVG()Ljava/lang/String;
.end method

.method public abstract transform(Landroid/graphics/Matrix;)V
.end method
