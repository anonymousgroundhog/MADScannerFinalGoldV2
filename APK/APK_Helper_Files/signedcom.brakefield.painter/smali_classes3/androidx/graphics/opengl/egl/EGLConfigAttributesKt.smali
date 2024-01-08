.class public final Landroidx/graphics/opengl/egl/EGLConfigAttributesKt;
.super Ljava/lang/Object;
.source "EGLConfigAttributes.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nEGLConfigAttributes.kt\nKotlin\n*S Kotlin\n*F\n+ 1 EGLConfigAttributes.kt\nandroidx/graphics/opengl/egl/EGLConfigAttributesKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,208:1\n1#2:209\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\u001a%\u0010\u0000\u001a\u00020\u00012\u0017\u0010\u0002\u001a\u0013\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003\u00a2\u0006\u0002\u0008\u0006H\u0086\u0008\u00f8\u0001\u0000\u0082\u0002\u0007\n\u0005\u0008\u009920\u0001\u00a8\u0006\u0007"
    }
    d2 = {
        "EGLConfigAttributes",
        "Landroidx/graphics/opengl/egl/EGLConfigAttributes;",
        "block",
        "Lkotlin/Function1;",
        "Landroidx/graphics/opengl/egl/EGLConfigAttributes$Builder;",
        "",
        "Lkotlin/ExtensionFunctionType;",
        "graphics-core_release"
    }
    k = 0x2
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final synthetic EGLConfigAttributes(Lkotlin/jvm/functions/Function1;)Landroidx/graphics/opengl/egl/EGLConfigAttributes;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/graphics/opengl/egl/EGLConfigAttributes$Builder;",
            "Lkotlin/Unit;",
            ">;)",
            "Landroidx/graphics/opengl/egl/EGLConfigAttributes;"
        }
    .end annotation

    const-string v0, "block"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    new-instance v0, Landroidx/graphics/opengl/egl/EGLConfigAttributes$Builder;

    invoke-direct {v0}, Landroidx/graphics/opengl/egl/EGLConfigAttributes$Builder;-><init>()V

    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Landroidx/graphics/opengl/egl/EGLConfigAttributes$Builder;->build()Landroidx/graphics/opengl/egl/EGLConfigAttributes;

    move-result-object p0

    return-object p0
.end method
