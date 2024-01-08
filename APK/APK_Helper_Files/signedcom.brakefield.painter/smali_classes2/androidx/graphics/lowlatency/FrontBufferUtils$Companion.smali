.class public final Landroidx/graphics/lowlatency/FrontBufferUtils$Companion;
.super Ljava/lang/Object;
.source "FrontBufferUtils.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/graphics/lowlatency/FrontBufferUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0003\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\r\u0010\n\u001a\u00020\u0004H\u0000\u00a2\u0006\u0002\u0008\u000bR\u0010\u0010\u0003\u001a\u00020\u00048\u0000X\u0081T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0080T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0080T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000c"
    }
    d2 = {
        "Landroidx/graphics/lowlatency/FrontBufferUtils$Companion;",
        "",
        "()V",
        "BaseFlags",
        "",
        "TAG",
        "",
        "USAGE_COMPOSER_OVERLAY",
        "UseCompatSurfaceControl",
        "",
        "obtainHardwareBufferUsageFlags",
        "obtainHardwareBufferUsageFlags$graphics_core_release",
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

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Landroidx/graphics/lowlatency/FrontBufferUtils$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final obtainHardwareBufferUsageFlags$graphics_core_release()J
    .locals 2

    .line 52
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    if-lt v0, v1, :cond_0

    .line 53
    sget-object v0, Landroidx/graphics/lowlatency/UsageFlagsVerificationHelper;->Companion:Landroidx/graphics/lowlatency/UsageFlagsVerificationHelper$Companion;

    invoke-virtual {v0}, Landroidx/graphics/lowlatency/UsageFlagsVerificationHelper$Companion;->obtainUsageFlagsV33()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0xb00

    :goto_0
    return-wide v0
.end method
