.class public final Landroidx/graphics/opengl/egl/EGLSpec$Companion;
.super Ljava/lang/Object;
.source "EGLSpec.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/graphics/opengl/egl/EGLSpec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0008H\u0007R\u0013\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0001\u00a8\u0006\t"
    }
    d2 = {
        "Landroidx/graphics/opengl/egl/EGLSpec$Companion;",
        "",
        "()V",
        "V14",
        "Landroidx/graphics/opengl/egl/EGLSpec;",
        "getStatusString",
        "",
        "error",
        "",
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
.field static final synthetic $$INSTANCE:Landroidx/graphics/opengl/egl/EGLSpec$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/graphics/opengl/egl/EGLSpec$Companion;

    invoke-direct {v0}, Landroidx/graphics/opengl/egl/EGLSpec$Companion;-><init>()V

    sput-object v0, Landroidx/graphics/opengl/egl/EGLSpec$Companion;->$$INSTANCE:Landroidx/graphics/opengl/egl/EGLSpec$Companion;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 364
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getStatusString(I)Ljava/lang/String;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    packed-switch p1, :pswitch_data_0

    .line 552
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "toHexString(error)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_0
    const-string p1, "EGL_CONTEXT_LOST"

    goto :goto_0

    :pswitch_1
    const-string p1, "EGL_BAD_SURFACE"

    goto :goto_0

    :pswitch_2
    const-string p1, "EGL_BAD_PARAMETER"

    goto :goto_0

    :pswitch_3
    const-string p1, "EGL_BAD_NATIVE_WINDOW"

    goto :goto_0

    :pswitch_4
    const-string p1, "EGL_BAD_NATIVE_PIXMAP"

    goto :goto_0

    :pswitch_5
    const-string p1, "EGL_BAD_MATCH"

    goto :goto_0

    :pswitch_6
    const-string p1, "EGL_BAD_DISPLAY"

    goto :goto_0

    :pswitch_7
    const-string p1, "EGL_BAD_CURRENT_SURFACE"

    goto :goto_0

    :pswitch_8
    const-string p1, "EGL_BAD_CONTEXT"

    goto :goto_0

    :pswitch_9
    const-string p1, "EGL_BAD_CONFIG"

    goto :goto_0

    :pswitch_a
    const-string p1, "EGL_BAD_ATTRIBUTE"

    goto :goto_0

    :pswitch_b
    const-string p1, "EGL_BAD_ALLOC"

    goto :goto_0

    :pswitch_c
    const-string p1, "EGL_BAD_ACCESS"

    goto :goto_0

    :pswitch_d
    const-string p1, "EGL_NOT_INITIALIZED"

    goto :goto_0

    :pswitch_e
    const-string p1, "EGL_SUCCESS"

    :goto_0
    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x3000
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
