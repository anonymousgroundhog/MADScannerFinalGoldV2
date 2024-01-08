.class public final Landroidx/graphics/opengl/egl/EGLException;
.super Ljava/lang/RuntimeException;
.source "EGLSpec.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0008\u0018\u00002\u00060\u0001j\u0002`\u0002B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0002\u0010\u0007R\u0011\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u0014\u0010\n\u001a\u00020\u00068VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000b\u0010\u000cR\u0011\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000c\u00a8\u0006\u000e"
    }
    d2 = {
        "Landroidx/graphics/opengl/egl/EGLException;",
        "Ljava/lang/RuntimeException;",
        "Lkotlin/RuntimeException;",
        "error",
        "",
        "msg",
        "",
        "(ILjava/lang/String;)V",
        "getError",
        "()I",
        "message",
        "getMessage",
        "()Ljava/lang/String;",
        "getMsg",
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
.field private final error:I

.field private final msg:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 1

    const-string v0, "msg"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 564
    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    iput p1, p0, Landroidx/graphics/opengl/egl/EGLException;->error:I

    iput-object p2, p0, Landroidx/graphics/opengl/egl/EGLException;->msg:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const-string p2, ""

    .line 564
    :cond_0
    invoke-direct {p0, p1, p2}, Landroidx/graphics/opengl/egl/EGLException;-><init>(ILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final getError()I
    .locals 1

    .line 564
    iget v0, p0, Landroidx/graphics/opengl/egl/EGLException;->error:I

    return v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 3

    .line 567
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Error: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Landroidx/graphics/opengl/egl/EGLSpec;->Companion:Landroidx/graphics/opengl/egl/EGLSpec$Companion;

    iget v2, p0, Landroidx/graphics/opengl/egl/EGLException;->error:I

    invoke-virtual {v1, v2}, Landroidx/graphics/opengl/egl/EGLSpec$Companion;->getStatusString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroidx/graphics/opengl/egl/EGLException;->msg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getMsg()Ljava/lang/String;
    .locals 1

    .line 564
    iget-object v0, p0, Landroidx/graphics/opengl/egl/EGLException;->msg:Ljava/lang/String;

    return-object v0
.end method
