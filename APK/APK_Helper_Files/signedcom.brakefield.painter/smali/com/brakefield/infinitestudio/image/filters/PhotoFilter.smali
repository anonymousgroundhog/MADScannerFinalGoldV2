.class public abstract Lcom/brakefield/infinitestudio/image/filters/PhotoFilter;
.super Ljava/lang/Object;
.source "PhotoFilter.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract apply(Landroid/graphics/Bitmap;)V
.end method

.method public abstract chain(I)I
.end method

.method public abstract isLinear()Z
.end method
