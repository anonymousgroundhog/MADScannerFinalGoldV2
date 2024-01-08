.class public final Landroidx/graphics/surface/SurfaceControlWrapper$Transaction$addTransactionCommittedListener$1;
.super Ljava/lang/Object;
.source "SurfaceControlWrapper.kt"

# interfaces
.implements Landroidx/graphics/surface/SurfaceControlCompat$TransactionCommittedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/graphics/surface/SurfaceControlWrapper$Transaction;->addTransactionCommittedListener(Ljava/util/concurrent/Executor;Landroidx/graphics/surface/SurfaceControlCompat$TransactionCommittedListener;)Landroidx/graphics/surface/SurfaceControlWrapper$Transaction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0011\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H\u0016\u00a8\u0006\u0004"
    }
    d2 = {
        "androidx/graphics/surface/SurfaceControlWrapper$Transaction$addTransactionCommittedListener$1",
        "Landroidx/graphics/surface/SurfaceControlCompat$TransactionCommittedListener;",
        "onTransactionCommitted",
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


# instance fields
.field final synthetic $executor:Ljava/util/concurrent/Executor;

.field final synthetic $listener:Landroidx/graphics/surface/SurfaceControlCompat$TransactionCommittedListener;


# direct methods
.method public static synthetic $r8$lambda$ubPrgmJrmo31PlJ7OorDmK-M3fQ(Landroidx/graphics/surface/SurfaceControlCompat$TransactionCommittedListener;)V
    .locals 0

    invoke-static {p0}, Landroidx/graphics/surface/SurfaceControlWrapper$Transaction$addTransactionCommittedListener$1;->onTransactionCommitted$lambda$0(Landroidx/graphics/surface/SurfaceControlCompat$TransactionCommittedListener;)V

    return-void
.end method

.method constructor <init>(Ljava/util/concurrent/Executor;Landroidx/graphics/surface/SurfaceControlCompat$TransactionCommittedListener;)V
    .locals 0

    iput-object p1, p0, Landroidx/graphics/surface/SurfaceControlWrapper$Transaction$addTransactionCommittedListener$1;->$executor:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Landroidx/graphics/surface/SurfaceControlWrapper$Transaction$addTransactionCommittedListener$1;->$listener:Landroidx/graphics/surface/SurfaceControlCompat$TransactionCommittedListener;

    .line 290
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final onTransactionCommitted$lambda$0(Landroidx/graphics/surface/SurfaceControlCompat$TransactionCommittedListener;)V
    .locals 1

    const-string v0, "$listener"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 292
    invoke-interface {p0}, Landroidx/graphics/surface/SurfaceControlCompat$TransactionCommittedListener;->onTransactionCommitted()V

    return-void
.end method


# virtual methods
.method public onTransactionCommitted()V
    .locals 3

    .line 292
    iget-object v0, p0, Landroidx/graphics/surface/SurfaceControlWrapper$Transaction$addTransactionCommittedListener$1;->$executor:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Landroidx/graphics/surface/SurfaceControlWrapper$Transaction$addTransactionCommittedListener$1;->$listener:Landroidx/graphics/surface/SurfaceControlCompat$TransactionCommittedListener;

    new-instance v2, Landroidx/graphics/surface/SurfaceControlWrapper$Transaction$addTransactionCommittedListener$1$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1}, Landroidx/graphics/surface/SurfaceControlWrapper$Transaction$addTransactionCommittedListener$1$$ExternalSyntheticLambda0;-><init>(Landroidx/graphics/surface/SurfaceControlCompat$TransactionCommittedListener;)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
