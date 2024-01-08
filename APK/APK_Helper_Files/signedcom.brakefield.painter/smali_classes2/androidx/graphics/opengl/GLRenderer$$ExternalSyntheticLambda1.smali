.class public final synthetic Landroidx/graphics/opengl/GLRenderer$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroidx/graphics/opengl/GLRenderer$RenderTarget;

.field public final synthetic f$1:Lkotlin/jvm/functions/Function1;


# direct methods
.method public synthetic constructor <init>(Landroidx/graphics/opengl/GLRenderer$RenderTarget;Lkotlin/jvm/functions/Function1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/graphics/opengl/GLRenderer$$ExternalSyntheticLambda1;->f$0:Landroidx/graphics/opengl/GLRenderer$RenderTarget;

    iput-object p2, p0, Landroidx/graphics/opengl/GLRenderer$$ExternalSyntheticLambda1;->f$1:Lkotlin/jvm/functions/Function1;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Landroidx/graphics/opengl/GLRenderer$$ExternalSyntheticLambda1;->f$0:Landroidx/graphics/opengl/GLRenderer$RenderTarget;

    iget-object v1, p0, Landroidx/graphics/opengl/GLRenderer$$ExternalSyntheticLambda1;->f$1:Lkotlin/jvm/functions/Function1;

    invoke-static {v0, v1}, Landroidx/graphics/opengl/GLRenderer;->$r8$lambda$aslZQKl68gSgYyQSrWg1Uu_bonA(Landroidx/graphics/opengl/GLRenderer$RenderTarget;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method
