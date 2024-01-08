.class public final synthetic Landroidx/graphics/surface/SurfaceControlV33$Transaction$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lkotlin/jvm/functions/Function1;


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/functions/Function1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/graphics/surface/SurfaceControlV33$Transaction$$ExternalSyntheticLambda1;->f$0:Lkotlin/jvm/functions/Function1;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Landroidx/graphics/surface/SurfaceControlV33$Transaction$$ExternalSyntheticLambda1;->f$0:Lkotlin/jvm/functions/Function1;

    check-cast p1, Landroid/hardware/SyncFence;

    invoke-static {v0, p1}, Landroidx/graphics/surface/SurfaceControlV33$Transaction;->$r8$lambda$kFgzH24OYQ9n2OiRo_UZn5igVis(Lkotlin/jvm/functions/Function1;Landroid/hardware/SyncFence;)V

    return-void
.end method
