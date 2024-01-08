.class public interface abstract Landroidx/graphics/opengl/SyncStrategy;
.super Ljava/lang/Object;
.source "FrameBufferRenderer.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/graphics/opengl/SyncStrategy$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008f\u0018\u0000 \u00062\u00020\u0001:\u0001\u0006J\u0012\u0010\u0002\u001a\u0004\u0018\u00010\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\'\u00f8\u0001\u0000\u0082\u0002\u0006\n\u0004\u0008!0\u0001\u00a8\u0006\u0007\u00c0\u0006\u0001"
    }
    d2 = {
        "Landroidx/graphics/opengl/SyncStrategy;",
        "",
        "createSyncFence",
        "Landroidx/hardware/SyncFenceCompat;",
        "eglSpec",
        "Landroidx/graphics/opengl/egl/EGLSpec;",
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
.field public static final ALWAYS:Landroidx/graphics/opengl/SyncStrategy;

.field public static final Companion:Landroidx/graphics/opengl/SyncStrategy$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Landroidx/graphics/opengl/SyncStrategy$Companion;->$$INSTANCE:Landroidx/graphics/opengl/SyncStrategy$Companion;

    sput-object v0, Landroidx/graphics/opengl/SyncStrategy;->Companion:Landroidx/graphics/opengl/SyncStrategy$Companion;

    .line 222
    new-instance v0, Landroidx/graphics/opengl/SyncStrategy$Companion$ALWAYS$1;

    invoke-direct {v0}, Landroidx/graphics/opengl/SyncStrategy$Companion$ALWAYS$1;-><init>()V

    check-cast v0, Landroidx/graphics/opengl/SyncStrategy;

    sput-object v0, Landroidx/graphics/opengl/SyncStrategy;->ALWAYS:Landroidx/graphics/opengl/SyncStrategy;

    return-void
.end method


# virtual methods
.method public abstract createSyncFence(Landroidx/graphics/opengl/egl/EGLSpec;)Landroidx/hardware/SyncFenceCompat;
.end method
