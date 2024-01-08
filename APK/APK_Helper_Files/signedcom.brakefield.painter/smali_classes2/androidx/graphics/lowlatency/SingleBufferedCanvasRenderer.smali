.class public interface abstract Landroidx/graphics/lowlatency/SingleBufferedCanvasRenderer;
.super Ljava/lang/Object;
.source "SingleBufferedCanvasRenderer.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/graphics/lowlatency/SingleBufferedCanvasRenderer$Companion;,
        Landroidx/graphics/lowlatency/SingleBufferedCanvasRenderer$RenderCallbacks;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008a\u0018\u0000 \u0011*\u0004\u0008\u0000\u0010\u00012\u00020\u0002:\u0002\u0011\u0012J\u0008\u0010\u0008\u001a\u00020\tH&J\u0008\u0010\n\u001a\u00020\tH&J\"\u0010\u000b\u001a\u00020\t2\u0006\u0010\u0008\u001a\u00020\u00042\u0010\u0008\u0002\u0010\u000c\u001a\n\u0012\u0004\u0012\u00020\t\u0018\u00010\rH&J\u0015\u0010\u000e\u001a\u00020\t2\u0006\u0010\u000f\u001a\u00028\u0000H&\u00a2\u0006\u0002\u0010\u0010R\u0018\u0010\u0003\u001a\u00020\u0004X\u00a6\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u0003\u0010\u0005\"\u0004\u0008\u0006\u0010\u0007\u00f8\u0001\u0000\u0082\u0002\u0006\n\u0004\u0008!0\u0001\u00a8\u0006\u0013\u00c0\u0006\u0001"
    }
    d2 = {
        "Landroidx/graphics/lowlatency/SingleBufferedCanvasRenderer;",
        "T",
        "",
        "isVisible",
        "",
        "()Z",
        "setVisible",
        "(Z)V",
        "cancelPending",
        "",
        "clear",
        "release",
        "onReleaseComplete",
        "Lkotlin/Function0;",
        "render",
        "param",
        "(Ljava/lang/Object;)V",
        "Companion",
        "RenderCallbacks",
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
.field public static final Companion:Landroidx/graphics/lowlatency/SingleBufferedCanvasRenderer$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Landroidx/graphics/lowlatency/SingleBufferedCanvasRenderer$Companion;->$$INSTANCE:Landroidx/graphics/lowlatency/SingleBufferedCanvasRenderer$Companion;

    sput-object v0, Landroidx/graphics/lowlatency/SingleBufferedCanvasRenderer;->Companion:Landroidx/graphics/lowlatency/SingleBufferedCanvasRenderer$Companion;

    return-void
.end method

.method public static synthetic release$default(Landroidx/graphics/lowlatency/SingleBufferedCanvasRenderer;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V
    .locals 0

    if-nez p4, :cond_1

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 65
    :cond_0
    invoke-interface {p0, p1, p2}, Landroidx/graphics/lowlatency/SingleBufferedCanvasRenderer;->release(ZLkotlin/jvm/functions/Function0;)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: release"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public abstract cancelPending()V
.end method

.method public abstract clear()V
.end method

.method public abstract isVisible()Z
.end method

.method public abstract release(ZLkotlin/jvm/functions/Function0;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract render(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method public abstract setVisible(Z)V
.end method
