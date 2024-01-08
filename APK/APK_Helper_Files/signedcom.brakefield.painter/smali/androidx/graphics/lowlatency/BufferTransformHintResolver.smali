.class public final Landroidx/graphics/lowlatency/BufferTransformHintResolver;
.super Ljava/lang/Object;
.source "BufferTransformHintResolver.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/graphics/lowlatency/BufferTransformHintResolver$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0004\u0008\u0000\u0018\u0000 \u000c2\u00020\u0001:\u0001\u000cB\u0005\u00a2\u0006\u0002\u0010\u0002J\u000e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006J\u001d\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u0004H\u0000\u00a2\u0006\u0002\u0008\u000b\u00a8\u0006\r"
    }
    d2 = {
        "Landroidx/graphics/lowlatency/BufferTransformHintResolver;",
        "",
        "()V",
        "getBufferTransformHint",
        "",
        "view",
        "Landroid/view/View;",
        "getBufferTransformHintFromInstallOrientation",
        "orientation",
        "",
        "rotation",
        "getBufferTransformHintFromInstallOrientation$graphics_core_release",
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
.field public static final Companion:Landroidx/graphics/lowlatency/BufferTransformHintResolver$Companion;

.field public static final ORIENTATION_0:Ljava/lang/String; = "ORIENTATION_0"

.field public static final ORIENTATION_180:Ljava/lang/String; = "ORIENTATION_180"

.field public static final ORIENTATION_270:Ljava/lang/String; = "ORIENTATION_270"

.field public static final ORIENTATION_90:Ljava/lang/String; = "ORIENTATION_90"

.field public static final TAG:Ljava/lang/String; = "TRANSFORM_HINT_RESOLVER"

.field public static final UNKNOWN_TRANSFORM:I = -0x1


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/graphics/lowlatency/BufferTransformHintResolver$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/graphics/lowlatency/BufferTransformHintResolver$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/graphics/lowlatency/BufferTransformHintResolver;->Companion:Landroidx/graphics/lowlatency/BufferTransformHintResolver$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getBufferTransformHint(Landroid/view/View;)I
    .locals 5

    const-string v0, "TRANSFORM_HINT_RESOLVER"

    const-string v1, "Obtained transform: "

    const-string/jumbo v2, "view"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x20

    if-lt v2, v3, :cond_0

    .line 35
    sget-object v0, Landroidx/graphics/lowlatency/TransformHintHelper;->Companion:Landroidx/graphics/lowlatency/TransformHintHelper$Companion;

    invoke-virtual {v0, p1}, Landroidx/graphics/lowlatency/TransformHintHelper$Companion;->resolveBufferTransformHint(Landroid/view/View;)I

    move-result p1

    return p1

    :cond_0
    const/4 v2, -0x1

    .line 39
    :try_start_0
    sget-object v3, Landroidx/graphics/surface/JniBindings;->Companion:Landroidx/graphics/surface/JniBindings$Companion;

    invoke-virtual {v3}, Landroidx/graphics/surface/JniBindings$Companion;->nGetDisplayOrientation()Ljava/lang/String;

    move-result-object v3

    .line 40
    invoke-virtual {p1}, Landroid/view/View;->getDisplay()Landroid/view/Display;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/view/Display;->getRotation()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_2

    .line 44
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 42
    invoke-virtual {p0, v3, p1}, Landroidx/graphics/lowlatency/BufferTransformHintResolver;->getBufferTransformHintFromInstallOrientation$graphics_core_release(Ljava/lang/String;I)I

    move-result p1

    .line 46
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " for orientation: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move v2, p1

    goto :goto_1

    :cond_2
    const-string p1, "Unable to obtain current display rotation"

    .line 49
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const-string p1, "Unable to obtain current display orientation"

    .line 53
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return v2
.end method

.method public final getBufferTransformHintFromInstallOrientation$graphics_core_release(Ljava/lang/String;I)I
    .locals 8

    const-string v0, "orientation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x7

    const/4 v2, 0x4

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, -0x1

    const/4 v7, 0x3

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_1

    :sswitch_0
    const-string v0, "ORIENTATION_270"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    if-eqz p2, :cond_7

    if-eq p2, v5, :cond_6

    if-eq p2, v4, :cond_5

    if-eq p2, v7, :cond_4

    goto :goto_0

    :sswitch_1
    const-string v0, "ORIENTATION_180"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    if-eqz p2, :cond_4

    if-eq p2, v5, :cond_7

    if-eq p2, v4, :cond_6

    if-eq p2, v7, :cond_5

    goto :goto_0

    :sswitch_2
    const-string v0, "ORIENTATION_90"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    if-eqz p2, :cond_5

    if-eq p2, v5, :cond_4

    if-eq p2, v4, :cond_7

    if-eq p2, v7, :cond_6

    goto :goto_0

    :sswitch_3
    const-string v0, "ORIENTATION_0"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    if-eqz p2, :cond_6

    if-eq p2, v5, :cond_5

    if-eq p2, v4, :cond_4

    if-eq p2, v7, :cond_7

    :goto_0
    goto :goto_2

    :cond_4
    move v1, v7

    goto :goto_3

    :cond_5
    move v1, v2

    goto :goto_3

    :cond_6
    move v1, v3

    goto :goto_3

    .line 101
    :goto_1
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Unknown orientation \""

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const/16 p2, 0x22

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "TRANSFORM_HINT_RESOLVER"

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    move v1, v6

    :cond_7
    :goto_3
    return v1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x5cf5169f -> :sswitch_3
        -0x41adbbfa -> :sswitch_2
        0xbf61fda -> :sswitch_1
        0xbf6237c -> :sswitch_0
    .end sparse-switch
.end method
