.class final Landroidx/graphics/opengl/GLRenderer$2;
.super Lkotlin/jvm/internal/Lambda;
.source "GLRenderer.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/graphics/opengl/GLRenderer;-><init>(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Landroidx/graphics/opengl/egl/EGLManager;",
        "Landroid/opengl/EGLConfig;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n\u00a2\u0006\u0002\u0008\u0003"
    }
    d2 = {
        "<anonymous>",
        "Landroid/opengl/EGLConfig;",
        "Landroidx/graphics/opengl/egl/EGLManager;",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Landroidx/graphics/opengl/GLRenderer$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/graphics/opengl/GLRenderer$2;

    invoke-direct {v0}, Landroidx/graphics/opengl/GLRenderer$2;-><init>()V

    sput-object v0, Landroidx/graphics/opengl/GLRenderer$2;->INSTANCE:Landroidx/graphics/opengl/GLRenderer$2;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Landroidx/graphics/opengl/egl/EGLManager;)Landroid/opengl/EGLConfig;
    .locals 1

    const/4 v0, 0x0

    sget-object v0, Lorg/ejml/sparse/csc/decomposition/qr/pB/syaLyE;->FxbvCZAJyrOamm:Ljava/lang/String;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    sget-object v0, Landroidx/graphics/opengl/egl/EGLConfigAttributes;->RGBA_8888:Landroidx/graphics/opengl/egl/EGLConfigAttributes;

    invoke-virtual {p1, v0}, Landroidx/graphics/opengl/egl/EGLManager;->loadConfig(Landroidx/graphics/opengl/egl/EGLConfigAttributes;)Landroid/opengl/EGLConfig;

    move-result-object p1

    if-eqz p1, :cond_0

    return-object p1

    .line 52
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Unable to obtain config for 8 bit EGL configuration"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 49
    check-cast p1, Landroidx/graphics/opengl/egl/EGLManager;

    invoke-virtual {p0, p1}, Landroidx/graphics/opengl/GLRenderer$2;->invoke(Landroidx/graphics/opengl/egl/EGLManager;)Landroid/opengl/EGLConfig;

    move-result-object p1

    return-object p1
.end method
