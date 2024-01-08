.class public final Landroidx/graphics/lowlatency/UsageFlagsVerificationHelper$Companion;
.super Ljava/lang/Object;
.source "FrontBufferUtils.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/graphics/lowlatency/UsageFlagsVerificationHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0003\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0015\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0001\u00a2\u0006\u0002\u0008\u0007J\u0008\u0010\u0008\u001a\u00020\u0006H\u0007\u00a8\u0006\t"
    }
    d2 = {
        "Landroidx/graphics/lowlatency/UsageFlagsVerificationHelper$Companion;",
        "",
        "()V",
        "isSupported",
        "",
        "flag",
        "",
        "isSupported$graphics_core_release",
        "obtainUsageFlagsV33",
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

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Landroidx/graphics/lowlatency/UsageFlagsVerificationHelper$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final isSupported$graphics_core_release(J)Z
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x1

    const/4 v2, 0x1

    const/4 v3, 0x1

    const-wide/16 v4, 0xb00

    or-long/2addr v4, p1

    .line 84
    invoke-static/range {v0 .. v5}, Landroid/hardware/HardwareBuffer;->isSupported(IIIIJ)Z

    move-result p1

    return p1
.end method

.method public final obtainUsageFlagsV33()J
    .locals 2

    const-wide v0, 0x100000000L

    .line 97
    invoke-virtual {p0, v0, v1}, Landroidx/graphics/lowlatency/UsageFlagsVerificationHelper$Companion;->isSupported$graphics_core_release(J)Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide v0, 0x100000b00L

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0xb00

    :goto_0
    return-wide v0
.end method
