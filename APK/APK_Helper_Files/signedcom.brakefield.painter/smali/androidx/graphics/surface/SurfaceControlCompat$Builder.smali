.class public final Landroidx/graphics/surface/SurfaceControlCompat$Builder;
.super Ljava/lang/Object;
.source "SurfaceControlCompat.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/graphics/surface/SurfaceControlCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/graphics/surface/SurfaceControlCompat$Builder$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u0000 \u000e2\u00020\u0001:\u0001\u000eB\u0005\u00a2\u0006\u0002\u0010\u0002J\u0006\u0010\u0005\u001a\u00020\u0006J\u000e\u0010\u0007\u001a\u00020\u00002\u0006\u0010\u0008\u001a\u00020\tJ\u000e\u0010\n\u001a\u00020\u00002\u0006\u0010\u000b\u001a\u00020\u000cJ\u000e\u0010\n\u001a\u00020\u00002\u0006\u0010\r\u001a\u00020\u0006R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000f"
    }
    d2 = {
        "Landroidx/graphics/surface/SurfaceControlCompat$Builder;",
        "",
        "()V",
        "mBuilderImpl",
        "Landroidx/graphics/surface/SurfaceControlImpl$Builder;",
        "build",
        "Landroidx/graphics/surface/SurfaceControlCompat;",
        "setName",
        "name",
        "",
        "setParent",
        "surfaceView",
        "Landroid/view/SurfaceView;",
        "surfaceControl",
        "Companion",
        "graphics-core_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Landroidx/graphics/surface/SurfaceControlCompat$Builder$Companion;


# instance fields
.field private final mBuilderImpl:Landroidx/graphics/surface/SurfaceControlImpl$Builder;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/graphics/surface/SurfaceControlCompat$Builder$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/graphics/surface/SurfaceControlCompat$Builder$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/graphics/surface/SurfaceControlCompat$Builder;->Companion:Landroidx/graphics/surface/SurfaceControlCompat$Builder$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 124
    sget-object v0, Landroidx/graphics/surface/SurfaceControlCompat$Builder;->Companion:Landroidx/graphics/surface/SurfaceControlCompat$Builder$Companion;

    invoke-virtual {v0}, Landroidx/graphics/surface/SurfaceControlCompat$Builder$Companion;->createImpl()Landroidx/graphics/surface/SurfaceControlImpl$Builder;

    move-result-object v0

    iput-object v0, p0, Landroidx/graphics/surface/SurfaceControlCompat$Builder;->mBuilderImpl:Landroidx/graphics/surface/SurfaceControlImpl$Builder;

    return-void
.end method


# virtual methods
.method public final build()Landroidx/graphics/surface/SurfaceControlCompat;
    .locals 2

    .line 167
    new-instance v0, Landroidx/graphics/surface/SurfaceControlCompat;

    iget-object v1, p0, Landroidx/graphics/surface/SurfaceControlCompat$Builder;->mBuilderImpl:Landroidx/graphics/surface/SurfaceControlImpl$Builder;

    invoke-interface {v1}, Landroidx/graphics/surface/SurfaceControlImpl$Builder;->build()Landroidx/graphics/surface/SurfaceControlImpl;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/graphics/surface/SurfaceControlCompat;-><init>(Landroidx/graphics/surface/SurfaceControlImpl;)V

    return-object v0
.end method

.method public final setName(Ljava/lang/String;)Landroidx/graphics/surface/SurfaceControlCompat$Builder;
    .locals 1

    const/4 v0, 0x0

    sget-object v0, Lorg/checkerframework/checker/propkey/qual/lW/MjAmnOQWs;->CGUt:Ljava/lang/String;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 159
    iget-object v0, p0, Landroidx/graphics/surface/SurfaceControlCompat$Builder;->mBuilderImpl:Landroidx/graphics/surface/SurfaceControlImpl$Builder;

    invoke-interface {v0, p1}, Landroidx/graphics/surface/SurfaceControlImpl$Builder;->setName(Ljava/lang/String;)Landroidx/graphics/surface/SurfaceControlImpl$Builder;

    return-object p0
.end method

.method public final setParent(Landroid/view/SurfaceView;)Landroidx/graphics/surface/SurfaceControlCompat$Builder;
    .locals 1

    const-string/jumbo v0, "surfaceView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 136
    iget-object v0, p0, Landroidx/graphics/surface/SurfaceControlCompat$Builder;->mBuilderImpl:Landroidx/graphics/surface/SurfaceControlImpl$Builder;

    invoke-interface {v0, p1}, Landroidx/graphics/surface/SurfaceControlImpl$Builder;->setParent(Landroid/view/SurfaceView;)Landroidx/graphics/surface/SurfaceControlImpl$Builder;

    return-object p0
.end method

.method public final setParent(Landroidx/graphics/surface/SurfaceControlCompat;)Landroidx/graphics/surface/SurfaceControlCompat$Builder;
    .locals 1

    const-string/jumbo v0, "surfaceControl"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 149
    iget-object v0, p0, Landroidx/graphics/surface/SurfaceControlCompat$Builder;->mBuilderImpl:Landroidx/graphics/surface/SurfaceControlImpl$Builder;

    invoke-interface {v0, p1}, Landroidx/graphics/surface/SurfaceControlImpl$Builder;->setParent(Landroidx/graphics/surface/SurfaceControlCompat;)Landroidx/graphics/surface/SurfaceControlImpl$Builder;

    return-object p0
.end method
