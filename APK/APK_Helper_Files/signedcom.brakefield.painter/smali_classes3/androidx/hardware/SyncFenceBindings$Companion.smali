.class public final Landroidx/hardware/SyncFenceBindings$Companion;
.super Ljava/lang/Object;
.source "SyncFenceBindings.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/hardware/SyncFenceBindings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\t\u0010\u0003\u001a\u00020\u0004H\u0087 J\t\u0010\u0005\u001a\u00020\u0004H\u0087 \u00a8\u0006\u0006"
    }
    d2 = {
        "Landroidx/hardware/SyncFenceBindings$Companion;",
        "",
        "()V",
        "nResolveSyncFileInfo",
        "",
        "nResolveSyncFileInfoFree",
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


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Landroidx/hardware/SyncFenceBindings$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final nResolveSyncFileInfo()Z
    .locals 1
    .annotation runtime Landroidx/graphics/utils/JniVisible;
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    invoke-static {}, Landroidx/hardware/SyncFenceBindings;->nResolveSyncFileInfo()Z

    move-result v0

    return v0
.end method

.method public final nResolveSyncFileInfoFree()Z
    .locals 1
    .annotation runtime Landroidx/graphics/utils/JniVisible;
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    invoke-static {}, Landroidx/hardware/SyncFenceBindings;->nResolveSyncFileInfoFree()Z

    move-result v0

    return v0
.end method
