.class public final Landroidx/graphics/lowlatency/FrontBufferSyncStrategy;
.super Ljava/lang/Object;
.source "FrontBufferSyncStrategy.kt"

# interfaces
.implements Landroidx/graphics/opengl/SyncStrategy;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0012\u0010\r\u001a\u0004\u0018\u00010\u000e2\u0006\u0010\u000f\u001a\u00020\u0010H\u0017R$\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00068F@FX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u0007\u0010\u0008\"\u0004\u0008\t\u0010\nR\u000e\u0010\u000b\u001a\u00020\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0011"
    }
    d2 = {
        "Landroidx/graphics/lowlatency/FrontBufferSyncStrategy;",
        "Landroidx/graphics/opengl/SyncStrategy;",
        "usageFlags",
        "",
        "(J)V",
        "visibility",
        "",
        "isVisible",
        "()Z",
        "setVisible",
        "(Z)V",
        "mFrontBufferVisible",
        "supportsFrontBufferUsage",
        "createSyncFence",
        "Landroidx/hardware/SyncFenceCompat;",
        "eglSpec",
        "Landroidx/graphics/opengl/egl/EGLSpec;",
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


# instance fields
.field private mFrontBufferVisible:Z

.field private final supportsFrontBufferUsage:Z


# direct methods
.method public constructor <init>(J)V
    .locals 2

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide v0, 0x100000000L

    and-long/2addr p1, v0

    const-wide/16 v0, 0x0

    cmp-long p1, p1, v0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 46
    :goto_0
    iput-boolean p1, p0, Landroidx/graphics/lowlatency/FrontBufferSyncStrategy;->supportsFrontBufferUsage:Z

    return-void
.end method


# virtual methods
.method public createSyncFence(Landroidx/graphics/opengl/egl/EGLSpec;)Landroidx/hardware/SyncFenceCompat;
    .locals 1

    const-string v0, "eglSpec"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    invoke-virtual {p0}, Landroidx/graphics/lowlatency/FrontBufferSyncStrategy;->isVisible()Z

    move-result p1

    if-nez p1, :cond_0

    .line 71
    sget-object p1, Landroidx/hardware/SyncFenceCompat;->Companion:Landroidx/hardware/SyncFenceCompat$Companion;

    invoke-virtual {p1}, Landroidx/hardware/SyncFenceCompat$Companion;->createNativeSyncFence()Landroidx/hardware/SyncFenceCompat;

    move-result-object p1

    return-object p1

    .line 72
    :cond_0
    iget-boolean p1, p0, Landroidx/graphics/lowlatency/FrontBufferSyncStrategy;->supportsFrontBufferUsage:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 73
    invoke-static {}, Landroid/opengl/GLES20;->glFlush()V

    return-object v0

    .line 76
    :cond_1
    sget-object p1, Landroidx/hardware/SyncFenceCompat;->Companion:Landroidx/hardware/SyncFenceCompat$Companion;

    invoke-virtual {p1}, Landroidx/hardware/SyncFenceCompat$Companion;->createNativeSyncFence()Landroidx/hardware/SyncFenceCompat;

    move-result-object p1

    .line 77
    invoke-virtual {p1}, Landroidx/hardware/SyncFenceCompat;->close()V

    return-object v0
.end method

.method public final isVisible()Z
    .locals 1

    .line 55
    iget-boolean v0, p0, Landroidx/graphics/lowlatency/FrontBufferSyncStrategy;->mFrontBufferVisible:Z

    return v0
.end method

.method public final setVisible(Z)V
    .locals 0

    .line 57
    iput-boolean p1, p0, Landroidx/graphics/lowlatency/FrontBufferSyncStrategy;->mFrontBufferVisible:Z

    return-void
.end method
