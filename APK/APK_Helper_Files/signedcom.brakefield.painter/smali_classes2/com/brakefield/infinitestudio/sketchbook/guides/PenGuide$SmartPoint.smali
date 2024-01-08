.class public Lcom/brakefield/infinitestudio/sketchbook/guides/PenGuide$SmartPoint;
.super Lcom/brakefield/infinitestudio/geometry/Point;
.source "PenGuide.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/brakefield/infinitestudio/sketchbook/guides/PenGuide;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SmartPoint"
.end annotation


# static fields
.field public static final CURVE:I = 0x1

.field public static final LINE:I


# instance fields
.field public id:I

.field final synthetic this$0:Lcom/brakefield/infinitestudio/sketchbook/guides/PenGuide;

.field public type:I


# direct methods
.method public constructor <init>(Lcom/brakefield/infinitestudio/sketchbook/guides/PenGuide;FFI)V
    .locals 0

    .line 961
    iput-object p1, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/PenGuide$SmartPoint;->this$0:Lcom/brakefield/infinitestudio/sketchbook/guides/PenGuide;

    .line 962
    invoke-direct {p0, p2, p3}, Lcom/brakefield/infinitestudio/geometry/Point;-><init>(FF)V

    .line 963
    iput p4, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/PenGuide$SmartPoint;->type:I

    return-void
.end method


# virtual methods
.method public bridge synthetic copy()Lcom/brakefield/infinitestudio/geometry/Point;
    .locals 1

    .line 953
    invoke-virtual {p0}, Lcom/brakefield/infinitestudio/sketchbook/guides/PenGuide$SmartPoint;->copy()Lcom/brakefield/infinitestudio/sketchbook/guides/PenGuide$SmartPoint;

    move-result-object v0

    return-object v0
.end method

.method public copy()Lcom/brakefield/infinitestudio/sketchbook/guides/PenGuide$SmartPoint;
    .locals 5

    .line 967
    new-instance v0, Lcom/brakefield/infinitestudio/sketchbook/guides/PenGuide$SmartPoint;

    iget-object v1, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/PenGuide$SmartPoint;->this$0:Lcom/brakefield/infinitestudio/sketchbook/guides/PenGuide;

    iget v2, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/PenGuide$SmartPoint;->x:F

    iget v3, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/PenGuide$SmartPoint;->y:F

    iget v4, p0, Lcom/brakefield/infinitestudio/sketchbook/guides/PenGuide$SmartPoint;->type:I

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/brakefield/infinitestudio/sketchbook/guides/PenGuide$SmartPoint;-><init>(Lcom/brakefield/infinitestudio/sketchbook/guides/PenGuide;FFI)V

    return-object v0
.end method
