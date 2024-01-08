.class public final synthetic Landroidx/graphics/RenderQueue$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroidx/graphics/RenderQueue$Request;

.field public final synthetic f$1:Landroidx/graphics/RenderQueue;


# direct methods
.method public synthetic constructor <init>(Landroidx/graphics/RenderQueue$Request;Landroidx/graphics/RenderQueue;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/graphics/RenderQueue$$ExternalSyntheticLambda1;->f$0:Landroidx/graphics/RenderQueue$Request;

    iput-object p2, p0, Landroidx/graphics/RenderQueue$$ExternalSyntheticLambda1;->f$1:Landroidx/graphics/RenderQueue;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Landroidx/graphics/RenderQueue$$ExternalSyntheticLambda1;->f$0:Landroidx/graphics/RenderQueue$Request;

    iget-object v1, p0, Landroidx/graphics/RenderQueue$$ExternalSyntheticLambda1;->f$1:Landroidx/graphics/RenderQueue;

    invoke-static {v0, v1}, Landroidx/graphics/RenderQueue;->$r8$lambda$Rr_78hJbMEiU4Ef4P0XLW-twH9I(Landroidx/graphics/RenderQueue$Request;Landroidx/graphics/RenderQueue;)V

    return-void
.end method
